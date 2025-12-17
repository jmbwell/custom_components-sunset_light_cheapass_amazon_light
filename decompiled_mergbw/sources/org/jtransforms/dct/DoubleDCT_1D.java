package org.jtransforms.dct;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.math3.util.FastMath;
import org.jtransforms.fft.DoubleFFT_1D;
import org.jtransforms.utils.CommonUtils;
import pl.edu.icm.jlargearrays.ConcurrencyUtils;
import pl.edu.icm.jlargearrays.DoubleLargeArray;
import pl.edu.icm.jlargearrays.LargeArray;
import pl.edu.icm.jlargearrays.LargeArrayUtils;
import pl.edu.icm.jlargearrays.LongLargeArray;
/* loaded from: classes5.dex */
public class DoubleDCT_1D {
    private static final double PI = 3.141592653589793d;
    private DoubleFFT_1D fft;
    private int[] ip;
    private LongLargeArray ipl;
    private boolean isPowerOfTwo;
    private int n;
    private int nc;
    private long ncl;
    private long nl;
    private int nw;
    private long nwl;
    private boolean useLargeArrays;
    private double[] w;
    private DoubleLargeArray wl;

    public DoubleDCT_1D(long j) {
        this.isPowerOfTwo = false;
        if (j < 1) {
            throw new IllegalArgumentException("n must be greater than 0");
        }
        boolean z = CommonUtils.isUseLargeArrays() || j > ((long) LargeArray.getMaxSizeOf32bitArray());
        this.useLargeArrays = z;
        this.n = (int) j;
        this.nl = j;
        if (z) {
            if (CommonUtils.isPowerOf2(j)) {
                this.isPowerOfTwo = true;
                this.ipl = new LongLargeArray((long) FastMath.ceil((1 << ((int) (((long) (FastMath.log((j / 2) + 0.5d) / FastMath.log(2.0d))) / 2))) + 2));
                this.wl = new DoubleLargeArray((this.nl * 5) / 4);
                long j2 = this.ipl.getLong(0L);
                this.nwl = j2;
                if (j > (j2 << 2)) {
                    long j3 = this.nl >> 2;
                    this.nwl = j3;
                    CommonUtils.makewt(j3, this.ipl, this.wl);
                }
                long j4 = this.ipl.getLong(1L);
                this.ncl = j4;
                if (j > j4) {
                    long j5 = this.nl;
                    this.ncl = j5;
                    CommonUtils.makect(j5, this.wl, this.nwl, this.ipl);
                    return;
                }
                return;
            }
            this.wl = makect(j);
            this.fft = new DoubleFFT_1D(j * 2);
        } else if (j > 268435456) {
            throw new IllegalArgumentException("n must be smaller or equal to 268435456 when useLargeArrays argument is set to false");
        } else {
            if (CommonUtils.isPowerOf2(j)) {
                this.isPowerOfTwo = true;
                int[] iArr = new int[(int) FastMath.ceil((1 << (((int) (FastMath.log((j / 2) + 0.5d) / FastMath.log(2.0d))) / 2)) + 2)];
                this.ip = iArr;
                int i = this.n;
                double[] dArr = new double[(i * 5) / 4];
                this.w = dArr;
                int i2 = iArr[0];
                this.nw = i2;
                if (j > (i2 << 2)) {
                    int i3 = i >> 2;
                    this.nw = i3;
                    CommonUtils.makewt(i3, iArr, dArr);
                }
                int[] iArr2 = this.ip;
                int i4 = iArr2[1];
                this.nc = i4;
                if (j > i4) {
                    int i5 = this.n;
                    this.nc = i5;
                    CommonUtils.makect(i5, this.w, this.nw, iArr2);
                    return;
                }
                return;
            }
            this.w = makect(this.n);
            this.fft = new DoubleFFT_1D(j * 2);
        }
    }

    public void forward(double[] dArr, boolean z) {
        forward(dArr, 0, z);
    }

    public void forward(DoubleLargeArray doubleLargeArray, boolean z) {
        forward(doubleLargeArray, 0L, z);
    }

    public void forward(final double[] dArr, final int i, boolean z) {
        int i2;
        int i3 = this.n;
        if (i3 == 1) {
            return;
        }
        if (this.useLargeArrays) {
            forward(new DoubleLargeArray(dArr), i, z);
            return;
        }
        int i4 = 2;
        if (this.isPowerOfTwo) {
            double d = dArr[(i + i3) - 1];
            for (int i5 = i3 - 2; i5 >= 2; i5 -= 2) {
                int i6 = i + i5;
                int i7 = i6 - 1;
                dArr[i6 + 1] = dArr[i6] - dArr[i7];
                dArr[i6] = dArr[i6] + dArr[i7];
            }
            dArr[i + 1] = dArr[i] - d;
            dArr[i] = dArr[i] + d;
            int i8 = this.n;
            if (i8 > 4) {
                rftbsub(i8, dArr, i, this.nc, this.w, this.nw);
                CommonUtils.cftbsub(this.n, dArr, i, this.ip, this.nw, this.w);
            } else if (i8 == 4) {
                CommonUtils.cftbsub(i8, dArr, i, this.ip, this.nw, this.w);
            }
            CommonUtils.dctsub(this.n, dArr, i, this.nc, this.w, this.nw);
            if (z) {
                int i9 = this.n;
                CommonUtils.scale(i9, FastMath.sqrt(2.0d / i9), dArr, i, false);
                dArr[i] = dArr[i] / FastMath.sqrt(2.0d);
                return;
            }
            return;
        }
        int i10 = i3 * 2;
        double[] dArr2 = new double[i10];
        System.arraycopy(dArr, i, dArr2, 0, i3);
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        for (int i11 = this.n; i11 < i10; i11++) {
            dArr2[i11] = dArr2[(i10 - i11) - 1];
        }
        this.fft.realForward(dArr2);
        if (numberOfThreads > 1 && this.n > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i12 = this.n / 2;
            Future[] futureArr = new Future[2];
            int i13 = 0;
            while (i13 < i4) {
                final int i14 = i13 * i12;
                final int i15 = i13 == 1 ? this.n : i14 + i12;
                int i16 = i13;
                Future[] futureArr2 = futureArr;
                final double[] dArr3 = dArr2;
                futureArr2[i16] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dct.DoubleDCT_1D.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i17 = i14; i17 < i15; i17++) {
                            int i18 = i17 * 2;
                            int i19 = i18 + 1;
                            dArr[i + i17] = (DoubleDCT_1D.this.w[i18] * dArr3[i18]) - (DoubleDCT_1D.this.w[i19] * dArr3[i19]);
                        }
                    }
                });
                i13 = i16 + 1;
                i10 = i10;
                i4 = i4;
                futureArr = futureArr2;
                dArr2 = dArr3;
            }
            i2 = i10;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleDCT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleDCT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
        } else {
            i2 = i10;
            for (int i17 = 0; i17 < this.n; i17++) {
                int i18 = i17 * 2;
                double[] dArr4 = this.w;
                int i19 = i18 + 1;
                dArr[i + i17] = (dArr4[i18] * dArr2[i18]) - (dArr4[i19] * dArr2[i19]);
            }
        }
        if (z) {
            CommonUtils.scale(this.n, 1.0d / FastMath.sqrt(i2), dArr, i, false);
            dArr[i] = dArr[i] / FastMath.sqrt(2.0d);
        }
    }

    public void forward(final DoubleLargeArray doubleLargeArray, final long j, boolean z) {
        long j2;
        long j3 = this.nl;
        long j4 = 1;
        if (j3 == 1) {
            return;
        }
        if (!this.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                forward(doubleLargeArray.getData(), (int) j, z);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        } else if (this.isPowerOfTwo) {
            double d = doubleLargeArray.getDouble((j3 + j) - 1);
            long j5 = this.nl - 2;
            while (j5 >= 2) {
                long j6 = j + j5;
                double d2 = d;
                long j7 = j6 - j4;
                doubleLargeArray.setDouble(j6 + j4, doubleLargeArray.getDouble(j6) - doubleLargeArray.getDouble(j7));
                doubleLargeArray.setDouble(j6, doubleLargeArray.getDouble(j6) + doubleLargeArray.getDouble(j7));
                j5 -= 2;
                d = d2;
                j4 = 1;
            }
            double d3 = d;
            doubleLargeArray.setDouble(j4 + j, doubleLargeArray.getDouble(j) - d3);
            doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) + d3);
            long j8 = this.nl;
            if (j8 > 4) {
                rftbsub(j8, doubleLargeArray, j, this.ncl, this.wl, this.nwl);
                CommonUtils.cftbsub(this.nl, doubleLargeArray, j, this.ipl, this.nwl, this.wl);
            } else if (j8 == 4) {
                CommonUtils.cftbsub(j8, doubleLargeArray, j, this.ipl, this.nwl, this.wl);
            }
            CommonUtils.dctsub(this.nl, doubleLargeArray, j, this.ncl, this.wl, this.nwl);
            if (z) {
                long j9 = this.nl;
                CommonUtils.scale(j9, FastMath.sqrt(2.0d / j9), doubleLargeArray, j, false);
                doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) / FastMath.sqrt(2.0d));
            }
        } else {
            long j10 = j3 * 2;
            final DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(j10);
            LargeArrayUtils.arraycopy(doubleLargeArray, j, doubleLargeArray2, 0L, this.nl);
            int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
            for (long j11 = this.nl; j11 < j10; j11++) {
                doubleLargeArray2.setDouble(j11, doubleLargeArray2.getDouble((j10 - j11) - 1));
            }
            this.fft.realForward(doubleLargeArray2);
            int i = 1;
            if (numberOfThreads > 1 && this.nl > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
                int i2 = 2;
                long j12 = this.nl / 2;
                Future[] futureArr = new Future[2];
                int i3 = 0;
                while (i3 < i2) {
                    final long j13 = i3 * j12;
                    final long j14 = i3 == i ? this.nl : j13 + j12;
                    Future[] futureArr2 = futureArr;
                    int i4 = i3;
                    futureArr2[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dct.DoubleDCT_1D.2
                        @Override // java.lang.Runnable
                        public void run() {
                            for (long j15 = j13; j15 < j14; j15++) {
                                long j16 = 2 * j15;
                                long j17 = j16 + 1;
                                doubleLargeArray.setDouble(j + j15, (DoubleDCT_1D.this.wl.getDouble(j16) * doubleLargeArray2.getDouble(j16)) - (DoubleDCT_1D.this.wl.getDouble(j17) * doubleLargeArray2.getDouble(j17)));
                            }
                        }
                    });
                    i3 = i4 + 1;
                    i = i;
                    i2 = i2;
                    futureArr = futureArr2;
                    j10 = j10;
                }
                j2 = j10;
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(DoubleDCT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(DoubleDCT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
            } else {
                j2 = j10;
                for (long j15 = 0; j15 < this.nl; j15++) {
                    long j16 = j15 * 2;
                    long j17 = j16 + 1;
                    doubleLargeArray.setDouble(j + j15, (this.wl.getDouble(j16) * doubleLargeArray2.getDouble(j16)) - (this.wl.getDouble(j17) * doubleLargeArray2.getDouble(j17)));
                }
            }
            if (z) {
                CommonUtils.scale(this.nl, 1.0d / FastMath.sqrt(j2), doubleLargeArray, j, false);
                doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) / FastMath.sqrt(2.0d));
            }
        }
    }

    public void inverse(double[] dArr, boolean z) {
        inverse(dArr, 0, z);
    }

    public void inverse(DoubleLargeArray doubleLargeArray, boolean z) {
        inverse(doubleLargeArray, 0L, z);
    }

    public void inverse(final double[] dArr, final int i, boolean z) {
        int i2 = this.n;
        if (i2 == 1) {
            return;
        }
        if (this.useLargeArrays) {
            inverse(new DoubleLargeArray(dArr), i, z);
            return;
        }
        int i3 = 2;
        if (this.isPowerOfTwo) {
            if (z) {
                CommonUtils.scale(i2, FastMath.sqrt(2.0d / i2), dArr, i, false);
                dArr[i] = dArr[i] / FastMath.sqrt(2.0d);
            }
            CommonUtils.dctsub(this.n, dArr, i, this.nc, this.w, this.nw);
            int i4 = this.n;
            if (i4 > 4) {
                CommonUtils.cftfsub(i4, dArr, i, this.ip, this.nw, this.w);
                rftfsub(this.n, dArr, i, this.nc, this.w, this.nw);
            } else if (i4 == 4) {
                CommonUtils.cftfsub(i4, dArr, i, this.ip, this.nw, this.w);
            }
            double d = dArr[i];
            double d2 = dArr[i + 1];
            double d3 = d - d2;
            dArr[i] = d + d2;
            while (true) {
                int i5 = this.n;
                if (i3 < i5) {
                    int i6 = i + i3;
                    int i7 = i6 + 1;
                    dArr[i6 - 1] = dArr[i6] - dArr[i7];
                    dArr[i6] = dArr[i6] + dArr[i7];
                    i3 += 2;
                } else {
                    dArr[(i5 + i) - 1] = d3;
                    return;
                }
            }
        } else {
            int i8 = i2 * 2;
            if (z) {
                CommonUtils.scale(i2, FastMath.sqrt(i8), dArr, i, false);
                dArr[i] = dArr[i] * FastMath.sqrt(2.0d);
            }
            final double[] dArr2 = new double[i8];
            if (ConcurrencyUtils.getNumberOfThreads() > 1 && this.n > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
                int i9 = this.n / 2;
                Future[] futureArr = new Future[2];
                int i10 = 0;
                while (i10 < 2) {
                    final int i11 = i10 * i9;
                    final int i12 = i10 == 1 ? this.n : i11 + i9;
                    int i13 = i10;
                    Future[] futureArr2 = futureArr;
                    futureArr2[i13] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dct.DoubleDCT_1D.3
                        @Override // java.lang.Runnable
                        public void run() {
                            for (int i14 = i11; i14 < i12; i14++) {
                                int i15 = i14 * 2;
                                double d4 = dArr[i + i14];
                                dArr2[i15] = DoubleDCT_1D.this.w[i15] * d4;
                                int i16 = i15 + 1;
                                dArr2[i16] = (-DoubleDCT_1D.this.w[i16]) * d4;
                            }
                        }
                    });
                    i10 = i13 + 1;
                    futureArr = futureArr2;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(DoubleDCT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(DoubleDCT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
            } else {
                for (int i14 = 0; i14 < this.n; i14++) {
                    int i15 = i14 * 2;
                    double d4 = dArr[i + i14];
                    double[] dArr3 = this.w;
                    dArr2[i15] = dArr3[i15] * d4;
                    int i16 = i15 + 1;
                    dArr2[i16] = (-dArr3[i16]) * d4;
                }
            }
            this.fft.realInverse(dArr2, true);
            System.arraycopy(dArr2, 0, dArr, i, this.n);
        }
    }

    public void inverse(final DoubleLargeArray doubleLargeArray, final long j, boolean z) {
        long j2;
        DoubleDCT_1D doubleDCT_1D;
        DoubleDCT_1D doubleDCT_1D2 = this;
        long j3 = doubleDCT_1D2.nl;
        if (j3 == 1) {
            return;
        }
        if (!doubleDCT_1D2.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                doubleDCT_1D2.inverse(doubleLargeArray.getData(), (int) j, z);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        } else if (doubleDCT_1D2.isPowerOfTwo) {
            if (z) {
                CommonUtils.scale(j3, FastMath.sqrt(2.0d / j3), doubleLargeArray, j, false);
                doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) / FastMath.sqrt(2.0d));
            }
            CommonUtils.dctsub(doubleDCT_1D2.nl, doubleLargeArray, j, doubleDCT_1D2.ncl, doubleDCT_1D2.wl, doubleDCT_1D2.nwl);
            long j4 = doubleDCT_1D2.nl;
            if (j4 > 4) {
                CommonUtils.cftfsub(j4, doubleLargeArray, j, doubleDCT_1D2.ipl, doubleDCT_1D2.nwl, doubleDCT_1D2.wl);
                rftfsub(doubleDCT_1D2.nl, doubleLargeArray, j, doubleDCT_1D2.ncl, doubleDCT_1D2.wl, doubleDCT_1D2.nwl);
            } else if (j4 == 4) {
                CommonUtils.cftfsub(j4, doubleLargeArray, j, doubleDCT_1D2.ipl, doubleDCT_1D2.nwl, doubleDCT_1D2.wl);
            }
            long j5 = j + 1;
            double d = doubleLargeArray.getDouble(j) - doubleLargeArray.getDouble(j5);
            doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) + doubleLargeArray.getDouble(j5));
            long j6 = 2;
            while (true) {
                long j7 = doubleDCT_1D2.nl;
                if (j6 < j7) {
                    long j8 = j + j6;
                    long j9 = j8 + 1;
                    doubleLargeArray.setDouble(j8 - 1, doubleLargeArray.getDouble(j8) - doubleLargeArray.getDouble(j9));
                    doubleLargeArray.setDouble(j8, doubleLargeArray.getDouble(j8) + doubleLargeArray.getDouble(j9));
                    j6 += 2;
                    doubleDCT_1D2 = this;
                } else {
                    doubleLargeArray.setDouble((j + j7) - 1, d);
                    return;
                }
            }
        } else {
            long j10 = j3 * 2;
            if (z) {
                j2 = j10;
                CommonUtils.scale(j3, FastMath.sqrt(j10), doubleLargeArray, j, false);
                doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) * FastMath.sqrt(2.0d));
            } else {
                j2 = j10;
            }
            final DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(j2);
            int i = 1;
            if (ConcurrencyUtils.getNumberOfThreads() > 1) {
                DoubleDCT_1D doubleDCT_1D3 = this;
                if (doubleDCT_1D3.nl > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
                    int i2 = 2;
                    long j11 = doubleDCT_1D3.nl / 2;
                    Future[] futureArr = new Future[2];
                    int i3 = 0;
                    while (i3 < i2) {
                        final long j12 = i3 * j11;
                        final long j13 = i3 == i ? doubleDCT_1D3.nl : j12 + j11;
                        int i4 = i3;
                        futureArr[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dct.DoubleDCT_1D.4
                            @Override // java.lang.Runnable
                            public void run() {
                                for (long j14 = j12; j14 < j13; j14++) {
                                    long j15 = 2 * j14;
                                    double d2 = doubleLargeArray.getDouble(j + j14);
                                    doubleLargeArray2.setDouble(j15, DoubleDCT_1D.this.wl.getDouble(j15) * d2);
                                    long j16 = j15 + 1;
                                    doubleLargeArray2.setDouble(j16, (-DoubleDCT_1D.this.wl.getDouble(j16)) * d2);
                                }
                            }
                        });
                        i3 = i4 + 1;
                        doubleDCT_1D3 = doubleDCT_1D3;
                        i2 = i2;
                        i = 1;
                    }
                    doubleDCT_1D = doubleDCT_1D3;
                    try {
                        ConcurrencyUtils.waitForCompletion(futureArr);
                    } catch (InterruptedException e) {
                        Logger.getLogger(DoubleDCT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                    } catch (ExecutionException e2) {
                        Logger.getLogger(DoubleDCT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                    }
                    DoubleDCT_1D doubleDCT_1D4 = doubleDCT_1D;
                    doubleDCT_1D4.fft.realInverse(doubleLargeArray2, true);
                    LargeArrayUtils.arraycopy(doubleLargeArray2, 0L, doubleLargeArray, j, doubleDCT_1D4.nl);
                }
                doubleDCT_1D = doubleDCT_1D3;
            } else {
                doubleDCT_1D = this;
            }
            for (long j14 = 0; j14 < doubleDCT_1D.nl; j14++) {
                long j15 = j14 * 2;
                DoubleDCT_1D doubleDCT_1D5 = doubleDCT_1D;
                double d2 = doubleLargeArray.getDouble(j + j14);
                doubleLargeArray2.setDouble(j15, doubleDCT_1D5.wl.getDouble(j15) * d2);
                long j16 = j15 + 1;
                doubleLargeArray2.setDouble(j16, (-doubleDCT_1D5.wl.getDouble(j16)) * d2);
            }
            DoubleDCT_1D doubleDCT_1D42 = doubleDCT_1D;
            doubleDCT_1D42.fft.realInverse(doubleLargeArray2, true);
            LargeArrayUtils.arraycopy(doubleLargeArray2, 0L, doubleLargeArray, j, doubleDCT_1D42.nl);
        }
    }

    private double[] makect(int i) {
        int i2 = i * 2;
        double d = 3.141592653589793d / i2;
        double[] dArr = new double[i2];
        dArr[0] = 1.0d;
        for (int i3 = 1; i3 < i; i3++) {
            int i4 = i3 * 2;
            double d2 = i3 * d;
            dArr[i4] = FastMath.cos(d2);
            dArr[i4 + 1] = -FastMath.sin(d2);
        }
        return dArr;
    }

    private DoubleLargeArray makect(long j) {
        long j2 = j * 2;
        double d = 3.141592653589793d / j2;
        DoubleLargeArray doubleLargeArray = new DoubleLargeArray(j2);
        doubleLargeArray.setDouble(0L, 1.0d);
        for (long j3 = 1; j3 < j; j3++) {
            long j4 = j3 * 2;
            double d2 = j3 * d;
            doubleLargeArray.setDouble(j4, FastMath.cos(d2));
            doubleLargeArray.setDouble(j4 + 1, -FastMath.sin(d2));
        }
        return doubleLargeArray;
    }

    private static void rftfsub(int i, double[] dArr, int i2, int i3, double[] dArr2, int i4) {
        int i5 = i >> 1;
        int i6 = (i3 * 2) / i5;
        int i7 = 0;
        for (int i8 = 2; i8 < i5; i8 += 2) {
            i7 += i6;
            double d = 0.5d - dArr2[(i4 + i3) - i7];
            double d2 = dArr2[i4 + i7];
            int i9 = i2 + i8;
            int i10 = i2 + (i - i8);
            double d3 = dArr[i9];
            double d4 = d3 - dArr[i10];
            int i11 = i9 + 1;
            int i12 = i10 + 1;
            double d5 = dArr[i11] + dArr[i12];
            double d6 = (d * d4) - (d2 * d5);
            double d7 = (d * d5) + (d2 * d4);
            dArr[i9] = d3 - d6;
            dArr[i11] = dArr[i11] - d7;
            dArr[i10] = dArr[i10] + d6;
            dArr[i12] = dArr[i12] - d7;
        }
    }

    private static void rftfsub(long j, DoubleLargeArray doubleLargeArray, long j2, long j3, DoubleLargeArray doubleLargeArray2, long j4) {
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray2;
        long j5 = j >> 1;
        long j6 = (j3 * 2) / j5;
        long j7 = 0;
        long j8 = 2;
        while (j8 < j5) {
            j7 += j6;
            double d = 0.5d - doubleLargeArray3.getDouble((j4 + j3) - j7);
            double d2 = doubleLargeArray3.getDouble(j4 + j7);
            long j9 = j2 + j8;
            long j10 = j2 + (j - j8);
            double d3 = doubleLargeArray.getDouble(j9) - doubleLargeArray.getDouble(j10);
            long j11 = j9 + 1;
            long j12 = j6;
            long j13 = j10 + 1;
            double d4 = doubleLargeArray.getDouble(j11) + doubleLargeArray.getDouble(j13);
            double d5 = (d * d3) - (d2 * d4);
            double d6 = (d * d4) + (d2 * d3);
            doubleLargeArray.setDouble(j9, doubleLargeArray.getDouble(j9) - d5);
            doubleLargeArray.setDouble(j11, doubleLargeArray.getDouble(j11) - d6);
            doubleLargeArray.setDouble(j10, doubleLargeArray.getDouble(j10) + d5);
            doubleLargeArray.setDouble(j13, doubleLargeArray.getDouble(j13) - d6);
            j8 += 2;
            j5 = j5;
            j6 = j12;
            doubleLargeArray3 = doubleLargeArray2;
        }
    }

    private static void rftbsub(int i, double[] dArr, int i2, int i3, double[] dArr2, int i4) {
        int i5 = i >> 1;
        int i6 = (i3 * 2) / i5;
        int i7 = 0;
        for (int i8 = 2; i8 < i5; i8 += 2) {
            i7 += i6;
            double d = 0.5d - dArr2[(i4 + i3) - i7];
            double d2 = dArr2[i4 + i7];
            int i9 = i2 + i8;
            int i10 = i2 + (i - i8);
            double d3 = dArr[i9];
            double d4 = d3 - dArr[i10];
            int i11 = i9 + 1;
            int i12 = i10 + 1;
            double d5 = dArr[i11] + dArr[i12];
            double d6 = (d * d4) + (d2 * d5);
            double d7 = (d * d5) - (d2 * d4);
            dArr[i9] = d3 - d6;
            dArr[i11] = dArr[i11] - d7;
            dArr[i10] = dArr[i10] + d6;
            dArr[i12] = dArr[i12] - d7;
        }
    }

    private static void rftbsub(long j, DoubleLargeArray doubleLargeArray, long j2, long j3, DoubleLargeArray doubleLargeArray2, long j4) {
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray2;
        long j5 = j >> 1;
        long j6 = (j3 * 2) / j5;
        long j7 = 0;
        long j8 = 2;
        while (j8 < j5) {
            j7 += j6;
            double d = 0.5d - doubleLargeArray3.getDouble((j4 + j3) - j7);
            double d2 = doubleLargeArray3.getDouble(j4 + j7);
            long j9 = j2 + j8;
            long j10 = j2 + (j - j8);
            double d3 = doubleLargeArray.getDouble(j9) - doubleLargeArray.getDouble(j10);
            long j11 = j9 + 1;
            long j12 = j6;
            long j13 = j10 + 1;
            double d4 = doubleLargeArray.getDouble(j11) + doubleLargeArray.getDouble(j13);
            double d5 = (d * d3) + (d2 * d4);
            double d6 = (d * d4) - (d2 * d3);
            doubleLargeArray.setDouble(j9, doubleLargeArray.getDouble(j9) - d5);
            doubleLargeArray.setDouble(j11, doubleLargeArray.getDouble(j11) - d6);
            doubleLargeArray.setDouble(j10, doubleLargeArray.getDouble(j10) + d5);
            doubleLargeArray.setDouble(j13, doubleLargeArray.getDouble(j13) - d6);
            j8 += 2;
            j5 = j5;
            j6 = j12;
            doubleLargeArray3 = doubleLargeArray2;
        }
    }
}
