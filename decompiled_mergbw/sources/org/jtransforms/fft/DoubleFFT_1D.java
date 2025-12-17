package org.jtransforms.fft;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.math3.util.FastMath;
import org.jtransforms.utils.CommonUtils;
import pl.edu.icm.jlargearrays.ConcurrencyUtils;
import pl.edu.icm.jlargearrays.DoubleLargeArray;
import pl.edu.icm.jlargearrays.LargeArray;
import pl.edu.icm.jlargearrays.LargeArrayUtils;
import pl.edu.icm.jlargearrays.LongLargeArray;
/* loaded from: classes5.dex */
public final class DoubleFFT_1D {
    private static final double PI = 3.141592653589793d;
    private static final double TWO_PI = 6.283185307179586d;
    private static final int[] factors = {4, 2, 3, 5};
    private double[] bk1;
    private DoubleLargeArray bk1l;
    private double[] bk2;
    private DoubleLargeArray bk2l;
    private int[] ip;
    private LongLargeArray ipl;
    private int n;
    private int nBluestein;
    private long nBluesteinl;
    private int nc;
    private long ncl;
    private long nl;
    private int nw;
    private long nwl;
    private Plans plan;
    private boolean useLargeArrays;
    private double[] w;
    private DoubleLargeArray wl;
    private double[] wtable;
    private double[] wtable_r;
    private DoubleLargeArray wtable_rl;
    private DoubleLargeArray wtablel;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum Plans {
        SPLIT_RADIX,
        MIXED_RADIX,
        BLUESTEIN
    }

    public DoubleFFT_1D(long j) {
        if (j < 1) {
            throw new IllegalArgumentException("n must be greater than 0");
        }
        boolean z = CommonUtils.isUseLargeArrays() || j * 2 > ((long) LargeArray.getMaxSizeOf32bitArray());
        this.useLargeArrays = z;
        this.n = (int) j;
        this.nl = j;
        if (!z) {
            if (!CommonUtils.isPowerOf2(j)) {
                if (CommonUtils.getReminder(j, factors) >= 211) {
                    this.plan = Plans.BLUESTEIN;
                    int nextPow2 = CommonUtils.nextPow2((this.n * 2) - 1);
                    this.nBluestein = nextPow2;
                    this.bk1 = new double[nextPow2 * 2];
                    this.bk2 = new double[nextPow2 * 2];
                    int[] iArr = new int[((int) FastMath.ceil((1 << (((int) (FastMath.log(nextPow2 + 0.5d) / FastMath.log(2.0d))) / 2)) + 2)) + 2];
                    this.ip = iArr;
                    int i = this.nBluestein;
                    double[] dArr = new double[i];
                    this.w = dArr;
                    int i2 = (i * 2) >> 2;
                    this.nw = i2;
                    CommonUtils.makewt(i2, iArr, dArr);
                    int i3 = this.nBluestein >> 2;
                    this.nc = i3;
                    CommonUtils.makect(i3, this.w, this.nw, this.ip);
                    bluesteini();
                    return;
                }
                this.plan = Plans.MIXED_RADIX;
                int i4 = this.n;
                this.wtable = new double[(i4 * 4) + 15];
                this.wtable_r = new double[(i4 * 2) + 15];
                cffti();
                rffti();
                return;
            }
            this.plan = Plans.SPLIT_RADIX;
            int[] iArr2 = new int[((int) FastMath.ceil((1 << (((int) (FastMath.log(j + 0.5d) / FastMath.log(2.0d))) / 2)) + 2)) + 2];
            this.ip = iArr2;
            int i5 = this.n;
            double[] dArr2 = new double[i5];
            this.w = dArr2;
            int i6 = (i5 * 2) >> 2;
            this.nw = i6;
            CommonUtils.makewt(i6, iArr2, dArr2);
            int i7 = this.n >> 2;
            this.nc = i7;
            CommonUtils.makect(i7, this.w, this.nw, this.ip);
        } else if (!CommonUtils.isPowerOf2(j)) {
            if (CommonUtils.getReminder(this.nl, factors) >= 211) {
                this.plan = Plans.BLUESTEIN;
                this.nBluesteinl = CommonUtils.nextPow2((this.nl * 2) - 1);
                this.bk1l = new DoubleLargeArray(this.nBluesteinl * 2);
                this.bk2l = new DoubleLargeArray(this.nBluesteinl * 2);
                this.ipl = new LongLargeArray(((long) FastMath.ceil((1 << ((int) (((long) (FastMath.log(this.nBluesteinl + 0.5d) / FastMath.log(2.0d))) / 2))) + 2)) + 2);
                DoubleLargeArray doubleLargeArray = new DoubleLargeArray(this.nBluesteinl);
                this.wl = doubleLargeArray;
                long j2 = (this.nBluesteinl * 2) >> 2;
                this.nwl = j2;
                CommonUtils.makewt(j2, this.ipl, doubleLargeArray);
                long j3 = this.nBluesteinl >> 2;
                this.ncl = j3;
                CommonUtils.makect(j3, this.wl, this.nwl, this.ipl);
                bluesteinil();
                return;
            }
            this.plan = Plans.MIXED_RADIX;
            this.wtablel = new DoubleLargeArray((this.nl * 4) + 15);
            this.wtable_rl = new DoubleLargeArray((this.nl * 2) + 15);
            cfftil();
            rfftil();
        } else {
            this.plan = Plans.SPLIT_RADIX;
            this.ipl = new LongLargeArray(((long) FastMath.ceil((1 << ((int) (((long) (FastMath.log(this.nl + 0.5d) / FastMath.log(2.0d))) / 2))) + 2)) + 2);
            DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(this.nl);
            this.wl = doubleLargeArray2;
            long j4 = (this.nl * 2) >> 2;
            this.nwl = j4;
            CommonUtils.makewt(j4, this.ipl, doubleLargeArray2);
            long j5 = this.nl >> 2;
            this.ncl = j5;
            CommonUtils.makect(j5, this.wl, this.nwl, this.ipl);
        }
    }

    public void complexForward(double[] dArr) {
        complexForward(dArr, 0);
    }

    public void complexForward(DoubleLargeArray doubleLargeArray) {
        complexForward(doubleLargeArray, 0L);
    }

    public void complexForward(double[] dArr, int i) {
        if (this.useLargeArrays) {
            complexForward(new DoubleLargeArray(dArr), i);
        } else if (this.n == 1) {
        } else {
            int i2 = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i2 == 1) {
                CommonUtils.cftbsub(this.n * 2, dArr, i, this.ip, this.nw, this.w);
            } else if (i2 == 2) {
                cfftf(dArr, i, -1);
            } else if (i2 != 3) {
            } else {
                bluestein_complex(dArr, i, -1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.jtransforms.fft.DoubleFFT_1D$29  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass29 {
        static final /* synthetic */ int[] $SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans;

        static {
            int[] iArr = new int[Plans.values().length];
            $SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans = iArr;
            try {
                iArr[Plans.SPLIT_RADIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[Plans.MIXED_RADIX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[Plans.BLUESTEIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void complexForward(DoubleLargeArray doubleLargeArray, long j) {
        if (!this.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                complexForward(doubleLargeArray.getData(), (int) j);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        } else if (this.nl == 1) {
        } else {
            int i = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i == 1) {
                CommonUtils.cftbsub(2 * this.nl, doubleLargeArray, j, this.ipl, this.nwl, this.wl);
            } else if (i == 2) {
                cfftf(doubleLargeArray, j, -1);
            } else if (i != 3) {
            } else {
                bluestein_complex(doubleLargeArray, j, -1);
            }
        }
    }

    public void complexInverse(double[] dArr, boolean z) {
        complexInverse(dArr, 0, z);
    }

    public void complexInverse(DoubleLargeArray doubleLargeArray, boolean z) {
        complexInverse(doubleLargeArray, 0L, z);
    }

    public void complexInverse(double[] dArr, int i, boolean z) {
        if (this.useLargeArrays) {
            complexInverse(new DoubleLargeArray(dArr), i, z);
        } else if (this.n == 1) {
        } else {
            int i2 = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i2 == 1) {
                CommonUtils.cftfsub(this.n * 2, dArr, i, this.ip, this.nw, this.w);
            } else if (i2 == 2) {
                cfftf(dArr, i, 1);
            } else if (i2 == 3) {
                bluestein_complex(dArr, i, 1);
            }
            if (z) {
                int i3 = this.n;
                CommonUtils.scale(i3, 1.0d / i3, dArr, i, true);
            }
        }
    }

    public void complexInverse(DoubleLargeArray doubleLargeArray, long j, boolean z) {
        if (!this.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                complexInverse(doubleLargeArray.getData(), (int) j, z);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        } else if (this.nl == 1) {
        } else {
            int i = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i == 1) {
                CommonUtils.cftfsub(2 * this.nl, doubleLargeArray, j, this.ipl, this.nwl, this.wl);
            } else if (i == 2) {
                cfftf(doubleLargeArray, j, 1);
            } else if (i == 3) {
                bluestein_complex(doubleLargeArray, j, 1);
            }
            if (z) {
                long j2 = this.nl;
                CommonUtils.scale(j2, 1.0d / j2, doubleLargeArray, j, true);
            }
        }
    }

    public void realForward(double[] dArr) {
        realForward(dArr, 0);
    }

    public void realForward(DoubleLargeArray doubleLargeArray) {
        realForward(doubleLargeArray, 0L);
    }

    public void realForward(double[] dArr, int i) {
        if (this.useLargeArrays) {
            realForward(new DoubleLargeArray(dArr), i);
        } else if (this.n != 1) {
            int i2 = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i2 == 1) {
                int i3 = this.n;
                if (i3 > 4) {
                    CommonUtils.cftfsub(i3, dArr, i, this.ip, this.nw, this.w);
                    CommonUtils.rftfsub(this.n, dArr, i, this.nc, this.w, this.nw);
                } else if (i3 == 4) {
                    CommonUtils.cftx020(dArr, i);
                }
                double d = dArr[i];
                int i4 = i + 1;
                double d2 = dArr[i4];
                dArr[i] = d + d2;
                dArr[i4] = d - d2;
            } else if (i2 == 2) {
                rfftf(dArr, i);
                for (int i5 = this.n - 1; i5 >= 2; i5--) {
                    int i6 = i + i5;
                    double d3 = dArr[i6];
                    int i7 = i6 - 1;
                    dArr[i6] = dArr[i7];
                    dArr[i7] = d3;
                }
            } else {
                if (i2 != 3) {
                    return;
                }
                bluestein_real_forward(dArr, i);
            }
        }
    }

    public void realForward(DoubleLargeArray doubleLargeArray, long j) {
        if (!this.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                realForward(doubleLargeArray.getData(), (int) j);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        } else if (this.nl == 1) {
        } else {
            int i = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i == 1) {
                long j2 = this.nl;
                if (j2 > 4) {
                    CommonUtils.cftfsub(j2, doubleLargeArray, j, this.ipl, this.nwl, this.wl);
                    CommonUtils.rftfsub(this.nl, doubleLargeArray, j, this.ncl, this.wl, this.nwl);
                } else if (j2 == 4) {
                    CommonUtils.cftx020(doubleLargeArray, j);
                }
                long j3 = j + 1;
                double d = doubleLargeArray.getDouble(j) - doubleLargeArray.getDouble(j3);
                doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) + doubleLargeArray.getDouble(j3));
                doubleLargeArray.setDouble(j3, d);
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                bluestein_real_forward(doubleLargeArray, j);
            } else {
                rfftf(doubleLargeArray, j);
                long j4 = this.nl;
                while (true) {
                    j4--;
                    if (j4 < 2) {
                        return;
                    }
                    long j5 = j + j4;
                    double d2 = doubleLargeArray.getDouble(j5);
                    long j6 = j5 - 1;
                    doubleLargeArray.setDouble(j5, doubleLargeArray.getDouble(j6));
                    doubleLargeArray.setDouble(j6, d2);
                }
            }
        }
    }

    public void realForwardFull(double[] dArr) {
        realForwardFull(dArr, 0);
    }

    public void realForwardFull(DoubleLargeArray doubleLargeArray) {
        realForwardFull(doubleLargeArray, 0L);
    }

    public void realForwardFull(final double[] dArr, final int i) {
        int i2;
        if (this.useLargeArrays) {
            realForwardFull(new DoubleLargeArray(dArr), i);
            return;
        }
        final int i3 = this.n * 2;
        int i4 = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
        if (i4 == 1) {
            realForward(dArr, i);
            int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
            if (numberOfThreads > 1 && this.n / 2 > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
                Future[] futureArr = new Future[numberOfThreads];
                int i5 = (this.n / 2) / numberOfThreads;
                int i6 = 0;
                while (i6 < numberOfThreads) {
                    final int i7 = i6 * i5;
                    final int i8 = i6 == numberOfThreads + (-1) ? this.n / 2 : i7 + i5;
                    int i9 = i6;
                    Future[] futureArr2 = futureArr;
                    futureArr2[i9] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.1
                        @Override // java.lang.Runnable
                        public void run() {
                            for (int i10 = i7; i10 < i8; i10++) {
                                int i11 = i10 * 2;
                                int i12 = i;
                                int i13 = i3;
                                int i14 = ((i13 - i11) % i13) + i12;
                                double[] dArr2 = dArr;
                                dArr2[i14] = dArr2[i12 + i11];
                                dArr2[i14 + 1] = -dArr2[i12 + i11 + 1];
                            }
                        }
                    });
                    i6 = i9 + 1;
                    futureArr = futureArr2;
                    numberOfThreads = numberOfThreads;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
            } else {
                for (int i10 = 0; i10 < this.n / 2; i10++) {
                    int i11 = i10 * 2;
                    int i12 = ((i3 - i11) % i3) + i;
                    int i13 = i11 + i;
                    dArr[i12] = dArr[i13];
                    dArr[i12 + 1] = -dArr[i13 + 1];
                }
            }
            int i14 = i + 1;
            dArr[this.n + i] = -dArr[i14];
            dArr[i14] = 0.0d;
        } else if (i4 == 2) {
            rfftf(dArr, i);
            int i15 = this.n;
            if (i15 % 2 == 0) {
                i2 = i15 / 2;
            } else {
                i2 = (i15 + 1) / 2;
            }
            for (int i16 = 1; i16 < i2; i16++) {
                int i17 = i16 * 2;
                int i18 = (i + i3) - i17;
                int i19 = i17 + i;
                dArr[i18 + 1] = -dArr[i19];
                dArr[i18] = dArr[i19 - 1];
            }
            int i20 = 1;
            while (true) {
                int i21 = this.n;
                if (i20 < i21) {
                    int i22 = (i21 + i) - i20;
                    int i23 = i22 + 1;
                    double d = dArr[i23];
                    dArr[i23] = dArr[i22];
                    dArr[i22] = d;
                    i20++;
                } else {
                    dArr[i + 1] = 0.0d;
                    return;
                }
            }
        } else {
            if (i4 != 3) {
                return;
            }
            bluestein_real_full(dArr, i, -1);
        }
    }

    public void realForwardFull(final DoubleLargeArray doubleLargeArray, final long j) {
        long j2;
        if (!this.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                realForwardFull(doubleLargeArray.getData(), (int) j);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        }
        final long j3 = this.nl * 2;
        int i = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
        if (i == 1) {
            realForward(doubleLargeArray, j);
            int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
            if (numberOfThreads > 1 && this.nl / 2 > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
                Future[] futureArr = new Future[numberOfThreads];
                long j4 = (this.nl / 2) / numberOfThreads;
                int i2 = 0;
                while (i2 < numberOfThreads) {
                    final long j5 = i2 * j4;
                    final long j6 = i2 == numberOfThreads + (-1) ? this.nl / 2 : j5 + j4;
                    int i3 = i2;
                    Future[] futureArr2 = futureArr;
                    futureArr2[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.2
                        @Override // java.lang.Runnable
                        public void run() {
                            for (long j7 = j5; j7 < j6; j7++) {
                                long j8 = 2 * j7;
                                long j9 = j;
                                long j10 = j3;
                                long j11 = ((j10 - j8) % j10) + j9;
                                DoubleLargeArray doubleLargeArray2 = doubleLargeArray;
                                doubleLargeArray2.setDouble(j11, doubleLargeArray2.getDouble(j9 + j8));
                                DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
                                doubleLargeArray3.setDouble(j11 + 1, -doubleLargeArray3.getDouble(j + j8 + 1));
                            }
                        }
                    });
                    i2 = i3 + 1;
                    futureArr = futureArr2;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
            } else {
                for (long j7 = 0; j7 < this.nl / 2; j7++) {
                    long j8 = j7 * 2;
                    long j9 = ((j3 - j8) % j3) + j;
                    long j10 = j8 + j;
                    doubleLargeArray.setDouble(j9, doubleLargeArray.getDouble(j10));
                    doubleLargeArray.setDouble(j9 + 1, -doubleLargeArray.getDouble(j10 + 1));
                }
            }
            long j11 = j + 1;
            doubleLargeArray.setDouble(this.nl + j, -doubleLargeArray.getDouble(j11));
            doubleLargeArray.setDouble(j11, 0.0d);
        } else if (i == 2) {
            rfftf(doubleLargeArray, j);
            long j12 = this.nl;
            if (j12 % 2 == 0) {
                j2 = j12 / 2;
            } else {
                j2 = (j12 + 1) / 2;
            }
            long j13 = 1;
            while (j13 < j2) {
                long j14 = j13 * 2;
                long j15 = (j + j3) - j14;
                long j16 = j14 + j;
                doubleLargeArray.setDouble(j15 + 1, -doubleLargeArray.getDouble(j16));
                doubleLargeArray.setDouble(j15, doubleLargeArray.getDouble(j16 - 1));
                j13++;
                j2 = j2;
            }
            long j17 = 1;
            while (true) {
                long j18 = this.nl;
                if (j17 < j18) {
                    long j19 = (j18 + j) - j17;
                    long j20 = j19 + 1;
                    double d = doubleLargeArray.getDouble(j20);
                    doubleLargeArray.setDouble(j20, doubleLargeArray.getDouble(j19));
                    doubleLargeArray.setDouble(j19, d);
                    j17++;
                } else {
                    doubleLargeArray.setDouble(j + 1, 0.0d);
                    return;
                }
            }
        } else {
            if (i != 3) {
                return;
            }
            bluestein_real_full(doubleLargeArray, j, -1L);
        }
    }

    public void realInverse(double[] dArr, boolean z) {
        realInverse(dArr, 0, z);
    }

    public void realInverse(DoubleLargeArray doubleLargeArray, boolean z) {
        realInverse(doubleLargeArray, 0L, z);
    }

    public void realInverse(double[] dArr, int i, boolean z) {
        if (this.useLargeArrays) {
            realInverse(new DoubleLargeArray(dArr), i, z);
        } else if (this.n != 1) {
            int i2 = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i2 == 1) {
                int i3 = i + 1;
                double d = (dArr[i] - dArr[i3]) * 0.5d;
                dArr[i3] = d;
                dArr[i] = dArr[i] - d;
                int i4 = this.n;
                if (i4 > 4) {
                    CommonUtils.rftfsub(i4, dArr, i, this.nc, this.w, this.nw);
                    CommonUtils.cftbsub(this.n, dArr, i, this.ip, this.nw, this.w);
                } else if (i4 == 4) {
                    CommonUtils.cftxc020(dArr, i);
                }
                if (z) {
                    int i5 = this.n;
                    CommonUtils.scale(i5, 1.0d / (i5 / 2.0d), dArr, i, false);
                    return;
                }
                return;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                bluestein_real_inverse(dArr, i);
                if (z) {
                    int i6 = this.n;
                    CommonUtils.scale(i6, 1.0d / i6, dArr, i, false);
                    return;
                }
                return;
            }
            for (int i7 = 2; i7 < this.n; i7++) {
                int i8 = i + i7;
                int i9 = i8 - 1;
                double d2 = dArr[i9];
                dArr[i9] = dArr[i8];
                dArr[i8] = d2;
            }
            rfftb(dArr, i);
            if (z) {
                int i10 = this.n;
                CommonUtils.scale(i10, 1.0d / i10, dArr, i, false);
            }
        }
    }

    public void realInverse(DoubleLargeArray doubleLargeArray, long j, boolean z) {
        if (!this.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                realInverse(doubleLargeArray.getData(), (int) j, z);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        }
        long j2 = 1;
        if (this.nl == 1) {
            return;
        }
        int i = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
        if (i == 1) {
            long j3 = 1 + j;
            doubleLargeArray.setDouble(j3, (doubleLargeArray.getDouble(j) - doubleLargeArray.getDouble(j3)) * 0.5d);
            doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) - doubleLargeArray.getDouble(j3));
            long j4 = this.nl;
            if (j4 > 4) {
                CommonUtils.rftfsub(j4, doubleLargeArray, j, this.ncl, this.wl, this.nwl);
                CommonUtils.cftbsub(this.nl, doubleLargeArray, j, this.ipl, this.nwl, this.wl);
            } else if (j4 == 4) {
                CommonUtils.cftxc020(doubleLargeArray, j);
            }
            if (z) {
                long j5 = this.nl;
                CommonUtils.scale(j5, 1.0d / (j5 / 2.0d), doubleLargeArray, j, false);
            }
        } else if (i == 2) {
            for (long j6 = 2; j6 < this.nl; j6++) {
                long j7 = j + j6;
                long j8 = j7 - j2;
                double d = doubleLargeArray.getDouble(j8);
                doubleLargeArray.setDouble(j8, doubleLargeArray.getDouble(j7));
                doubleLargeArray.setDouble(j7, d);
                j2 = 1;
            }
            rfftb(doubleLargeArray, j);
            if (z) {
                long j9 = this.nl;
                CommonUtils.scale(j9, 1.0d / j9, doubleLargeArray, j, false);
            }
        } else {
            if (i != 3) {
                return;
            }
            bluestein_real_inverse(doubleLargeArray, j);
            if (z) {
                long j10 = this.nl;
                CommonUtils.scale(j10, 1.0d / j10, doubleLargeArray, j, false);
            }
        }
    }

    public void realInverseFull(double[] dArr, boolean z) {
        realInverseFull(dArr, 0, z);
    }

    public void realInverseFull(DoubleLargeArray doubleLargeArray, boolean z) {
        realInverseFull(doubleLargeArray, 0L, z);
    }

    public void realInverseFull(final double[] dArr, final int i, boolean z) {
        int i2;
        if (this.useLargeArrays) {
            realInverseFull(new DoubleLargeArray(dArr), i, z);
            return;
        }
        final int i3 = this.n * 2;
        int i4 = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
        boolean z2 = true;
        if (i4 == 1) {
            realInverse2(dArr, i, z);
            int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
            if (numberOfThreads > 1 && this.n / 2 > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
                Future[] futureArr = new Future[numberOfThreads];
                int i5 = (this.n / 2) / numberOfThreads;
                int i6 = 0;
                while (i6 < numberOfThreads) {
                    final int i7 = i6 * i5;
                    final int i8 = i6 == numberOfThreads + (-1) ? this.n / 2 : i7 + i5;
                    int i9 = i6;
                    Future[] futureArr2 = futureArr;
                    futureArr2[i9] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.3
                        @Override // java.lang.Runnable
                        public void run() {
                            for (int i10 = i7; i10 < i8; i10++) {
                                int i11 = i10 * 2;
                                int i12 = i;
                                int i13 = i3;
                                int i14 = ((i13 - i11) % i13) + i12;
                                double[] dArr2 = dArr;
                                dArr2[i14] = dArr2[i12 + i11];
                                dArr2[i14 + 1] = -dArr2[i12 + i11 + 1];
                            }
                        }
                    });
                    i6 = i9 + 1;
                    futureArr = futureArr2;
                    z2 = z2;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
            } else {
                for (int i10 = 0; i10 < this.n / 2; i10++) {
                    int i11 = i10 * 2;
                    int i12 = ((i3 - i11) % i3) + i;
                    int i13 = i11 + i;
                    dArr[i12] = dArr[i13];
                    dArr[i12 + 1] = -dArr[i13 + 1];
                }
            }
            int i14 = i + 1;
            dArr[this.n + i] = -dArr[i14];
            dArr[i14] = 0.0d;
        } else if (i4 == 2) {
            rfftf(dArr, i);
            if (z) {
                int i15 = this.n;
                CommonUtils.scale(i15, 1.0d / i15, dArr, i, false);
            }
            int i16 = this.n;
            if (i16 % 2 == 0) {
                i2 = i16 / 2;
            } else {
                i2 = (i16 + 1) / 2;
            }
            for (int i17 = 1; i17 < i2; i17++) {
                int i18 = i17 * 2;
                int i19 = i + i18;
                int i20 = (i + i3) - i18;
                double d = -dArr[i19];
                dArr[i19] = d;
                dArr[i20 + 1] = -d;
                dArr[i20] = dArr[i19 - 1];
            }
            int i21 = 1;
            while (true) {
                int i22 = this.n;
                if (i21 < i22) {
                    int i23 = (i22 + i) - i21;
                    int i24 = i23 + 1;
                    double d2 = dArr[i24];
                    dArr[i24] = dArr[i23];
                    dArr[i23] = d2;
                    i21++;
                } else {
                    dArr[i + 1] = 0.0d;
                    return;
                }
            }
        } else {
            if (i4 != 3) {
                return;
            }
            bluestein_real_full(dArr, i, 1);
            if (z) {
                int i25 = this.n;
                CommonUtils.scale(i25, 1.0d / i25, dArr, i, true);
            }
        }
    }

    public void realInverseFull(final DoubleLargeArray doubleLargeArray, final long j, boolean z) {
        long j2;
        if (!this.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                realInverseFull(doubleLargeArray.getData(), (int) j, z);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        }
        final long j3 = this.nl * 2;
        int i = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
        if (i == 1) {
            realInverse2(doubleLargeArray, j, z);
            int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
            if (numberOfThreads > 1 && this.nl / 2 > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
                Future[] futureArr = new Future[numberOfThreads];
                long j4 = (this.nl / 2) / numberOfThreads;
                int i2 = 0;
                while (i2 < numberOfThreads) {
                    final long j5 = i2 * j4;
                    final long j6 = i2 == numberOfThreads + (-1) ? this.nl / 2 : j5 + j4;
                    int i3 = i2;
                    Future[] futureArr2 = futureArr;
                    futureArr2[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.4
                        @Override // java.lang.Runnable
                        public void run() {
                            for (long j7 = j5; j7 < j6; j7++) {
                                long j8 = 2 * j7;
                                long j9 = j;
                                long j10 = j3;
                                long j11 = ((j10 - j8) % j10) + j9;
                                DoubleLargeArray doubleLargeArray2 = doubleLargeArray;
                                doubleLargeArray2.setDouble(j11, doubleLargeArray2.getDouble(j9 + j8));
                                DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
                                doubleLargeArray3.setDouble(j11 + 1, -doubleLargeArray3.getDouble(j + j8 + 1));
                            }
                        }
                    });
                    i2 = i3 + 1;
                    futureArr = futureArr2;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
            } else {
                for (long j7 = 0; j7 < this.nl / 2; j7++) {
                    long j8 = j7 * 2;
                    long j9 = ((j3 - j8) % j3) + j;
                    long j10 = j8 + j;
                    doubleLargeArray.setDouble(j9, doubleLargeArray.getDouble(j10));
                    doubleLargeArray.setDouble(j9 + 1, -doubleLargeArray.getDouble(j10 + 1));
                }
            }
            long j11 = j + 1;
            doubleLargeArray.setDouble(this.nl + j, -doubleLargeArray.getDouble(j11));
            doubleLargeArray.setDouble(j11, 0.0d);
        } else if (i == 2) {
            rfftf(doubleLargeArray, j);
            if (z) {
                long j12 = this.nl;
                CommonUtils.scale(j12, 1.0d / j12, doubleLargeArray, j, false);
            }
            long j13 = this.nl;
            if (j13 % 2 == 0) {
                j2 = j13 / 2;
            } else {
                j2 = (j13 + 1) / 2;
            }
            for (long j14 = 1; j14 < j2; j14++) {
                long j15 = j14 * 2;
                long j16 = j + j15;
                long j17 = (j + j3) - j15;
                doubleLargeArray.setDouble(j16, -doubleLargeArray.getDouble(j16));
                doubleLargeArray.setDouble(j17 + 1, -doubleLargeArray.getDouble(j16));
                doubleLargeArray.setDouble(j17, doubleLargeArray.getDouble(j16 - 1));
            }
            long j18 = 1;
            while (true) {
                long j19 = this.nl;
                if (j18 < j19) {
                    long j20 = (j19 + j) - j18;
                    long j21 = j20 + 1;
                    double d = doubleLargeArray.getDouble(j21);
                    doubleLargeArray.setDouble(j21, doubleLargeArray.getDouble(j20));
                    doubleLargeArray.setDouble(j20, d);
                    j18++;
                } else {
                    doubleLargeArray.setDouble(j + 1, 0.0d);
                    return;
                }
            }
        } else {
            if (i != 3) {
                return;
            }
            bluestein_real_full(doubleLargeArray, j, 1L);
            if (z) {
                long j22 = this.nl;
                CommonUtils.scale(j22, 1.0d / j22, doubleLargeArray, j, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void realInverse2(double[] dArr, int i, boolean z) {
        if (this.useLargeArrays) {
            realInverse2(new DoubleLargeArray(dArr), i, z);
        } else if (this.n != 1) {
            int i2 = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i2 == 1) {
                int i3 = this.n;
                if (i3 > 4) {
                    CommonUtils.cftfsub(i3, dArr, i, this.ip, this.nw, this.w);
                    CommonUtils.rftbsub(this.n, dArr, i, this.nc, this.w, this.nw);
                } else if (i3 == 4) {
                    CommonUtils.cftbsub(i3, dArr, i, this.ip, this.nw, this.w);
                }
                double d = dArr[i];
                int i4 = i + 1;
                double d2 = dArr[i4];
                dArr[i] = d + d2;
                dArr[i4] = d - d2;
                if (z) {
                    int i5 = this.n;
                    CommonUtils.scale(i5, 1.0d / i5, dArr, i, false);
                }
            } else if (i2 == 2) {
                rfftf(dArr, i);
                for (int i6 = this.n - 1; i6 >= 2; i6--) {
                    int i7 = i + i6;
                    double d3 = dArr[i7];
                    int i8 = i7 - 1;
                    dArr[i7] = dArr[i8];
                    dArr[i8] = d3;
                }
                if (z) {
                    int i9 = this.n;
                    CommonUtils.scale(i9, 1.0d / i9, dArr, i, false);
                }
                int i10 = this.n;
                if (i10 % 2 == 0) {
                    int i11 = i10 / 2;
                    for (int i12 = 1; i12 < i11; i12++) {
                        int i13 = (i12 * 2) + i + 1;
                        dArr[i13] = -dArr[i13];
                    }
                    return;
                }
                int i14 = (i10 - 1) / 2;
                for (int i15 = 0; i15 < i14; i15++) {
                    int i16 = (i15 * 2) + i + 1;
                    dArr[i16] = -dArr[i16];
                }
            } else {
                if (i2 != 3) {
                    return;
                }
                bluestein_real_inverse2(dArr, i);
                if (z) {
                    int i17 = this.n;
                    CommonUtils.scale(i17, 1.0d / i17, dArr, i, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void realInverse2(DoubleLargeArray doubleLargeArray, long j, boolean z) {
        if (!this.useLargeArrays) {
            if (!doubleLargeArray.isLarge() && !doubleLargeArray.isConstant() && j < 2147483647L) {
                realInverse2(doubleLargeArray.getData(), (int) j, z);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        } else if (this.nl != 1) {
            int i = AnonymousClass29.$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans[this.plan.ordinal()];
            if (i == 1) {
                long j2 = this.nl;
                if (j2 > 4) {
                    CommonUtils.cftfsub(j2, doubleLargeArray, j, this.ipl, this.nwl, this.wl);
                    CommonUtils.rftbsub(this.nl, doubleLargeArray, j, this.ncl, this.wl, this.nwl);
                } else if (j2 == 4) {
                    CommonUtils.cftbsub(j2, doubleLargeArray, j, this.ipl, this.nwl, this.wl);
                }
                long j3 = j + 1;
                double d = doubleLargeArray.getDouble(j) - doubleLargeArray.getDouble(j3);
                doubleLargeArray.setDouble(j, doubleLargeArray.getDouble(j) + doubleLargeArray.getDouble(j3));
                doubleLargeArray.setDouble(j3, d);
                if (z) {
                    long j4 = this.nl;
                    CommonUtils.scale(j4, 1.0d / j4, doubleLargeArray, j, false);
                }
            } else if (i == 2) {
                rfftf(doubleLargeArray, j);
                long j5 = this.nl;
                while (true) {
                    j5--;
                    if (j5 < 2) {
                        break;
                    }
                    long j6 = j + j5;
                    double d2 = doubleLargeArray.getDouble(j6);
                    long j7 = j6 - 1;
                    doubleLargeArray.setDouble(j6, doubleLargeArray.getDouble(j7));
                    doubleLargeArray.setDouble(j7, d2);
                }
                if (z) {
                    long j8 = this.nl;
                    CommonUtils.scale(j8, 1.0d / j8, doubleLargeArray, j, false);
                }
                long j9 = this.nl;
                if (j9 % 2 == 0) {
                    long j10 = j9 / 2;
                    for (long j11 = 1; j11 < j10; j11++) {
                        long j12 = (j11 * 2) + j + 1;
                        doubleLargeArray.setDouble(j12, -doubleLargeArray.getDouble(j12));
                    }
                    return;
                }
                long j13 = (j9 - 1) / 2;
                for (long j14 = 0; j14 < j13; j14++) {
                    long j15 = (j14 * 2) + j + 1;
                    doubleLargeArray.setDouble(j15, -doubleLargeArray.getDouble(j15));
                }
            } else {
                if (i != 3) {
                    return;
                }
                bluestein_real_inverse2(doubleLargeArray, j);
                if (z) {
                    long j16 = this.nl;
                    CommonUtils.scale(j16, 1.0d / j16, doubleLargeArray, j, false);
                }
            }
        }
    }

    void cffti(int i, int i2) {
        int i3;
        int i4 = i;
        int i5 = 1;
        if (i4 == 1) {
            return;
        }
        int i6 = i4 * 2;
        int i7 = i4 * 4;
        int i8 = i4;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            int i12 = i9 + 1;
            i3 = 2;
            i10 = i12 <= 4 ? factors[i9] : i10 + 2;
            while (true) {
                int i13 = i8 / i10;
                if (i8 - (i10 * i13) != 0) {
                    break;
                }
                i11++;
                this.wtable[i2 + i11 + 1 + i7] = i10;
                if (i10 == 2 && i11 != 1) {
                    for (int i14 = 2; i14 <= i11; i14++) {
                        double[] dArr = this.wtable;
                        int i15 = i2 + (i11 - i14) + 2 + i7;
                        dArr[i15 + 1] = dArr[i15];
                    }
                    this.wtable[i2 + 2 + i7] = 2.0d;
                }
                if (i13 == 1) {
                    break loop0;
                }
                i4 = i;
                i8 = i13;
            }
            i9 = i12;
        }
        double[] dArr2 = this.wtable;
        double d = i4;
        dArr2[i2 + i7] = d;
        dArr2[i2 + 1 + i7] = i11;
        double d2 = 6.283185307179586d / d;
        int i16 = 1;
        int i17 = 1;
        int i18 = 1;
        while (i16 <= i11) {
            double d3 = d2;
            int i19 = (int) this.wtable[i2 + i16 + i5 + i7];
            int i20 = i17 * i19;
            int i21 = i4 / i20;
            int i22 = i21 + i21 + i3;
            int i23 = i19 - 1;
            int i24 = i5;
            int i25 = 0;
            while (i24 <= i23) {
                double[] dArr3 = this.wtable;
                int i26 = i2 + i18;
                dArr3[(i26 - 1) + i6] = 1.0d;
                double d4 = 0.0d;
                dArr3[i26 + i6] = 0.0d;
                int i27 = i25 + i17;
                double d5 = i27 * d3;
                int i28 = i18;
                int i29 = 4;
                while (i29 <= i22) {
                    i28 += 2;
                    d4 += 1.0d;
                    double d6 = d4 * d5;
                    int i30 = i2 + i28 + i6;
                    this.wtable[i30 - 1] = FastMath.cos(d6);
                    this.wtable[i30] = FastMath.sin(d6);
                    i29 += 2;
                    i27 = i27;
                }
                int i31 = i27;
                if (i19 > 5) {
                    double[] dArr4 = this.wtable;
                    int i32 = i2 + i18 + i6;
                    int i33 = i2 + i28 + i6;
                    dArr4[i32 - 1] = dArr4[i33 - 1];
                    dArr4[i32] = dArr4[i33];
                }
                i24++;
                i18 = i28;
                i25 = i31;
            }
            i16++;
            i4 = i;
            i17 = i20;
            d2 = d3;
            i5 = 1;
            i3 = 2;
        }
    }

    final void cffti() {
        int i;
        int i2;
        int i3 = this.n;
        if (i3 == 1) {
            return;
        }
        int i4 = i3 * 2;
        int i5 = i3 * 4;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        loop0: while (true) {
            int i9 = i6 + 1;
            i = 2;
            i7 = i9 <= 4 ? factors[i6] : i7 + 2;
            while (true) {
                int i10 = i3 / i7;
                if (i3 - (i7 * i10) != 0) {
                    break;
                }
                i2 = i8 + 1;
                this.wtable[i8 + 2 + i5] = i7;
                if (i7 == 2 && i2 != 1) {
                    for (int i11 = 2; i11 <= i2; i11++) {
                        int i12 = (i2 - i11) + 2 + i5;
                        double[] dArr = this.wtable;
                        dArr[i12 + 1] = dArr[i12];
                    }
                    this.wtable[i5 + 2] = 2.0d;
                }
                if (i10 == 1) {
                    break loop0;
                }
                i3 = i10;
                i8 = i2;
            }
            i6 = i9;
        }
        double[] dArr2 = this.wtable;
        int i13 = this.n;
        dArr2[i5] = i13;
        dArr2[i5 + 1] = i2;
        double d = 6.283185307179586d / i13;
        int i14 = 1;
        int i15 = 1;
        int i16 = 1;
        while (i14 <= i2) {
            i14++;
            int i17 = (int) this.wtable[i14 + i5];
            int i18 = i15 * i17;
            int i19 = this.n / i18;
            int i20 = i19 + i19 + i;
            int i21 = i17 - 1;
            int i22 = 1;
            int i23 = 0;
            while (i22 <= i21) {
                double[] dArr3 = this.wtable;
                dArr3[(i16 - 1) + i4] = 1.0d;
                int i24 = i16 + i4;
                double d2 = 0.0d;
                dArr3[i24] = 0.0d;
                int i25 = i23 + i15;
                int i26 = i16;
                double d3 = i25 * d;
                int i27 = i2;
                int i28 = 4;
                while (i28 <= i20) {
                    i26 += 2;
                    d2 += 1.0d;
                    double d4 = d2 * d3;
                    int i29 = i26 + i4;
                    this.wtable[i29 - 1] = FastMath.cos(d4);
                    this.wtable[i29] = FastMath.sin(d4);
                    i28 += 2;
                    i21 = i21;
                }
                int i30 = i21;
                if (i17 > 5) {
                    int i31 = i26 + i4;
                    double[] dArr4 = this.wtable;
                    dArr4[i24 - 1] = dArr4[i31 - 1];
                    dArr4[i24] = dArr4[i31];
                }
                i22++;
                i23 = i25;
                i16 = i26;
                i2 = i27;
                i21 = i30;
                i = 2;
            }
            i15 = i18;
        }
    }

    final void cfftil() {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8 = this.nl;
        long j9 = 1;
        if (j8 == 1) {
            return;
        }
        long j10 = 2;
        long j11 = j8 * 2;
        long j12 = 4;
        long j13 = j8 * 4;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        loop0: while (true) {
            long j17 = j14 + j9;
            long j18 = j17 <= j12 ? factors[(int) j14] : j15 + j10;
            while (true) {
                long j19 = j8 / j18;
                j = 0;
                if (j8 - (j18 * j19) != 0) {
                    break;
                }
                j2 = j16 + j9;
                long j20 = j16 + j10 + j13;
                j3 = j11;
                this.wtablel.setDouble(j20, j18);
                j4 = 1;
                if (j18 == j10 && j2 != 1) {
                    long j21 = j10;
                    while (j21 <= j2) {
                        long j22 = (j2 - j21) + j10 + j13;
                        DoubleLargeArray doubleLargeArray = this.wtablel;
                        doubleLargeArray.setDouble(j22 + 1, doubleLargeArray.getDouble(j22));
                        j21++;
                        j10 = 2;
                    }
                    this.wtablel.setDouble(j13 + 2, 2.0d);
                }
                if (j19 == 1) {
                    break loop0;
                }
                j8 = j19;
                j11 = j3;
                j9 = 1;
                j10 = 2;
                j16 = j2;
                j12 = 4;
            }
            j15 = j18;
            j14 = j17;
        }
        this.wtablel.setDouble(j13, this.nl);
        this.wtablel.setDouble(j13 + 1, j2);
        double d = 6.283185307179586d / this.nl;
        long j23 = 1;
        long j24 = 1;
        long j25 = 1;
        while (j23 <= j2) {
            long j26 = j23 + j4;
            long j27 = j2;
            long j28 = (long) this.wtablel.getDouble(j26 + j13);
            long j29 = j25 * j28;
            long j30 = this.nl / j29;
            long j31 = j30 + j30 + 2;
            long j32 = j28 - j4;
            long j33 = j;
            long j34 = j4;
            while (j34 <= j32) {
                long j35 = j13;
                long j36 = j29;
                this.wtablel.setDouble((j24 - j4) + j3, 1.0d);
                long j37 = j24 + j3;
                long j38 = j24;
                this.wtablel.setDouble(j37, 0.0d);
                long j39 = j33 + j25;
                double d2 = j39 * d;
                double d3 = 0.0d;
                long j40 = 4;
                while (j40 <= j31) {
                    j38 += 2;
                    d3 += 1.0d;
                    double d4 = d3 * d2;
                    long j41 = j31;
                    long j42 = j38 + j3;
                    this.wtablel.setDouble(j42 - 1, FastMath.cos(d4));
                    this.wtablel.setDouble(j42, FastMath.sin(d4));
                    j40 += 2;
                    j31 = j41;
                    d = d;
                    d2 = d2;
                }
                long j43 = j31;
                double d5 = d;
                if (j28 > 5) {
                    long j44 = j38 + j3;
                    DoubleLargeArray doubleLargeArray2 = this.wtablel;
                    j5 = j28;
                    j7 = 1;
                    j6 = j25;
                    doubleLargeArray2.setDouble(j37 - 1, doubleLargeArray2.getDouble(j44 - 1));
                    DoubleLargeArray doubleLargeArray3 = this.wtablel;
                    doubleLargeArray3.setDouble(j37, doubleLargeArray3.getDouble(j44));
                } else {
                    j5 = j28;
                    j6 = j25;
                    j7 = 1;
                }
                j34 += j7;
                j33 = j39;
                j28 = j5;
                j25 = j6;
                j29 = j36;
                j13 = j35;
                j24 = j38;
                j = 0;
                j4 = j7;
                j31 = j43;
                d = d5;
            }
            j23 = j26;
            j2 = j27;
            j25 = j29;
        }
    }

    void rffti() {
        int i;
        int i2 = this.n;
        int i3 = 1;
        if (i2 == 1) {
            return;
        }
        int i4 = i2 * 2;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        loop0: while (true) {
            int i8 = i5 + 1;
            i6 = i8 <= 4 ? factors[i5] : i6 + 2;
            while (true) {
                int i9 = i2 / i6;
                if (i2 - (i6 * i9) != 0) {
                    break;
                }
                i = i7 + 1;
                this.wtable_r[i7 + 2 + i4] = i6;
                if (i6 == 2 && i != 1) {
                    for (int i10 = 2; i10 <= i; i10++) {
                        int i11 = (i - i10) + 2 + i4;
                        double[] dArr = this.wtable_r;
                        dArr[i11 + 1] = dArr[i11];
                    }
                    this.wtable_r[i4 + 2] = 2.0d;
                }
                if (i9 == 1) {
                    break loop0;
                }
                i7 = i;
                i2 = i9;
            }
            i5 = i8;
        }
        double[] dArr2 = this.wtable_r;
        int i12 = this.n;
        dArr2[i4] = i12;
        dArr2[i4 + 1] = i;
        double d = 6.283185307179586d / i12;
        if (i7 == 0) {
            return;
        }
        int i13 = 1;
        int i14 = 1;
        int i15 = 0;
        while (i13 <= i7) {
            i13++;
            int i16 = (int) this.wtable_r[i13 + i4];
            int i17 = i14 * i16;
            int i18 = this.n / i17;
            int i19 = i16 - i3;
            int i20 = i3;
            int i21 = 0;
            while (i20 <= i19) {
                i21 += i14;
                int i22 = i14;
                double d2 = i21 * d;
                double d3 = 0.0d;
                int i23 = i15;
                int i24 = 3;
                while (i24 <= i18) {
                    i23 += 2;
                    d3 += 1.0d;
                    double d4 = d3 * d2;
                    int i25 = i23 + this.n;
                    this.wtable_r[i25 - 2] = FastMath.cos(d4);
                    this.wtable_r[i25 - 1] = FastMath.sin(d4);
                    i24 += 2;
                    i13 = i13;
                }
                i15 += i18;
                i20++;
                i14 = i22;
                i3 = 1;
            }
            i14 = i17;
        }
    }

    void rfftil() {
        long j;
        long j2;
        long j3;
        long j4 = this.nl;
        long j5 = 1;
        if (j4 == 1) {
            return;
        }
        long j6 = 2;
        long j7 = j4 * 2;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        long j11 = 0;
        loop0: while (true) {
            long j12 = j9 + j5;
            j10 = j12 <= 4 ? factors[(int) j9] : j10 + j6;
            while (true) {
                long j13 = j4 / j10;
                if (j4 - (j10 * j13) != j8) {
                    break;
                }
                j = j11 + j5;
                this.wtable_rl.setDouble(j11 + j6 + j7, j10);
                if (j10 == j6) {
                    j3 = 1;
                    if (j != 1) {
                        long j14 = j6;
                        while (j14 <= j) {
                            long j15 = (j - j14) + j6 + j7;
                            DoubleLargeArray doubleLargeArray = this.wtable_rl;
                            doubleLargeArray.setDouble(j15 + 1, doubleLargeArray.getDouble(j15));
                            j14++;
                            j10 = j10;
                            j6 = 2;
                        }
                        j2 = j10;
                        this.wtable_rl.setDouble(j7 + 2, 2.0d);
                    } else {
                        j2 = j10;
                    }
                } else {
                    j2 = j10;
                    j3 = 1;
                }
                if (j13 == j3) {
                    break loop0;
                }
                j11 = j;
                j5 = j3;
                j4 = j13;
                j10 = j2;
                j6 = 2;
                j8 = 0;
            }
            j9 = j12;
        }
        this.wtable_rl.setDouble(j7, this.nl);
        this.wtable_rl.setDouble(j7 + j3, j);
        double d = 6.283185307179586d / this.nl;
        if (j11 == 0) {
            return;
        }
        long j16 = 0;
        long j17 = 1;
        long j18 = 1;
        while (j18 <= j11) {
            j18++;
            long j19 = (long) this.wtable_rl.getDouble(j18 + j7);
            long j20 = j17 * j19;
            long j21 = j7;
            long j22 = this.nl / j20;
            long j23 = j19 - 1;
            long j24 = j16;
            long j25 = 1;
            long j26 = 0;
            while (j25 <= j23) {
                long j27 = j23;
                long j28 = j26 + j17;
                long j29 = j17;
                double d2 = j28 * d;
                double d3 = 0.0d;
                long j30 = 3;
                long j31 = j24;
                while (j30 <= j22) {
                    j31 += 2;
                    d3 += 1.0d;
                    double d4 = d3 * d2;
                    double d5 = d2;
                    long j32 = j31 + this.nl;
                    this.wtable_rl.setDouble(j32 - 2, FastMath.cos(d4));
                    this.wtable_rl.setDouble(j32 - 1, FastMath.sin(d4));
                    j30 += 2;
                    d2 = d5;
                    d = d;
                    j28 = j28;
                    j18 = j18;
                }
                long j33 = j28;
                j24 += j22;
                j25++;
                j17 = j29;
                j23 = j27;
                d = d;
                j26 = j33;
            }
            j17 = j20;
            j16 = j24;
            j7 = j21;
        }
    }

    private void bluesteini() {
        double d = 3.141592653589793d / this.n;
        double[] dArr = this.bk1;
        dArr[0] = 1.0d;
        dArr[1] = 0.0d;
        int i = 0;
        int i2 = 1;
        while (true) {
            int i3 = this.n;
            if (i2 >= i3) {
                break;
            }
            int i4 = i2 * 2;
            i += i4 - 1;
            if (i >= i3 * 2) {
                i -= i3 * 2;
            }
            double d2 = i * d;
            this.bk1[i4] = FastMath.cos(d2);
            this.bk1[i4 + 1] = FastMath.sin(d2);
            i2++;
        }
        double d3 = 1.0d / this.nBluestein;
        double[] dArr2 = this.bk2;
        double[] dArr3 = this.bk1;
        dArr2[0] = dArr3[0] * d3;
        dArr2[1] = dArr3[1] * d3;
        for (int i5 = 2; i5 < this.n * 2; i5 += 2) {
            double[] dArr4 = this.bk2;
            double[] dArr5 = this.bk1;
            dArr4[i5] = dArr5[i5] * d3;
            int i6 = i5 + 1;
            dArr4[i6] = dArr5[i6] * d3;
            int i7 = this.nBluestein;
            dArr4[(i7 * 2) - i5] = dArr4[i5];
            dArr4[((i7 * 2) - i5) + 1] = dArr4[i6];
        }
        CommonUtils.cftbsub(this.nBluestein * 2, this.bk2, 0, this.ip, this.nw, this.w);
    }

    private void bluesteinil() {
        double d = 3.141592653589793d / this.nl;
        this.bk1l.setDouble(0L, 1.0d);
        this.bk1l.setDouble(1L, 0.0d);
        int i = 1;
        long j = 0;
        while (true) {
            long j2 = this.nl;
            if (i >= j2) {
                break;
            }
            int i2 = i * 2;
            j += i2 - 1;
            if (j >= j2 * 2) {
                j -= j2 * 2;
            }
            double d2 = j * d;
            this.bk1l.setDouble(i2, FastMath.cos(d2));
            this.bk1l.setDouble(i2 + 1, FastMath.sin(d2));
            i++;
        }
        double d3 = 1.0d / this.nBluesteinl;
        this.bk2l.setDouble(0L, this.bk1l.getDouble(0L) * d3);
        this.bk2l.setDouble(1L, this.bk1l.getDouble(1L) * d3);
        int i3 = 2;
        while (true) {
            long j3 = i3;
            if (j3 < this.nl * 2) {
                this.bk2l.setDouble(j3, this.bk1l.getDouble(j3) * d3);
                long j4 = i3 + 1;
                this.bk2l.setDouble(j4, this.bk1l.getDouble(j4) * d3);
                DoubleLargeArray doubleLargeArray = this.bk2l;
                doubleLargeArray.setDouble((this.nBluesteinl * 2) - j3, doubleLargeArray.getDouble(j3));
                DoubleLargeArray doubleLargeArray2 = this.bk2l;
                doubleLargeArray2.setDouble(((this.nBluesteinl * 2) - j3) + 1, doubleLargeArray2.getDouble(j4));
                i3 += 2;
            } else {
                CommonUtils.cftbsub(this.nBluesteinl * 2, this.bk2l, 0L, this.ipl, this.nwl, this.wl);
                return;
            }
        }
    }

    private void bluestein_complex(final double[] dArr, final int i, final int i2) {
        final double[] dArr2 = new double[this.nBluestein * 2];
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        int i3 = 0;
        if (numberOfThreads > 1 && this.n >= CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i4 = (numberOfThreads < 4 || ((long) this.n) < CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 4;
            Future[] futureArr = new Future[i4];
            int i5 = this.n / i4;
            int i6 = 0;
            while (i6 < i4) {
                final int i7 = i6 * i5;
                final int i8 = i6 == i4 + (-1) ? this.n : i7 + i5;
                int i9 = i6;
                futureArr[i9] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i2 > 0) {
                            for (int i10 = i7; i10 < i8; i10++) {
                                int i11 = i10 * 2;
                                int i12 = i11 + 1;
                                int i13 = i;
                                int i14 = i13 + i11;
                                int i15 = i13 + i12;
                                dArr2[i11] = (dArr[i14] * DoubleFFT_1D.this.bk1[i11]) - (dArr[i15] * DoubleFFT_1D.this.bk1[i12]);
                                dArr2[i12] = (dArr[i14] * DoubleFFT_1D.this.bk1[i12]) + (dArr[i15] * DoubleFFT_1D.this.bk1[i11]);
                            }
                            return;
                        }
                        for (int i16 = i7; i16 < i8; i16++) {
                            int i17 = i16 * 2;
                            int i18 = i17 + 1;
                            int i19 = i;
                            int i20 = i19 + i17;
                            int i21 = i19 + i18;
                            dArr2[i17] = (dArr[i20] * DoubleFFT_1D.this.bk1[i17]) + (dArr[i21] * DoubleFFT_1D.this.bk1[i18]);
                            dArr2[i18] = ((-dArr[i20]) * DoubleFFT_1D.this.bk1[i18]) + (dArr[i21] * DoubleFFT_1D.this.bk1[i17]);
                        }
                    }
                });
                i6 = i9 + 1;
            }
            String str = null;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            int i10 = this.nBluestein / i4;
            int i11 = 0;
            while (i11 < i4) {
                final int i12 = i11 * i10;
                final int i13 = i11 == i4 + (-1) ? this.nBluestein : i12 + i10;
                futureArr[i11] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i2 > 0) {
                            for (int i14 = i12; i14 < i13; i14++) {
                                int i15 = i14 * 2;
                                int i16 = i15 + 1;
                                double d = ((-dArr2[i15]) * DoubleFFT_1D.this.bk2[i16]) + (dArr2[i16] * DoubleFFT_1D.this.bk2[i15]);
                                double[] dArr3 = dArr2;
                                dArr3[i15] = (dArr3[i15] * DoubleFFT_1D.this.bk2[i15]) + (dArr2[i16] * DoubleFFT_1D.this.bk2[i16]);
                                dArr2[i16] = d;
                            }
                            return;
                        }
                        for (int i17 = i12; i17 < i13; i17++) {
                            int i18 = i17 * 2;
                            int i19 = i18 + 1;
                            double d2 = (dArr2[i18] * DoubleFFT_1D.this.bk2[i19]) + (dArr2[i19] * DoubleFFT_1D.this.bk2[i18]);
                            double[] dArr4 = dArr2;
                            dArr4[i18] = (dArr4[i18] * DoubleFFT_1D.this.bk2[i18]) - (dArr2[i19] * DoubleFFT_1D.this.bk2[i19]);
                            dArr2[i19] = d2;
                        }
                    }
                });
                i11++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            CommonUtils.cftfsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            int i14 = this.n / i4;
            while (i3 < i4) {
                final int i15 = i3 * i14;
                final int i16 = i3 == i4 + (-1) ? this.n : i15 + i14;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i2 > 0) {
                            for (int i17 = i15; i17 < i16; i17++) {
                                int i18 = i17 * 2;
                                int i19 = i18 + 1;
                                int i20 = i;
                                dArr[i20 + i18] = (DoubleFFT_1D.this.bk1[i18] * dArr2[i18]) - (DoubleFFT_1D.this.bk1[i19] * dArr2[i19]);
                                dArr[i20 + i19] = (DoubleFFT_1D.this.bk1[i19] * dArr2[i18]) + (DoubleFFT_1D.this.bk1[i18] * dArr2[i19]);
                            }
                            return;
                        }
                        for (int i21 = i15; i21 < i16; i21++) {
                            int i22 = i21 * 2;
                            int i23 = i22 + 1;
                            int i24 = i;
                            dArr[i24 + i22] = (DoubleFFT_1D.this.bk1[i22] * dArr2[i22]) + (DoubleFFT_1D.this.bk1[i23] * dArr2[i23]);
                            dArr[i24 + i23] = ((-DoubleFFT_1D.this.bk1[i23]) * dArr2[i22]) + (DoubleFFT_1D.this.bk1[i22] * dArr2[i23]);
                        }
                    }
                });
                i3++;
                str = str;
                i4 = i4;
            }
            String str2 = str;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e5) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, str2, (Throwable) e5);
                return;
            } catch (ExecutionException e6) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, str2, (Throwable) e6);
                return;
            }
        }
        if (i2 > 0) {
            for (int i17 = 0; i17 < this.n; i17++) {
                int i18 = i17 * 2;
                int i19 = i18 + 1;
                int i20 = i + i18;
                int i21 = i + i19;
                double d = dArr[i20];
                double[] dArr3 = this.bk1;
                dArr2[i18] = (d * dArr3[i18]) - (dArr[i21] * dArr3[i19]);
                dArr2[i19] = (dArr[i20] * dArr3[i19]) + (dArr[i21] * dArr3[i18]);
            }
        } else {
            for (int i22 = 0; i22 < this.n; i22++) {
                int i23 = i22 * 2;
                int i24 = i23 + 1;
                int i25 = i + i23;
                int i26 = i + i24;
                double d2 = dArr[i25];
                double[] dArr4 = this.bk1;
                dArr2[i23] = (d2 * dArr4[i23]) + (dArr[i26] * dArr4[i24]);
                dArr2[i24] = ((-dArr[i25]) * dArr4[i24]) + (dArr[i26] * dArr4[i23]);
            }
        }
        CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
        if (i2 > 0) {
            for (int i27 = 0; i27 < this.nBluestein; i27++) {
                int i28 = i27 * 2;
                int i29 = i28 + 1;
                double d3 = dArr2[i28];
                double[] dArr5 = this.bk2;
                double d4 = dArr5[i29];
                double d5 = dArr2[i29];
                double d6 = dArr5[i28];
                dArr2[i28] = (d3 * d6) + (d5 * d4);
                dArr2[i29] = ((-d3) * d4) + (d5 * d6);
            }
        } else {
            for (int i30 = 0; i30 < this.nBluestein; i30++) {
                int i31 = i30 * 2;
                int i32 = i31 + 1;
                double d7 = dArr2[i31];
                double[] dArr6 = this.bk2;
                double d8 = dArr6[i32];
                double d9 = dArr2[i32];
                double d10 = dArr6[i31];
                dArr2[i31] = (d7 * d10) - (d9 * d8);
                dArr2[i32] = (d7 * d8) + (d9 * d10);
            }
        }
        CommonUtils.cftfsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
        if (i2 > 0) {
            while (i3 < this.n) {
                int i33 = i3 * 2;
                int i34 = i33 + 1;
                double[] dArr7 = this.bk1;
                dArr[i + i33] = (dArr7[i33] * dArr2[i33]) - (dArr7[i34] * dArr2[i34]);
                dArr[i + i34] = (dArr7[i34] * dArr2[i33]) + (dArr7[i33] * dArr2[i34]);
                i3++;
            }
            return;
        }
        while (i3 < this.n) {
            int i35 = i3 * 2;
            int i36 = i35 + 1;
            double[] dArr8 = this.bk1;
            dArr[i + i35] = (dArr8[i35] * dArr2[i35]) + (dArr8[i36] * dArr2[i36]);
            dArr[i + i36] = ((-dArr8[i36]) * dArr2[i35]) + (dArr8[i35] * dArr2[i36]);
            i3++;
        }
    }

    private void bluestein_complex(final DoubleLargeArray doubleLargeArray, final long j, final int i) {
        DoubleLargeArray doubleLargeArray2;
        final DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(this.nBluesteinl * 2);
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (numberOfThreads > 1 && this.nl > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i2 = 4;
            int i3 = (numberOfThreads < 4 || this.nl <= CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 2;
            Future[] futureArr = new Future[i3];
            long j2 = i3;
            long j3 = this.nl / j2;
            int i4 = 0;
            while (i4 < i3) {
                final long j4 = i4 * j3;
                final long j5 = i4 == i3 + (-1) ? this.nl : j4 + j3;
                Future[] futureArr2 = futureArr;
                futureArr2[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.8
                    @Override // java.lang.Runnable
                    public void run() {
                        long j6 = 2;
                        long j7 = 1;
                        if (i > 0) {
                            long j8 = j4;
                            while (j8 < j5) {
                                long j9 = j8 * j6;
                                long j10 = j9 + j7;
                                long j11 = j;
                                long j12 = j11 + j9;
                                long j13 = j11 + j10;
                                doubleLargeArray3.setDouble(j9, (doubleLargeArray.getDouble(j12) * DoubleFFT_1D.this.bk1l.getDouble(j9)) - (doubleLargeArray.getDouble(j13) * DoubleFFT_1D.this.bk1l.getDouble(j10)));
                                doubleLargeArray3.setDouble(j10, (doubleLargeArray.getDouble(j12) * DoubleFFT_1D.this.bk1l.getDouble(j10)) + (doubleLargeArray.getDouble(j13) * DoubleFFT_1D.this.bk1l.getDouble(j9)));
                                j8++;
                                j7 = 1;
                                j6 = 2;
                            }
                            return;
                        }
                        long j14 = 1;
                        for (long j15 = j4; j15 < j5; j15++) {
                            long j16 = j15 * 2;
                            long j17 = j16 + j14;
                            long j18 = j;
                            long j19 = j18 + j16;
                            long j20 = j18 + j17;
                            doubleLargeArray3.setDouble(j16, (doubleLargeArray.getDouble(j19) * DoubleFFT_1D.this.bk1l.getDouble(j16)) + (doubleLargeArray.getDouble(j20) * DoubleFFT_1D.this.bk1l.getDouble(j17)));
                            doubleLargeArray3.setDouble(j17, ((-doubleLargeArray.getDouble(j19)) * DoubleFFT_1D.this.bk1l.getDouble(j17)) + (doubleLargeArray.getDouble(j20) * DoubleFFT_1D.this.bk1l.getDouble(j16)));
                            j14 = 1;
                        }
                    }
                });
                i4++;
                i3 = i3;
                j2 = j2;
                futureArr = futureArr2;
            }
            long j6 = j2;
            Future[] futureArr3 = futureArr;
            int i5 = i3;
            String str = null;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray3, 0L, this.ipl, this.nwl, this.wl);
            long j7 = this.nBluesteinl / j6;
            int i6 = 0;
            while (i6 < i5) {
                final long j8 = i6 * j7;
                final long j9 = i6 == i5 + (-1) ? this.nBluesteinl : j8 + j7;
                futureArr3[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.9
                    @Override // java.lang.Runnable
                    public void run() {
                        long j10 = 2;
                        long j11 = 1;
                        if (i > 0) {
                            long j12 = j8;
                            while (j12 < j9) {
                                long j13 = j12 * j10;
                                long j14 = j13 + j11;
                                double d = ((-doubleLargeArray3.getDouble(j13)) * DoubleFFT_1D.this.bk2l.getDouble(j14)) + (doubleLargeArray3.getDouble(j14) * DoubleFFT_1D.this.bk2l.getDouble(j13));
                                DoubleLargeArray doubleLargeArray4 = doubleLargeArray3;
                                doubleLargeArray4.setDouble(j13, (doubleLargeArray4.getDouble(j13) * DoubleFFT_1D.this.bk2l.getDouble(j13)) + (doubleLargeArray3.getDouble(j14) * DoubleFFT_1D.this.bk2l.getDouble(j14)));
                                doubleLargeArray3.setDouble(j14, d);
                                j12++;
                                j11 = 1;
                                j10 = 2;
                            }
                            return;
                        }
                        long j15 = 1;
                        for (long j16 = j8; j16 < j9; j16++) {
                            long j17 = j16 * 2;
                            long j18 = j17 + j15;
                            double d2 = (doubleLargeArray3.getDouble(j17) * DoubleFFT_1D.this.bk2l.getDouble(j18)) + (doubleLargeArray3.getDouble(j18) * DoubleFFT_1D.this.bk2l.getDouble(j17));
                            DoubleLargeArray doubleLargeArray5 = doubleLargeArray3;
                            doubleLargeArray5.setDouble(j17, (doubleLargeArray5.getDouble(j17) * DoubleFFT_1D.this.bk2l.getDouble(j17)) - (doubleLargeArray3.getDouble(j18) * DoubleFFT_1D.this.bk2l.getDouble(j18)));
                            doubleLargeArray3.setDouble(j18, d2);
                            j15 = 1;
                        }
                    }
                });
                i6++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            CommonUtils.cftfsub(this.nBluesteinl * 2, doubleLargeArray3, 0L, this.ipl, this.nwl, this.wl);
            long j10 = this.nl / j6;
            int i7 = 0;
            while (i7 < i5) {
                final long j11 = i7 * j10;
                final long j12 = i7 == i5 + (-1) ? this.nl : j11 + j10;
                futureArr3[i7] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.10
                    @Override // java.lang.Runnable
                    public void run() {
                        long j13 = 2;
                        long j14 = 1;
                        if (i > 0) {
                            long j15 = j11;
                            while (j15 < j12) {
                                long j16 = j15 * j13;
                                long j17 = j16 + j14;
                                long j18 = j;
                                doubleLargeArray.setDouble(j18 + j16, (DoubleFFT_1D.this.bk1l.getDouble(j16) * doubleLargeArray3.getDouble(j16)) - (DoubleFFT_1D.this.bk1l.getDouble(j17) * doubleLargeArray3.getDouble(j17)));
                                doubleLargeArray.setDouble(j18 + j17, (DoubleFFT_1D.this.bk1l.getDouble(j17) * doubleLargeArray3.getDouble(j16)) + (DoubleFFT_1D.this.bk1l.getDouble(j16) * doubleLargeArray3.getDouble(j17)));
                                j15++;
                                j14 = 1;
                                j13 = 2;
                            }
                            return;
                        }
                        long j19 = 1;
                        for (long j20 = j11; j20 < j12; j20++) {
                            long j21 = j20 * 2;
                            long j22 = j21 + j19;
                            long j23 = j;
                            doubleLargeArray.setDouble(j23 + j21, (DoubleFFT_1D.this.bk1l.getDouble(j21) * doubleLargeArray3.getDouble(j21)) + (DoubleFFT_1D.this.bk1l.getDouble(j22) * doubleLargeArray3.getDouble(j22)));
                            doubleLargeArray.setDouble(j23 + j22, ((-DoubleFFT_1D.this.bk1l.getDouble(j22)) * doubleLargeArray3.getDouble(j21)) + (DoubleFFT_1D.this.bk1l.getDouble(j21) * doubleLargeArray3.getDouble(j22)));
                            j19 = 1;
                        }
                    }
                });
                i7++;
                str = str;
                i5 = i5;
            }
            String str2 = str;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
                return;
            } catch (InterruptedException e5) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, str2, (Throwable) e5);
                return;
            } catch (ExecutionException e6) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, str2, (Throwable) e6);
                return;
            }
        }
        long j13 = 1;
        if (i > 0) {
            long j14 = 0;
            while (j14 < this.nl) {
                long j15 = j14 * 2;
                long j16 = j15 + j13;
                long j17 = j + j15;
                long j18 = j + j16;
                doubleLargeArray3.setDouble(j15, (doubleLargeArray.getDouble(j17) * this.bk1l.getDouble(j15)) - (doubleLargeArray.getDouble(j18) * this.bk1l.getDouble(j16)));
                doubleLargeArray3.setDouble(j16, (doubleLargeArray.getDouble(j17) * this.bk1l.getDouble(j16)) + (doubleLargeArray.getDouble(j18) * this.bk1l.getDouble(j15)));
                j14++;
                j13 = 1;
            }
            doubleLargeArray2 = doubleLargeArray;
        } else {
            doubleLargeArray2 = doubleLargeArray;
            long j19 = 1;
            for (long j20 = 0; j20 < this.nl; j20++) {
                long j21 = j20 * 2;
                long j22 = j21 + j19;
                long j23 = j + j21;
                long j24 = j + j22;
                doubleLargeArray3.setDouble(j21, (doubleLargeArray2.getDouble(j23) * this.bk1l.getDouble(j21)) + (doubleLargeArray2.getDouble(j24) * this.bk1l.getDouble(j22)));
                doubleLargeArray3.setDouble(j22, ((-doubleLargeArray2.getDouble(j23)) * this.bk1l.getDouble(j22)) + (doubleLargeArray2.getDouble(j24) * this.bk1l.getDouble(j21)));
                j19 = 1;
            }
        }
        CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray3, 0L, this.ipl, this.nwl, this.wl);
        if (i > 0) {
            for (long j25 = 0; j25 < this.nBluesteinl; j25++) {
                long j26 = j25 * 2;
                long j27 = j26 + 1;
                double d = ((-doubleLargeArray3.getDouble(j26)) * this.bk2l.getDouble(j27)) + (doubleLargeArray3.getDouble(j27) * this.bk2l.getDouble(j26));
                doubleLargeArray3.setDouble(j26, (doubleLargeArray3.getDouble(j26) * this.bk2l.getDouble(j26)) + (doubleLargeArray3.getDouble(j27) * this.bk2l.getDouble(j27)));
                doubleLargeArray3.setDouble(j27, d);
            }
        } else {
            long j28 = 1;
            for (long j29 = 0; j29 < this.nBluesteinl; j29++) {
                long j30 = j29 * 2;
                long j31 = j30 + j28;
                double d2 = (doubleLargeArray3.getDouble(j30) * this.bk2l.getDouble(j31)) + (doubleLargeArray3.getDouble(j31) * this.bk2l.getDouble(j30));
                doubleLargeArray3.setDouble(j30, (doubleLargeArray3.getDouble(j30) * this.bk2l.getDouble(j30)) - (doubleLargeArray3.getDouble(j31) * this.bk2l.getDouble(j31)));
                doubleLargeArray3.setDouble(j31, d2);
                j28 = 1;
            }
        }
        CommonUtils.cftfsub(this.nBluesteinl * 2, doubleLargeArray3, 0L, this.ipl, this.nwl, this.wl);
        if (i > 0) {
            for (long j32 = 0; j32 < this.nl; j32++) {
                long j33 = j32 * 2;
                long j34 = j33 + 1;
                doubleLargeArray2.setDouble(j + j33, (this.bk1l.getDouble(j33) * doubleLargeArray3.getDouble(j33)) - (this.bk1l.getDouble(j34) * doubleLargeArray3.getDouble(j34)));
                doubleLargeArray2.setDouble(j + j34, (this.bk1l.getDouble(j34) * doubleLargeArray3.getDouble(j33)) + (this.bk1l.getDouble(j33) * doubleLargeArray3.getDouble(j34)));
            }
            return;
        }
        long j35 = 1;
        for (long j36 = 0; j36 < this.nl; j36++) {
            long j37 = j36 * 2;
            long j38 = j37 + j35;
            doubleLargeArray2.setDouble(j + j37, (this.bk1l.getDouble(j37) * doubleLargeArray3.getDouble(j37)) + (this.bk1l.getDouble(j38) * doubleLargeArray3.getDouble(j38)));
            doubleLargeArray2.setDouble(j + j38, ((-this.bk1l.getDouble(j38)) * doubleLargeArray3.getDouble(j37)) + (this.bk1l.getDouble(j37) * doubleLargeArray3.getDouble(j38)));
            j35 = 1;
        }
    }

    private void bluestein_real_full(final double[] dArr, final int i, final int i2) {
        final double[] dArr2 = new double[this.nBluestein * 2];
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        int i3 = 0;
        if (numberOfThreads > 1 && this.n >= CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i4 = (numberOfThreads < 4 || ((long) this.n) < CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 4;
            Future[] futureArr = new Future[i4];
            int i5 = this.n / i4;
            int i6 = 0;
            while (i6 < i4) {
                final int i7 = i6 * i5;
                final int i8 = i6 == i4 + (-1) ? this.n : i7 + i5;
                int i9 = i6;
                futureArr[i9] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.11
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i2 > 0) {
                            for (int i10 = i7; i10 < i8; i10++) {
                                int i11 = i10 * 2;
                                int i12 = i11 + 1;
                                int i13 = i + i10;
                                dArr2[i11] = dArr[i13] * DoubleFFT_1D.this.bk1[i11];
                                dArr2[i12] = dArr[i13] * DoubleFFT_1D.this.bk1[i12];
                            }
                            return;
                        }
                        for (int i14 = i7; i14 < i8; i14++) {
                            int i15 = i14 * 2;
                            int i16 = i15 + 1;
                            int i17 = i + i14;
                            dArr2[i15] = dArr[i17] * DoubleFFT_1D.this.bk1[i15];
                            dArr2[i16] = (-dArr[i17]) * DoubleFFT_1D.this.bk1[i16];
                        }
                    }
                });
                i6 = i9 + 1;
            }
            String str = null;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            int i10 = this.nBluestein / i4;
            int i11 = 0;
            while (i11 < i4) {
                final int i12 = i11 * i10;
                final int i13 = i11 == i4 + (-1) ? this.nBluestein : i12 + i10;
                futureArr[i11] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.12
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i2 > 0) {
                            for (int i14 = i12; i14 < i13; i14++) {
                                int i15 = i14 * 2;
                                int i16 = i15 + 1;
                                double d = ((-dArr2[i15]) * DoubleFFT_1D.this.bk2[i16]) + (dArr2[i16] * DoubleFFT_1D.this.bk2[i15]);
                                double[] dArr3 = dArr2;
                                dArr3[i15] = (dArr3[i15] * DoubleFFT_1D.this.bk2[i15]) + (dArr2[i16] * DoubleFFT_1D.this.bk2[i16]);
                                dArr2[i16] = d;
                            }
                            return;
                        }
                        for (int i17 = i12; i17 < i13; i17++) {
                            int i18 = i17 * 2;
                            int i19 = i18 + 1;
                            double d2 = (dArr2[i18] * DoubleFFT_1D.this.bk2[i19]) + (dArr2[i19] * DoubleFFT_1D.this.bk2[i18]);
                            double[] dArr4 = dArr2;
                            dArr4[i18] = (dArr4[i18] * DoubleFFT_1D.this.bk2[i18]) - (dArr2[i19] * DoubleFFT_1D.this.bk2[i19]);
                            dArr2[i19] = d2;
                        }
                    }
                });
                i11++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            CommonUtils.cftfsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            int i14 = this.n / i4;
            while (i3 < i4) {
                final int i15 = i3 * i14;
                final int i16 = i3 == i4 + (-1) ? this.n : i15 + i14;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i2 > 0) {
                            for (int i17 = i15; i17 < i16; i17++) {
                                int i18 = i17 * 2;
                                int i19 = i18 + 1;
                                dArr[i + i18] = (DoubleFFT_1D.this.bk1[i18] * dArr2[i18]) - (DoubleFFT_1D.this.bk1[i19] * dArr2[i19]);
                                dArr[i + i19] = (DoubleFFT_1D.this.bk1[i19] * dArr2[i18]) + (DoubleFFT_1D.this.bk1[i18] * dArr2[i19]);
                            }
                            return;
                        }
                        for (int i20 = i15; i20 < i16; i20++) {
                            int i21 = i20 * 2;
                            int i22 = i21 + 1;
                            dArr[i + i21] = (DoubleFFT_1D.this.bk1[i21] * dArr2[i21]) + (DoubleFFT_1D.this.bk1[i22] * dArr2[i22]);
                            dArr[i + i22] = ((-DoubleFFT_1D.this.bk1[i22]) * dArr2[i21]) + (DoubleFFT_1D.this.bk1[i21] * dArr2[i22]);
                        }
                    }
                });
                i3++;
                str = str;
                i4 = i4;
            }
            String str2 = str;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e5) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, str2, (Throwable) e5);
                return;
            } catch (ExecutionException e6) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, str2, (Throwable) e6);
                return;
            }
        }
        if (i2 > 0) {
            for (int i17 = 0; i17 < this.n; i17++) {
                int i18 = i17 * 2;
                int i19 = i18 + 1;
                int i20 = i + i17;
                double d = dArr[i20];
                double[] dArr3 = this.bk1;
                dArr2[i18] = d * dArr3[i18];
                dArr2[i19] = dArr[i20] * dArr3[i19];
            }
        } else {
            for (int i21 = 0; i21 < this.n; i21++) {
                int i22 = i21 * 2;
                int i23 = i22 + 1;
                int i24 = i + i21;
                double d2 = dArr[i24];
                double[] dArr4 = this.bk1;
                dArr2[i22] = d2 * dArr4[i22];
                dArr2[i23] = (-dArr[i24]) * dArr4[i23];
            }
        }
        CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
        if (i2 > 0) {
            for (int i25 = 0; i25 < this.nBluestein; i25++) {
                int i26 = i25 * 2;
                int i27 = i26 + 1;
                double d3 = dArr2[i26];
                double[] dArr5 = this.bk2;
                double d4 = dArr5[i27];
                double d5 = dArr2[i27];
                double d6 = dArr5[i26];
                dArr2[i26] = (d3 * d6) + (d5 * d4);
                dArr2[i27] = ((-d3) * d4) + (d5 * d6);
            }
        } else {
            for (int i28 = 0; i28 < this.nBluestein; i28++) {
                int i29 = i28 * 2;
                int i30 = i29 + 1;
                double d7 = dArr2[i29];
                double[] dArr6 = this.bk2;
                double d8 = dArr6[i30];
                double d9 = dArr2[i30];
                double d10 = dArr6[i29];
                dArr2[i29] = (d7 * d10) - (d9 * d8);
                dArr2[i30] = (d7 * d8) + (d9 * d10);
            }
        }
        CommonUtils.cftfsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
        if (i2 > 0) {
            while (i3 < this.n) {
                int i31 = i3 * 2;
                int i32 = i31 + 1;
                double[] dArr7 = this.bk1;
                dArr[i + i31] = (dArr7[i31] * dArr2[i31]) - (dArr7[i32] * dArr2[i32]);
                dArr[i + i32] = (dArr7[i32] * dArr2[i31]) + (dArr7[i31] * dArr2[i32]);
                i3++;
            }
            return;
        }
        while (i3 < this.n) {
            int i33 = i3 * 2;
            int i34 = i33 + 1;
            double[] dArr8 = this.bk1;
            dArr[i + i33] = (dArr8[i33] * dArr2[i33]) + (dArr8[i34] * dArr2[i34]);
            dArr[i + i34] = ((-dArr8[i34]) * dArr2[i33]) + (dArr8[i33] * dArr2[i34]);
            i3++;
        }
    }

    private void bluestein_real_full(final DoubleLargeArray doubleLargeArray, final long j, final long j2) {
        DoubleLargeArray doubleLargeArray2;
        DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(this.nBluesteinl * 2);
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (numberOfThreads > 1 && this.nl > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i = 4;
            int i2 = (numberOfThreads < 4 || this.nl <= CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 2;
            Future[] futureArr = new Future[i2];
            long j3 = i2;
            long j4 = this.nl / j3;
            int i3 = 0;
            while (i3 < i2) {
                final long j5 = i3 * j4;
                final long j6 = i3 == i2 + (-1) ? this.nl : j5 + j4;
                Future[] futureArr2 = futureArr;
                int i4 = i2;
                final DoubleLargeArray doubleLargeArray4 = doubleLargeArray3;
                futureArr2[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.14
                    @Override // java.lang.Runnable
                    public void run() {
                        long j7 = 2;
                        if (j2 > 0) {
                            long j8 = j5;
                            while (j8 < j6) {
                                long j9 = j8 * j7;
                                long j10 = j9 + 1;
                                long j11 = j + j8;
                                doubleLargeArray4.setDouble(j9, doubleLargeArray.getDouble(j11) * DoubleFFT_1D.this.bk1l.getDouble(j9));
                                doubleLargeArray4.setDouble(j10, doubleLargeArray.getDouble(j11) * DoubleFFT_1D.this.bk1l.getDouble(j10));
                                j8++;
                                j7 = 2;
                            }
                            return;
                        }
                        for (long j12 = j5; j12 < j6; j12++) {
                            long j13 = j12 * 2;
                            long j14 = j13 + 1;
                            long j15 = j + j12;
                            doubleLargeArray4.setDouble(j13, doubleLargeArray.getDouble(j15) * DoubleFFT_1D.this.bk1l.getDouble(j13));
                            doubleLargeArray4.setDouble(j14, (-doubleLargeArray.getDouble(j15)) * DoubleFFT_1D.this.bk1l.getDouble(j14));
                        }
                    }
                });
                i3++;
                i2 = i4;
                futureArr = futureArr2;
                doubleLargeArray3 = doubleLargeArray3;
                j3 = j3;
            }
            long j7 = j3;
            Future[] futureArr3 = futureArr;
            int i5 = i2;
            final DoubleLargeArray doubleLargeArray5 = doubleLargeArray3;
            String str = null;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray5, 0L, this.ipl, this.nwl, this.wl);
            long j8 = this.nBluesteinl / j7;
            int i6 = 0;
            while (i6 < i5) {
                final long j9 = i6 * j8;
                final long j10 = i6 == i5 + (-1) ? this.nBluesteinl : j9 + j8;
                futureArr3[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.15
                    @Override // java.lang.Runnable
                    public void run() {
                        long j11 = 2;
                        long j12 = 1;
                        if (j2 > 0) {
                            long j13 = j9;
                            while (j13 < j10) {
                                long j14 = j13 * j11;
                                long j15 = j14 + j12;
                                double d = ((-doubleLargeArray5.getDouble(j14)) * DoubleFFT_1D.this.bk2l.getDouble(j15)) + (doubleLargeArray5.getDouble(j15) * DoubleFFT_1D.this.bk2l.getDouble(j14));
                                DoubleLargeArray doubleLargeArray6 = doubleLargeArray5;
                                doubleLargeArray6.setDouble(j14, (doubleLargeArray6.getDouble(j14) * DoubleFFT_1D.this.bk2l.getDouble(j14)) + (doubleLargeArray5.getDouble(j15) * DoubleFFT_1D.this.bk2l.getDouble(j15)));
                                doubleLargeArray5.setDouble(j15, d);
                                j13++;
                                j12 = 1;
                                j11 = 2;
                            }
                            return;
                        }
                        long j16 = 1;
                        for (long j17 = j9; j17 < j10; j17++) {
                            long j18 = j17 * 2;
                            long j19 = j18 + j16;
                            double d2 = (doubleLargeArray5.getDouble(j18) * DoubleFFT_1D.this.bk2l.getDouble(j19)) + (doubleLargeArray5.getDouble(j19) * DoubleFFT_1D.this.bk2l.getDouble(j18));
                            DoubleLargeArray doubleLargeArray7 = doubleLargeArray5;
                            doubleLargeArray7.setDouble(j18, (doubleLargeArray7.getDouble(j18) * DoubleFFT_1D.this.bk2l.getDouble(j18)) - (doubleLargeArray5.getDouble(j19) * DoubleFFT_1D.this.bk2l.getDouble(j19)));
                            doubleLargeArray5.setDouble(j19, d2);
                            j16 = 1;
                        }
                    }
                });
                i6++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            CommonUtils.cftfsub(this.nBluesteinl * 2, doubleLargeArray5, 0L, this.ipl, this.nwl, this.wl);
            long j11 = this.nl / j7;
            int i7 = 0;
            while (i7 < i5) {
                final long j12 = i7 * j11;
                final long j13 = i7 == i5 + (-1) ? this.nl : j12 + j11;
                futureArr3[i7] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.16
                    @Override // java.lang.Runnable
                    public void run() {
                        long j14 = 2;
                        long j15 = 1;
                        if (j2 > 0) {
                            long j16 = j12;
                            while (j16 < j13) {
                                long j17 = j16 * j14;
                                long j18 = j17 + j15;
                                doubleLargeArray.setDouble(j + j17, (DoubleFFT_1D.this.bk1l.getDouble(j17) * doubleLargeArray5.getDouble(j17)) - (DoubleFFT_1D.this.bk1l.getDouble(j18) * doubleLargeArray5.getDouble(j18)));
                                doubleLargeArray.setDouble(j + j18, (DoubleFFT_1D.this.bk1l.getDouble(j18) * doubleLargeArray5.getDouble(j17)) + (DoubleFFT_1D.this.bk1l.getDouble(j17) * doubleLargeArray5.getDouble(j18)));
                                j16++;
                                j15 = 1;
                                j14 = 2;
                            }
                            return;
                        }
                        long j19 = 1;
                        for (long j20 = j12; j20 < j13; j20++) {
                            long j21 = j20 * 2;
                            long j22 = j21 + j19;
                            doubleLargeArray.setDouble(j + j21, (DoubleFFT_1D.this.bk1l.getDouble(j21) * doubleLargeArray5.getDouble(j21)) + (DoubleFFT_1D.this.bk1l.getDouble(j22) * doubleLargeArray5.getDouble(j22)));
                            doubleLargeArray.setDouble(j + j22, ((-DoubleFFT_1D.this.bk1l.getDouble(j22)) * doubleLargeArray5.getDouble(j21)) + (DoubleFFT_1D.this.bk1l.getDouble(j21) * doubleLargeArray5.getDouble(j22)));
                            j19 = 1;
                        }
                    }
                });
                i7++;
                str = str;
                i5 = i5;
            }
            String str2 = str;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
                return;
            } catch (InterruptedException e5) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, str2, (Throwable) e5);
                return;
            } catch (ExecutionException e6) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, str2, (Throwable) e6);
                return;
            }
        }
        int i8 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        long j14 = 1;
        if (i8 > 0) {
            for (long j15 = 0; j15 < this.nl; j15++) {
                long j16 = j15 * 2;
                long j17 = j16 + 1;
                long j18 = j + j15;
                doubleLargeArray3.setDouble(j16, doubleLargeArray.getDouble(j18) * this.bk1l.getDouble(j16));
                doubleLargeArray3.setDouble(j17, doubleLargeArray.getDouble(j18) * this.bk1l.getDouble(j17));
            }
            doubleLargeArray2 = doubleLargeArray3;
        } else {
            doubleLargeArray2 = doubleLargeArray3;
            long j19 = 0;
            while (j19 < this.nl) {
                long j20 = j19 * 2;
                long j21 = j20 + j14;
                long j22 = j + j19;
                doubleLargeArray2.setDouble(j20, doubleLargeArray.getDouble(j22) * this.bk1l.getDouble(j20));
                doubleLargeArray2.setDouble(j21, (-doubleLargeArray.getDouble(j22)) * this.bk1l.getDouble(j21));
                j19++;
                j14 = 1;
            }
        }
        DoubleLargeArray doubleLargeArray6 = doubleLargeArray2;
        CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray2, 0L, this.ipl, this.nwl, this.wl);
        if (i8 > 0) {
            for (long j23 = 0; j23 < this.nBluesteinl; j23++) {
                long j24 = j23 * 2;
                long j25 = j24 + 1;
                double d = ((-doubleLargeArray6.getDouble(j24)) * this.bk2l.getDouble(j25)) + (doubleLargeArray6.getDouble(j25) * this.bk2l.getDouble(j24));
                doubleLargeArray6.setDouble(j24, (doubleLargeArray6.getDouble(j24) * this.bk2l.getDouble(j24)) + (doubleLargeArray6.getDouble(j25) * this.bk2l.getDouble(j25)));
                doubleLargeArray6.setDouble(j25, d);
            }
        } else {
            long j26 = 1;
            for (long j27 = 0; j27 < this.nBluesteinl; j27++) {
                long j28 = j27 * 2;
                long j29 = j28 + j26;
                double d2 = (doubleLargeArray6.getDouble(j28) * this.bk2l.getDouble(j29)) + (doubleLargeArray6.getDouble(j29) * this.bk2l.getDouble(j28));
                doubleLargeArray6.setDouble(j28, (doubleLargeArray6.getDouble(j28) * this.bk2l.getDouble(j28)) - (doubleLargeArray6.getDouble(j29) * this.bk2l.getDouble(j29)));
                doubleLargeArray6.setDouble(j29, d2);
                j26 = 1;
            }
        }
        CommonUtils.cftfsub(this.nBluesteinl * 2, doubleLargeArray6, 0L, this.ipl, this.nwl, this.wl);
        if (i8 > 0) {
            for (long j30 = 0; j30 < this.nl; j30++) {
                long j31 = j30 * 2;
                long j32 = j31 + 1;
                doubleLargeArray.setDouble(j + j31, (this.bk1l.getDouble(j31) * doubleLargeArray6.getDouble(j31)) - (this.bk1l.getDouble(j32) * doubleLargeArray6.getDouble(j32)));
                doubleLargeArray.setDouble(j + j32, (this.bk1l.getDouble(j32) * doubleLargeArray6.getDouble(j31)) + (this.bk1l.getDouble(j31) * doubleLargeArray6.getDouble(j32)));
            }
            return;
        }
        long j33 = 1;
        for (long j34 = 0; j34 < this.nl; j34++) {
            long j35 = j34 * 2;
            long j36 = j35 + j33;
            doubleLargeArray.setDouble(j + j35, (this.bk1l.getDouble(j35) * doubleLargeArray6.getDouble(j35)) + (this.bk1l.getDouble(j36) * doubleLargeArray6.getDouble(j36)));
            doubleLargeArray.setDouble(j + j36, ((-this.bk1l.getDouble(j36)) * doubleLargeArray6.getDouble(j35)) + (this.bk1l.getDouble(j35) * doubleLargeArray6.getDouble(j36)));
            j33 = 1;
        }
    }

    private void bluestein_real_forward(final double[] dArr, final int i) {
        final double[] dArr2 = new double[this.nBluestein * 2];
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (numberOfThreads > 1 && this.n >= CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i2 = (numberOfThreads < 4 || ((long) this.n) < CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 4;
            Future[] futureArr = new Future[i2];
            int i3 = this.n / i2;
            int i4 = 0;
            while (i4 < i2) {
                final int i5 = i4 * i3;
                final int i6 = i4 == i2 + (-1) ? this.n : i5 + i3;
                int i7 = i4;
                futureArr[i7] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.17
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i5; i8 < i6; i8++) {
                            int i9 = i8 * 2;
                            int i10 = i9 + 1;
                            int i11 = i + i8;
                            dArr2[i9] = dArr[i11] * DoubleFFT_1D.this.bk1[i9];
                            dArr2[i10] = (-dArr[i11]) * DoubleFFT_1D.this.bk1[i10];
                        }
                    }
                });
                i4 = i7 + 1;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            int i8 = this.nBluestein / i2;
            int i9 = 0;
            while (i9 < i2) {
                final int i10 = i9 * i8;
                final int i11 = i9 == i2 + (-1) ? this.nBluestein : i10 + i8;
                futureArr[i9] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.18
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i12 = i10; i12 < i11; i12++) {
                            int i13 = i12 * 2;
                            int i14 = i13 + 1;
                            double d = (dArr2[i13] * DoubleFFT_1D.this.bk2[i14]) + (dArr2[i14] * DoubleFFT_1D.this.bk2[i13]);
                            double[] dArr3 = dArr2;
                            dArr3[i13] = (dArr3[i13] * DoubleFFT_1D.this.bk2[i13]) - (dArr2[i14] * DoubleFFT_1D.this.bk2[i14]);
                            dArr2[i14] = d;
                        }
                    }
                });
                i9++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
        } else {
            for (int i12 = 0; i12 < this.n; i12++) {
                int i13 = i12 * 2;
                int i14 = i13 + 1;
                int i15 = i + i12;
                double d = dArr[i15];
                double[] dArr3 = this.bk1;
                dArr2[i13] = d * dArr3[i13];
                dArr2[i14] = (-dArr[i15]) * dArr3[i14];
            }
            CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            for (int i16 = 0; i16 < this.nBluestein; i16++) {
                int i17 = i16 * 2;
                int i18 = i17 + 1;
                double d2 = dArr2[i17];
                double[] dArr4 = this.bk2;
                double d3 = dArr4[i18];
                double d4 = dArr2[i18];
                double d5 = dArr4[i17];
                dArr2[i17] = (d2 * d5) - (d4 * d3);
                dArr2[i18] = (d2 * d3) + (d4 * d5);
            }
        }
        CommonUtils.cftfsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
        int i19 = this.n;
        if (i19 % 2 == 0) {
            double[] dArr5 = this.bk1;
            dArr[i] = (dArr5[0] * dArr2[0]) + (dArr5[1] * dArr2[1]);
            dArr[i + 1] = (dArr5[i19] * dArr2[i19]) + (dArr5[i19 + 1] * dArr2[i19 + 1]);
            for (int i20 = 1; i20 < this.n / 2; i20++) {
                int i21 = i20 * 2;
                int i22 = i21 + 1;
                double[] dArr6 = this.bk1;
                dArr[i + i21] = (dArr6[i21] * dArr2[i21]) + (dArr6[i22] * dArr2[i22]);
                dArr[i + i22] = ((-dArr6[i22]) * dArr2[i21]) + (dArr6[i21] * dArr2[i22]);
            }
            return;
        }
        double[] dArr7 = this.bk1;
        dArr[i] = (dArr7[0] * dArr2[0]) + (dArr7[1] * dArr2[1]);
        dArr[i + 1] = ((-dArr7[i19]) * dArr2[i19 - 1]) + (dArr7[i19 - 1] * dArr2[i19]);
        int i23 = 1;
        while (true) {
            int i24 = this.n;
            if (i23 < (i24 - 1) / 2) {
                int i25 = i23 * 2;
                int i26 = i25 + 1;
                double[] dArr8 = this.bk1;
                dArr[i + i25] = (dArr8[i25] * dArr2[i25]) + (dArr8[i26] * dArr2[i26]);
                dArr[i + i26] = ((-dArr8[i26]) * dArr2[i25]) + (dArr8[i25] * dArr2[i26]);
                i23++;
            } else {
                double[] dArr9 = this.bk1;
                dArr[(i + i24) - 1] = (dArr9[i24 - 1] * dArr2[i24 - 1]) + (dArr9[i24] * dArr2[i24]);
                return;
            }
        }
    }

    private void bluestein_real_forward(final DoubleLargeArray doubleLargeArray, final long j) {
        long j2;
        DoubleLargeArray doubleLargeArray2;
        DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(this.nBluesteinl * 2);
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (numberOfThreads > 1 && this.nl > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i = 4;
            int i2 = (numberOfThreads < 4 || this.nl <= CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 2;
            Future[] futureArr = new Future[i2];
            long j3 = i2;
            long j4 = this.nl / j3;
            int i3 = 0;
            while (i3 < i2) {
                final long j5 = i3 * j4;
                final long j6 = i3 == i2 + (-1) ? this.nl : j5 + j4;
                Future[] futureArr2 = futureArr;
                int i4 = i2;
                final DoubleLargeArray doubleLargeArray4 = doubleLargeArray3;
                futureArr2[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.19
                    @Override // java.lang.Runnable
                    public void run() {
                        for (long j7 = j5; j7 < j6; j7++) {
                            long j8 = 2 * j7;
                            long j9 = j8 + 1;
                            long j10 = j + j7;
                            doubleLargeArray4.setDouble(j8, doubleLargeArray.getDouble(j10) * DoubleFFT_1D.this.bk1l.getDouble(j8));
                            doubleLargeArray4.setDouble(j9, (-doubleLargeArray.getDouble(j10)) * DoubleFFT_1D.this.bk1l.getDouble(j9));
                        }
                    }
                });
                i3++;
                i2 = i4;
                doubleLargeArray3 = doubleLargeArray3;
                futureArr = futureArr2;
            }
            Future[] futureArr3 = futureArr;
            int i5 = i2;
            final DoubleLargeArray doubleLargeArray5 = doubleLargeArray3;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray5, 0L, this.ipl, this.nwl, this.wl);
            long j7 = this.nBluesteinl / j3;
            int i6 = 0;
            while (i6 < i5) {
                final long j8 = i6 * j7;
                final long j9 = i6 == i5 + (-1) ? this.nBluesteinl : j8 + j7;
                futureArr3[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.20
                    @Override // java.lang.Runnable
                    public void run() {
                        for (long j10 = j8; j10 < j9; j10++) {
                            long j11 = 2 * j10;
                            long j12 = j11 + 1;
                            double d = (doubleLargeArray5.getDouble(j11) * DoubleFFT_1D.this.bk2l.getDouble(j12)) + (doubleLargeArray5.getDouble(j12) * DoubleFFT_1D.this.bk2l.getDouble(j11));
                            DoubleLargeArray doubleLargeArray6 = doubleLargeArray5;
                            doubleLargeArray6.setDouble(j11, (doubleLargeArray6.getDouble(j11) * DoubleFFT_1D.this.bk2l.getDouble(j11)) - (doubleLargeArray5.getDouble(j12) * DoubleFFT_1D.this.bk2l.getDouble(j12)));
                            doubleLargeArray5.setDouble(j12, d);
                        }
                    }
                });
                i6++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            j2 = j;
            doubleLargeArray2 = doubleLargeArray5;
        } else {
            for (long j10 = 0; j10 < this.nl; j10++) {
                long j11 = j10 * 2;
                long j12 = j11 + 1;
                long j13 = j + j10;
                doubleLargeArray3.setDouble(j11, doubleLargeArray.getDouble(j13) * this.bk1l.getDouble(j11));
                doubleLargeArray3.setDouble(j12, (-doubleLargeArray.getDouble(j13)) * this.bk1l.getDouble(j12));
            }
            j2 = j;
            doubleLargeArray2 = doubleLargeArray3;
            CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray3, 0L, this.ipl, this.nwl, this.wl);
            for (long j14 = 0; j14 < this.nBluesteinl; j14++) {
                long j15 = j14 * 2;
                long j16 = j15 + 1;
                double d = (doubleLargeArray2.getDouble(j15) * this.bk2l.getDouble(j16)) + (doubleLargeArray2.getDouble(j16) * this.bk2l.getDouble(j15));
                doubleLargeArray2.setDouble(j15, (doubleLargeArray2.getDouble(j15) * this.bk2l.getDouble(j15)) - (doubleLargeArray2.getDouble(j16) * this.bk2l.getDouble(j16)));
                doubleLargeArray2.setDouble(j16, d);
            }
        }
        CommonUtils.cftfsub(this.nBluesteinl * 2, doubleLargeArray2, 0L, this.ipl, this.nwl, this.wl);
        if (this.nl % 2 == 0) {
            long j17 = 1;
            doubleLargeArray.setDouble(j2, (this.bk1l.getDouble(0L) * doubleLargeArray2.getDouble(0L)) + (this.bk1l.getDouble(1L) * doubleLargeArray2.getDouble(1L)));
            doubleLargeArray.setDouble(j2 + 1, (this.bk1l.getDouble(this.nl) * doubleLargeArray2.getDouble(this.nl)) + (this.bk1l.getDouble(this.nl + 1) * doubleLargeArray2.getDouble(this.nl + 1)));
            long j18 = 1;
            while (j18 < this.nl / 2) {
                long j19 = j18 * 2;
                long j20 = j19 + j17;
                doubleLargeArray.setDouble(j + j19, (this.bk1l.getDouble(j19) * doubleLargeArray2.getDouble(j19)) + (this.bk1l.getDouble(j20) * doubleLargeArray2.getDouble(j20)));
                doubleLargeArray.setDouble(j + j20, ((-this.bk1l.getDouble(j20)) * doubleLargeArray2.getDouble(j19)) + (this.bk1l.getDouble(j19) * doubleLargeArray2.getDouble(j20)));
                j18++;
                j17 = 1;
            }
            return;
        }
        long j21 = j2;
        doubleLargeArray.setDouble(j21, (this.bk1l.getDouble(0L) * doubleLargeArray2.getDouble(0L)) + (this.bk1l.getDouble(1L) * doubleLargeArray2.getDouble(1L)));
        doubleLargeArray.setDouble(j21 + 1, ((-this.bk1l.getDouble(this.nl)) * doubleLargeArray2.getDouble(this.nl - 1)) + (this.bk1l.getDouble(this.nl - 1) * doubleLargeArray2.getDouble(this.nl)));
        long j22 = 1;
        while (true) {
            long j23 = this.nl;
            if (j22 < (j23 - 1) / 2) {
                long j24 = j22 * 2;
                long j25 = j24 + 1;
                doubleLargeArray.setDouble(j21 + j24, (this.bk1l.getDouble(j24) * doubleLargeArray2.getDouble(j24)) + (this.bk1l.getDouble(j25) * doubleLargeArray2.getDouble(j25)));
                doubleLargeArray.setDouble(j21 + j25, ((-this.bk1l.getDouble(j25)) * doubleLargeArray2.getDouble(j24)) + (this.bk1l.getDouble(j24) * doubleLargeArray2.getDouble(j25)));
                j22++;
            } else {
                doubleLargeArray.setDouble((j21 + j23) - 1, (this.bk1l.getDouble(j23 - 1) * doubleLargeArray2.getDouble(this.nl - 1)) + (this.bk1l.getDouble(this.nl) * doubleLargeArray2.getDouble(this.nl)));
                return;
            }
        }
    }

    private void bluestein_real_inverse(final double[] dArr, final int i) {
        int i2;
        int i3;
        int i4;
        final double[] dArr2 = new double[this.nBluestein * 2];
        int i5 = 0;
        if (this.n % 2 == 0) {
            double d = dArr[i];
            double[] dArr3 = this.bk1;
            dArr2[0] = d * dArr3[0];
            dArr2[1] = dArr[i] * dArr3[1];
            int i6 = 1;
            while (true) {
                i4 = this.n;
                if (i6 >= i4 / 2) {
                    break;
                }
                int i7 = i6 * 2;
                int i8 = i7 + 1;
                int i9 = i + i7;
                int i10 = i + i8;
                double d2 = dArr[i9];
                double[] dArr4 = this.bk1;
                dArr2[i7] = (d2 * dArr4[i7]) - (dArr[i10] * dArr4[i8]);
                dArr2[i8] = (dArr[i9] * dArr4[i8]) + (dArr[i10] * dArr4[i7]);
                i6++;
            }
            int i11 = i + 1;
            double d3 = dArr[i11];
            double[] dArr5 = this.bk1;
            dArr2[i4] = d3 * dArr5[i4];
            dArr2[i4 + 1] = dArr[i11] * dArr5[i4 + 1];
            int i12 = (i4 / 2) + 1;
            while (true) {
                int i13 = this.n;
                if (i12 >= i13) {
                    break;
                }
                int i14 = i12 * 2;
                int i15 = i14 + 1;
                int i16 = (i + (i13 * 2)) - i14;
                int i17 = i16 + 1;
                double d4 = dArr[i16];
                double[] dArr6 = this.bk1;
                dArr2[i14] = (d4 * dArr6[i14]) + (dArr[i17] * dArr6[i15]);
                dArr2[i15] = (dArr[i16] * dArr6[i15]) - (dArr[i17] * dArr6[i14]);
                i12++;
            }
        } else {
            double d5 = dArr[i];
            double[] dArr7 = this.bk1;
            dArr2[0] = d5 * dArr7[0];
            dArr2[1] = dArr[i] * dArr7[1];
            int i18 = 1;
            while (true) {
                i2 = this.n;
                if (i18 >= (i2 - 1) / 2) {
                    break;
                }
                int i19 = i18 * 2;
                int i20 = i19 + 1;
                int i21 = i + i19;
                int i22 = i + i20;
                double d6 = dArr[i21];
                double[] dArr8 = this.bk1;
                dArr2[i19] = (d6 * dArr8[i19]) - (dArr[i22] * dArr8[i20]);
                dArr2[i20] = (dArr[i21] * dArr8[i20]) + (dArr[i22] * dArr8[i19]);
                i18++;
            }
            double d7 = dArr[(i + i2) - 1];
            double[] dArr9 = this.bk1;
            int i23 = i + 1;
            dArr2[i2 - 1] = (d7 * dArr9[i2 - 1]) - (dArr[i23] * dArr9[i2]);
            dArr2[i2] = (dArr[(i + i2) - 1] * dArr9[i2]) + (dArr[i23] * dArr9[i2 - 1]);
            dArr2[i2 + 1] = (dArr[(i + i2) - 1] * dArr9[i2 + 1]) + (dArr[i23] * dArr9[i2 + 2]);
            dArr2[i2 + 2] = (dArr[(i + i2) - 1] * dArr9[i2 + 2]) - (dArr[i23] * dArr9[i2 + 1]);
            int i24 = ((i2 - 1) / 2) + 2;
            while (true) {
                int i25 = this.n;
                if (i24 >= i25) {
                    break;
                }
                int i26 = i24 * 2;
                int i27 = i26 + 1;
                int i28 = (i + (i25 * 2)) - i26;
                int i29 = i28 + 1;
                double d8 = dArr[i28];
                double[] dArr10 = this.bk1;
                dArr2[i26] = (d8 * dArr10[i26]) + (dArr[i29] * dArr10[i27]);
                dArr2[i27] = (dArr[i28] * dArr10[i27]) - (dArr[i29] * dArr10[i26]);
                i24++;
            }
        }
        CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (numberOfThreads > 1 && this.n >= CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i30 = (numberOfThreads < 4 || ((long) this.n) < CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 4;
            Future[] futureArr = new Future[i30];
            int i31 = this.nBluestein / i30;
            int i32 = 0;
            while (i32 < i30) {
                final int i33 = i32 * i31;
                final int i34 = i32 == i30 + (-1) ? this.nBluestein : i33 + i31;
                futureArr[i32] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.21
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i35 = i33; i35 < i34; i35++) {
                            int i36 = i35 * 2;
                            int i37 = i36 + 1;
                            double d9 = ((-dArr2[i36]) * DoubleFFT_1D.this.bk2[i37]) + (dArr2[i37] * DoubleFFT_1D.this.bk2[i36]);
                            double[] dArr11 = dArr2;
                            dArr11[i36] = (dArr11[i36] * DoubleFFT_1D.this.bk2[i36]) + (dArr2[i37] * DoubleFFT_1D.this.bk2[i37]);
                            dArr2[i37] = d9;
                        }
                    }
                });
                i32++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftfsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            int i35 = this.n / i30;
            while (i5 < i30) {
                final int i36 = i5 * i35;
                final int i37 = i5 == i30 + (-1) ? this.n : i36 + i35;
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.22
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i38 = i36; i38 < i37; i38++) {
                            int i39 = i38 * 2;
                            int i40 = i39 + 1;
                            dArr[i + i38] = (DoubleFFT_1D.this.bk1[i39] * dArr2[i39]) - (DoubleFFT_1D.this.bk1[i40] * dArr2[i40]);
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
                return;
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
                return;
            }
        }
        int i38 = 0;
        while (true) {
            i3 = this.nBluestein;
            if (i38 >= i3) {
                break;
            }
            int i39 = i38 * 2;
            int i40 = i39 + 1;
            double d9 = dArr2[i39];
            double[] dArr11 = this.bk2;
            double d10 = dArr11[i40];
            double d11 = dArr2[i40];
            double d12 = dArr11[i39];
            dArr2[i39] = (d9 * d12) + (d11 * d10);
            dArr2[i40] = ((-d9) * d10) + (d11 * d12);
            i38++;
        }
        CommonUtils.cftfsub(i3 * 2, dArr2, 0, this.ip, this.nw, this.w);
        while (i5 < this.n) {
            int i41 = i5 * 2;
            int i42 = i41 + 1;
            double[] dArr12 = this.bk1;
            dArr[i + i5] = (dArr12[i41] * dArr2[i41]) - (dArr12[i42] * dArr2[i42]);
            i5++;
        }
    }

    private void bluestein_real_inverse(final DoubleLargeArray doubleLargeArray, final long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        final DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(this.nBluesteinl * 2);
        long j6 = 1;
        if (this.nl % 2 == 0) {
            doubleLargeArray2.setDouble(0L, doubleLargeArray.getDouble(j) * this.bk1l.getDouble(0L));
            doubleLargeArray2.setDouble(1L, doubleLargeArray.getDouble(j) * this.bk1l.getDouble(1L));
            long j7 = 1;
            while (true) {
                j5 = this.nl;
                if (j7 >= j5 / 2) {
                    break;
                }
                long j8 = j7 * 2;
                long j9 = j8 + j6;
                long j10 = j + j8;
                long j11 = j + j9;
                doubleLargeArray2.setDouble(j8, (doubleLargeArray.getDouble(j10) * this.bk1l.getDouble(j8)) - (doubleLargeArray.getDouble(j11) * this.bk1l.getDouble(j9)));
                doubleLargeArray2.setDouble(j9, (doubleLargeArray.getDouble(j10) * this.bk1l.getDouble(j9)) + (doubleLargeArray.getDouble(j11) * this.bk1l.getDouble(j8)));
                j6 = 1;
                j7++;
            }
            long j12 = j6;
            long j13 = j + j12;
            doubleLargeArray2.setDouble(j5, doubleLargeArray.getDouble(j13) * this.bk1l.getDouble(this.nl));
            doubleLargeArray2.setDouble(this.nl + j12, doubleLargeArray.getDouble(j13) * this.bk1l.getDouble(this.nl + j12));
            long j14 = (this.nl / 2) + j12;
            while (true) {
                long j15 = this.nl;
                if (j14 >= j15) {
                    break;
                }
                long j16 = j14 * 2;
                long j17 = j16 + j12;
                long j18 = (j + (j15 * 2)) - j16;
                long j19 = j14;
                long j20 = j18 + j12;
                doubleLargeArray2.setDouble(j16, (doubleLargeArray.getDouble(j18) * this.bk1l.getDouble(j16)) + (doubleLargeArray.getDouble(j20) * this.bk1l.getDouble(j17)));
                doubleLargeArray2.setDouble(j17, (doubleLargeArray.getDouble(j18) * this.bk1l.getDouble(j17)) - (doubleLargeArray.getDouble(j20) * this.bk1l.getDouble(j16)));
                j12 = 1;
                j14 = j19 + 1;
            }
            j3 = j12;
        } else {
            long j21 = 1;
            doubleLargeArray2.setDouble(0L, doubleLargeArray.getDouble(j) * this.bk1l.getDouble(0L));
            doubleLargeArray2.setDouble(1L, doubleLargeArray.getDouble(j) * this.bk1l.getDouble(1L));
            long j22 = 1;
            while (true) {
                j2 = this.nl;
                if (j22 >= (j2 - j21) / 2) {
                    break;
                }
                long j23 = j22 * 2;
                long j24 = j23 + j21;
                long j25 = j + j23;
                long j26 = j + j24;
                doubleLargeArray2.setDouble(j23, (doubleLargeArray.getDouble(j25) * this.bk1l.getDouble(j23)) - (doubleLargeArray.getDouble(j26) * this.bk1l.getDouble(j24)));
                doubleLargeArray2.setDouble(j24, (doubleLargeArray.getDouble(j25) * this.bk1l.getDouble(j24)) + (doubleLargeArray.getDouble(j26) * this.bk1l.getDouble(j23)));
                j21 = 1;
                j22++;
            }
            long j27 = j + j21;
            doubleLargeArray2.setDouble(j2 - j21, (doubleLargeArray.getDouble((j + j2) - j21) * this.bk1l.getDouble(this.nl - j21)) - (doubleLargeArray.getDouble(j27) * this.bk1l.getDouble(this.nl)));
            long j28 = this.nl;
            doubleLargeArray2.setDouble(j28, (doubleLargeArray.getDouble((j + j28) - 1) * this.bk1l.getDouble(this.nl)) + (doubleLargeArray.getDouble(j27) * this.bk1l.getDouble(this.nl - 1)));
            long j29 = this.nl;
            doubleLargeArray2.setDouble(j29 + 1, (doubleLargeArray.getDouble((j + j29) - 1) * this.bk1l.getDouble(this.nl + 1)) + (doubleLargeArray.getDouble(j27) * this.bk1l.getDouble(this.nl + 2)));
            long j30 = this.nl;
            long j31 = 1;
            doubleLargeArray2.setDouble(j30 + 2, (doubleLargeArray.getDouble((j + j30) - 1) * this.bk1l.getDouble(this.nl + 2)) - (doubleLargeArray.getDouble(j27) * this.bk1l.getDouble(this.nl + 1)));
            long j32 = ((this.nl - 1) / 2) + 2;
            while (true) {
                long j33 = this.nl;
                if (j32 >= j33) {
                    break;
                }
                long j34 = j32 * 2;
                long j35 = j34 + j31;
                long j36 = (j + (j33 * 2)) - j34;
                long j37 = j32;
                long j38 = j36 + j31;
                doubleLargeArray2.setDouble(j34, (doubleLargeArray.getDouble(j36) * this.bk1l.getDouble(j34)) + (doubleLargeArray.getDouble(j38) * this.bk1l.getDouble(j35)));
                doubleLargeArray2.setDouble(j35, (doubleLargeArray.getDouble(j36) * this.bk1l.getDouble(j35)) - (doubleLargeArray.getDouble(j38) * this.bk1l.getDouble(j34)));
                j32 = j37 + 1;
                j31 = 1;
            }
            j3 = j31;
        }
        long j39 = j3;
        CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray2, 0L, this.ipl, this.nwl, this.wl);
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (numberOfThreads > 1 && this.nl > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i = 4;
            int i2 = (numberOfThreads < 4 || this.nl <= CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 2;
            Future[] futureArr = new Future[i2];
            long j40 = i2;
            long j41 = this.nBluesteinl / j40;
            int i3 = 0;
            while (i3 < i2) {
                final long j42 = i3 * j41;
                final long j43 = i3 == i2 + (-1) ? this.nBluesteinl : j42 + j41;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.23
                    @Override // java.lang.Runnable
                    public void run() {
                        for (long j44 = j42; j44 < j43; j44++) {
                            long j45 = 2 * j44;
                            long j46 = j45 + 1;
                            double d = ((-doubleLargeArray2.getDouble(j45)) * DoubleFFT_1D.this.bk2l.getDouble(j46)) + (doubleLargeArray2.getDouble(j46) * DoubleFFT_1D.this.bk2l.getDouble(j45));
                            DoubleLargeArray doubleLargeArray3 = doubleLargeArray2;
                            doubleLargeArray3.setDouble(j45, (doubleLargeArray3.getDouble(j45) * DoubleFFT_1D.this.bk2l.getDouble(j45)) + (doubleLargeArray2.getDouble(j46) * DoubleFFT_1D.this.bk2l.getDouble(j46)));
                            doubleLargeArray2.setDouble(j46, d);
                        }
                    }
                });
                i3++;
                j40 = j40;
            }
            long j44 = j40;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftfsub(this.nBluesteinl * 2, doubleLargeArray2, 0L, this.ipl, this.nwl, this.wl);
            long j45 = this.nl / j44;
            int i4 = 0;
            while (i4 < i2) {
                final long j46 = i4 * j45;
                final long j47 = i4 == i2 + (-1) ? this.nl : j46 + j45;
                futureArr[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.24
                    @Override // java.lang.Runnable
                    public void run() {
                        for (long j48 = j46; j48 < j47; j48++) {
                            long j49 = 2 * j48;
                            long j50 = j49 + 1;
                            doubleLargeArray.setDouble(j + j48, (DoubleFFT_1D.this.bk1l.getDouble(j49) * doubleLargeArray2.getDouble(j49)) - (DoubleFFT_1D.this.bk1l.getDouble(j50) * doubleLargeArray2.getDouble(j50)));
                        }
                    }
                });
                i4++;
                i2 = i2;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
                return;
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
                return;
            }
        }
        long j48 = 0;
        while (true) {
            j4 = this.nBluesteinl;
            if (j48 >= j4) {
                break;
            }
            long j49 = j48 * 2;
            long j50 = j49 + j39;
            double d = ((-doubleLargeArray2.getDouble(j49)) * this.bk2l.getDouble(j50)) + (doubleLargeArray2.getDouble(j50) * this.bk2l.getDouble(j49));
            doubleLargeArray2.setDouble(j49, (doubleLargeArray2.getDouble(j49) * this.bk2l.getDouble(j49)) + (doubleLargeArray2.getDouble(j50) * this.bk2l.getDouble(j50)));
            doubleLargeArray2.setDouble(j50, d);
            j48 += j39;
        }
        CommonUtils.cftfsub(j4 * 2, doubleLargeArray2, 0L, this.ipl, this.nwl, this.wl);
        for (long j51 = 0; j51 < this.nl; j51 += j39) {
            long j52 = j51 * 2;
            long j53 = j52 + j39;
            doubleLargeArray.setDouble(j + j51, (this.bk1l.getDouble(j52) * doubleLargeArray2.getDouble(j52)) - (this.bk1l.getDouble(j53) * doubleLargeArray2.getDouble(j53)));
        }
    }

    private void bluestein_real_inverse2(final double[] dArr, final int i) {
        final double[] dArr2 = new double[this.nBluestein * 2];
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (numberOfThreads > 1 && this.n >= CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i2 = (numberOfThreads < 4 || ((long) this.n) < CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 4;
            Future[] futureArr = new Future[i2];
            int i3 = this.n / i2;
            int i4 = 0;
            while (i4 < i2) {
                final int i5 = i4 * i3;
                final int i6 = i4 == i2 + (-1) ? this.n : i5 + i3;
                int i7 = i4;
                futureArr[i7] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.25
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i5; i8 < i6; i8++) {
                            int i9 = i8 * 2;
                            int i10 = i9 + 1;
                            int i11 = i + i8;
                            dArr2[i9] = dArr[i11] * DoubleFFT_1D.this.bk1[i9];
                            dArr2[i10] = dArr[i11] * DoubleFFT_1D.this.bk1[i10];
                        }
                    }
                });
                i4 = i7 + 1;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            int i8 = this.nBluestein / i2;
            int i9 = 0;
            while (i9 < i2) {
                final int i10 = i9 * i8;
                final int i11 = i9 == i2 + (-1) ? this.nBluestein : i10 + i8;
                futureArr[i9] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.26
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i12 = i10; i12 < i11; i12++) {
                            int i13 = i12 * 2;
                            int i14 = i13 + 1;
                            double d = ((-dArr2[i13]) * DoubleFFT_1D.this.bk2[i14]) + (dArr2[i14] * DoubleFFT_1D.this.bk2[i13]);
                            double[] dArr3 = dArr2;
                            dArr3[i13] = (dArr3[i13] * DoubleFFT_1D.this.bk2[i13]) + (dArr2[i14] * DoubleFFT_1D.this.bk2[i14]);
                            dArr2[i14] = d;
                        }
                    }
                });
                i9++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
        } else {
            for (int i12 = 0; i12 < this.n; i12++) {
                int i13 = i12 * 2;
                int i14 = i13 + 1;
                int i15 = i + i12;
                double d = dArr[i15];
                double[] dArr3 = this.bk1;
                dArr2[i13] = d * dArr3[i13];
                dArr2[i14] = dArr[i15] * dArr3[i14];
            }
            CommonUtils.cftbsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
            for (int i16 = 0; i16 < this.nBluestein; i16++) {
                int i17 = i16 * 2;
                int i18 = i17 + 1;
                double d2 = dArr2[i17];
                double[] dArr4 = this.bk2;
                double d3 = dArr4[i18];
                double d4 = dArr2[i18];
                double d5 = dArr4[i17];
                dArr2[i17] = (d2 * d5) + (d4 * d3);
                dArr2[i18] = ((-d2) * d3) + (d4 * d5);
            }
        }
        CommonUtils.cftfsub(this.nBluestein * 2, dArr2, 0, this.ip, this.nw, this.w);
        int i19 = this.n;
        if (i19 % 2 == 0) {
            double[] dArr5 = this.bk1;
            dArr[i] = (dArr5[0] * dArr2[0]) - (dArr5[1] * dArr2[1]);
            dArr[i + 1] = (dArr5[i19] * dArr2[i19]) - (dArr5[i19 + 1] * dArr2[i19 + 1]);
            for (int i20 = 1; i20 < this.n / 2; i20++) {
                int i21 = i20 * 2;
                int i22 = i21 + 1;
                double[] dArr6 = this.bk1;
                dArr[i + i21] = (dArr6[i21] * dArr2[i21]) - (dArr6[i22] * dArr2[i22]);
                dArr[i + i22] = (dArr6[i22] * dArr2[i21]) + (dArr6[i21] * dArr2[i22]);
            }
            return;
        }
        double[] dArr7 = this.bk1;
        dArr[i] = (dArr7[0] * dArr2[0]) - (dArr7[1] * dArr2[1]);
        dArr[i + 1] = (dArr7[i19] * dArr2[i19 - 1]) + (dArr7[i19 - 1] * dArr2[i19]);
        int i23 = 1;
        while (true) {
            int i24 = this.n;
            if (i23 < (i24 - 1) / 2) {
                int i25 = i23 * 2;
                int i26 = i25 + 1;
                double[] dArr8 = this.bk1;
                dArr[i + i25] = (dArr8[i25] * dArr2[i25]) - (dArr8[i26] * dArr2[i26]);
                dArr[i + i26] = (dArr8[i26] * dArr2[i25]) + (dArr8[i25] * dArr2[i26]);
                i23++;
            } else {
                double[] dArr9 = this.bk1;
                dArr[(i + i24) - 1] = (dArr9[i24 - 1] * dArr2[i24 - 1]) - (dArr9[i24] * dArr2[i24]);
                return;
            }
        }
    }

    private void bluestein_real_inverse2(final DoubleLargeArray doubleLargeArray, final long j) {
        long j2;
        DoubleLargeArray doubleLargeArray2;
        DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(this.nBluesteinl * 2);
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (numberOfThreads > 1 && this.nl > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i = 4;
            int i2 = (numberOfThreads < 4 || this.nl <= CommonUtils.getThreadsBeginN_1D_FFT_4Threads()) ? 2 : 2;
            Future[] futureArr = new Future[i2];
            long j3 = i2;
            long j4 = this.nl / j3;
            int i3 = 0;
            while (i3 < i2) {
                final long j5 = i3 * j4;
                final long j6 = i3 == i2 + (-1) ? this.nl : j5 + j4;
                Future[] futureArr2 = futureArr;
                int i4 = i2;
                final DoubleLargeArray doubleLargeArray4 = doubleLargeArray3;
                futureArr2[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.27
                    @Override // java.lang.Runnable
                    public void run() {
                        for (long j7 = j5; j7 < j6; j7++) {
                            long j8 = 2 * j7;
                            long j9 = j8 + 1;
                            long j10 = j + j7;
                            doubleLargeArray4.setDouble(j8, doubleLargeArray.getDouble(j10) * DoubleFFT_1D.this.bk1l.getDouble(j8));
                            doubleLargeArray4.setDouble(j9, doubleLargeArray.getDouble(j10) * DoubleFFT_1D.this.bk1l.getDouble(j9));
                        }
                    }
                });
                i3++;
                i2 = i4;
                doubleLargeArray3 = doubleLargeArray3;
                futureArr = futureArr2;
            }
            Future[] futureArr3 = futureArr;
            int i5 = i2;
            final DoubleLargeArray doubleLargeArray5 = doubleLargeArray3;
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray5, 0L, this.ipl, this.nwl, this.wl);
            long j7 = this.nBluesteinl / j3;
            int i6 = 0;
            while (i6 < i5) {
                final long j8 = i6 * j7;
                final long j9 = i6 == i5 + (-1) ? this.nBluesteinl : j8 + j7;
                futureArr3[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.fft.DoubleFFT_1D.28
                    @Override // java.lang.Runnable
                    public void run() {
                        for (long j10 = j8; j10 < j9; j10++) {
                            long j11 = 2 * j10;
                            long j12 = j11 + 1;
                            double d = ((-doubleLargeArray5.getDouble(j11)) * DoubleFFT_1D.this.bk2l.getDouble(j12)) + (doubleLargeArray5.getDouble(j12) * DoubleFFT_1D.this.bk2l.getDouble(j11));
                            DoubleLargeArray doubleLargeArray6 = doubleLargeArray5;
                            doubleLargeArray6.setDouble(j11, (doubleLargeArray6.getDouble(j11) * DoubleFFT_1D.this.bk2l.getDouble(j11)) + (doubleLargeArray5.getDouble(j12) * DoubleFFT_1D.this.bk2l.getDouble(j12)));
                            doubleLargeArray5.setDouble(j12, d);
                        }
                    }
                });
                i6++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr3);
            } catch (InterruptedException e3) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleFFT_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            j2 = j;
            doubleLargeArray2 = doubleLargeArray5;
        } else {
            for (long j10 = 0; j10 < this.nl; j10++) {
                long j11 = j10 * 2;
                long j12 = j11 + 1;
                long j13 = j + j10;
                doubleLargeArray3.setDouble(j11, doubleLargeArray.getDouble(j13) * this.bk1l.getDouble(j11));
                doubleLargeArray3.setDouble(j12, doubleLargeArray.getDouble(j13) * this.bk1l.getDouble(j12));
            }
            j2 = j;
            doubleLargeArray2 = doubleLargeArray3;
            CommonUtils.cftbsub(this.nBluesteinl * 2, doubleLargeArray3, 0L, this.ipl, this.nwl, this.wl);
            for (long j14 = 0; j14 < this.nBluesteinl; j14++) {
                long j15 = j14 * 2;
                long j16 = j15 + 1;
                double d = ((-doubleLargeArray2.getDouble(j15)) * this.bk2l.getDouble(j16)) + (doubleLargeArray2.getDouble(j16) * this.bk2l.getDouble(j15));
                doubleLargeArray2.setDouble(j15, (doubleLargeArray2.getDouble(j15) * this.bk2l.getDouble(j15)) + (doubleLargeArray2.getDouble(j16) * this.bk2l.getDouble(j16)));
                doubleLargeArray2.setDouble(j16, d);
            }
        }
        CommonUtils.cftfsub(this.nBluesteinl * 2, doubleLargeArray2, 0L, this.ipl, this.nwl, this.wl);
        if (this.nl % 2 == 0) {
            long j17 = 1;
            doubleLargeArray.setDouble(j2, (this.bk1l.getDouble(0L) * doubleLargeArray2.getDouble(0L)) - (this.bk1l.getDouble(1L) * doubleLargeArray2.getDouble(1L)));
            doubleLargeArray.setDouble(j2 + 1, (this.bk1l.getDouble(this.nl) * doubleLargeArray2.getDouble(this.nl)) - (this.bk1l.getDouble(this.nl + 1) * doubleLargeArray2.getDouble(this.nl + 1)));
            long j18 = 1;
            while (j18 < this.nl / 2) {
                long j19 = j18 * 2;
                long j20 = j19 + j17;
                doubleLargeArray.setDouble(j + j19, (this.bk1l.getDouble(j19) * doubleLargeArray2.getDouble(j19)) - (this.bk1l.getDouble(j20) * doubleLargeArray2.getDouble(j20)));
                doubleLargeArray.setDouble(j + j20, (this.bk1l.getDouble(j20) * doubleLargeArray2.getDouble(j19)) + (this.bk1l.getDouble(j19) * doubleLargeArray2.getDouble(j20)));
                j18++;
                j17 = 1;
            }
            return;
        }
        long j21 = j2;
        doubleLargeArray.setDouble(j21, (this.bk1l.getDouble(0L) * doubleLargeArray2.getDouble(0L)) - (this.bk1l.getDouble(1L) * doubleLargeArray2.getDouble(1L)));
        doubleLargeArray.setDouble(j21 + 1, (this.bk1l.getDouble(this.nl) * doubleLargeArray2.getDouble(this.nl - 1)) + (this.bk1l.getDouble(this.nl - 1) * doubleLargeArray2.getDouble(this.nl)));
        long j22 = 1;
        while (true) {
            long j23 = this.nl;
            if (j22 < (j23 - 1) / 2) {
                long j24 = j22 * 2;
                long j25 = j24 + 1;
                doubleLargeArray.setDouble(j21 + j24, (this.bk1l.getDouble(j24) * doubleLargeArray2.getDouble(j24)) - (this.bk1l.getDouble(j25) * doubleLargeArray2.getDouble(j25)));
                doubleLargeArray.setDouble(j21 + j25, (this.bk1l.getDouble(j25) * doubleLargeArray2.getDouble(j24)) + (this.bk1l.getDouble(j24) * doubleLargeArray2.getDouble(j25)));
                j22++;
            } else {
                doubleLargeArray.setDouble((j21 + j23) - 1, (this.bk1l.getDouble(j23 - 1) * doubleLargeArray2.getDouble(this.nl - 1)) - (this.bk1l.getDouble(this.nl) * doubleLargeArray2.getDouble(this.nl)));
                return;
            }
        }
    }

    void rfftf(double[] dArr, int i) {
        int i2 = this.n;
        if (i2 == 1) {
            return;
        }
        double[] dArr2 = new double[i2];
        int i3 = i2 * 2;
        int i4 = (int) this.wtable_r[i3 + 1];
        int i5 = i3 - 1;
        int i6 = 1;
        int i7 = 1;
        while (i7 <= i4) {
            int i8 = (int) this.wtable_r[(i4 - i7) + 2 + i3];
            int i9 = i2 / i8;
            int i10 = this.n / i2;
            int i11 = i10 * i9;
            int i12 = i5 - ((i8 - 1) * i10);
            int i13 = 1 - i6;
            if (i8 != 2) {
                if (i8 != 3) {
                    if (i8 != 4) {
                        if (i8 != 5) {
                            if (i10 == 1) {
                                i13 = 1 - i13;
                            }
                            if (i13 == 0) {
                                radfg(i10, i8, i9, i11, dArr, i, dArr2, 0, i12);
                                i6 = 1;
                            } else {
                                radfg(i10, i8, i9, i11, dArr2, 0, dArr, i, i12);
                                i6 = 0;
                            }
                            i7++;
                            i2 = i9;
                            i5 = i12;
                        } else if (i13 == 0) {
                            radf5(i10, i9, dArr, i, dArr2, 0, i12);
                        } else {
                            radf5(i10, i9, dArr2, 0, dArr, i, i12);
                        }
                    } else if (i13 == 0) {
                        radf4(i10, i9, dArr, i, dArr2, 0, i12);
                    } else {
                        radf4(i10, i9, dArr2, 0, dArr, i, i12);
                    }
                } else if (i13 == 0) {
                    radf3(i10, i9, dArr, i, dArr2, 0, i12);
                } else {
                    radf3(i10, i9, dArr2, 0, dArr, i, i12);
                }
            } else if (i13 == 0) {
                radf2(i10, i9, dArr, i, dArr2, 0, i12);
            } else {
                radf2(i10, i9, dArr2, 0, dArr, i, i12);
            }
            i6 = i13;
            i7++;
            i2 = i9;
            i5 = i12;
        }
        if (i6 == 1) {
            return;
        }
        System.arraycopy(dArr2, 0, dArr, i, this.n);
    }

    void rfftf(DoubleLargeArray doubleLargeArray, long j) {
        long j2;
        DoubleLargeArray doubleLargeArray2;
        DoubleFFT_1D doubleFFT_1D = this;
        if (doubleFFT_1D.nl == 1) {
            return;
        }
        DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(doubleFFT_1D.nl);
        long j3 = doubleFFT_1D.nl * 2;
        long j4 = (long) doubleFFT_1D.wtable_rl.getDouble(j3 + 1);
        long j5 = doubleFFT_1D.nl;
        long j6 = j3 - 1;
        long j7 = 1;
        long j8 = 1;
        while (j8 <= j4) {
            int i = (int) doubleFFT_1D.wtable_rl.getDouble((j4 - j8) + 2 + j3);
            long j9 = i;
            long j10 = j5 / j9;
            long j11 = doubleFFT_1D.nl / j5;
            long j12 = j11 * j10;
            long j13 = j6 - ((i - 1) * j11);
            long j14 = 1 - j7;
            if (i == 2) {
                j2 = j4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j14 == 0) {
                    radf2(j11, j10, doubleLargeArray, j, doubleLargeArray2, 0L, j13);
                } else {
                    radf2(j11, j10, doubleLargeArray2, 0L, doubleLargeArray, j, j13);
                }
            } else if (i == 3) {
                j2 = j4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j14 == 0) {
                    radf3(j11, j10, doubleLargeArray, j, doubleLargeArray2, 0L, j13);
                } else {
                    radf3(j11, j10, doubleLargeArray2, 0L, doubleLargeArray, j, j13);
                }
            } else if (i == 4) {
                j2 = j4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j14 == 0) {
                    radf4(j11, j10, doubleLargeArray, j, doubleLargeArray2, 0L, j13);
                } else {
                    radf4(j11, j10, doubleLargeArray2, 0L, doubleLargeArray, j, j13);
                }
            } else if (i != 5) {
                if (j11 == 1) {
                    j14 = 1 - j14;
                }
                if (j14 == 0) {
                    j2 = j4;
                    doubleLargeArray2 = doubleLargeArray3;
                    radfg(j11, j9, j10, j12, doubleLargeArray, j, doubleLargeArray3, 0L, j13);
                    j7 = 1;
                } else {
                    j2 = j4;
                    doubleLargeArray2 = doubleLargeArray3;
                    radfg(j11, j9, j10, j12, doubleLargeArray2, 0L, doubleLargeArray, j, j13);
                    j7 = 0;
                }
                j8++;
                doubleFFT_1D = this;
                j5 = j10;
                j6 = j13;
                j4 = j2;
                doubleLargeArray3 = doubleLargeArray2;
            } else {
                j2 = j4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j14 == 0) {
                    radf5(j11, j10, doubleLargeArray, j, doubleLargeArray2, 0L, j13);
                } else {
                    radf5(j11, j10, doubleLargeArray2, 0L, doubleLargeArray, j, j13);
                }
            }
            j7 = j14;
            j8++;
            doubleFFT_1D = this;
            j5 = j10;
            j6 = j13;
            j4 = j2;
            doubleLargeArray3 = doubleLargeArray2;
        }
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray3;
        if (j7 == 1) {
            return;
        }
        LargeArrayUtils.arraycopy(doubleLargeArray4, 0L, doubleLargeArray, j, this.nl);
    }

    void rfftb(double[] dArr, int i) {
        int i2;
        int i3;
        int i4 = this.n;
        if (i4 == 1) {
            return;
        }
        double[] dArr2 = new double[i4];
        int i5 = i4 * 2;
        int i6 = (int) this.wtable_r[i5 + 1];
        int i7 = i4;
        int i8 = 1;
        int i9 = 1;
        int i10 = 0;
        while (i8 <= i6) {
            int i11 = i8 + 1;
            int i12 = (int) this.wtable_r[i11 + i5];
            int i13 = i12 * i9;
            int i14 = this.n / i13;
            int i15 = i14 * i9;
            if (i12 == 2) {
                i2 = i12;
                if (i10 == 0) {
                    radb2(i14, i9, dArr, i, dArr2, 0, i7);
                } else {
                    radb2(i14, i9, dArr2, 0, dArr, i, i7);
                }
            } else if (i12 == 3) {
                i2 = i12;
                if (i10 == 0) {
                    radb3(i14, i9, dArr, i, dArr2, 0, i7);
                } else {
                    radb3(i14, i9, dArr2, 0, dArr, i, i7);
                }
            } else if (i12 == 4) {
                i2 = i12;
                if (i10 == 0) {
                    radb4(i14, i9, dArr, i, dArr2, 0, i7);
                } else {
                    radb4(i14, i9, dArr2, 0, dArr, i, i7);
                }
            } else if (i12 != 5) {
                if (i10 == 0) {
                    i3 = i14;
                    i2 = i12;
                    radbg(i14, i12, i9, i15, dArr, i, dArr2, 0, i7);
                } else {
                    i3 = i14;
                    i2 = i12;
                    radbg(i3, i2, i9, i15, dArr2, 0, dArr, i, i7);
                }
                i14 = i3;
                if (i14 != 1) {
                    i7 += (i2 - 1) * i14;
                    i8 = i11;
                    i9 = i13;
                }
            } else {
                i2 = i12;
                if (i10 == 0) {
                    radb5(i14, i9, dArr, i, dArr2, 0, i7);
                } else {
                    radb5(i14, i9, dArr2, 0, dArr, i, i7);
                }
            }
            i10 = 1 - i10;
            i7 += (i2 - 1) * i14;
            i8 = i11;
            i9 = i13;
        }
        if (i10 == 0) {
            return;
        }
        System.arraycopy(dArr2, 0, dArr, i, this.n);
    }

    void rfftb(DoubleLargeArray doubleLargeArray, long j) {
        int i;
        long j2;
        DoubleLargeArray doubleLargeArray2;
        DoubleFFT_1D doubleFFT_1D = this;
        if (doubleFFT_1D.nl == 1) {
            return;
        }
        DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(doubleFFT_1D.nl);
        long j3 = doubleFFT_1D.nl * 2;
        long j4 = (long) doubleFFT_1D.wtable_rl.getDouble(j3 + 1);
        long j5 = doubleFFT_1D.nl;
        long j6 = 1;
        long j7 = 1;
        long j8 = 0;
        while (j6 <= j4) {
            long j9 = j6 + 1;
            int i2 = (int) doubleFFT_1D.wtable_rl.getDouble(j9 + j3);
            long j10 = i2;
            long j11 = j10 * j7;
            long j12 = doubleFFT_1D.nl / j11;
            long j13 = j12 * j7;
            if (i2 == 2) {
                i = i2;
                j2 = j4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j8 == 0) {
                    radb2(j12, j7, doubleLargeArray, j, doubleLargeArray2, 0L, j5);
                } else {
                    radb2(j12, j7, doubleLargeArray2, 0L, doubleLargeArray, j, j5);
                }
            } else if (i2 == 3) {
                i = i2;
                j2 = j4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j8 == 0) {
                    radb3(j12, j7, doubleLargeArray, j, doubleLargeArray2, 0L, j5);
                } else {
                    radb3(j12, j7, doubleLargeArray2, 0L, doubleLargeArray, j, j5);
                }
            } else if (i2 == 4) {
                i = i2;
                j2 = j4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j8 == 0) {
                    radb4(j12, j7, doubleLargeArray, j, doubleLargeArray2, 0L, j5);
                } else {
                    radb4(j12, j7, doubleLargeArray2, 0L, doubleLargeArray, j, j5);
                }
            } else if (i2 != 5) {
                if (j8 == 0) {
                    i = i2;
                    j2 = j4;
                    doubleLargeArray2 = doubleLargeArray3;
                    radbg(j12, j10, j7, j13, doubleLargeArray, j, doubleLargeArray3, 0L, j5);
                } else {
                    i = i2;
                    j2 = j4;
                    doubleLargeArray2 = doubleLargeArray3;
                    radbg(j12, j10, j7, j13, doubleLargeArray2, 0L, doubleLargeArray, j, j5);
                }
                if (j12 != 1) {
                    j5 += (i - 1) * j12;
                    doubleFFT_1D = this;
                    j6 = j9;
                    j7 = j11;
                    j4 = j2;
                    doubleLargeArray3 = doubleLargeArray2;
                }
            } else {
                i = i2;
                j2 = j4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j8 == 0) {
                    radb5(j12, j7, doubleLargeArray, j, doubleLargeArray2, 0L, j5);
                } else {
                    radb5(j12, j7, doubleLargeArray2, 0L, doubleLargeArray, j, j5);
                }
            }
            j8 = 1 - j8;
            j5 += (i - 1) * j12;
            doubleFFT_1D = this;
            j6 = j9;
            j7 = j11;
            j4 = j2;
            doubleLargeArray3 = doubleLargeArray2;
        }
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray3;
        if (j8 == 0) {
            return;
        }
        LargeArrayUtils.arraycopy(doubleLargeArray4, 0L, doubleLargeArray, j, this.nl);
    }

    void radf2(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5) {
        int i6 = i2 * i;
        int i7 = i * 2;
        for (int i8 = 0; i8 < i2; i8++) {
            int i9 = i4 + (i8 * i7);
            int i10 = i3 + (i8 * i);
            double d = dArr[i10];
            double d2 = dArr[i10 + i6];
            dArr2[i9] = d + d2;
            dArr2[(i9 + i7) - 1] = d - d2;
        }
        int i11 = 2;
        if (i < 2) {
            return;
        }
        if (i != 2) {
            int i12 = 0;
            while (i12 < i2) {
                i7 = i12 * i;
                int i13 = i7 * 2;
                int i14 = i13 + i;
                int i15 = i7 + i6;
                for (int i16 = i11; i16 < i; i16 += 2) {
                    int i17 = (i16 - 1) + i5;
                    int i18 = i4 + i16 + i13;
                    int i19 = i4 + (i - i16) + i14;
                    int i20 = i3 + i16;
                    int i21 = i20 + i7;
                    int i22 = i20 + i15;
                    double d3 = dArr[i21 - 1];
                    double d4 = dArr[i21];
                    double d5 = dArr[i22 - 1];
                    double d6 = dArr[i22];
                    double[] dArr3 = this.wtable_r;
                    double d7 = dArr3[i17 - 1];
                    double d8 = dArr3[i17];
                    double d9 = (d7 * d5) + (d8 * d6);
                    double d10 = (d7 * d6) - (d8 * d5);
                    dArr2[i18] = d4 + d10;
                    dArr2[i18 - 1] = d3 + d9;
                    dArr2[i19] = d10 - d4;
                    dArr2[i19 - 1] = d3 - d9;
                }
                i12++;
                i11 = 2;
            }
            if (i % 2 == 1) {
                return;
            }
            i11 = 2;
        }
        int i23 = i7 * i11;
        for (int i24 = 0; i24 < i2; i24++) {
            int i25 = i4 + i23 + i;
            int i26 = ((i3 + i) - 1) + (i24 * i);
            dArr2[i25] = -dArr[i26 + i6];
            dArr2[i25 - 1] = dArr[i26];
        }
    }

    void radf2(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5) {
        long j6;
        long j7;
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        long j8 = j2 * j;
        long j9 = 2;
        long j10 = j * 2;
        long j11 = 0;
        while (j11 < j2) {
            long j12 = j4 + (j11 * j10);
            long j13 = (j12 + j10) - 1;
            long j14 = j3 + (j11 * j);
            long j15 = j10;
            double d = doubleLargeArray3.getDouble(j14);
            double d2 = doubleLargeArray3.getDouble(j14 + j8);
            doubleLargeArray2.setDouble(j12, d + d2);
            doubleLargeArray2.setDouble(j13, d - d2);
            j11++;
            doubleLargeArray3 = doubleLargeArray;
            j10 = j15;
            j9 = 2;
        }
        long j16 = j9;
        long j17 = j10;
        int i = (j > j16 ? 1 : (j == j16 ? 0 : -1));
        if (i < 0) {
            return;
        }
        if (i != 0) {
            j7 = j17;
            long j18 = 0;
            while (j18 < j2) {
                j7 = j18 * j;
                long j19 = j7 * j16;
                long j20 = j19 + j;
                long j21 = j7 + j8;
                long j22 = 2;
                while (j22 < j) {
                    long j23 = j8;
                    long j24 = (j22 - 1) + j5;
                    long j25 = j18;
                    long j26 = j4 + j22 + j19;
                    long j27 = j19;
                    long j28 = j4 + (j - j22) + j20;
                    long j29 = j3 + j22;
                    long j30 = j20;
                    long j31 = j29 + j7;
                    long j32 = j7;
                    long j33 = j29 + j21;
                    long j34 = j21;
                    double d3 = doubleLargeArray.getDouble(j31 - 1);
                    double d4 = doubleLargeArray.getDouble(j31);
                    long j35 = j22;
                    double d5 = doubleLargeArray.getDouble(j33 - 1);
                    double d6 = doubleLargeArray.getDouble(j33);
                    double d7 = this.wtable_rl.getDouble(j24 - 1);
                    double d8 = this.wtable_rl.getDouble(j24);
                    double d9 = (d7 * d5) + (d8 * d6);
                    double d10 = (d7 * d6) - (d8 * d5);
                    doubleLargeArray2.setDouble(j26, d4 + d10);
                    doubleLargeArray2.setDouble(j26 - 1, d3 + d9);
                    doubleLargeArray2.setDouble(j28, d10 - d4);
                    doubleLargeArray2.setDouble(j28 - 1, d3 - d9);
                    j22 = j35 + 2;
                    j19 = j27;
                    j8 = j23;
                    j18 = j25;
                    j20 = j30;
                    j7 = j32;
                    j21 = j34;
                }
                j16 = 2;
                j18++;
                j8 = j8;
            }
            j6 = j8;
            if (j % j16 == 1) {
                return;
            }
        } else {
            j6 = j8;
            j7 = j17;
        }
        long j36 = j7 * j16;
        for (long j37 = 0; j37 < j2; j37++) {
            long j38 = j4 + j36 + j;
            long j39 = ((j3 + j) - 1) + (j37 * j);
            doubleLargeArray2.setDouble(j38, -doubleLargeArray.getDouble(j39 + j6));
            doubleLargeArray2.setDouble(j38 - 1, doubleLargeArray.getDouble(j39));
        }
    }

    void radb2(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5) {
        int i6 = i2 * i;
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i7 * i;
            int i9 = i8 * 2;
            int i10 = i9 + i;
            int i11 = i4 + i8;
            double d = dArr[i3 + i9];
            double d2 = dArr[((i3 + i) - 1) + i10];
            dArr2[i11] = d + d2;
            dArr2[i11 + i6] = d - d2;
        }
        int i12 = 2;
        if (i < 2) {
            return;
        }
        if (i != 2) {
            int i13 = 0;
            while (i13 < i2) {
                int i14 = i13 * i;
                int i15 = i14 * 2;
                int i16 = i15 + i;
                int i17 = i14 + i6;
                for (int i18 = i12; i18 < i; i18 += 2) {
                    int i19 = (i18 - 1) + i5;
                    int i20 = i4 + i18;
                    double[] dArr3 = this.wtable_r;
                    double d3 = dArr3[i19 - 1];
                    double d4 = dArr3[i19];
                    int i21 = i3 + i18 + i15;
                    int i22 = i3 + (i - i18) + i16;
                    int i23 = i20 + i14;
                    int i24 = i20 + i17;
                    double d5 = dArr[i21 - 1];
                    double d6 = dArr[i22 - 1];
                    double d7 = d5 - d6;
                    double d8 = dArr[i21];
                    double d9 = dArr[i22];
                    double d10 = d8 + d9;
                    dArr2[i23 - 1] = d5 + d6;
                    dArr2[i23] = d8 - d9;
                    dArr2[i24 - 1] = (d3 * d7) - (d4 * d10);
                    dArr2[i24] = (d3 * d10) + (d4 * d7);
                }
                i13++;
                i12 = 2;
            }
            if (i % 2 == 1) {
                return;
            }
        }
        for (int i25 = 0; i25 < i2; i25++) {
            int i26 = i25 * i;
            int i27 = ((i4 + i) - 1) + i26;
            int i28 = i3 + (i26 * 2) + i;
            dArr2[i27] = dArr[i28 - 1] * 2.0d;
            dArr2[i27 + i6] = dArr[i28] * (-2.0d);
        }
    }

    void radb2(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5) {
        long j6;
        long j7;
        long j8;
        long j9;
        DoubleFFT_1D doubleFFT_1D = this;
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        long j10 = j2 * j;
        long j11 = 0;
        while (true) {
            j6 = 2;
            if (j11 >= j2) {
                break;
            }
            long j12 = j11 * j;
            long j13 = 2 * j12;
            long j14 = j4 + j12;
            double d = doubleLargeArray3.getDouble(j3 + j13);
            double d2 = doubleLargeArray3.getDouble(((j3 + j) - 1) + j13 + j);
            doubleLargeArray2.setDouble(j14, d + d2);
            doubleLargeArray2.setDouble(j14 + j10, d - d2);
            j11++;
        }
        int i = (j > 2L ? 1 : (j == 2L ? 0 : -1));
        if (i < 0) {
            return;
        }
        if (i != 0) {
            long j15 = 0;
            while (j15 < j2) {
                long j16 = j15 * j;
                long j17 = j16 * j6;
                long j18 = j17 + j;
                long j19 = j16 + j10;
                long j20 = j6;
                while (j20 < j) {
                    long j21 = (j20 - 1) + j5;
                    long j22 = j4 + j20;
                    long j23 = j10;
                    double d3 = doubleFFT_1D.wtable_rl.getDouble(j21 - 1);
                    double d4 = doubleFFT_1D.wtable_rl.getDouble(j21);
                    long j24 = j15;
                    long j25 = j3 + j20 + j17;
                    long j26 = j3 + (j - j20) + j18;
                    long j27 = j22 + j16;
                    long j28 = j16;
                    long j29 = j22 + j19;
                    long j30 = j25 - 1;
                    long j31 = j26 - 1;
                    double d5 = doubleLargeArray3.getDouble(j30) - doubleLargeArray3.getDouble(j31);
                    double d6 = doubleLargeArray3.getDouble(j25) + doubleLargeArray3.getDouble(j26);
                    double d7 = doubleLargeArray3.getDouble(j25);
                    double d8 = doubleLargeArray3.getDouble(j30);
                    double d9 = doubleLargeArray3.getDouble(j26);
                    doubleLargeArray2.setDouble(j27 - 1, d8 + doubleLargeArray3.getDouble(j31));
                    doubleLargeArray2.setDouble(j27, d7 - d9);
                    doubleLargeArray2.setDouble(j29 - 1, (d3 * d5) - (d4 * d6));
                    doubleLargeArray2.setDouble(j29, (d3 * d6) + (d4 * d5));
                    j20 += 2;
                    j6 = 2;
                    j18 = j18;
                    j17 = j17;
                    j10 = j23;
                    j15 = j24;
                    j16 = j28;
                    doubleFFT_1D = this;
                    doubleLargeArray3 = doubleLargeArray;
                }
                j15++;
                doubleFFT_1D = this;
                doubleLargeArray3 = doubleLargeArray;
            }
            j7 = j10;
            j8 = j6;
            j9 = 1;
            if (j % j8 == 1) {
                return;
            }
        } else {
            j7 = j10;
            j8 = 2;
            j9 = 1;
        }
        for (long j32 = 0; j32 < j2; j32 += j9) {
            long j33 = j32 * j;
            long j34 = ((j4 + j) - j9) + j33;
            long j35 = j3 + (j33 * j8) + j;
            doubleLargeArray2.setDouble(j34, doubleLargeArray.getDouble(j35 - j9) * 2.0d);
            doubleLargeArray2.setDouble(j34 + j7, doubleLargeArray.getDouble(j35) * (-2.0d));
        }
    }

    void radf3(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5) {
        long j;
        int i6 = i5 + i;
        int i7 = i2 * i;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            j = 4605975682916830379L;
            if (i9 >= i2) {
                break;
            }
            int i10 = i9 * i;
            int i11 = ((i9 * 3) + 1) * i;
            int i12 = i3 + i10;
            int i13 = (i7 * 2) + i12;
            double d = dArr[i12];
            double d2 = dArr[i12 + i7];
            double d3 = dArr[i13];
            double d4 = d2 + d3;
            dArr2[i4 + (i10 * 3)] = d + d4;
            dArr2[i4 + i11 + i] = (d3 - d2) * 0.8660254037844387d;
            dArr2[((i4 + i) - 1) + i11] = d + (d4 * (-0.5d));
            i9++;
        }
        if (i == 1) {
            return;
        }
        while (i8 < i2) {
            int i14 = i8 * i;
            int i15 = i14 * 3;
            int i16 = i14 + i7;
            int i17 = i16 + i7;
            int i18 = i15 + i;
            int i19 = i18 + i;
            int i20 = 2;
            while (i20 < i) {
                int i21 = i20 - 1;
                int i22 = i21 + i5;
                int i23 = i21 + i6;
                double[] dArr3 = this.wtable_r;
                double d5 = dArr3[i22 - 1];
                double d6 = dArr3[i22];
                double d7 = dArr3[i23 - 1];
                double d8 = dArr3[i23];
                int i24 = i3 + i20;
                int i25 = i4 + i20;
                int i26 = i24 + i14;
                int i27 = i24 + i16;
                int i28 = i24 + i17;
                double d9 = dArr[i26 - 1];
                double d10 = dArr[i26];
                double d11 = dArr[i27 - 1];
                double d12 = dArr[i27];
                double d13 = dArr[i28 - 1];
                double d14 = dArr[i28];
                double d15 = (d5 * d11) + (d6 * d12);
                double d16 = (d5 * d12) - (d6 * d11);
                double d17 = (d7 * d13) + (d8 * d14);
                double d18 = (d7 * d14) - (d8 * d13);
                double d19 = d15 + d17;
                double d20 = d16 + d18;
                double d21 = d9 + (d19 * (-0.5d));
                double d22 = d10 + (d20 * (-0.5d));
                double d23 = (d16 - d18) * 0.8660254037844387d;
                double d24 = (d17 - d15) * 0.8660254037844387d;
                int i29 = i25 + i15;
                int i30 = i4 + (i - i20) + i18;
                int i31 = i25 + i19;
                dArr2[i29 - 1] = d9 + d19;
                dArr2[i29] = d10 + d20;
                dArr2[i30 - 1] = d21 - d23;
                dArr2[i30] = d24 - d22;
                dArr2[i31 - 1] = d21 + d23;
                dArr2[i31] = d22 + d24;
                i20 += 2;
                j = 4605975682916830379L;
            }
            i8++;
            j = j;
        }
    }

    void radf3(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5) {
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray2;
        long j6 = j5 + j;
        long j7 = j2 * j;
        long j8 = 0;
        while (j8 < j2) {
            long j9 = j8 * j;
            long j10 = ((j8 * 3) + 1) * j;
            long j11 = j3 + j9;
            long j12 = j11 + j7;
            long j13 = j11 + (2 * j7);
            double d = doubleLargeArray3.getDouble(j11);
            double d2 = doubleLargeArray3.getDouble(j12);
            double d3 = doubleLargeArray3.getDouble(j13);
            double d4 = d2 + d3;
            doubleLargeArray4.setDouble(j4 + (j9 * 3), d + d4);
            doubleLargeArray4.setDouble(j4 + j10 + j, (d3 - d2) * 0.8660254037844387d);
            doubleLargeArray4.setDouble(((j4 + j) - 1) + j10, d + (d4 * (-0.5d)));
            j8++;
            doubleLargeArray3 = doubleLargeArray;
            j6 = j6;
        }
        long j14 = j6;
        if (j == 1) {
            return;
        }
        long j15 = 0;
        while (j15 < j2) {
            long j16 = j15 * j;
            long j17 = j16 * 3;
            long j18 = j16 + j7;
            long j19 = j18 + j7;
            long j20 = j17 + j;
            long j21 = j20 + j;
            long j22 = 2;
            while (j22 < j) {
                long j23 = j22 - 1;
                long j24 = j7;
                long j25 = j23 + j5;
                long j26 = j15;
                long j27 = j23 + j14;
                long j28 = j20;
                double d5 = this.wtable_rl.getDouble(j25 - 1);
                double d6 = this.wtable_rl.getDouble(j25);
                long j29 = j17;
                double d7 = this.wtable_rl.getDouble(j27 - 1);
                double d8 = this.wtable_rl.getDouble(j27);
                long j30 = j3 + j22;
                long j31 = j4 + j22;
                long j32 = j30 + j16;
                long j33 = j16;
                long j34 = j30 + j18;
                long j35 = j18;
                long j36 = j30 + j19;
                long j37 = j19;
                double d9 = doubleLargeArray.getDouble(j32 - 1);
                double d10 = doubleLargeArray.getDouble(j32);
                double d11 = doubleLargeArray.getDouble(j34 - 1);
                double d12 = doubleLargeArray.getDouble(j34);
                double d13 = doubleLargeArray.getDouble(j36 - 1);
                double d14 = doubleLargeArray.getDouble(j36);
                double d15 = (d5 * d11) + (d6 * d12);
                double d16 = (d5 * d12) - (d6 * d11);
                double d17 = (d7 * d13) + (d8 * d14);
                double d18 = (d7 * d14) - (d8 * d13);
                double d19 = d15 + d17;
                double d20 = d16 + d18;
                double d21 = d9 + (d19 * (-0.5d));
                double d22 = d10 + (d20 * (-0.5d));
                double d23 = (d16 - d18) * 0.8660254037844387d;
                double d24 = (d17 - d15) * 0.8660254037844387d;
                long j38 = j31 + j29;
                long j39 = j4 + (j - j22) + j28;
                long j40 = j31 + j21;
                doubleLargeArray2.setDouble(j38 - 1, d9 + d19);
                doubleLargeArray2.setDouble(j38, d10 + d20);
                doubleLargeArray2.setDouble(j39 - 1, d21 - d23);
                doubleLargeArray2.setDouble(j39, d24 - d22);
                doubleLargeArray2.setDouble(j40 - 1, d21 + d23);
                doubleLargeArray2.setDouble(j40, d22 + d24);
                j22 += 2;
                doubleLargeArray4 = doubleLargeArray2;
                j20 = j28;
                j7 = j24;
                j15 = j26;
                j17 = j29;
                j19 = j37;
                j16 = j33;
                j18 = j35;
            }
            j15++;
        }
    }

    void radb3(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5) {
        double d;
        int i6 = i5 + i;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            d = -0.5d;
            if (i8 >= i2) {
                break;
            }
            int i9 = i8 * i;
            int i10 = i3 + (i9 * 3);
            int i11 = (i * 2) + i10;
            double d2 = dArr[i10];
            double d3 = dArr[i11 - 1] * 2.0d;
            double d4 = ((-0.5d) * d3) + d2;
            double d5 = dArr[i11] * 1.7320508075688774d;
            dArr2[i4 + i9] = d2 + d3;
            dArr2[i4 + ((i8 + i2) * i)] = d4 - d5;
            dArr2[i4 + (((i2 * 2) + i8) * i)] = d4 + d5;
            i8++;
        }
        if (i == 1) {
            return;
        }
        int i12 = i2 * i;
        while (i7 < i2) {
            int i13 = i7 * i;
            int i14 = i13 * 3;
            int i15 = i14 + i;
            int i16 = i15 + i;
            int i17 = i13 + i12;
            int i18 = i17 + i12;
            int i19 = 2;
            while (i19 < i) {
                int i20 = i3 + i19;
                int i21 = i4 + i19;
                int i22 = i20 + i14;
                int i23 = i20 + i16;
                int i24 = i3 + (i - i19) + i15;
                double d6 = dArr[i22 - 1];
                double d7 = dArr[i22];
                double d8 = dArr[i23 - 1];
                double d9 = dArr[i23];
                double d10 = dArr[i24 - 1];
                double d11 = dArr[i24];
                double d12 = d8 + d10;
                double d13 = d6 + (d12 * d);
                double d14 = d9 - d11;
                double d15 = d7 + (d14 * d);
                double d16 = (d8 - d10) * 0.8660254037844387d;
                double d17 = (d9 + d11) * 0.8660254037844387d;
                double d18 = d13 - d17;
                double d19 = d13 + d17;
                double d20 = d15 + d16;
                double d21 = d15 - d16;
                int i25 = i19 - 1;
                int i26 = i25 + i5;
                int i27 = i25 + i6;
                double[] dArr3 = this.wtable_r;
                double d22 = dArr3[i26 - 1];
                double d23 = dArr3[i26];
                double d24 = dArr3[i27 - 1];
                double d25 = dArr3[i27];
                int i28 = i21 + i13;
                int i29 = i21 + i17;
                int i30 = i21 + i18;
                dArr2[i28 - 1] = d6 + d12;
                dArr2[i28] = d7 + d14;
                dArr2[i29 - 1] = (d22 * d18) - (d23 * d20);
                dArr2[i29] = (d22 * d20) + (d23 * d18);
                dArr2[i30 - 1] = (d24 * d19) - (d25 * d21);
                dArr2[i30] = (d24 * d21) + (d25 * d19);
                i19 += 2;
                d = -0.5d;
            }
            i7++;
            d = -0.5d;
        }
    }

    void radb3(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5) {
        long j6;
        long j7;
        DoubleFFT_1D doubleFFT_1D = this;
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        long j8 = j5 + j;
        long j9 = 0;
        while (true) {
            j6 = 3;
            j7 = -4620693217682128896L;
            if (j9 >= j2) {
                break;
            }
            long j10 = j9 * j;
            long j11 = j3 + (3 * j10);
            long j12 = j11 + (j * 2);
            double d = doubleLargeArray3.getDouble(j11);
            double d2 = doubleLargeArray3.getDouble(j12 - 1) * 2.0d;
            double d3 = ((-0.5d) * d2) + d;
            double d4 = doubleLargeArray3.getDouble(j12) * 1.7320508075688774d;
            doubleLargeArray2.setDouble(j4 + j10, d + d2);
            doubleLargeArray2.setDouble(j4 + ((j9 + j2) * j), d3 - d4);
            doubleLargeArray2.setDouble(j4 + (((2 * j2) + j9) * j), d3 + d4);
            j9++;
            j8 = j8;
        }
        long j13 = j8;
        if (j == 1) {
            return;
        }
        long j14 = j2 * j;
        long j15 = 0;
        while (j15 < j2) {
            long j16 = j15 * j;
            long j17 = j16 * j6;
            long j18 = j17 + j;
            long j19 = j18 + j;
            long j20 = j16 + j14;
            long j21 = j20 + j14;
            long j22 = 2;
            while (j22 < j) {
                long j23 = j3 + j22;
                long j24 = j4 + j22;
                long j25 = j23 + j17;
                long j26 = j23 + j19;
                long j27 = j14;
                long j28 = j3 + (j - j22) + j18;
                long j29 = j17;
                double d5 = doubleLargeArray3.getDouble(j25 - 1);
                double d6 = doubleLargeArray3.getDouble(j25);
                long j30 = j15;
                double d7 = doubleLargeArray3.getDouble(j26 - 1);
                double d8 = doubleLargeArray3.getDouble(j26);
                long j31 = j16;
                double d9 = doubleLargeArray3.getDouble(j28 - 1);
                double d10 = doubleLargeArray3.getDouble(j28);
                double d11 = d7 + d9;
                double d12 = d5 + (d11 * (-0.5d));
                double d13 = d8 - d10;
                double d14 = d6 + (d13 * (-0.5d));
                double d15 = (d7 - d9) * 0.8660254037844387d;
                double d16 = (d8 + d10) * 0.8660254037844387d;
                double d17 = d12 - d16;
                double d18 = d12 + d16;
                double d19 = d14 + d15;
                double d20 = d14 - d15;
                long j32 = j22 - 1;
                long j33 = j32 + j5;
                long j34 = j32 + j13;
                double d21 = doubleFFT_1D.wtable_rl.getDouble(j33 - 1);
                double d22 = doubleFFT_1D.wtable_rl.getDouble(j33);
                double d23 = doubleFFT_1D.wtable_rl.getDouble(j34 - 1);
                double d24 = doubleFFT_1D.wtable_rl.getDouble(j34);
                long j35 = j24 + j31;
                long j36 = j24 + j20;
                long j37 = j24 + j21;
                doubleLargeArray2.setDouble(j35 - 1, d5 + d11);
                doubleLargeArray2.setDouble(j35, d6 + d13);
                doubleLargeArray2.setDouble(j36 - 1, (d21 * d17) - (d22 * d19));
                doubleLargeArray2.setDouble(j36, (d21 * d19) + (d22 * d17));
                doubleLargeArray2.setDouble(j37 - 1, (d23 * d18) - (d24 * d20));
                doubleLargeArray2.setDouble(j37, (d23 * d20) + (d24 * d18));
                j22 += 2;
                doubleFFT_1D = this;
                doubleLargeArray3 = doubleLargeArray;
                j17 = j29;
                j14 = j27;
                j7 = -4620693217682128896L;
                j15 = j30;
                j16 = j31;
            }
            j15++;
            doubleFFT_1D = this;
            doubleLargeArray3 = doubleLargeArray;
            j6 = 3;
        }
    }

    void radf4(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5) {
        int i6 = i5 + i;
        int i7 = i6 + i;
        int i8 = i2 * i;
        for (int i9 = 0; i9 < i2; i9++) {
            int i10 = i9 * i;
            int i11 = i10 * 4;
            int i12 = i10 + i8;
            int i13 = i12 + i8;
            double d = dArr[i3 + i10];
            double d2 = dArr[i3 + i12];
            double d3 = dArr[i3 + i13];
            double d4 = dArr[i3 + i13 + i8];
            double d5 = d2 + d4;
            double d6 = d + d3;
            int i14 = i4 + i11;
            int i15 = i4 + i11 + i + i;
            dArr2[i14] = d5 + d6;
            int i16 = i15 - 1;
            dArr2[i16 + i + i] = d6 - d5;
            dArr2[i16] = d - d3;
            dArr2[i15] = d4 - d2;
        }
        int i17 = 2;
        if (i < 2) {
            return;
        }
        if (i != 2) {
            int i18 = 0;
            while (i18 < i2) {
                int i19 = i18 * i;
                int i20 = i19 + i8;
                int i21 = i20 + i8;
                int i22 = i21 + i8;
                int i23 = i19 * 4;
                int i24 = i23 + i;
                int i25 = i24 + i;
                int i26 = i25 + i;
                for (int i27 = i17; i27 < i; i27 += 2) {
                    int i28 = i27 - 1;
                    int i29 = i28 + i5;
                    int i30 = i28 + i6;
                    int i31 = i28 + i7;
                    double[] dArr3 = this.wtable_r;
                    double d7 = dArr3[i29 - 1];
                    double d8 = dArr3[i29];
                    double d9 = dArr3[i30 - 1];
                    double d10 = dArr3[i30];
                    double d11 = dArr3[i31 - 1];
                    double d12 = dArr3[i31];
                    int i32 = i3 + i27;
                    int i33 = i4 + i27;
                    int i34 = i4 + (i - i27);
                    int i35 = i32 + i19;
                    int i36 = i32 + i20;
                    int i37 = i32 + i21;
                    int i38 = i32 + i22;
                    double d13 = dArr[i35 - 1];
                    double d14 = dArr[i35];
                    double d15 = dArr[i36 - 1];
                    double d16 = dArr[i36];
                    double d17 = dArr[i37 - 1];
                    double d18 = dArr[i37];
                    double d19 = dArr[i38 - 1];
                    double d20 = dArr[i38];
                    double d21 = (d7 * d15) + (d8 * d16);
                    double d22 = (d7 * d16) - (d8 * d15);
                    double d23 = (d9 * d17) + (d10 * d18);
                    double d24 = (d9 * d18) - (d10 * d17);
                    double d25 = (d11 * d19) + (d12 * d20);
                    double d26 = (d11 * d20) - (d12 * d19);
                    double d27 = d21 + d25;
                    double d28 = d25 - d21;
                    double d29 = d22 + d26;
                    double d30 = d22 - d26;
                    double d31 = d14 + d24;
                    double d32 = d14 - d24;
                    double d33 = d13 + d23;
                    double d34 = d13 - d23;
                    int i39 = i33 + i23;
                    int i40 = i34 + i24;
                    int i41 = i33 + i25;
                    int i42 = i34 + i26;
                    dArr2[i39 - 1] = d27 + d33;
                    dArr2[i42 - 1] = d33 - d27;
                    dArr2[i39] = d29 + d31;
                    dArr2[i42] = d29 - d31;
                    dArr2[i41 - 1] = d30 + d34;
                    dArr2[i40 - 1] = d34 - d30;
                    dArr2[i41] = d28 + d32;
                    dArr2[i40] = d28 - d32;
                }
                i18++;
                i17 = 2;
            }
            if (i % 2 == 1) {
                return;
            }
        }
        for (int i43 = 0; i43 < i2; i43++) {
            int i44 = i43 * i;
            int i45 = i44 * 4;
            int i46 = i44 + i8;
            int i47 = i46 + i8;
            int i48 = i45 + i;
            int i49 = i48 + i;
            int i50 = (i3 + i) - 1;
            double d35 = dArr[i44 + i50];
            double d36 = dArr[i46 + i50];
            double d37 = dArr[i47 + i50];
            double d38 = dArr[i50 + i47 + i8];
            double d39 = (d36 + d38) * (-0.7071067811865476d);
            double d40 = (d36 - d38) * 0.7071067811865476d;
            int i51 = (i4 + i) - 1;
            dArr2[i45 + i51] = d40 + d35;
            dArr2[i51 + i49] = d35 - d40;
            dArr2[i4 + i48] = d39 - d37;
            dArr2[i4 + i49 + i] = d39 + d37;
        }
    }

    void radf4(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5) {
        long j6;
        DoubleLargeArray doubleLargeArray3;
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray;
        DoubleLargeArray doubleLargeArray5 = doubleLargeArray2;
        long j7 = j5 + j;
        long j8 = j7 + j;
        long j9 = j2 * j;
        long j10 = 0;
        while (true) {
            j6 = 4;
            if (j10 >= j2) {
                break;
            }
            long j11 = j10 * j;
            long j12 = 4 * j11;
            long j13 = j11 + j9;
            long j14 = j13 + j9;
            long j15 = j14 + j9;
            double d = doubleLargeArray4.getDouble(j3 + j11);
            long j16 = j8;
            double d2 = doubleLargeArray4.getDouble(j3 + j13);
            long j17 = j7;
            double d3 = doubleLargeArray4.getDouble(j3 + j14);
            long j18 = j9;
            double d4 = doubleLargeArray4.getDouble(j3 + j15);
            double d5 = d2 + d4;
            double d6 = d + d3;
            long j19 = j4 + j12 + j + j;
            long j20 = j10;
            doubleLargeArray5.setDouble(j4 + j12, d5 + d6);
            long j21 = j19 - 1;
            doubleLargeArray5.setDouble(j21 + j + j, d6 - d5);
            doubleLargeArray5.setDouble(j21, d - d3);
            doubleLargeArray5.setDouble(j19, d4 - d2);
            j10 = j20 + 1;
            doubleLargeArray4 = doubleLargeArray;
            j8 = j16;
            j7 = j17;
            j9 = j18;
        }
        long j22 = j7;
        long j23 = j8;
        long j24 = j9;
        long j25 = 2;
        int i = (j > 2L ? 1 : (j == 2L ? 0 : -1));
        if (i < 0) {
            return;
        }
        if (i != 0) {
            long j26 = 0;
            while (j26 < j2) {
                long j27 = j26 * j;
                long j28 = j27 + j24;
                long j29 = j28 + j24;
                long j30 = j29 + j24;
                long j31 = j27 * j6;
                long j32 = j31 + j;
                long j33 = j32 + j;
                long j34 = j33 + j;
                long j35 = j25;
                while (j35 < j) {
                    long j36 = j35 - 1;
                    long j37 = j36 + j5;
                    long j38 = j36 + j22;
                    long j39 = j26;
                    long j40 = j36 + j23;
                    long j41 = j30;
                    double d7 = this.wtable_rl.getDouble(j37 - 1);
                    double d8 = this.wtable_rl.getDouble(j37);
                    double d9 = this.wtable_rl.getDouble(j38 - 1);
                    double d10 = this.wtable_rl.getDouble(j38);
                    double d11 = this.wtable_rl.getDouble(j40 - 1);
                    double d12 = this.wtable_rl.getDouble(j40);
                    long j42 = j3 + j35;
                    long j43 = j4 + j35;
                    long j44 = j4 + (j - j35);
                    long j45 = j42 + j27;
                    long j46 = j42 + j28;
                    long j47 = j42 + j29;
                    long j48 = j42 + j41;
                    double d13 = doubleLargeArray.getDouble(j45 - 1);
                    double d14 = doubleLargeArray.getDouble(j45);
                    double d15 = doubleLargeArray.getDouble(j46 - 1);
                    double d16 = doubleLargeArray.getDouble(j46);
                    double d17 = doubleLargeArray.getDouble(j47 - 1);
                    double d18 = doubleLargeArray.getDouble(j47);
                    double d19 = doubleLargeArray.getDouble(j48 - 1);
                    double d20 = doubleLargeArray.getDouble(j48);
                    double d21 = (d7 * d15) + (d8 * d16);
                    double d22 = (d7 * d16) - (d15 * d8);
                    double d23 = (d9 * d17) + (d10 * d18);
                    double d24 = (d9 * d18) - (d17 * d10);
                    double d25 = (d11 * d19) + (d12 * d20);
                    double d26 = (d11 * d20) - (d19 * d12);
                    double d27 = d21 + d25;
                    double d28 = d25 - d21;
                    double d29 = d22 + d26;
                    double d30 = d22 - d26;
                    double d31 = d14 + d24;
                    double d32 = d14 - d24;
                    double d33 = d13 + d23;
                    double d34 = d13 - d23;
                    long j49 = j43 + j31;
                    long j50 = j44 + j32;
                    long j51 = j43 + j33;
                    long j52 = j44 + j34;
                    doubleLargeArray2.setDouble(j49 - 1, d27 + d33);
                    doubleLargeArray2.setDouble(j52 - 1, d33 - d27);
                    doubleLargeArray2.setDouble(j49, d29 + d31);
                    doubleLargeArray2.setDouble(j52, d29 - d31);
                    doubleLargeArray2.setDouble(j51 - 1, d30 + d34);
                    doubleLargeArray2.setDouble(j50 - 1, d34 - d30);
                    doubleLargeArray2.setDouble(j51, d28 + d32);
                    doubleLargeArray2.setDouble(j50, d28 - d32);
                    j25 = 2;
                    j35 += 2;
                    doubleLargeArray5 = doubleLargeArray2;
                    j30 = j41;
                    j26 = j39;
                    j27 = j27;
                    j28 = j28;
                    j29 = j29;
                }
                j26++;
                j6 = 4;
            }
            doubleLargeArray3 = doubleLargeArray5;
            if (j % j25 == 1) {
                return;
            }
        } else {
            doubleLargeArray3 = doubleLargeArray5;
        }
        for (long j53 = 0; j53 < j2; j53++) {
            long j54 = j53 * j;
            long j55 = j54 * 4;
            long j56 = j54 + j24;
            long j57 = j56 + j24;
            long j58 = j57 + j24;
            long j59 = j55 + j;
            long j60 = j59 + j;
            long j61 = (j3 + j) - 1;
            double d35 = doubleLargeArray.getDouble(j61 + j54);
            double d36 = doubleLargeArray.getDouble(j61 + j56);
            double d37 = doubleLargeArray.getDouble(j61 + j57);
            double d38 = doubleLargeArray.getDouble(j61 + j58);
            double d39 = (d36 + d38) * (-0.7071067811865476d);
            double d40 = (d36 - d38) * 0.7071067811865476d;
            long j62 = (j4 + j) - 1;
            doubleLargeArray3.setDouble(j62 + j55, d40 + d35);
            doubleLargeArray3.setDouble(j62 + j60, d35 - d40);
            doubleLargeArray3.setDouble(j4 + j59, d39 - d37);
            doubleLargeArray3.setDouble(j4 + j60 + j, d39 + d37);
        }
    }

    void radb4(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5) {
        int i6 = i5 + i;
        int i7 = i6 + i;
        int i8 = i2 * i;
        for (int i9 = 0; i9 < i2; i9++) {
            int i10 = i9 * i;
            int i11 = i10 * 4;
            int i12 = i10 + i8;
            int i13 = i12 + i8;
            int i14 = i11 + i;
            int i15 = i14 + i;
            double d = dArr[i3 + i11];
            double d2 = dArr[i3 + i15];
            int i16 = (i3 + i) - 1;
            double d3 = dArr[i15 + i + i16];
            double d4 = dArr[i16 + i14];
            double d5 = d - d3;
            double d6 = d + d3;
            double d7 = d4 + d4;
            double d8 = d2 + d2;
            dArr2[i4 + i10] = d6 + d7;
            dArr2[i4 + i12] = d5 - d8;
            dArr2[i4 + i13] = d6 - d7;
            dArr2[i4 + i13 + i8] = d5 + d8;
        }
        int i17 = 2;
        if (i < 2) {
            return;
        }
        if (i != 2) {
            int i18 = 0;
            while (i18 < i2) {
                int i19 = i18 * i;
                int i20 = i19 + i8;
                int i21 = i20 + i8;
                int i22 = i21 + i8;
                int i23 = i19 * 4;
                int i24 = i23 + i;
                int i25 = i24 + i;
                int i26 = i25 + i;
                for (int i27 = i17; i27 < i; i27 += 2) {
                    int i28 = i27 - 1;
                    int i29 = i28 + i5;
                    int i30 = i28 + i6;
                    int i31 = i28 + i7;
                    double[] dArr3 = this.wtable_r;
                    double d9 = dArr3[i29 - 1];
                    double d10 = dArr3[i29];
                    double d11 = dArr3[i30 - 1];
                    double d12 = dArr3[i30];
                    double d13 = dArr3[i31 - 1];
                    double d14 = dArr3[i31];
                    int i32 = i3 + i27;
                    int i33 = i3 + (i - i27);
                    int i34 = i4 + i27;
                    int i35 = i32 + i23;
                    int i36 = i33 + i24;
                    int i37 = i32 + i25;
                    int i38 = i33 + i26;
                    double d15 = dArr[i35 - 1];
                    double d16 = dArr[i35];
                    double d17 = dArr[i36 - 1];
                    double d18 = dArr[i36];
                    double d19 = dArr[i37 - 1];
                    double d20 = dArr[i37];
                    double d21 = dArr[i38 - 1];
                    double d22 = dArr[i38];
                    double d23 = d16 + d22;
                    double d24 = d16 - d22;
                    double d25 = d20 - d18;
                    double d26 = d20 + d18;
                    double d27 = d15 - d21;
                    double d28 = d15 + d21;
                    double d29 = d19 - d17;
                    double d30 = d19 + d17;
                    double d31 = d28 - d30;
                    double d32 = d24 - d25;
                    double d33 = d27 - d26;
                    double d34 = d27 + d26;
                    double d35 = d23 + d29;
                    double d36 = d23 - d29;
                    int i39 = i34 + i19;
                    int i40 = i34 + i20;
                    int i41 = i34 + i21;
                    int i42 = i34 + i22;
                    dArr2[i39 - 1] = d28 + d30;
                    dArr2[i39] = d24 + d25;
                    dArr2[i40 - 1] = (d9 * d33) - (d10 * d35);
                    dArr2[i40] = (d9 * d35) + (d10 * d33);
                    dArr2[i41 - 1] = (d11 * d31) - (d12 * d32);
                    dArr2[i41] = (d11 * d32) + (d12 * d31);
                    dArr2[i42 - 1] = (d13 * d34) - (d14 * d36);
                    dArr2[i42] = (d13 * d36) + (d14 * d34);
                }
                i18++;
                i17 = 2;
            }
            if (i % 2 == 1) {
                return;
            }
        }
        for (int i43 = 0; i43 < i2; i43++) {
            int i44 = i43 * i;
            int i45 = i44 * 4;
            int i46 = i44 + i8;
            int i47 = i46 + i8;
            int i48 = i45 + i;
            int i49 = i48 + i;
            int i50 = (i3 + i) - 1;
            double d37 = dArr[i45 + i50];
            double d38 = dArr[i50 + i49];
            double d39 = dArr[i3 + i48];
            double d40 = dArr[i3 + i49 + i];
            double d41 = d39 + d40;
            double d42 = d40 - d39;
            double d43 = d37 - d38;
            double d44 = d37 + d38;
            int i51 = (i4 + i) - 1;
            dArr2[i44 + i51] = d44 + d44;
            dArr2[i46 + i51] = (d43 - d41) * 1.4142135623730951d;
            dArr2[i47 + i51] = d42 + d42;
            dArr2[i51 + i47 + i8] = (d43 + d41) * (-1.4142135623730951d);
        }
    }

    void radb4(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5) {
        long j6;
        long j7;
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        long j8 = j5 + j;
        long j9 = j8 + j;
        long j10 = j2 * j;
        long j11 = 0;
        while (true) {
            j6 = 4;
            if (j11 >= j2) {
                break;
            }
            long j12 = j11 * j;
            long j13 = 4 * j12;
            long j14 = j12 + j10;
            long j15 = j14 + j10;
            long j16 = j13 + j;
            long j17 = j16 + j;
            long j18 = j17 + j;
            double d = doubleLargeArray3.getDouble(j3 + j13);
            double d2 = doubleLargeArray3.getDouble(j3 + j17);
            long j19 = (j3 + j) - 1;
            long j20 = j9;
            double d3 = doubleLargeArray3.getDouble(j19 + j18);
            long j21 = j8;
            double d4 = doubleLargeArray3.getDouble(j19 + j16);
            double d5 = d - d3;
            double d6 = d + d3;
            double d7 = d4 + d4;
            double d8 = d2 + d2;
            doubleLargeArray2.setDouble(j4 + j12, d6 + d7);
            doubleLargeArray2.setDouble(j4 + j14, d5 - d8);
            doubleLargeArray2.setDouble(j4 + j15, d6 - d7);
            doubleLargeArray2.setDouble(j4 + j15 + j10, d5 + d8);
            j11++;
            doubleLargeArray3 = doubleLargeArray;
            j8 = j21;
            j9 = j20;
        }
        long j22 = j8;
        long j23 = j9;
        long j24 = 2;
        int i = (j > 2L ? 1 : (j == 2L ? 0 : -1));
        if (i < 0) {
            return;
        }
        if (i != 0) {
            long j25 = 0;
            while (j25 < j2) {
                long j26 = j25 * j;
                long j27 = j26 + j10;
                long j28 = j27 + j10;
                long j29 = j28 + j10;
                long j30 = j26 * j6;
                long j31 = j30 + j;
                long j32 = j31 + j;
                long j33 = j32 + j;
                long j34 = j24;
                while (j34 < j) {
                    long j35 = j34 - 1;
                    long j36 = j35 + j5;
                    long j37 = j35 + j22;
                    long j38 = j10;
                    long j39 = j35 + j23;
                    long j40 = j25;
                    long j41 = j28;
                    double d9 = this.wtable_rl.getDouble(j36 - 1);
                    double d10 = this.wtable_rl.getDouble(j36);
                    double d11 = this.wtable_rl.getDouble(j37 - 1);
                    double d12 = this.wtable_rl.getDouble(j37);
                    double d13 = this.wtable_rl.getDouble(j39 - 1);
                    double d14 = this.wtable_rl.getDouble(j39);
                    long j42 = j3 + j34;
                    long j43 = j3 + (j - j34);
                    long j44 = j4 + j34;
                    long j45 = j42 + j30;
                    long j46 = j43 + j31;
                    long j47 = j42 + j32;
                    long j48 = j43 + j33;
                    double d15 = doubleLargeArray.getDouble(j45 - 1);
                    double d16 = doubleLargeArray.getDouble(j45);
                    long j49 = j27;
                    double d17 = doubleLargeArray.getDouble(j46 - 1);
                    double d18 = doubleLargeArray.getDouble(j46);
                    long j50 = j26;
                    double d19 = doubleLargeArray.getDouble(j47 - 1);
                    double d20 = doubleLargeArray.getDouble(j47);
                    double d21 = doubleLargeArray.getDouble(j48 - 1);
                    double d22 = doubleLargeArray.getDouble(j48);
                    double d23 = d16 + d22;
                    double d24 = d16 - d22;
                    double d25 = d20 - d18;
                    double d26 = d20 + d18;
                    double d27 = d15 - d21;
                    double d28 = d15 + d21;
                    double d29 = d19 - d17;
                    double d30 = d19 + d17;
                    double d31 = d28 - d30;
                    double d32 = d24 - d25;
                    double d33 = d27 - d26;
                    double d34 = d27 + d26;
                    double d35 = d23 + d29;
                    double d36 = d23 - d29;
                    long j51 = j44 + j50;
                    long j52 = j44 + j49;
                    long j53 = j44 + j41;
                    long j54 = j44 + j29;
                    doubleLargeArray2.setDouble(j51 - 1, d28 + d30);
                    doubleLargeArray2.setDouble(j51, d24 + d25);
                    doubleLargeArray2.setDouble(j52 - 1, (d9 * d33) - (d10 * d35));
                    doubleLargeArray2.setDouble(j52, (d9 * d35) + (d10 * d33));
                    doubleLargeArray2.setDouble(j53 - 1, (d11 * d31) - (d12 * d32));
                    doubleLargeArray2.setDouble(j53, (d11 * d32) + (d12 * d31));
                    doubleLargeArray2.setDouble(j54 - 1, (d13 * d34) - (d14 * d36));
                    doubleLargeArray2.setDouble(j54, (d13 * d36) + (d14 * d34));
                    j24 = 2;
                    j34 += 2;
                    j25 = j40;
                    j10 = j38;
                    j28 = j41;
                    j27 = j49;
                    j26 = j50;
                }
                j25++;
                j6 = 4;
            }
            j7 = j10;
            if (j % j24 == 1) {
                return;
            }
        } else {
            j7 = j10;
        }
        long j55 = 0;
        while (j55 < j2) {
            long j56 = j55 * j;
            long j57 = j56 * 4;
            long j58 = j56 + j7;
            long j59 = j58 + j7;
            long j60 = j57 + j;
            long j61 = j60 + j;
            long j62 = (j3 + j) - 1;
            double d37 = doubleLargeArray.getDouble(j62 + j57);
            double d38 = doubleLargeArray.getDouble(j62 + j61);
            long j63 = j55;
            double d39 = doubleLargeArray.getDouble(j3 + j60);
            double d40 = doubleLargeArray.getDouble(j3 + j61 + j);
            double d41 = d39 + d40;
            double d42 = d40 - d39;
            double d43 = d37 - d38;
            double d44 = d37 + d38;
            long j64 = (j4 + j) - 1;
            doubleLargeArray2.setDouble(j64 + j56, d44 + d44);
            doubleLargeArray2.setDouble(j64 + j58, (d43 - d41) * 1.4142135623730951d);
            doubleLargeArray2.setDouble(j64 + j59, d42 + d42);
            doubleLargeArray2.setDouble(j64 + j59 + j7, (d43 + d41) * (-1.4142135623730951d));
            j55 = j63 + 1;
        }
    }

    void radf5(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5) {
        long j;
        int i6 = i5 + i;
        int i7 = i6 + i;
        int i8 = i7 + i;
        int i9 = i2 * i;
        int i10 = 0;
        while (true) {
            j = 4606741575090066687L;
            if (i10 >= i2) {
                break;
            }
            int i11 = i10 * i;
            int i12 = i11 * 5;
            int i13 = i12 + i;
            int i14 = i13 + i;
            int i15 = i14 + i;
            int i16 = i11 + i9;
            int i17 = i16 + i9;
            int i18 = i17 + i9;
            int i19 = (i4 + i) - 1;
            double d = dArr[i3 + i11];
            double d2 = dArr[i3 + i16];
            double d3 = dArr[i3 + i17];
            double d4 = dArr[i3 + i18];
            double d5 = dArr[i3 + i18 + i9];
            double d6 = d5 + d2;
            double d7 = d5 - d2;
            double d8 = d4 + d3;
            double d9 = d4 - d3;
            dArr2[i4 + i12] = d + d6 + d8;
            dArr2[i19 + i13] = d + (d6 * 0.30901699437494745d) + (d8 * (-0.8090169943749473d));
            dArr2[i4 + i14] = (d7 * 0.9510565162951535d) + (d9 * 0.5877852522924732d);
            dArr2[i19 + i15] = d + (d6 * (-0.8090169943749473d)) + (d8 * 0.30901699437494745d);
            dArr2[i4 + i15 + i] = (d7 * 0.5877852522924732d) - (d9 * 0.9510565162951535d);
            i10++;
        }
        if (i == 1) {
            return;
        }
        int i20 = 0;
        while (i20 < i2) {
            int i21 = i20 * i;
            int i22 = i21 * 5;
            int i23 = i22 + i;
            int i24 = i23 + i;
            int i25 = i24 + i;
            int i26 = i25 + i;
            int i27 = i21 + i9;
            int i28 = i27 + i9;
            int i29 = i28 + i9;
            int i30 = i29 + i9;
            int i31 = 2;
            while (i31 < i) {
                int i32 = i31 - 1;
                int i33 = i32 + i5;
                int i34 = i32 + i6;
                int i35 = i32 + i7;
                int i36 = i32 + i8;
                double[] dArr3 = this.wtable_r;
                double d10 = dArr3[i33 - 1];
                double d11 = dArr3[i33];
                double d12 = dArr3[i34 - 1];
                double d13 = dArr3[i34];
                double d14 = dArr3[i35 - 1];
                double d15 = dArr3[i35];
                double d16 = dArr3[i36 - 1];
                double d17 = dArr3[i36];
                int i37 = i3 + i31;
                int i38 = i4 + i31;
                int i39 = i4 + (i - i31);
                int i40 = i37 + i21;
                int i41 = i37 + i27;
                int i42 = i37 + i28;
                int i43 = i37 + i29;
                int i44 = i37 + i30;
                double d18 = dArr[i40 - 1];
                double d19 = dArr[i40];
                double d20 = dArr[i41 - 1];
                double d21 = dArr[i41];
                double d22 = dArr[i42 - 1];
                double d23 = dArr[i42];
                double d24 = dArr[i43 - 1];
                double d25 = dArr[i43];
                double d26 = dArr[i44 - 1];
                double d27 = dArr[i44];
                double d28 = (d10 * d20) + (d11 * d21);
                double d29 = (d10 * d21) - (d11 * d20);
                double d30 = (d12 * d22) + (d13 * d23);
                double d31 = (d12 * d23) - (d13 * d22);
                double d32 = (d14 * d24) + (d15 * d25);
                double d33 = (d14 * d25) - (d15 * d24);
                double d34 = (d16 * d26) + (d17 * d27);
                double d35 = (d16 * d27) - (d17 * d26);
                double d36 = d28 + d34;
                double d37 = d34 - d28;
                double d38 = d29 - d35;
                double d39 = d29 + d35;
                double d40 = d30 + d32;
                double d41 = d32 - d30;
                double d42 = d31 - d33;
                double d43 = d31 + d33;
                double d44 = d18 + (d36 * 0.30901699437494745d) + (d40 * (-0.8090169943749473d));
                double d45 = d19 + (d39 * 0.30901699437494745d) + (d43 * (-0.8090169943749473d));
                double d46 = d18 + (d36 * (-0.8090169943749473d)) + (d40 * 0.30901699437494745d);
                double d47 = d19 + (d39 * (-0.8090169943749473d)) + (d43 * 0.30901699437494745d);
                double d48 = (d38 * 0.9510565162951535d) + (d42 * 0.5877852522924732d);
                double d49 = (d37 * 0.9510565162951535d) + (d41 * 0.5877852522924732d);
                double d50 = (d38 * 0.5877852522924732d) - (d42 * 0.9510565162951535d);
                double d51 = (d37 * 0.5877852522924732d) - (d41 * 0.9510565162951535d);
                int i45 = i38 + i22;
                int i46 = i39 + i23;
                int i47 = i38 + i24;
                int i48 = i39 + i25;
                int i49 = i38 + i26;
                dArr2[i45 - 1] = d18 + d36 + d40;
                dArr2[i45] = d19 + d39 + d43;
                dArr2[i47 - 1] = d44 + d48;
                dArr2[i46 - 1] = d44 - d48;
                dArr2[i47] = d45 + d49;
                dArr2[i46] = d49 - d45;
                dArr2[i49 - 1] = d46 + d50;
                dArr2[i48 - 1] = d46 - d50;
                dArr2[i49] = d47 + d51;
                dArr2[i48] = d51 - d47;
                i31 += 2;
                j = 4606741575090066687L;
            }
            i20++;
            j = j;
        }
    }

    void radf5(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5) {
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        long j6 = j5 + j;
        long j7 = j6 + j;
        long j8 = j7 + j;
        long j9 = j2 * j;
        long j10 = 0;
        while (j10 < j2) {
            long j11 = j10 * j;
            long j12 = 5 * j11;
            long j13 = j12 + j;
            long j14 = j13 + j;
            long j15 = j14 + j;
            long j16 = j11 + j9;
            long j17 = j16 + j9;
            long j18 = j17 + j9;
            long j19 = j18 + j9;
            long j20 = (j4 + j) - 1;
            double d = doubleLargeArray3.getDouble(j3 + j11);
            long j21 = j8;
            double d2 = doubleLargeArray3.getDouble(j3 + j16);
            long j22 = j7;
            double d3 = doubleLargeArray3.getDouble(j3 + j17);
            long j23 = j6;
            double d4 = doubleLargeArray3.getDouble(j3 + j18);
            long j24 = j9;
            double d5 = doubleLargeArray3.getDouble(j3 + j19);
            double d6 = d5 + d2;
            double d7 = d5 - d2;
            double d8 = d4 + d3;
            double d9 = d4 - d3;
            doubleLargeArray2.setDouble(j4 + j12, d + d6 + d8);
            doubleLargeArray2.setDouble(j20 + j13, (d6 * 0.30901699437494745d) + d + (d8 * (-0.8090169943749473d)));
            doubleLargeArray2.setDouble(j4 + j14, (d7 * 0.9510565162951535d) + (d9 * 0.5877852522924732d));
            doubleLargeArray2.setDouble(j20 + j15, d + (d6 * (-0.8090169943749473d)) + (d8 * 0.30901699437494745d));
            doubleLargeArray2.setDouble(j4 + j15 + j, (d7 * 0.5877852522924732d) - (d9 * 0.9510565162951535d));
            j10++;
            doubleLargeArray3 = doubleLargeArray;
            j8 = j21;
            j7 = j22;
            j6 = j23;
            j9 = j24;
        }
        long j25 = j6;
        long j26 = j7;
        long j27 = j8;
        long j28 = j9;
        if (j == 1) {
            return;
        }
        long j29 = 0;
        while (j29 < j2) {
            long j30 = j29 * j;
            long j31 = j30 * 5;
            long j32 = j31 + j;
            long j33 = j32 + j;
            long j34 = j33 + j;
            long j35 = j34 + j;
            long j36 = j30 + j28;
            long j37 = j36 + j28;
            long j38 = j37 + j28;
            long j39 = j38 + j28;
            long j40 = 2;
            while (j40 < j) {
                long j41 = j40 - 1;
                long j42 = j29;
                long j43 = j41 + j5;
                long j44 = j35;
                long j45 = j41 + j25;
                long j46 = j34;
                long j47 = j41 + j26;
                long j48 = j33;
                long j49 = j41 + j27;
                long j50 = j32;
                double d10 = this.wtable_rl.getDouble(j43 - 1);
                double d11 = this.wtable_rl.getDouble(j43);
                long j51 = j31;
                double d12 = this.wtable_rl.getDouble(j45 - 1);
                double d13 = this.wtable_rl.getDouble(j45);
                double d14 = this.wtable_rl.getDouble(j47 - 1);
                double d15 = this.wtable_rl.getDouble(j47);
                double d16 = this.wtable_rl.getDouble(j49 - 1);
                double d17 = this.wtable_rl.getDouble(j49);
                long j52 = j3 + j40;
                long j53 = j4 + j40;
                long j54 = j4 + (j - j40);
                long j55 = j52 + j30;
                long j56 = j30;
                long j57 = j52 + j36;
                long j58 = j52 + j37;
                long j59 = j52 + j38;
                long j60 = j52 + j39;
                double d18 = doubleLargeArray.getDouble(j55 - 1);
                double d19 = doubleLargeArray.getDouble(j55);
                double d20 = doubleLargeArray.getDouble(j57 - 1);
                double d21 = doubleLargeArray.getDouble(j57);
                double d22 = doubleLargeArray.getDouble(j58 - 1);
                double d23 = doubleLargeArray.getDouble(j58);
                double d24 = doubleLargeArray.getDouble(j59 - 1);
                double d25 = doubleLargeArray.getDouble(j59);
                double d26 = doubleLargeArray.getDouble(j60 - 1);
                double d27 = doubleLargeArray.getDouble(j60);
                double d28 = (d10 * d20) + (d11 * d21);
                double d29 = (d10 * d21) - (d11 * d20);
                double d30 = (d12 * d22) + (d13 * d23);
                double d31 = (d12 * d23) - (d22 * d13);
                double d32 = (d14 * d24) + (d15 * d25);
                double d33 = (d14 * d25) - (d24 * d15);
                double d34 = (d16 * d26) + (d17 * d27);
                double d35 = (d27 * d16) - (d26 * d17);
                double d36 = d28 + d34;
                double d37 = d34 - d28;
                double d38 = d29 - d35;
                double d39 = d29 + d35;
                double d40 = d30 + d32;
                double d41 = d32 - d30;
                double d42 = d31 - d33;
                double d43 = d31 + d33;
                double d44 = d18 + (d36 * 0.30901699437494745d) + (d40 * (-0.8090169943749473d));
                double d45 = d19 + (d39 * 0.30901699437494745d) + (d43 * (-0.8090169943749473d));
                double d46 = d18 + (d36 * (-0.8090169943749473d)) + (d40 * 0.30901699437494745d);
                double d47 = d19 + (d39 * (-0.8090169943749473d)) + (d43 * 0.30901699437494745d);
                double d48 = (d38 * 0.9510565162951535d) + (d42 * 0.5877852522924732d);
                double d49 = (d37 * 0.9510565162951535d) + (d41 * 0.5877852522924732d);
                double d50 = (d38 * 0.5877852522924732d) - (d42 * 0.9510565162951535d);
                double d51 = (d37 * 0.5877852522924732d) - (d41 * 0.9510565162951535d);
                long j61 = j53 + j51;
                long j62 = j54 + j50;
                long j63 = j53 + j48;
                long j64 = j54 + j46;
                long j65 = j53 + j44;
                doubleLargeArray2.setDouble(j61 - 1, d18 + d36 + d40);
                doubleLargeArray2.setDouble(j61, d19 + d39 + d43);
                doubleLargeArray2.setDouble(j63 - 1, d44 + d48);
                doubleLargeArray2.setDouble(j62 - 1, d44 - d48);
                doubleLargeArray2.setDouble(j63, d45 + d49);
                doubleLargeArray2.setDouble(j62, d49 - d45);
                doubleLargeArray2.setDouble(j65 - 1, d46 + d50);
                doubleLargeArray2.setDouble(j64 - 1, d46 - d50);
                doubleLargeArray2.setDouble(j65, d47 + d51);
                doubleLargeArray2.setDouble(j64, d51 - d47);
                j40 += 2;
                j32 = j50;
                j29 = j42;
                j35 = j44;
                j34 = j46;
                j33 = j48;
                j31 = j51;
                j30 = j56;
            }
            j29++;
        }
    }

    void radb5(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5) {
        long j;
        int i6 = i5 + i;
        int i7 = i6 + i;
        int i8 = i7 + i;
        int i9 = i2 * i;
        int i10 = 0;
        while (true) {
            j = 4606741575090066687L;
            if (i10 >= i2) {
                break;
            }
            int i11 = i10 * i;
            int i12 = i11 * 5;
            int i13 = i12 + i;
            int i14 = i13 + i;
            int i15 = i14 + i;
            int i16 = i11 + i9;
            int i17 = i16 + i9;
            int i18 = i17 + i9;
            int i19 = (i3 + i) - 1;
            double d = dArr[i3 + i12];
            double d2 = dArr[i3 + i14] * 2.0d;
            double d3 = dArr[i3 + i15 + i] * 2.0d;
            double d4 = dArr[i19 + i13] * 2.0d;
            double d5 = dArr[i19 + i15] * 2.0d;
            double d6 = d + (d4 * 0.30901699437494745d) + (d5 * (-0.8090169943749473d));
            double d7 = d + ((-0.8090169943749473d) * d4) + (0.30901699437494745d * d5);
            double d8 = (d2 * 0.9510565162951535d) + (d3 * 0.5877852522924732d);
            double d9 = (d2 * 0.5877852522924732d) - (d3 * 0.9510565162951535d);
            dArr2[i4 + i11] = d + d4 + d5;
            dArr2[i4 + i16] = d6 - d8;
            dArr2[i4 + i17] = d7 - d9;
            dArr2[i4 + i18] = d7 + d9;
            dArr2[i4 + i18 + i9] = d6 + d8;
            i10++;
        }
        if (i == 1) {
            return;
        }
        int i20 = 0;
        while (i20 < i2) {
            int i21 = i20 * i;
            int i22 = i21 * 5;
            int i23 = i22 + i;
            int i24 = i23 + i;
            int i25 = i24 + i;
            int i26 = i25 + i;
            int i27 = i21 + i9;
            int i28 = i27 + i9;
            int i29 = i28 + i9;
            int i30 = i29 + i9;
            int i31 = 2;
            while (i31 < i) {
                int i32 = i31 - 1;
                int i33 = i32 + i5;
                int i34 = i32 + i6;
                int i35 = i32 + i7;
                int i36 = i32 + i8;
                double[] dArr3 = this.wtable_r;
                double d10 = dArr3[i33 - 1];
                double d11 = dArr3[i33];
                double d12 = dArr3[i34 - 1];
                double d13 = dArr3[i34];
                double d14 = dArr3[i35 - 1];
                double d15 = dArr3[i35];
                double d16 = dArr3[i36 - 1];
                double d17 = dArr3[i36];
                int i37 = i3 + i31;
                int i38 = i3 + (i - i31);
                int i39 = i4 + i31;
                int i40 = i37 + i22;
                int i41 = i38 + i23;
                int i42 = i37 + i24;
                int i43 = i38 + i25;
                int i44 = i37 + i26;
                double d18 = dArr[i40 - 1];
                double d19 = dArr[i40];
                double d20 = dArr[i41 - 1];
                double d21 = dArr[i41];
                double d22 = dArr[i42 - 1];
                double d23 = dArr[i42];
                double d24 = dArr[i43 - 1];
                double d25 = dArr[i43];
                double d26 = dArr[i44 - 1];
                double d27 = dArr[i44];
                double d28 = d23 + d21;
                double d29 = d23 - d21;
                double d30 = d27 + d25;
                double d31 = d27 - d25;
                double d32 = d22 - d20;
                double d33 = d22 + d20;
                double d34 = d26 - d24;
                double d35 = d26 + d24;
                double d36 = d18 + (d33 * 0.30901699437494745d) + (d35 * (-0.8090169943749473d));
                double d37 = d19 + (d29 * 0.30901699437494745d) + (d31 * (-0.8090169943749473d));
                double d38 = d18 + (d33 * (-0.8090169943749473d)) + (d35 * 0.30901699437494745d);
                double d39 = d19 + (d29 * (-0.8090169943749473d)) + (d31 * 0.30901699437494745d);
                double d40 = (d32 * 0.9510565162951535d) + (d34 * 0.5877852522924732d);
                double d41 = (d28 * 0.9510565162951535d) + (d30 * 0.5877852522924732d);
                double d42 = (d32 * 0.5877852522924732d) - (d34 * 0.9510565162951535d);
                double d43 = (d28 * 0.5877852522924732d) - (d30 * 0.9510565162951535d);
                double d44 = d38 - d43;
                double d45 = d38 + d43;
                double d46 = d39 + d42;
                double d47 = d39 - d42;
                double d48 = d36 + d41;
                double d49 = d36 - d41;
                double d50 = d37 - d40;
                double d51 = d37 + d40;
                int i45 = i39 + i21;
                int i46 = i39 + i27;
                int i47 = i39 + i28;
                int i48 = i39 + i29;
                int i49 = i39 + i30;
                dArr2[i45 - 1] = d18 + d33 + d35;
                dArr2[i45] = d19 + d29 + d31;
                dArr2[i46 - 1] = (d10 * d49) - (d11 * d51);
                dArr2[i46] = (d10 * d51) + (d11 * d49);
                dArr2[i47 - 1] = (d12 * d44) - (d13 * d46);
                dArr2[i47] = (d12 * d46) + (d13 * d44);
                dArr2[i48 - 1] = (d14 * d45) - (d15 * d47);
                dArr2[i48] = (d14 * d47) + (d15 * d45);
                dArr2[i49 - 1] = (d16 * d48) - (d17 * d50);
                dArr2[i49] = (d16 * d50) + (d17 * d48);
                i31 += 2;
                j = 4606741575090066687L;
            }
            i20++;
            j = j;
        }
    }

    void radb5(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5) {
        DoubleFFT_1D doubleFFT_1D = this;
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray2;
        long j6 = j5 + j;
        long j7 = j6 + j;
        long j8 = j7 + j;
        long j9 = j2 * j;
        long j10 = 0;
        while (j10 < j2) {
            long j11 = j10 * j;
            long j12 = 5 * j11;
            long j13 = j12 + j;
            long j14 = j13 + j;
            long j15 = j14 + j;
            long j16 = j11 + j9;
            long j17 = j16 + j9;
            long j18 = j17 + j9;
            long j19 = j18 + j9;
            long j20 = (j3 + j) - 1;
            double d = doubleLargeArray3.getDouble(j3 + j12);
            long j21 = j8;
            double d2 = doubleLargeArray3.getDouble(j3 + j14) * 2.0d;
            long j22 = j7;
            double d3 = doubleLargeArray3.getDouble(j3 + j15 + j) * 2.0d;
            long j23 = j6;
            double d4 = doubleLargeArray3.getDouble(j20 + j13) * 2.0d;
            long j24 = j9;
            double d5 = doubleLargeArray3.getDouble(j20 + j15) * 2.0d;
            double d6 = (d4 * 0.30901699437494745d) + d + (d5 * (-0.8090169943749473d));
            double d7 = d + ((-0.8090169943749473d) * d4) + (0.30901699437494745d * d5);
            double d8 = (d2 * 0.9510565162951535d) + (d3 * 0.5877852522924732d);
            double d9 = (d2 * 0.5877852522924732d) - (d3 * 0.9510565162951535d);
            doubleLargeArray4.setDouble(j4 + j11, d + d4 + d5);
            doubleLargeArray4.setDouble(j4 + j16, d6 - d8);
            doubleLargeArray4.setDouble(j4 + j17, d7 - d9);
            doubleLargeArray4.setDouble(j4 + j18, d7 + d9);
            doubleLargeArray4.setDouble(j4 + j19, d6 + d8);
            j10++;
            j9 = j24;
            j7 = j22;
            j6 = j23;
            j8 = j21;
        }
        long j25 = j6;
        long j26 = j7;
        long j27 = j8;
        long j28 = j9;
        if (j == 1) {
            return;
        }
        long j29 = 0;
        while (j29 < j2) {
            long j30 = j29 * j;
            long j31 = j30 * 5;
            long j32 = j31 + j;
            long j33 = j32 + j;
            long j34 = j33 + j;
            long j35 = j34 + j;
            long j36 = j30 + j28;
            long j37 = j36 + j28;
            long j38 = j37 + j28;
            long j39 = j38 + j28;
            long j40 = 2;
            while (j40 < j) {
                long j41 = j40 - 1;
                long j42 = j29;
                long j43 = j41 + j5;
                long j44 = j30;
                long j45 = j41 + j25;
                long j46 = j34;
                long j47 = j41 + j26;
                long j48 = j33;
                long j49 = j41 + j27;
                long j50 = j32;
                double d10 = doubleFFT_1D.wtable_rl.getDouble(j43 - 1);
                double d11 = doubleFFT_1D.wtable_rl.getDouble(j43);
                double d12 = doubleFFT_1D.wtable_rl.getDouble(j45 - 1);
                double d13 = doubleFFT_1D.wtable_rl.getDouble(j45);
                double d14 = doubleFFT_1D.wtable_rl.getDouble(j47 - 1);
                double d15 = doubleFFT_1D.wtable_rl.getDouble(j47);
                double d16 = doubleFFT_1D.wtable_rl.getDouble(j49 - 1);
                double d17 = doubleFFT_1D.wtable_rl.getDouble(j49);
                long j51 = j3 + j40;
                long j52 = j3 + (j - j40);
                long j53 = j4 + j40;
                long j54 = j51 + j31;
                long j55 = j52 + j50;
                long j56 = j51 + j48;
                long j57 = j52 + j46;
                long j58 = j51 + j35;
                double d18 = doubleLargeArray3.getDouble(j54 - 1);
                double d19 = doubleLargeArray3.getDouble(j54);
                double d20 = doubleLargeArray3.getDouble(j55 - 1);
                double d21 = doubleLargeArray3.getDouble(j55);
                double d22 = doubleLargeArray3.getDouble(j56 - 1);
                double d23 = doubleLargeArray3.getDouble(j56);
                double d24 = doubleLargeArray3.getDouble(j57 - 1);
                double d25 = doubleLargeArray3.getDouble(j57);
                double d26 = doubleLargeArray3.getDouble(j58 - 1);
                double d27 = doubleLargeArray3.getDouble(j58);
                double d28 = d23 + d21;
                double d29 = d23 - d21;
                double d30 = d27 + d25;
                double d31 = d27 - d25;
                double d32 = d22 - d20;
                double d33 = d22 + d20;
                double d34 = d26 - d24;
                double d35 = d26 + d24;
                double d36 = d18 + (d33 * 0.30901699437494745d) + (d35 * (-0.8090169943749473d));
                double d37 = d19 + (d29 * 0.30901699437494745d) + (d31 * (-0.8090169943749473d));
                double d38 = d18 + (d33 * (-0.8090169943749473d)) + (d35 * 0.30901699437494745d);
                double d39 = d19 + (d29 * (-0.8090169943749473d)) + (d31 * 0.30901699437494745d);
                double d40 = (d32 * 0.9510565162951535d) + (d34 * 0.5877852522924732d);
                double d41 = (d28 * 0.9510565162951535d) + (d30 * 0.5877852522924732d);
                double d42 = (d32 * 0.5877852522924732d) - (d34 * 0.9510565162951535d);
                double d43 = (d28 * 0.5877852522924732d) - (d30 * 0.9510565162951535d);
                double d44 = d38 - d43;
                double d45 = d38 + d43;
                double d46 = d39 + d42;
                double d47 = d39 - d42;
                double d48 = d36 + d41;
                double d49 = d36 - d41;
                double d50 = d37 - d40;
                double d51 = d37 + d40;
                long j59 = j53 + j44;
                long j60 = j53 + j36;
                long j61 = j53 + j37;
                long j62 = j53 + j38;
                long j63 = j53 + j39;
                doubleLargeArray2.setDouble(j59 - 1, d18 + d33 + d35);
                doubleLargeArray2.setDouble(j59, d19 + d29 + d31);
                doubleLargeArray2.setDouble(j60 - 1, (d10 * d49) - (d11 * d51));
                doubleLargeArray2.setDouble(j60, (d10 * d51) + (d11 * d49));
                doubleLargeArray2.setDouble(j61 - 1, (d12 * d44) - (d13 * d46));
                doubleLargeArray2.setDouble(j61, (d12 * d46) + (d13 * d44));
                doubleLargeArray2.setDouble(j62 - 1, (d14 * d45) - (d15 * d47));
                doubleLargeArray2.setDouble(j62, (d14 * d47) + (d15 * d45));
                doubleLargeArray2.setDouble(j63 - 1, (d16 * d48) - (d17 * d50));
                doubleLargeArray2.setDouble(j63, (d16 * d50) + (d17 * d48));
                j40 += 2;
                doubleFFT_1D = this;
                doubleLargeArray3 = doubleLargeArray;
                doubleLargeArray4 = doubleLargeArray2;
                j32 = j50;
                j29 = j42;
                j30 = j44;
                j34 = j46;
                j33 = j48;
                j31 = j31;
            }
            j29++;
            doubleFFT_1D = this;
            doubleLargeArray3 = doubleLargeArray;
        }
    }

    void radfg(int i, int i2, int i3, int i4, double[] dArr, int i5, double[] dArr2, int i6, int i7) {
        double d;
        double d2;
        int i8;
        int i9;
        int i10 = i2;
        double d3 = 6.283185307179586d / i10;
        double cos = FastMath.cos(d3);
        double sin = FastMath.sin(d3);
        int i11 = (i10 + 1) / 2;
        int i12 = (i - 1) / 2;
        if (i != 1) {
            for (int i13 = 0; i13 < i4; i13++) {
                dArr2[i6 + i13] = dArr[i5 + i13];
            }
            int i14 = 1;
            while (i14 < i10) {
                int i15 = i14 * i3 * i;
                double d4 = sin;
                for (int i16 = 0; i16 < i3; i16++) {
                    int i17 = (i16 * i) + i15;
                    dArr2[i6 + i17] = dArr[i17 + i5];
                }
                i14++;
                sin = d4;
            }
            d = sin;
            if (i12 <= i3) {
                int i18 = -i;
                int i19 = 1;
                while (i19 < i10) {
                    int i20 = i18 + i;
                    int i21 = i20 - 1;
                    int i22 = i19 * i3 * i;
                    int i23 = 2;
                    while (i23 < i) {
                        int i24 = i21 + 2;
                        int i25 = i24 + i7;
                        int i26 = i5 + i23;
                        int i27 = i6 + i23;
                        double[] dArr3 = this.wtable_r;
                        double d5 = dArr3[i25 - 1];
                        double d6 = dArr3[i25];
                        for (int i28 = 0; i28 < i3; i28++) {
                            int i29 = (i28 * i) + i22;
                            int i30 = i27 + i29;
                            int i31 = i26 + i29;
                            double d7 = dArr[i31 - 1];
                            double d8 = dArr[i31];
                            dArr2[i30 - 1] = (d5 * d7) + (d6 * d8);
                            dArr2[i30] = (d8 * d5) - (d7 * d6);
                        }
                        i23 += 2;
                        i21 = i24;
                    }
                    i19++;
                    i18 = i20;
                }
            } else {
                int i32 = -i;
                int i33 = 1;
                while (i33 < i10) {
                    i32 += i;
                    int i34 = i33 * i3 * i;
                    double d9 = cos;
                    int i35 = 0;
                    while (i35 < i3) {
                        int i36 = i32 - 1;
                        int i37 = (i35 * i) + i34;
                        int i38 = i32;
                        int i39 = 2;
                        while (i39 < i) {
                            int i40 = i36 + 2;
                            int i41 = i40 + i7;
                            double[] dArr4 = this.wtable_r;
                            double d10 = dArr4[i41 - 1];
                            double d11 = dArr4[i41];
                            int i42 = i6 + i39 + i37;
                            int i43 = i5 + i39 + i37;
                            double d12 = dArr[i43 - 1];
                            double d13 = dArr[i43];
                            dArr2[i42 - 1] = (d10 * d12) + (d11 * d13);
                            dArr2[i42] = (d10 * d13) - (d11 * d12);
                            i39 += 2;
                            i36 = i40;
                        }
                        i35++;
                        i32 = i38;
                    }
                    i33++;
                    cos = d9;
                }
            }
            d2 = cos;
            i9 = 2;
            if (i12 >= i3) {
                for (int i44 = 1; i44 < i11; i44++) {
                    int i45 = i44 * i3 * i;
                    int i46 = (i10 - i44) * i3 * i;
                    for (int i47 = 0; i47 < i3; i47++) {
                        int i48 = i47 * i;
                        int i49 = i48 + i45;
                        int i50 = i48 + i46;
                        for (int i51 = 2; i51 < i; i51 += 2) {
                            int i52 = i5 + i51;
                            int i53 = i6 + i51;
                            int i54 = i52 + i49;
                            int i55 = i52 + i50;
                            int i56 = i53 + i49;
                            int i57 = i53 + i50;
                            double d14 = dArr2[i56 - 1];
                            double d15 = dArr2[i56];
                            double d16 = dArr2[i57 - 1];
                            double d17 = dArr2[i57];
                            dArr[i54 - 1] = d14 + d16;
                            dArr[i54] = d15 + d17;
                            dArr[i55 - 1] = d15 - d17;
                            dArr[i55] = d16 - d14;
                        }
                    }
                }
            } else {
                for (int i58 = 1; i58 < i11; i58++) {
                    int i59 = i58 * i3 * i;
                    int i60 = (i10 - i58) * i3 * i;
                    int i61 = 2;
                    while (i61 < i) {
                        int i62 = i5 + i61;
                        int i63 = i6 + i61;
                        int i64 = i12;
                        for (int i65 = 0; i65 < i3; i65++) {
                            int i66 = i65 * i;
                            int i67 = i66 + i59;
                            int i68 = i66 + i60;
                            int i69 = i62 + i67;
                            int i70 = i62 + i68;
                            int i71 = i63 + i67;
                            int i72 = i63 + i68;
                            double d18 = dArr2[i71 - 1];
                            double d19 = dArr2[i71];
                            double d20 = dArr2[i72 - 1];
                            double d21 = dArr2[i72];
                            dArr[i69 - 1] = d18 + d20;
                            dArr[i69] = d19 + d21;
                            dArr[i70 - 1] = d19 - d21;
                            dArr[i70] = d20 - d18;
                        }
                        i61 += 2;
                        i12 = i64;
                    }
                }
            }
            i8 = i12;
        } else {
            d = sin;
            d2 = cos;
            i8 = i12;
            i9 = 2;
            System.arraycopy(dArr2, i6, dArr, i5, i4);
        }
        for (int i73 = 1; i73 < i11; i73++) {
            int i74 = i73 * i3 * i;
            int i75 = (i10 - i73) * i3 * i;
            for (int i76 = 0; i76 < i3; i76++) {
                int i77 = i76 * i;
                int i78 = i77 + i74;
                int i79 = i77 + i75;
                double d22 = dArr2[i6 + i78];
                double d23 = dArr2[i6 + i79];
                dArr[i78 + i5] = d22 + d23;
                dArr[i79 + i5] = d23 - d22;
            }
        }
        int i80 = (i10 - 1) * i4;
        double d24 = 1.0d;
        double d25 = 0.0d;
        int i81 = 1;
        while (i81 < i11) {
            double d26 = (d2 * d24) - (d * d25);
            d25 = (d25 * d2) + (d24 * d);
            int i82 = i81 * i4;
            int i83 = (i10 - i81) * i4;
            for (int i84 = 0; i84 < i4; i84++) {
                int i85 = i6 + i84;
                int i86 = i5 + i84;
                dArr2[i85 + i82] = dArr[i86] + (dArr[i86 + i4] * d26);
                dArr2[i85 + i83] = dArr[i86 + i80] * d25;
            }
            double d27 = d25;
            int i87 = i9;
            double d28 = d26;
            while (i87 < i11) {
                double d29 = (d26 * d28) - (d25 * d27);
                d27 = (d27 * d26) + (d28 * d25);
                int i88 = i87 * i4;
                int i89 = (i10 - i87) * i4;
                int i90 = i80;
                for (int i91 = 0; i91 < i4; i91++) {
                    int i92 = i6 + i91;
                    int i93 = i5 + i91;
                    int i94 = i92 + i82;
                    dArr2[i94] = dArr2[i94] + (dArr[i93 + i88] * d29);
                    int i95 = i92 + i83;
                    dArr2[i95] = dArr2[i95] + (dArr[i93 + i89] * d27);
                }
                i87++;
                i80 = i90;
                d28 = d29;
            }
            i81++;
            d24 = d26;
        }
        for (int i96 = 1; i96 < i11; i96++) {
            int i97 = i96 * i4;
            for (int i98 = 0; i98 < i4; i98++) {
                int i99 = i6 + i98;
                dArr2[i99] = dArr2[i99] + dArr[i5 + i98 + i97];
            }
        }
        if (i >= i3) {
            for (int i100 = 0; i100 < i3; i100++) {
                int i101 = i100 * i;
                int i102 = i101 * i10;
                for (int i103 = 0; i103 < i; i103++) {
                    dArr[i5 + i103 + i102] = dArr2[i6 + i103 + i101];
                }
            }
        } else {
            for (int i104 = 0; i104 < i; i104++) {
                for (int i105 = 0; i105 < i3; i105++) {
                    int i106 = i105 * i;
                    dArr[i5 + i104 + (i106 * i10)] = dArr2[i6 + i104 + i106];
                }
            }
        }
        int i107 = i10 * i;
        for (int i108 = 1; i108 < i11; i108++) {
            int i109 = i108 * i3 * i;
            int i110 = (i10 - i108) * i3 * i;
            int i111 = i108 * 2 * i;
            for (int i112 = 0; i112 < i3; i112++) {
                int i113 = i112 * i;
                int i114 = i112 * i107;
                dArr[((((i5 + i) - 1) + i111) - i) + i114] = dArr2[i113 + i109 + i6];
                dArr[i5 + i111 + i114] = dArr2[i113 + i110 + i6];
            }
        }
        if (i == 1) {
            return;
        }
        if (i8 >= i3) {
            for (int i115 = 1; i115 < i11; i115++) {
                int i116 = i115 * i3 * i;
                int i117 = (i10 - i115) * i3 * i;
                int i118 = i115 * 2 * i;
                int i119 = 0;
                while (i119 < i3) {
                    int i120 = i119 * i107;
                    int i121 = i119 * i;
                    int i122 = i107;
                    for (int i123 = i9; i123 < i; i123 += 2) {
                        int i124 = i5 + i123 + i118 + i120;
                        int i125 = (((i5 + (i - i123)) + i118) - i) + i120;
                        int i126 = i6 + i123 + i121;
                        int i127 = i126 + i116;
                        int i128 = i126 + i117;
                        double d30 = dArr2[i127 - 1];
                        double d31 = dArr2[i127];
                        double d32 = dArr2[i128 - 1];
                        double d33 = dArr2[i128];
                        dArr[i124 - 1] = d30 + d32;
                        dArr[i125 - 1] = d30 - d32;
                        dArr[i124] = d31 + d33;
                        dArr[i125] = d33 - d31;
                    }
                    i119++;
                    i107 = i122;
                }
            }
            return;
        }
        int i129 = 1;
        while (i129 < i11) {
            int i130 = i129 * i3 * i;
            int i131 = (i10 - i129) * i3 * i;
            int i132 = i129 * 2 * i;
            for (int i133 = i9; i133 < i; i133 += 2) {
                int i134 = i5 + i133;
                int i135 = (i - i133) + i5;
                int i136 = i6 + i133;
                for (int i137 = 0; i137 < i3; i137++) {
                    int i138 = i137 * i107;
                    int i139 = i134 + i132 + i138;
                    int i140 = ((i135 + i132) - i) + i138;
                    int i141 = i136 + (i137 * i);
                    int i142 = i141 + i130;
                    int i143 = i141 + i131;
                    double d34 = dArr2[i142 - 1];
                    double d35 = dArr2[i142];
                    double d36 = dArr2[i143 - 1];
                    double d37 = dArr2[i143];
                    dArr[i139 - 1] = d34 + d36;
                    dArr[i140 - 1] = d34 - d36;
                    dArr[i139] = d35 + d37;
                    dArr[i140] = d37 - d35;
                }
            }
            i129++;
            i10 = i2;
        }
    }

    void radfg(long j, long j2, long j3, long j4, DoubleLargeArray doubleLargeArray, long j5, DoubleLargeArray doubleLargeArray2, long j6, long j7) {
        double d;
        DoubleLargeArray doubleLargeArray3;
        DoubleFFT_1D doubleFFT_1D = this;
        long j8 = j;
        long j9 = j2;
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray;
        double d2 = 6.283185307179586d / j9;
        double cos = FastMath.cos(d2);
        double sin = FastMath.sin(d2);
        long j10 = (j9 + 1) / 2;
        long j11 = (j8 - 1) / 2;
        int i = (j8 > 1L ? 1 : (j8 == 1L ? 0 : -1));
        if (i != 0) {
            for (long j12 = 0; j12 < j4; j12++) {
                doubleLargeArray2.setDouble(j6 + j12, doubleLargeArray4.getDouble(j5 + j12));
            }
            for (long j13 = 1; j13 < j9; j13++) {
                long j14 = j13 * j3 * j8;
                long j15 = 0;
                while (j15 < j3) {
                    long j16 = (j15 * j8) + j14;
                    doubleLargeArray2.setDouble(j6 + j16, doubleLargeArray4.getDouble(j5 + j16));
                    j15++;
                    j14 = j14;
                }
            }
            int i2 = (j11 > j3 ? 1 : (j11 == j3 ? 0 : -1));
            if (i2 <= 0) {
                long j17 = -j8;
                long j18 = 1;
                while (j18 < j9) {
                    j17 += j8;
                    long j19 = j17 - 1;
                    long j20 = j18 * j3 * j8;
                    long j21 = 2;
                    while (j21 < j8) {
                        long j22 = j19 + 2;
                        long j23 = j17;
                        long j24 = j22 + j7;
                        long j25 = j5 + j21;
                        long j26 = j6 + j21;
                        double d3 = doubleFFT_1D.wtable_rl.getDouble(j24 - 1);
                        double d4 = doubleFFT_1D.wtable_rl.getDouble(j24);
                        long j27 = 0;
                        while (j27 < j3) {
                            long j28 = (j27 * j8) + j20;
                            long j29 = j26 + j28;
                            long j30 = j25 + j28;
                            long j31 = j18;
                            double d5 = doubleLargeArray4.getDouble(j30 - 1);
                            double d6 = doubleLargeArray4.getDouble(j30);
                            doubleLargeArray2.setDouble(j29 - 1, (d3 * d5) + (d4 * d6));
                            doubleLargeArray2.setDouble(j29, (d6 * d3) - (d5 * d4));
                            j27++;
                            j8 = j;
                            doubleLargeArray4 = doubleLargeArray;
                            j18 = j31;
                        }
                        j21 += 2;
                        doubleFFT_1D = this;
                        j8 = j;
                        doubleLargeArray4 = doubleLargeArray;
                        j17 = j23;
                        j19 = j22;
                    }
                    j18++;
                    doubleFFT_1D = this;
                    j8 = j;
                    j9 = j2;
                    doubleLargeArray4 = doubleLargeArray;
                }
            } else {
                long j32 = j8;
                long j33 = -j32;
                long j34 = 1;
                while (j34 < j2) {
                    j33 += j32;
                    long j35 = j34 * j3 * j32;
                    long j36 = 0;
                    while (j36 < j3) {
                        long j37 = j33 - 1;
                        long j38 = (j36 * j32) + j35;
                        long j39 = 2;
                        while (j39 < j32) {
                            long j40 = j37 + 2;
                            long j41 = j33;
                            long j42 = j40 + j7;
                            long j43 = j35;
                            double d7 = this.wtable_rl.getDouble(j42 - 1);
                            double d8 = this.wtable_rl.getDouble(j42);
                            long j44 = j6 + j39 + j38;
                            long j45 = j5 + j39 + j38;
                            double d9 = doubleLargeArray.getDouble(j45 - 1);
                            double d10 = doubleLargeArray.getDouble(j45);
                            doubleLargeArray2.setDouble(j44 - 1, (d7 * d9) + (d8 * d10));
                            doubleLargeArray2.setDouble(j44, (d7 * d10) - (d8 * d9));
                            j39 += 2;
                            j32 = j;
                            j33 = j41;
                            j35 = j43;
                            j37 = j40;
                            i2 = i2;
                            cos = cos;
                            j34 = j34;
                            j36 = j36;
                        }
                        j36++;
                        j32 = j;
                        cos = cos;
                    }
                    j34++;
                    j32 = j;
                    cos = cos;
                }
            }
            d = cos;
            doubleLargeArray3 = doubleLargeArray;
            if (i2 >= 0) {
                long j46 = 1;
                while (j46 < j10) {
                    long j47 = j46 * j3 * j;
                    long j48 = (j2 - j46) * j3 * j;
                    long j49 = 0;
                    while (j49 < j3) {
                        long j50 = j49 * j;
                        long j51 = j50 + j47;
                        long j52 = j50 + j48;
                        long j53 = 2;
                        while (j53 < j) {
                            long j54 = j5 + j53;
                            long j55 = j6 + j53;
                            long j56 = j48;
                            long j57 = j54 + j51;
                            long j58 = j47;
                            long j59 = j54 + j52;
                            long j60 = j46;
                            long j61 = j55 + j51;
                            long j62 = j51;
                            long j63 = j55 + j52;
                            long j64 = j52;
                            double d11 = doubleLargeArray2.getDouble(j61 - 1);
                            double d12 = doubleLargeArray2.getDouble(j61);
                            long j65 = j49;
                            double d13 = doubleLargeArray2.getDouble(j63 - 1);
                            double d14 = doubleLargeArray2.getDouble(j63);
                            doubleLargeArray3.setDouble(j57 - 1, d11 + d13);
                            doubleLargeArray3.setDouble(j57, d12 + d14);
                            doubleLargeArray3.setDouble(j59 - 1, d12 - d14);
                            doubleLargeArray3.setDouble(j59, d13 - d11);
                            j53 += 2;
                            j48 = j56;
                            j46 = j60;
                            j52 = j64;
                            j47 = j58;
                            j51 = j62;
                            j49 = j65;
                        }
                        j49++;
                    }
                    j46++;
                }
            } else {
                long j66 = 1;
                while (j66 < j10) {
                    long j67 = j66 * j3 * j;
                    long j68 = (j2 - j66) * j3 * j;
                    long j69 = 2;
                    while (j69 < j) {
                        long j70 = j5 + j69;
                        long j71 = j6 + j69;
                        long j72 = 0;
                        while (j72 < j3) {
                            long j73 = j72 * j;
                            long j74 = j73 + j67;
                            long j75 = j73 + j68;
                            long j76 = j68;
                            long j77 = j70 + j74;
                            long j78 = j67;
                            long j79 = j70 + j75;
                            long j80 = j70;
                            long j81 = j71 + j74;
                            long j82 = j66;
                            long j83 = j71 + j75;
                            long j84 = j71;
                            double d15 = doubleLargeArray2.getDouble(j81 - 1);
                            double d16 = doubleLargeArray2.getDouble(j81);
                            long j85 = j69;
                            double d17 = doubleLargeArray2.getDouble(j83 - 1);
                            double d18 = doubleLargeArray2.getDouble(j83);
                            doubleLargeArray3.setDouble(j77 - 1, d15 + d17);
                            doubleLargeArray3.setDouble(j77, d16 + d18);
                            doubleLargeArray3.setDouble(j79 - 1, d16 - d18);
                            doubleLargeArray3.setDouble(j79, d17 - d15);
                            j72++;
                            j68 = j76;
                            j71 = j84;
                            j66 = j82;
                            j67 = j78;
                            j70 = j80;
                            j69 = j85;
                        }
                        j69 += 2;
                    }
                    j66++;
                }
            }
        } else {
            d = cos;
            doubleLargeArray3 = doubleLargeArray4;
            LargeArrayUtils.arraycopy(doubleLargeArray2, j6, doubleLargeArray, j5, j4);
        }
        for (long j86 = 1; j86 < j10; j86++) {
            long j87 = j86 * j3 * j;
            long j88 = (j2 - j86) * j3 * j;
            long j89 = 0;
            while (j89 < j3) {
                long j90 = j89 * j;
                long j91 = j90 + j87;
                long j92 = j90 + j88;
                long j93 = j88;
                double d19 = doubleLargeArray2.getDouble(j6 + j91);
                double d20 = doubleLargeArray2.getDouble(j6 + j92);
                doubleLargeArray3.setDouble(j5 + j91, d19 + d20);
                doubleLargeArray3.setDouble(j5 + j92, d20 - d19);
                j89++;
                j88 = j93;
                j87 = j87;
            }
        }
        long j94 = (j2 - 1) * j4;
        double d21 = 1.0d;
        double d22 = 0.0d;
        long j95 = 1;
        while (j95 < j10) {
            double d23 = (d * d21) - (sin * d22);
            d22 = (d22 * d) + (d21 * sin);
            long j96 = j95 * j4;
            long j97 = (j2 - j95) * j4;
            long j98 = 0;
            while (j98 < j4) {
                long j99 = j6 + j98;
                long j100 = j95;
                long j101 = j5 + j98;
                doubleLargeArray2.setDouble(j99 + j96, doubleLargeArray3.getDouble(j101) + (doubleLargeArray3.getDouble(j101 + j4) * d23));
                doubleLargeArray2.setDouble(j99 + j97, doubleLargeArray3.getDouble(j101 + j94) * d22);
                j98++;
                j95 = j100;
                j96 = j96;
            }
            long j102 = j96;
            long j103 = j95;
            double d24 = d22;
            double d25 = d23;
            long j104 = 2;
            while (j104 < j10) {
                double d26 = (d23 * d25) - (d22 * d24);
                d24 = (d24 * d23) + (d25 * d22);
                long j105 = j104 * j4;
                long j106 = (j2 - j104) * j4;
                long j107 = 0;
                while (j107 < j4) {
                    long j108 = j6 + j107;
                    long j109 = j5 + j107;
                    long j110 = j94;
                    long j111 = j108 + j102;
                    doubleLargeArray2.setDouble(j111, doubleLargeArray2.getDouble(j111) + (doubleLargeArray3.getDouble(j109 + j105) * d26));
                    long j112 = j108 + j97;
                    doubleLargeArray2.setDouble(j112, doubleLargeArray2.getDouble(j112) + (doubleLargeArray3.getDouble(j109 + j106) * d24));
                    j107++;
                    j105 = j105;
                    j94 = j110;
                    d22 = d22;
                }
                j104++;
                d25 = d26;
            }
            j95 = j103 + 1;
            d21 = d23;
            j94 = j94;
        }
        for (long j113 = 1; j113 < j10; j113++) {
            long j114 = j113 * j4;
            for (long j115 = 0; j115 < j4; j115++) {
                long j116 = j6 + j115;
                doubleLargeArray2.setDouble(j116, doubleLargeArray2.getDouble(j116) + doubleLargeArray3.getDouble(j5 + j115 + j114));
            }
        }
        if (j >= j3) {
            for (long j117 = 0; j117 < j3; j117++) {
                long j118 = j117 * j;
                long j119 = j118 * j2;
                for (long j120 = 0; j120 < j; j120++) {
                    doubleLargeArray3.setDouble(j5 + j120 + j119, doubleLargeArray2.getDouble(j6 + j120 + j118));
                }
            }
        } else {
            for (long j121 = 0; j121 < j; j121++) {
                for (long j122 = 0; j122 < j3; j122++) {
                    long j123 = j122 * j;
                    doubleLargeArray3.setDouble(j5 + j121 + (j123 * j2), doubleLargeArray2.getDouble(j6 + j121 + j123));
                }
            }
        }
        long j124 = j2 * j;
        for (long j125 = 1; j125 < j10; j125++) {
            long j126 = j125 * j3 * j;
            long j127 = (j2 - j125) * j3 * j;
            long j128 = j125 * 2 * j;
            long j129 = 0;
            while (j129 < j3) {
                long j130 = j129 * j;
                long j131 = j129 * j124;
                doubleLargeArray3.setDouble(((((j5 + j) - 1) + j128) - j) + j131, doubleLargeArray2.getDouble(j6 + j130 + j126));
                doubleLargeArray3.setDouble(j5 + j128 + j131, doubleLargeArray2.getDouble(j6 + j130 + j127));
                j129++;
                j127 = j127;
                j126 = j126;
            }
        }
        if (i == 0) {
            return;
        }
        if (j11 >= j3) {
            long j132 = 1;
            while (j132 < j10) {
                long j133 = j132 * j3 * j;
                long j134 = (j2 - j132) * j3 * j;
                long j135 = j132 * 2 * j;
                long j136 = 0;
                while (j136 < j3) {
                    long j137 = j136 * j124;
                    long j138 = j136 * j;
                    long j139 = 2;
                    while (j139 < j) {
                        long j140 = j124;
                        long j141 = j5 + j139 + j135 + j137;
                        long j142 = j135;
                        long j143 = (((j5 + (j - j139)) + j135) - j) + j137;
                        long j144 = j6 + j139 + j138;
                        long j145 = j137;
                        long j146 = j144 + j133;
                        long j147 = j133;
                        long j148 = j144 + j134;
                        long j149 = j134;
                        double d27 = doubleLargeArray2.getDouble(j146 - 1);
                        double d28 = doubleLargeArray2.getDouble(j146);
                        long j150 = j132;
                        double d29 = doubleLargeArray2.getDouble(j148 - 1);
                        double d30 = doubleLargeArray2.getDouble(j148);
                        doubleLargeArray3.setDouble(j141 - 1, d27 + d29);
                        doubleLargeArray3.setDouble(j143 - 1, d27 - d29);
                        doubleLargeArray3.setDouble(j141, d28 + d30);
                        doubleLargeArray3.setDouble(j143, d30 - d28);
                        j139 += 2;
                        j124 = j140;
                        j135 = j142;
                        j137 = j145;
                        j133 = j147;
                        j134 = j149;
                        j132 = j150;
                        j136 = j136;
                    }
                    j136++;
                }
                j132++;
            }
            return;
        }
        long j151 = j124;
        long j152 = 1;
        while (j152 < j10) {
            long j153 = j152 * j3 * j;
            long j154 = (j2 - j152) * j3 * j;
            long j155 = j152 * 2 * j;
            long j156 = 2;
            while (j156 < j) {
                long j157 = j5 + j156;
                long j158 = j5 + (j - j156);
                long j159 = j6 + j156;
                long j160 = 0;
                while (j160 < j3) {
                    long j161 = j151;
                    long j162 = j160 * j161;
                    long j163 = j157;
                    long j164 = j157 + j155 + j162;
                    long j165 = j155;
                    long j166 = ((j158 + j155) - j) + j162;
                    long j167 = j159 + (j160 * j);
                    long j168 = j158;
                    long j169 = j167 + j153;
                    long j170 = j153;
                    long j171 = j167 + j154;
                    long j172 = j154;
                    double d31 = doubleLargeArray2.getDouble(j169 - 1);
                    double d32 = doubleLargeArray2.getDouble(j169);
                    long j173 = j152;
                    double d33 = doubleLargeArray2.getDouble(j171 - 1);
                    double d34 = doubleLargeArray2.getDouble(j171);
                    doubleLargeArray3.setDouble(j164 - 1, d31 + d33);
                    doubleLargeArray3.setDouble(j166 - 1, d31 - d33);
                    doubleLargeArray3.setDouble(j164, d32 + d34);
                    doubleLargeArray3.setDouble(j166, d34 - d32);
                    j160++;
                    j157 = j163;
                    j155 = j165;
                    j151 = j161;
                    j158 = j168;
                    j154 = j172;
                    j153 = j170;
                    j152 = j173;
                    j156 = j156;
                }
                j156 += 2;
            }
            j152++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x025c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x025d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void radbg(int r40, int r41, int r42, int r43, double[] r44, int r45, double[] r46, int r47, int r48) {
        /*
            Method dump skipped, instructions count: 962
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jtransforms.fft.DoubleFFT_1D.radbg(int, int, int, int, double[], int, double[], int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0377 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0378  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void radbg(long r53, long r55, long r57, long r59, pl.edu.icm.jlargearrays.DoubleLargeArray r61, long r62, pl.edu.icm.jlargearrays.DoubleLargeArray r64, long r65, long r67) {
        /*
            Method dump skipped, instructions count: 1558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jtransforms.fft.DoubleFFT_1D.radbg(long, long, long, long, pl.edu.icm.jlargearrays.DoubleLargeArray, long, pl.edu.icm.jlargearrays.DoubleLargeArray, long, long):void");
    }

    void cfftf(double[] dArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.n;
        int i9 = i8 * 2;
        double[] dArr2 = new double[i9];
        int i10 = 4;
        int i11 = i8 * 4;
        int i12 = 0;
        int[] iArr = {0};
        int i13 = (int) this.wtable[i11 + 1];
        int i14 = 2;
        int i15 = 2;
        int i16 = 0;
        int i17 = i9;
        int i18 = 1;
        while (i15 <= i13 + 1) {
            int i19 = (int) this.wtable[i15 + i11];
            int i20 = i19 * i18;
            int i21 = this.n / i20;
            int i22 = i21 + i21;
            int i23 = i22 * i18;
            if (i19 == i14) {
                i3 = i19;
                i4 = i15;
                i5 = i14;
                i6 = i13;
                i7 = i12;
                if (i16 == 0) {
                    passf2(i22, i18, dArr, i, dArr2, 0, i17, i2);
                } else {
                    passf2(i22, i18, dArr2, 0, dArr, i, i17, i2);
                }
            } else if (i19 == 3) {
                i3 = i19;
                i4 = i15;
                i5 = i14;
                i6 = i13;
                i7 = i12;
                if (i16 == 0) {
                    passf3(i22, i18, dArr, i, dArr2, 0, i17, i2);
                } else {
                    passf3(i22, i18, dArr2, 0, dArr, i, i17, i2);
                }
            } else if (i19 == i10) {
                i3 = i19;
                i4 = i15;
                i5 = i14;
                i6 = i13;
                i7 = i12;
                if (i16 == 0) {
                    passf4(i22, i18, dArr, i, dArr2, 0, i17, i2);
                } else {
                    passf4(i22, i18, dArr2, 0, dArr, i, i17, i2);
                }
            } else if (i19 != 5) {
                if (i16 == 0) {
                    i3 = i19;
                    i4 = i15;
                    i5 = i14;
                    i6 = i13;
                    i7 = i12;
                    passfg(iArr, i22, i19, i18, i23, dArr, i, dArr2, 0, i17, i2);
                } else {
                    i3 = i19;
                    i4 = i15;
                    i5 = i14;
                    i6 = i13;
                    i7 = i12;
                    passfg(iArr, i22, i3, i18, i23, dArr2, 0, dArr, i, i17, i2);
                }
                if (iArr[i7] == 0) {
                    i17 += (i3 - 1) * i22;
                    i15 = i4 + 1;
                    i12 = i7;
                    i18 = i20;
                    i13 = i6;
                    i14 = i5;
                    i10 = 4;
                }
            } else {
                i3 = i19;
                i4 = i15;
                i5 = i14;
                i6 = i13;
                i7 = i12;
                if (i16 == 0) {
                    passf5(i22, i18, dArr, i, dArr2, 0, i17, i2);
                } else {
                    passf5(i22, i18, dArr2, 0, dArr, i, i17, i2);
                }
            }
            i16 = 1 - i16;
            i17 += (i3 - 1) * i22;
            i15 = i4 + 1;
            i12 = i7;
            i18 = i20;
            i13 = i6;
            i14 = i5;
            i10 = 4;
        }
        int i24 = i12;
        if (i16 == 0) {
            return;
        }
        System.arraycopy(dArr2, i24, dArr, i, i9);
    }

    void cfftf(DoubleLargeArray doubleLargeArray, long j, int i) {
        long j2;
        long j3;
        int i2;
        int i3;
        DoubleLargeArray doubleLargeArray2;
        DoubleFFT_1D doubleFFT_1D = this;
        int i4 = i;
        long j4 = doubleFFT_1D.nl * 2;
        DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(j4);
        long j5 = doubleFFT_1D.nl * 4;
        int[] iArr = {0};
        long j6 = (long) doubleFFT_1D.wtablel.getDouble(j5 + 1);
        long j7 = 2;
        long j8 = j4;
        long j9 = 1;
        long j10 = 0;
        while (j7 <= j6 + 1) {
            int i5 = (int) doubleFFT_1D.wtablel.getDouble(j7 + j5);
            long j11 = i5;
            long j12 = j11 * j9;
            long j13 = doubleFFT_1D.nl / j12;
            long j14 = j13 + j13;
            long j15 = j14 * j9;
            if (i5 == 2) {
                j2 = j6;
                j3 = j4;
                i2 = i5;
                i3 = i4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j10 == 0) {
                    passf2(j14, j9, doubleLargeArray, j, doubleLargeArray2, 0L, j8, i3);
                } else {
                    passf2(j14, j9, doubleLargeArray2, 0L, doubleLargeArray, j, j8, i3);
                }
            } else if (i5 == 3) {
                j2 = j6;
                j3 = j4;
                i2 = i5;
                i3 = i4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j10 == 0) {
                    passf3(j14, j9, doubleLargeArray, j, doubleLargeArray2, 0L, j8, i3);
                } else {
                    passf3(j14, j9, doubleLargeArray2, 0L, doubleLargeArray, j, j8, i3);
                }
            } else if (i5 == 4) {
                j2 = j6;
                j3 = j4;
                i2 = i5;
                i3 = i4;
                doubleLargeArray2 = doubleLargeArray3;
                if (j10 == 0) {
                    passf4(j14, j9, doubleLargeArray, j, doubleLargeArray2, 0L, j8, i);
                } else {
                    passf4(j14, j9, doubleLargeArray2, 0L, doubleLargeArray, j, j8, i);
                }
            } else if (i5 != 5) {
                if (j10 == 0) {
                    j2 = j6;
                    j3 = j4;
                    i2 = i5;
                    doubleLargeArray2 = doubleLargeArray3;
                    passfg(iArr, j14, j11, j9, j15, doubleLargeArray, j, doubleLargeArray2, 0L, j8, i4);
                } else {
                    j2 = j6;
                    j3 = j4;
                    i2 = i5;
                    doubleLargeArray2 = doubleLargeArray3;
                    passfg(iArr, j14, j11, j9, j15, doubleLargeArray2, 0L, doubleLargeArray, j, j8, i);
                }
                if (iArr[0] != 0) {
                    j10 = 1 - j10;
                }
                i3 = i;
                j8 += (i2 - 1) * j14;
                j7++;
                doubleFFT_1D = this;
                i4 = i3;
                j9 = j12;
                j6 = j2;
                j4 = j3;
                doubleLargeArray3 = doubleLargeArray2;
            } else {
                j2 = j6;
                j3 = j4;
                i2 = i5;
                doubleLargeArray2 = doubleLargeArray3;
                if (j10 == 0) {
                    i3 = i;
                    passf5(j14, j9, doubleLargeArray, j, doubleLargeArray2, 0L, j8, i3);
                } else {
                    i3 = i;
                    passf5(j14, j9, doubleLargeArray2, 0L, doubleLargeArray, j, j8, i3);
                }
            }
            j10 = 1 - j10;
            j8 += (i2 - 1) * j14;
            j7++;
            doubleFFT_1D = this;
            i4 = i3;
            j9 = j12;
            j6 = j2;
            j4 = j3;
            doubleLargeArray3 = doubleLargeArray2;
        }
        long j16 = j4;
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray3;
        if (j10 == 0) {
            return;
        }
        LargeArrayUtils.arraycopy(doubleLargeArray4, 0L, doubleLargeArray, j, j16);
    }

    void passf2(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5, int i6) {
        int i7 = i;
        int i8 = i2;
        int i9 = i7 * i8;
        if (i7 <= 2) {
            for (int i10 = 0; i10 < i8; i10++) {
                int i11 = i10 * i7;
                int i12 = i3 + (i11 * 2);
                int i13 = i12 + i7;
                double d = dArr[i12];
                double d2 = dArr[i12 + 1];
                double d3 = dArr[i13];
                double d4 = dArr[i13 + 1];
                int i14 = i4 + i11;
                int i15 = i14 + i9;
                dArr2[i14] = d + d3;
                dArr2[i14 + 1] = d2 + d4;
                dArr2[i15] = d - d3;
                dArr2[i15 + 1] = d2 - d4;
            }
            return;
        }
        int i16 = 0;
        while (i16 < i8) {
            int i17 = 0;
            while (i17 < i7 - 1) {
                int i18 = i16 * i7;
                int i19 = i3 + i17 + (i18 * 2);
                int i20 = i19 + i7;
                double d5 = dArr[i19];
                double d6 = dArr[i19 + 1];
                double d7 = dArr[i20];
                double d8 = dArr[i20 + 1];
                int i21 = i17 + i5;
                double[] dArr3 = this.wtable;
                double d9 = dArr3[i21];
                int i22 = i16;
                double d10 = i6 * dArr3[i21 + 1];
                double d11 = d5 - d7;
                double d12 = d6 - d8;
                int i23 = i4 + i17 + i18;
                int i24 = i23 + i9;
                dArr2[i23] = d5 + d7;
                dArr2[i23 + 1] = d6 + d8;
                dArr2[i24] = (d9 * d11) - (d10 * d12);
                dArr2[i24 + 1] = (d9 * d12) + (d10 * d11);
                i17 += 2;
                i7 = i;
                i16 = i22;
            }
            i16++;
            i7 = i;
            i8 = i2;
        }
    }

    void passf2(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5, long j6) {
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray2;
        long j7 = j * j2;
        long j8 = 2;
        long j9 = 1;
        if (j <= 2) {
            long j10 = 0;
            while (j10 < j2) {
                long j11 = j10 * j;
                long j12 = j3 + (j11 * j8);
                long j13 = j12 + j;
                double d = doubleLargeArray3.getDouble(j12);
                double d2 = doubleLargeArray3.getDouble(j12 + j9);
                double d3 = doubleLargeArray3.getDouble(j13);
                double d4 = doubleLargeArray3.getDouble(j13 + j9);
                long j14 = j4 + j11;
                long j15 = j14 + j7;
                doubleLargeArray4.setDouble(j14, d + d3);
                doubleLargeArray4.setDouble(j14 + 1, d2 + d4);
                doubleLargeArray4.setDouble(j15, d - d3);
                doubleLargeArray4.setDouble(j15 + 1, d2 - d4);
                j10++;
                j9 = 1;
                j7 = j7;
                j8 = 2;
            }
            return;
        }
        long j16 = 1;
        long j17 = 0;
        while (j17 < j2) {
            long j18 = 0;
            while (j18 < j - j16) {
                long j19 = j17 * j;
                long j20 = j3 + j18 + (j19 * 2);
                long j21 = j20 + j;
                double d5 = doubleLargeArray3.getDouble(j20);
                double d6 = doubleLargeArray3.getDouble(j20 + j16);
                double d7 = doubleLargeArray3.getDouble(j21);
                double d8 = doubleLargeArray3.getDouble(j21 + j16);
                long j22 = j18 + j5;
                double d9 = this.wtablel.getDouble(j22);
                long j23 = j17;
                double d10 = j6 * this.wtablel.getDouble(j22 + 1);
                double d11 = d5 - d7;
                double d12 = d6 - d8;
                long j24 = j4 + j18 + j19;
                long j25 = j24 + j7;
                doubleLargeArray2.setDouble(j24, d5 + d7);
                doubleLargeArray2.setDouble(j24 + 1, d6 + d8);
                doubleLargeArray2.setDouble(j25, (d9 * d11) - (d10 * d12));
                doubleLargeArray2.setDouble(j25 + 1, (d9 * d12) + (d10 * d11));
                doubleLargeArray3 = doubleLargeArray;
                doubleLargeArray4 = doubleLargeArray2;
                j17 = j23;
                j18 += 2;
                j16 = 1;
            }
            j17 += j16;
            doubleLargeArray3 = doubleLargeArray;
            doubleLargeArray4 = doubleLargeArray4;
        }
    }

    void passf3(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5, int i6) {
        int i7 = i5 + i;
        int i8 = i2 * i;
        double d = 0.8660254037844387d;
        double d2 = -0.5d;
        int i9 = 2;
        if (i == 2) {
            int i10 = 1;
            while (i10 <= i2) {
                int i11 = i3 + (((i10 * 3) - 2) * i);
                int i12 = i11 + i;
                int i13 = i11 - i;
                double d3 = dArr[i11];
                double d4 = dArr[i11 + 1];
                double d5 = dArr[i12];
                double d6 = dArr[i12 + 1];
                double d7 = dArr[i13];
                double d8 = dArr[i13 + 1];
                double d9 = d3 + d5;
                double d10 = d7 + (d9 * d2);
                double d11 = d4 + d6;
                double d12 = d8 + (d11 * d2);
                double d13 = i6 * 0.8660254037844387d;
                double d14 = (d3 - d5) * d13;
                double d15 = d13 * (d4 - d6);
                int i14 = i4 + ((i10 - 1) * i);
                int i15 = i14 + i8;
                int i16 = i15 + i8;
                dArr2[i14] = d7 + d9;
                dArr2[i14 + 1] = d8 + d11;
                dArr2[i15] = d10 - d15;
                dArr2[i15 + 1] = d12 + d14;
                dArr2[i16] = d10 + d15;
                dArr2[i16 + 1] = d12 - d14;
                i10++;
                d2 = -0.5d;
            }
        } else {
            int i17 = 1;
            while (i17 <= i2) {
                int i18 = i3 + (((i17 * 3) - i9) * i);
                int i19 = i4 + ((i17 - 1) * i);
                int i20 = 0;
                while (i20 < i - 1) {
                    int i21 = i20 + i18;
                    int i22 = i21 + i;
                    int i23 = i21 - i;
                    double d16 = dArr[i21];
                    double d17 = dArr[i21 + 1];
                    double d18 = dArr[i22];
                    double d19 = dArr[i22 + 1];
                    double d20 = dArr[i23];
                    double d21 = dArr[i23 + 1];
                    double d22 = d16 + d18;
                    double d23 = d20 + (d22 * (-0.5d));
                    double d24 = d17 + d19;
                    double d25 = d21 + (d24 * (-0.5d));
                    int i24 = i19;
                    double d26 = i6;
                    double d27 = d26 * d;
                    double d28 = (d16 - d18) * d27;
                    double d29 = d27 * (d17 - d19);
                    double d30 = d23 - d29;
                    double d31 = d23 + d29;
                    double d32 = d25 + d28;
                    double d33 = d25 - d28;
                    int i25 = i20 + i5;
                    int i26 = i20 + i7;
                    double[] dArr3 = this.wtable;
                    double d34 = dArr3[i25];
                    double d35 = dArr3[i25 + 1] * d26;
                    double d36 = dArr3[i26];
                    double d37 = d26 * dArr3[i26 + 1];
                    int i27 = i20 + i24;
                    int i28 = i27 + i8;
                    int i29 = i28 + i8;
                    dArr2[i27] = d20 + d22;
                    dArr2[i27 + 1] = d21 + d24;
                    dArr2[i28] = (d34 * d30) - (d35 * d32);
                    dArr2[i28 + 1] = (d34 * d32) + (d35 * d30);
                    dArr2[i29] = (d36 * d31) - (d37 * d33);
                    dArr2[i29 + 1] = (d36 * d33) + (d37 * d31);
                    i20 += 2;
                    i19 = i24;
                    d = 0.8660254037844387d;
                }
                i17++;
                d = 0.8660254037844387d;
                i9 = 2;
            }
        }
    }

    void passf3(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5, long j6) {
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray2;
        long j7 = j6;
        long j8 = j5 + j;
        long j9 = j2 * j;
        long j10 = 2;
        long j11 = 3;
        if (j == 2) {
            long j12 = 1;
            while (j12 <= j2) {
                long j13 = j3 + (((j12 * j11) - j10) * j);
                long j14 = j13 + j;
                long j15 = j13 - j;
                double d = doubleLargeArray3.getDouble(j13);
                double d2 = doubleLargeArray3.getDouble(j13 + 1);
                double d3 = doubleLargeArray3.getDouble(j14);
                double d4 = doubleLargeArray3.getDouble(j14 + 1);
                double d5 = doubleLargeArray3.getDouble(j15);
                long j16 = j9;
                double d6 = doubleLargeArray3.getDouble(j15 + 1);
                double d7 = d + d3;
                double d8 = d5 + (d7 * (-0.5d));
                double d9 = d2 + d4;
                double d10 = d6 + (d9 * (-0.5d));
                double d11 = j7 * 0.8660254037844387d;
                double d12 = (d - d3) * d11;
                double d13 = d11 * (d2 - d4);
                long j17 = j4 + ((j12 - 1) * j);
                long j18 = j17 + j16;
                long j19 = j18 + j16;
                doubleLargeArray4.setDouble(j17, doubleLargeArray3.getDouble(j15) + d7);
                doubleLargeArray4.setDouble(j17 + 1, d6 + d9);
                doubleLargeArray4.setDouble(j18, d8 - d13);
                doubleLargeArray4.setDouble(j18 + 1, d10 + d12);
                doubleLargeArray4.setDouble(j19, d8 + d13);
                doubleLargeArray4.setDouble(j19 + 1, d10 - d12);
                j12++;
                j7 = j6;
                j9 = j16;
                j10 = 2;
                j11 = 3;
            }
            return;
        }
        long j20 = 1;
        while (j20 <= j2) {
            long j21 = j3 + (((j20 * 3) - 2) * j);
            long j22 = j4 + ((j20 - 1) * j);
            long j23 = 0;
            while (j23 < j - 1) {
                long j24 = j23 + j21;
                long j25 = j21;
                long j26 = j24 + j;
                long j27 = j20;
                long j28 = j24 - j;
                double d14 = doubleLargeArray3.getDouble(j24);
                double d15 = doubleLargeArray3.getDouble(j24 + 1);
                double d16 = doubleLargeArray3.getDouble(j26);
                double d17 = doubleLargeArray3.getDouble(j26 + 1);
                double d18 = doubleLargeArray3.getDouble(j28);
                double d19 = doubleLargeArray3.getDouble(j28 + 1);
                double d20 = d14 + d16;
                double d21 = d18 + (d20 * (-0.5d));
                double d22 = d15 + d17;
                double d23 = d19 + (d22 * (-0.5d));
                double d24 = j6;
                double d25 = d24 * 0.8660254037844387d;
                double d26 = (d14 - d16) * d25;
                double d27 = d25 * (d15 - d17);
                double d28 = d21 - d27;
                double d29 = d21 + d27;
                double d30 = d23 + d26;
                double d31 = d23 - d26;
                long j29 = j23 + j5;
                long j30 = j23 + j8;
                double d32 = this.wtablel.getDouble(j29);
                double d33 = this.wtablel.getDouble(j29 + 1) * d24;
                double d34 = this.wtablel.getDouble(j30);
                double d35 = d24 * this.wtablel.getDouble(j30 + 1);
                long j31 = j23 + j22;
                long j32 = j8;
                long j33 = j31 + j9;
                long j34 = j22;
                long j35 = j33 + j9;
                doubleLargeArray2.setDouble(j31, d18 + d20);
                doubleLargeArray2.setDouble(j31 + 1, d19 + d22);
                doubleLargeArray2.setDouble(j33, (d32 * d28) - (d33 * d30));
                doubleLargeArray2.setDouble(j33 + 1, (d32 * d30) + (d33 * d28));
                doubleLargeArray2.setDouble(j35, (d34 * d29) - (d35 * d31));
                doubleLargeArray2.setDouble(j35 + 1, (d34 * d31) + (d35 * d29));
                j23 += 2;
                doubleLargeArray3 = doubleLargeArray;
                doubleLargeArray4 = doubleLargeArray2;
                j21 = j25;
                j20 = j27;
                j8 = j32;
                j22 = j34;
            }
            j20++;
            doubleLargeArray3 = doubleLargeArray;
            doubleLargeArray4 = doubleLargeArray4;
        }
    }

    void passf4(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5, int i6) {
        int i7 = i;
        int i8 = i2;
        int i9 = i6;
        int i10 = i5 + i7;
        int i11 = i10 + i7;
        int i12 = i8 * i7;
        if (i7 == 2) {
            int i13 = 0;
            while (i13 < i8) {
                int i14 = i13 * i7;
                int i15 = i3 + (i14 * 4);
                int i16 = i15 + 1;
                int i17 = i16 + i7;
                int i18 = i17 + i7;
                int i19 = i18 + i7;
                double d = dArr[i15];
                double d2 = dArr[i16];
                double d3 = dArr[i17 - 1];
                double d4 = dArr[i17];
                double d5 = dArr[i18 - 1];
                double d6 = dArr[i18];
                double d7 = dArr[i19 - 1];
                double d8 = dArr[i19];
                double d9 = d2 - d6;
                double d10 = d2 + d6;
                double d11 = d8 - d4;
                double d12 = d4 + d8;
                double d13 = d - d5;
                double d14 = d + d5;
                double d15 = d3 - d7;
                double d16 = d3 + d7;
                int i20 = i4 + i14;
                int i21 = i20 + i12;
                int i22 = i21 + i12;
                int i23 = i22 + i12;
                dArr2[i20] = d14 + d16;
                dArr2[i20 + 1] = d10 + d12;
                double d17 = i9;
                double d18 = d11 * d17;
                dArr2[i21] = d13 + d18;
                double d19 = d17 * d15;
                dArr2[i21 + 1] = d9 + d19;
                dArr2[i22] = d14 - d16;
                dArr2[i22 + 1] = d10 - d12;
                dArr2[i23] = d13 - d18;
                dArr2[i23 + 1] = d9 - d19;
                i13++;
                i7 = i;
                i8 = i2;
            }
        } else {
            int i24 = i2;
            int i25 = 0;
            while (i25 < i24) {
                int i26 = i25 * i;
                int i27 = i3 + 1 + (i26 * 4);
                int i28 = 0;
                while (i28 < i - 1) {
                    int i29 = i28 + i27;
                    int i30 = i29 + i;
                    int i31 = i30 + i;
                    int i32 = i31 + i;
                    double d20 = dArr[i29 - 1];
                    double d21 = dArr[i29];
                    double d22 = dArr[i30 - 1];
                    double d23 = dArr[i30];
                    double d24 = dArr[i31 - 1];
                    double d25 = dArr[i31];
                    double d26 = dArr[i32 - 1];
                    double d27 = dArr[i32];
                    double d28 = d21 - d25;
                    double d29 = d21 + d25;
                    double d30 = d23 + d27;
                    double d31 = d27 - d23;
                    double d32 = d20 - d24;
                    double d33 = d20 + d24;
                    double d34 = d22 - d26;
                    double d35 = d22 + d26;
                    double d36 = d33 - d35;
                    double d37 = d29 - d30;
                    double d38 = i9;
                    double d39 = d31 * d38;
                    double d40 = d32 + d39;
                    double d41 = d32 - d39;
                    double d42 = d34 * d38;
                    double d43 = d28 + d42;
                    double d44 = d28 - d42;
                    int i33 = i28 + i5;
                    int i34 = i28 + i10;
                    int i35 = i28 + i11;
                    double[] dArr3 = this.wtable;
                    double d45 = dArr3[i33];
                    double d46 = dArr3[i33 + 1] * d38;
                    double d47 = dArr3[i34];
                    double d48 = dArr3[i34 + 1] * d38;
                    double d49 = dArr3[i35];
                    double d50 = d38 * dArr3[i35 + 1];
                    int i36 = i4 + i28 + i26;
                    int i37 = i36 + i12;
                    int i38 = i37 + i12;
                    int i39 = i38 + i12;
                    dArr2[i36] = d33 + d35;
                    dArr2[i36 + 1] = d29 + d30;
                    dArr2[i37] = (d45 * d40) - (d46 * d43);
                    dArr2[i37 + 1] = (d45 * d43) + (d46 * d40);
                    dArr2[i38] = (d47 * d36) - (d48 * d37);
                    dArr2[i38 + 1] = (d47 * d37) + (d48 * d36);
                    dArr2[i39] = (d49 * d41) - (d50 * d44);
                    dArr2[i39 + 1] = (d49 * d44) + (d50 * d41);
                    i28 += 2;
                    i9 = i6;
                    i27 = i27;
                }
                i25++;
                i24 = i2;
                i9 = i6;
            }
        }
    }

    void passf4(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5, int i) {
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        long j6 = j5 + j;
        long j7 = j6 + j;
        long j8 = j2 * j;
        long j9 = 2;
        long j10 = 4;
        if (j == 2) {
            long j11 = 0;
            while (j11 < j2) {
                long j12 = j11 * j;
                long j13 = j3 + (j12 * j10);
                long j14 = j13 + 1;
                long j15 = j14 + j;
                long j16 = j15 + j;
                long j17 = j8;
                long j18 = j16 + j;
                double d = doubleLargeArray3.getDouble(j13);
                double d2 = doubleLargeArray3.getDouble(j14);
                double d3 = doubleLargeArray3.getDouble(j15 - 1);
                double d4 = doubleLargeArray3.getDouble(j15);
                double d5 = doubleLargeArray3.getDouble(j16 - 1);
                double d6 = doubleLargeArray3.getDouble(j16);
                double d7 = doubleLargeArray3.getDouble(j18 - 1);
                double d8 = doubleLargeArray3.getDouble(j18);
                double d9 = d2 - d6;
                double d10 = d2 + d6;
                double d11 = d8 - d4;
                double d12 = d4 + d8;
                double d13 = d - d5;
                double d14 = d + d5;
                double d15 = d3 - d7;
                double d16 = d3 + d7;
                long j19 = j4 + j12;
                long j20 = j19 + j17;
                long j21 = j20 + j17;
                long j22 = j21 + j17;
                doubleLargeArray2.setDouble(j19, d14 + d16);
                doubleLargeArray2.setDouble(j19 + 1, d10 + d12);
                double d17 = i;
                double d18 = d11 * d17;
                doubleLargeArray2.setDouble(j20, d13 + d18);
                long j23 = j20 + 1;
                double d19 = d17 * d15;
                doubleLargeArray2.setDouble(j23, d9 + d19);
                doubleLargeArray2.setDouble(j21, d14 - d16);
                doubleLargeArray2.setDouble(j21 + 1, d10 - d12);
                doubleLargeArray2.setDouble(j22, d13 - d18);
                doubleLargeArray2.setDouble(j22 + 1, d9 - d19);
                j11++;
                doubleLargeArray3 = doubleLargeArray;
                j8 = j17;
                j10 = 4;
            }
        } else {
            DoubleLargeArray doubleLargeArray4 = doubleLargeArray2;
            long j24 = 0;
            while (j24 < j2) {
                long j25 = j24 * j;
                long j26 = j3 + 1 + (j25 * 4);
                long j27 = 0;
                while (j27 < j - 1) {
                    long j28 = j27 + j26;
                    long j29 = j26;
                    long j30 = j28 + j;
                    long j31 = j30 + j;
                    long j32 = j24;
                    long j33 = j31 + j;
                    long j34 = j25;
                    double d20 = doubleLargeArray.getDouble(j28 - 1);
                    double d21 = doubleLargeArray.getDouble(j28);
                    long j35 = j7;
                    double d22 = doubleLargeArray.getDouble(j30 - 1);
                    double d23 = doubleLargeArray.getDouble(j30);
                    long j36 = j6;
                    double d24 = doubleLargeArray.getDouble(j31 - 1);
                    double d25 = doubleLargeArray.getDouble(j31);
                    double d26 = doubleLargeArray.getDouble(j33 - 1);
                    double d27 = doubleLargeArray.getDouble(j33);
                    double d28 = d21 - d25;
                    double d29 = d21 + d25;
                    double d30 = d23 + d27;
                    double d31 = d27 - d23;
                    double d32 = d20 - d24;
                    double d33 = d20 + d24;
                    double d34 = d22 - d26;
                    double d35 = d22 + d26;
                    double d36 = d33 - d35;
                    double d37 = d29 - d30;
                    double d38 = i;
                    double d39 = d31 * d38;
                    double d40 = d32 + d39;
                    double d41 = d32 - d39;
                    double d42 = d34 * d38;
                    double d43 = d28 + d42;
                    double d44 = d28 - d42;
                    long j37 = j27 + j5;
                    long j38 = j27 + j36;
                    long j39 = j27 + j35;
                    double d45 = this.wtablel.getDouble(j37);
                    double d46 = this.wtablel.getDouble(j37 + 1) * d38;
                    double d47 = this.wtablel.getDouble(j38);
                    double d48 = this.wtablel.getDouble(j38 + 1) * d38;
                    double d49 = this.wtablel.getDouble(j39);
                    double d50 = d38 * this.wtablel.getDouble(j39 + 1);
                    long j40 = j4 + j27 + j34;
                    long j41 = j40 + j8;
                    long j42 = j41 + j8;
                    long j43 = j42 + j8;
                    doubleLargeArray2.setDouble(j40, d33 + d35);
                    doubleLargeArray2.setDouble(j40 + 1, d29 + d30);
                    doubleLargeArray2.setDouble(j41, (d45 * d40) - (d46 * d43));
                    doubleLargeArray2.setDouble(j41 + 1, (d45 * d43) + (d46 * d40));
                    doubleLargeArray2.setDouble(j42, (d47 * d36) - (d48 * d37));
                    doubleLargeArray2.setDouble(j42 + 1, (d47 * d37) + (d48 * d36));
                    doubleLargeArray2.setDouble(j43, (d49 * d41) - (d50 * d44));
                    doubleLargeArray2.setDouble(j43 + 1, (d49 * d44) + (d50 * d41));
                    j27 += 2;
                    j9 = 2;
                    doubleLargeArray4 = doubleLargeArray2;
                    j26 = j29;
                    j24 = j32;
                    j25 = j34;
                    j7 = j35;
                    j6 = j36;
                }
                j24++;
                j6 = j6;
            }
        }
    }

    void passf5(int i, int i2, double[] dArr, int i3, double[] dArr2, int i4, int i5, int i6) {
        int i7 = i5 + i;
        int i8 = i7 + i;
        int i9 = i8 + i;
        int i10 = i2 * i;
        double d = 0.9510565162951535d;
        double d2 = -0.8090169943749473d;
        double d3 = 0.30901699437494745d;
        if (i == 2) {
            int i11 = 1;
            while (i11 <= i2) {
                int i12 = i3 + (((i11 * 5) - 4) * i);
                int i13 = i12 + 1;
                int i14 = i13 + i;
                int i15 = i13 - i;
                int i16 = i14 + i;
                int i17 = i16 + i;
                double d4 = dArr[i12];
                double d5 = dArr[i13];
                double d6 = dArr[i14 - 1];
                double d7 = dArr[i14];
                double d8 = dArr[i15 - 1];
                double d9 = dArr[i15];
                double d10 = dArr[i16 - 1];
                double d11 = dArr[i16];
                double d12 = dArr[i17 - 1];
                double d13 = dArr[i17];
                double d14 = d5 - d13;
                double d15 = d5 + d13;
                double d16 = d7 - d11;
                double d17 = d7 + d11;
                double d18 = d4 - d12;
                double d19 = d4 + d12;
                double d20 = d6 - d10;
                double d21 = d6 + d10;
                double d22 = d8 + (d19 * 0.30901699437494745d) + (d21 * d2);
                double d23 = d9 + (d15 * 0.30901699437494745d) + (d17 * d2);
                double d24 = d8 + (d19 * d2) + (d21 * 0.30901699437494745d);
                double d25 = d9 + (d15 * d2) + (d17 * 0.30901699437494745d);
                double d26 = i6;
                double d27 = ((d18 * 0.9510565162951535d) + (d20 * 0.5877852522924732d)) * d26;
                double d28 = ((d14 * 0.9510565162951535d) + (d16 * 0.5877852522924732d)) * d26;
                double d29 = ((d18 * 0.5877852522924732d) - (d20 * 0.9510565162951535d)) * d26;
                double d30 = d26 * ((d14 * 0.5877852522924732d) - (d16 * 0.9510565162951535d));
                int i18 = i4 + ((i11 - 1) * i);
                int i19 = i18 + i10;
                int i20 = i19 + i10;
                int i21 = i20 + i10;
                int i22 = i21 + i10;
                dArr2[i18] = d8 + d19 + d21;
                dArr2[i18 + 1] = d9 + d15 + d17;
                dArr2[i19] = d22 - d28;
                dArr2[i19 + 1] = d23 + d27;
                dArr2[i20] = d24 - d30;
                dArr2[i20 + 1] = d25 + d29;
                dArr2[i21] = d24 + d30;
                dArr2[i21 + 1] = d25 - d29;
                dArr2[i22] = d22 + d28;
                dArr2[i22 + 1] = d23 - d27;
                i11++;
                d2 = -0.8090169943749473d;
            }
        } else {
            int i23 = 1;
            while (i23 <= i2) {
                int i24 = i3 + 1 + (((i23 * 5) - 4) * i);
                int i25 = i4 + ((i23 - 1) * i);
                int i26 = 0;
                while (i26 < i - 1) {
                    int i27 = i26 + i24;
                    int i28 = i27 + i;
                    int i29 = i27 - i;
                    int i30 = i28 + i;
                    int i31 = i30 + i;
                    double d31 = dArr[i27 - 1];
                    double d32 = dArr[i27];
                    double d33 = dArr[i28 - 1];
                    double d34 = dArr[i28];
                    double d35 = dArr[i29 - 1];
                    double d36 = dArr[i29];
                    double d37 = dArr[i30 - 1];
                    double d38 = dArr[i30];
                    double d39 = dArr[i31 - 1];
                    double d40 = dArr[i31];
                    double d41 = d32 - d40;
                    double d42 = d32 + d40;
                    double d43 = d34 - d38;
                    double d44 = d34 + d38;
                    double d45 = d31 - d39;
                    double d46 = d31 + d39;
                    double d47 = d33 - d37;
                    double d48 = d33 + d37;
                    double d49 = d35 + (d46 * d3) + (d48 * (-0.8090169943749473d));
                    double d50 = d36 + (d42 * d3) + (d44 * (-0.8090169943749473d));
                    double d51 = d35 + (d46 * (-0.8090169943749473d)) + (d48 * d3);
                    double d52 = d36 + (d42 * (-0.8090169943749473d)) + (d44 * d3);
                    double d53 = i6;
                    double d54 = ((d45 * d) + (d47 * 0.5877852522924732d)) * d53;
                    double d55 = ((d41 * d) + (d43 * 0.5877852522924732d)) * d53;
                    double d56 = ((d45 * 0.5877852522924732d) - (d47 * d)) * d53;
                    double d57 = ((d41 * 0.5877852522924732d) - (d43 * d)) * d53;
                    double d58 = d51 - d57;
                    double d59 = d51 + d57;
                    double d60 = d52 + d56;
                    double d61 = d52 - d56;
                    double d62 = d49 + d55;
                    double d63 = d49 - d55;
                    double d64 = d50 - d54;
                    double d65 = d50 + d54;
                    int i32 = i26 + i5;
                    int i33 = i26 + i7;
                    int i34 = i26 + i8;
                    int i35 = i26 + i9;
                    double[] dArr3 = this.wtable;
                    double d66 = dArr3[i32];
                    double d67 = dArr3[i32 + 1] * d53;
                    double d68 = dArr3[i33];
                    double d69 = dArr3[i33 + 1] * d53;
                    double d70 = dArr3[i34];
                    double d71 = dArr3[i34 + 1] * d53;
                    double d72 = dArr3[i35];
                    double d73 = d53 * dArr3[i35 + 1];
                    int i36 = i26 + i25;
                    int i37 = i36 + i10;
                    int i38 = i37 + i10;
                    int i39 = i38 + i10;
                    int i40 = i39 + i10;
                    dArr2[i36] = d35 + d46 + d48;
                    dArr2[i36 + 1] = d36 + d42 + d44;
                    dArr2[i37] = (d66 * d63) - (d67 * d65);
                    dArr2[i37 + 1] = (d66 * d65) + (d67 * d63);
                    dArr2[i38] = (d68 * d58) - (d69 * d60);
                    dArr2[i38 + 1] = (d68 * d60) + (d69 * d58);
                    dArr2[i39] = (d70 * d59) - (d71 * d61);
                    dArr2[i39 + 1] = (d70 * d61) + (d71 * d59);
                    dArr2[i40] = (d72 * d62) - (d73 * d64);
                    dArr2[i40 + 1] = (d72 * d64) + (d73 * d62);
                    i26 += 2;
                    d = 0.9510565162951535d;
                    d3 = 0.30901699437494745d;
                }
                i23++;
                d = 0.9510565162951535d;
                d3 = 0.30901699437494745d;
            }
        }
    }

    void passf5(long j, long j2, DoubleLargeArray doubleLargeArray, long j3, DoubleLargeArray doubleLargeArray2, long j4, long j5, long j6) {
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        long j7 = j5 + j;
        long j8 = j7 + j;
        long j9 = j8 + j;
        long j10 = j2 * j;
        long j11 = 2;
        if (j == 2) {
            long j12 = 1;
            while (j12 <= j2) {
                long j13 = j3 + (((j12 * 5) - 4) * j);
                long j14 = j13 + 1;
                long j15 = j14 + j;
                long j16 = j10;
                long j17 = j14 - j;
                long j18 = j12;
                long j19 = j15 + j;
                long j20 = j19 + j;
                double d = doubleLargeArray3.getDouble(j13);
                double d2 = doubleLargeArray3.getDouble(j14);
                double d3 = doubleLargeArray3.getDouble(j15 - 1);
                double d4 = doubleLargeArray3.getDouble(j15);
                double d5 = doubleLargeArray3.getDouble(j17 - 1);
                double d6 = doubleLargeArray3.getDouble(j17);
                double d7 = doubleLargeArray3.getDouble(j19 - 1);
                double d8 = doubleLargeArray3.getDouble(j19);
                double d9 = doubleLargeArray3.getDouble(j20 - 1);
                double d10 = doubleLargeArray3.getDouble(j20);
                double d11 = d2 - d10;
                double d12 = d2 + d10;
                double d13 = d4 - d8;
                double d14 = d4 + d8;
                double d15 = d - d9;
                double d16 = d + d9;
                double d17 = d3 - d7;
                double d18 = d3 + d7;
                double d19 = d5 + (d16 * 0.30901699437494745d) + (d18 * (-0.8090169943749473d));
                double d20 = d6 + (d12 * 0.30901699437494745d) + (d14 * (-0.8090169943749473d));
                double d21 = d5 + (d16 * (-0.8090169943749473d)) + (d18 * 0.30901699437494745d);
                double d22 = d6 + (d12 * (-0.8090169943749473d)) + (d14 * 0.30901699437494745d);
                double d23 = j6;
                double d24 = ((d15 * 0.9510565162951535d) + (d17 * 0.5877852522924732d)) * d23;
                double d25 = ((d11 * 0.9510565162951535d) + (d13 * 0.5877852522924732d)) * d23;
                double d26 = ((d15 * 0.5877852522924732d) - (d17 * 0.9510565162951535d)) * d23;
                double d27 = d23 * ((d11 * 0.5877852522924732d) - (d13 * 0.9510565162951535d));
                long j21 = j4 + ((j18 - 1) * j);
                long j22 = j21 + j16;
                long j23 = j22 + j16;
                long j24 = j23 + j16;
                long j25 = j24 + j16;
                doubleLargeArray2.setDouble(j21, d5 + d16 + d18);
                doubleLargeArray2.setDouble(j21 + 1, d6 + d12 + d14);
                doubleLargeArray2.setDouble(j22, d19 - d25);
                doubleLargeArray2.setDouble(j22 + 1, d20 + d24);
                doubleLargeArray2.setDouble(j23, d21 - d27);
                doubleLargeArray2.setDouble(j23 + 1, d22 + d26);
                doubleLargeArray2.setDouble(j24, d21 + d27);
                doubleLargeArray2.setDouble(j24 + 1, d22 - d26);
                doubleLargeArray2.setDouble(j25, d19 + d25);
                doubleLargeArray2.setDouble(j25 + 1, d20 - d24);
                j12 = j18 + 1;
                doubleLargeArray3 = doubleLargeArray;
                j10 = j16;
            }
        } else {
            DoubleLargeArray doubleLargeArray4 = doubleLargeArray2;
            long j26 = 1;
            while (j26 <= j2) {
                long j27 = j3 + 1 + (((j26 * 5) - 4) * j);
                long j28 = j4 + ((j26 - 1) * j);
                long j29 = 0;
                while (j29 < j - 1) {
                    long j30 = j29 + j27;
                    long j31 = j27;
                    long j32 = j30 + j;
                    long j33 = j26;
                    long j34 = j30 - j;
                    long j35 = j32 + j;
                    long j36 = j9;
                    long j37 = j35 + j;
                    long j38 = j8;
                    long j39 = j7;
                    double d28 = doubleLargeArray.getDouble(j30 - 1);
                    double d29 = doubleLargeArray.getDouble(j30);
                    double d30 = doubleLargeArray.getDouble(j32 - 1);
                    double d31 = doubleLargeArray.getDouble(j32);
                    double d32 = doubleLargeArray.getDouble(j34 - 1);
                    double d33 = doubleLargeArray.getDouble(j34);
                    double d34 = doubleLargeArray.getDouble(j35 - 1);
                    double d35 = doubleLargeArray.getDouble(j35);
                    double d36 = doubleLargeArray.getDouble(j37 - 1);
                    double d37 = doubleLargeArray.getDouble(j37);
                    double d38 = d29 - d37;
                    double d39 = d29 + d37;
                    double d40 = d31 - d35;
                    double d41 = d31 + d35;
                    double d42 = d28 - d36;
                    double d43 = d28 + d36;
                    double d44 = d30 - d34;
                    double d45 = d30 + d34;
                    double d46 = d32 + (d43 * 0.30901699437494745d) + (d45 * (-0.8090169943749473d));
                    double d47 = d33 + (d39 * 0.30901699437494745d) + (d41 * (-0.8090169943749473d));
                    double d48 = d32 + (d43 * (-0.8090169943749473d)) + (d45 * 0.30901699437494745d);
                    double d49 = d33 + (d39 * (-0.8090169943749473d)) + (d41 * 0.30901699437494745d);
                    double d50 = j6;
                    double d51 = ((d42 * 0.9510565162951535d) + (d44 * 0.5877852522924732d)) * d50;
                    double d52 = ((d38 * 0.9510565162951535d) + (d40 * 0.5877852522924732d)) * d50;
                    double d53 = ((d42 * 0.5877852522924732d) - (d44 * 0.9510565162951535d)) * d50;
                    double d54 = ((d38 * 0.5877852522924732d) - (d40 * 0.9510565162951535d)) * d50;
                    double d55 = d48 - d54;
                    double d56 = d48 + d54;
                    double d57 = d49 + d53;
                    double d58 = d49 - d53;
                    double d59 = d46 + d52;
                    double d60 = d46 - d52;
                    double d61 = d47 - d51;
                    double d62 = d47 + d51;
                    long j40 = j29 + j5;
                    long j41 = j29 + j39;
                    long j42 = j29 + j38;
                    long j43 = j29 + j36;
                    double d63 = this.wtablel.getDouble(j40);
                    double d64 = this.wtablel.getDouble(j40 + 1) * d50;
                    double d65 = this.wtablel.getDouble(j41);
                    double d66 = this.wtablel.getDouble(j41 + 1) * d50;
                    double d67 = this.wtablel.getDouble(j42);
                    double d68 = this.wtablel.getDouble(j42 + 1) * d50;
                    double d69 = this.wtablel.getDouble(j43);
                    double d70 = d50 * this.wtablel.getDouble(j43 + 1);
                    long j44 = j29 + j28;
                    long j45 = j44 + j10;
                    long j46 = j45 + j10;
                    long j47 = j46 + j10;
                    long j48 = j47 + j10;
                    doubleLargeArray2.setDouble(j44, d32 + d43 + d45);
                    doubleLargeArray2.setDouble(j44 + 1, d33 + d39 + d41);
                    doubleLargeArray2.setDouble(j45, (d63 * d60) - (d64 * d62));
                    doubleLargeArray2.setDouble(j45 + 1, (d63 * d62) + (d64 * d60));
                    doubleLargeArray2.setDouble(j46, (d65 * d55) - (d66 * d57));
                    doubleLargeArray2.setDouble(j46 + 1, (d65 * d57) + (d66 * d55));
                    doubleLargeArray2.setDouble(j47, (d67 * d56) - (d68 * d58));
                    doubleLargeArray2.setDouble(j47 + 1, (d67 * d58) + (d68 * d56));
                    doubleLargeArray2.setDouble(j48, (d69 * d59) - (d70 * d61));
                    doubleLargeArray2.setDouble(j48 + 1, (d69 * d61) + (d70 * d59));
                    j29 += 2;
                    doubleLargeArray4 = doubleLargeArray2;
                    j11 = 2;
                    j27 = j31;
                    j26 = j33;
                    j9 = j36;
                    j8 = j38;
                    j7 = j39;
                }
                j26++;
                j7 = j7;
            }
        }
    }

    void passfg(int[] iArr, int i, int i2, int i3, int i4, double[] dArr, int i5, double[] dArr2, int i6, int i7, int i8) {
        int i9;
        int i10;
        int i11 = i;
        int i12 = i2;
        int i13 = i11 / 2;
        int i14 = (i12 + 1) / 2;
        int i15 = i12 * i11;
        if (i11 >= i3) {
            for (int i16 = 1; i16 < i14; i16++) {
                int i17 = i16 * i11;
                int i18 = (i12 - i16) * i11;
                for (int i19 = 0; i19 < i3; i19++) {
                    int i20 = i19 * i11;
                    int i21 = i20 + (i17 * i3);
                    int i22 = i20 + (i18 * i3);
                    int i23 = i20 * i12;
                    for (int i24 = 0; i24 < i11; i24++) {
                        int i25 = i6 + i24;
                        int i26 = i5 + i24;
                        double d = dArr[i26 + i17 + i23];
                        double d2 = dArr[i26 + i18 + i23];
                        dArr2[i25 + i21] = d + d2;
                        dArr2[i25 + i22] = d - d2;
                    }
                }
            }
            int i27 = 0;
            while (i27 < i3) {
                int i28 = i27 * i11;
                int i29 = i28 * i12;
                int i30 = i13;
                for (int i31 = 0; i31 < i11; i31++) {
                    dArr2[i6 + i31 + i28] = dArr[i5 + i31 + i29];
                }
                i27++;
                i13 = i30;
            }
            i9 = i13;
            i10 = i15;
        } else {
            i9 = i13;
            int i32 = 1;
            while (i32 < i14) {
                int i33 = i12 - i32;
                int i34 = i32 * i3 * i11;
                int i35 = i33 * i3 * i11;
                int i36 = i32 * i11;
                int i37 = i33 * i11;
                int i38 = i15;
                for (int i39 = 0; i39 < i11; i39++) {
                    for (int i40 = 0; i40 < i3; i40++) {
                        int i41 = i40 * i11;
                        int i42 = i41 * i12;
                        int i43 = i5 + i39;
                        double d3 = dArr[i43 + i36 + i42];
                        double d4 = dArr[i43 + i37 + i42];
                        int i44 = i6 + i39 + i41;
                        dArr2[i44 + i34] = d3 + d4;
                        dArr2[i44 + i35] = d3 - d4;
                    }
                }
                i32++;
                i15 = i38;
            }
            i10 = i15;
            for (int i45 = 0; i45 < i11; i45++) {
                for (int i46 = 0; i46 < i3; i46++) {
                    int i47 = i46 * i11;
                    dArr2[i6 + i45 + i47] = dArr[i5 + i45 + (i47 * i12)];
                }
            }
        }
        int i48 = 2 - i11;
        int i49 = (i12 - 1) * i4;
        int i50 = i48;
        int i51 = 1;
        int i52 = 0;
        while (i51 < i14) {
            int i53 = i50 + i11;
            int i54 = i51 * i4;
            int i55 = (i12 - i51) * i4;
            int i56 = i53 + i7;
            int i57 = i48;
            double[] dArr3 = this.wtable;
            double d5 = dArr3[i56 - 2];
            double d6 = i8;
            double d7 = dArr3[i56 - 1] * d6;
            for (int i58 = 0; i58 < i4; i58++) {
                int i59 = i5 + i58;
                int i60 = i6 + i58;
                dArr[i59 + i54] = dArr2[i60] + (dArr2[i60 + i4] * d5);
                dArr[i59 + i55] = dArr2[i60 + i49] * d7;
            }
            i52 += i11;
            int i61 = i53;
            int i62 = 2;
            while (i62 < i14) {
                double d8 = d6;
                int i63 = i2 - i62;
                int i64 = i49;
                int i65 = i61 + i52;
                int i66 = i52;
                int i67 = i10;
                if (i65 > i67) {
                    i65 -= i67;
                }
                int i68 = i65 + i7;
                int i69 = i65;
                double[] dArr4 = this.wtable;
                double d9 = dArr4[i68 - 2];
                double d10 = dArr4[i68 - 1] * d8;
                int i70 = i62 * i4;
                int i71 = i63 * i4;
                i10 = i67;
                for (int i72 = 0; i72 < i4; i72++) {
                    int i73 = i5 + i72;
                    int i74 = i6 + i72;
                    int i75 = i73 + i54;
                    dArr[i75] = dArr[i75] + (dArr2[i74 + i70] * d9);
                    int i76 = i73 + i55;
                    dArr[i76] = dArr[i76] + (dArr2[i74 + i71] * d10);
                }
                i62++;
                i52 = i66;
                d6 = d8;
                i49 = i64;
                i61 = i69;
            }
            i12 = i2;
            i51++;
            i48 = i57;
            i50 = i53;
        }
        int i77 = i48;
        for (int i78 = 1; i78 < i14; i78++) {
            int i79 = i78 * i4;
            for (int i80 = 0; i80 < i4; i80++) {
                int i81 = i6 + i80;
                dArr2[i81] = dArr2[i81] + dArr2[i81 + i79];
            }
        }
        for (int i82 = 1; i82 < i14; i82++) {
            int i83 = i82 * i4;
            int i84 = (i12 - i82) * i4;
            for (int i85 = 1; i85 < i4; i85 += 2) {
                int i86 = i6 + i85;
                int i87 = i5 + i85;
                int i88 = i87 + i83;
                int i89 = i87 + i84;
                double d11 = dArr[i88 - 1];
                double d12 = dArr[i88];
                double d13 = dArr[i89 - 1];
                double d14 = dArr[i89];
                int i90 = i86 + i83;
                int i91 = i86 + i84;
                dArr2[i90 - 1] = d11 - d14;
                dArr2[i91 - 1] = d11 + d14;
                dArr2[i90] = d12 + d13;
                dArr2[i91] = d12 - d13;
            }
        }
        iArr[0] = 1;
        if (i11 == 2) {
            return;
        }
        iArr[0] = 0;
        System.arraycopy(dArr2, i6, dArr, i5, i4);
        int i92 = i3 * i11;
        for (int i93 = 1; i93 < i12; i93++) {
            int i94 = i93 * i92;
            for (int i95 = 0; i95 < i3; i95++) {
                int i96 = i95 * i11;
                int i97 = i6 + i96 + i94;
                int i98 = i96 + i5 + i94;
                dArr[i98] = dArr2[i97];
                dArr[i98 + 1] = dArr2[i97 + 1];
            }
        }
        if (i9 <= i3) {
            int i99 = 0;
            for (int i100 = 1; i100 < i12; i100++) {
                i99 += 2;
                int i101 = i100 * i3 * i11;
                int i102 = 3;
                while (i102 < i11) {
                    int i103 = i99 + 2;
                    int i104 = i103 + i7;
                    double[] dArr5 = this.wtable;
                    double d15 = dArr5[i104 - 2];
                    double d16 = i8 * dArr5[i104 - 1];
                    int i105 = i5 + i102;
                    int i106 = i6 + i102;
                    for (int i107 = 0; i107 < i3; i107++) {
                        int i108 = (i107 * i11) + i101;
                        int i109 = i105 + i108;
                        int i110 = i106 + i108;
                        double d17 = dArr2[i110 - 1];
                        double d18 = dArr2[i110];
                        dArr[i109 - 1] = (d15 * d17) - (d16 * d18);
                        dArr[i109] = (d18 * d15) + (d17 * d16);
                    }
                    i102 += 2;
                    i99 = i103;
                }
            }
            return;
        }
        int i111 = i77;
        int i112 = 1;
        while (i112 < i12) {
            i111 += i11;
            int i113 = i112 * i3 * i11;
            int i114 = 0;
            while (i114 < i3) {
                int i115 = (i114 * i11) + i113;
                int i116 = i111;
                int i117 = 3;
                while (i117 < i11) {
                    int i118 = i116 + 2;
                    int i119 = i116 + 1 + i7;
                    double[] dArr6 = this.wtable;
                    double d19 = dArr6[i119 - 1];
                    int i120 = i111;
                    double d20 = i8 * dArr6[i119];
                    int i121 = i5 + i117 + i115;
                    int i122 = i6 + i117 + i115;
                    double d21 = dArr2[i122 - 1];
                    double d22 = dArr2[i122];
                    dArr[i121 - 1] = (d19 * d21) - (d20 * d22);
                    dArr[i121] = (d19 * d22) + (d20 * d21);
                    i117 += 2;
                    i11 = i;
                    i111 = i120;
                    i116 = i118;
                    i113 = i113;
                }
                i114++;
                i11 = i;
            }
            i112++;
            i11 = i;
        }
    }

    void passfg(int[] iArr, long j, long j2, long j3, long j4, DoubleLargeArray doubleLargeArray, long j5, DoubleLargeArray doubleLargeArray2, long j6, long j7, long j8) {
        long j9;
        long j10;
        DoubleLargeArray doubleLargeArray3 = doubleLargeArray;
        DoubleLargeArray doubleLargeArray4 = doubleLargeArray2;
        long j11 = j / 2;
        long j12 = (j2 + 1) / 2;
        long j13 = j2 * j;
        if (j >= j3) {
            for (long j14 = 1; j14 < j12; j14++) {
                long j15 = j14 * j;
                long j16 = (j2 - j14) * j;
                for (long j17 = 0; j17 < j3; j17++) {
                    long j18 = j17 * j;
                    long j19 = j18 + (j15 * j3);
                    long j20 = j18 + (j16 * j3);
                    long j21 = j18 * j2;
                    long j22 = 0;
                    while (j22 < j) {
                        long j23 = j6 + j22;
                        long j24 = j5 + j22;
                        double d = doubleLargeArray3.getDouble(j24 + j15 + j21);
                        long j25 = j16;
                        double d2 = doubleLargeArray3.getDouble(j24 + j16 + j21);
                        doubleLargeArray4.setDouble(j23 + j19, d + d2);
                        doubleLargeArray4.setDouble(j23 + j20, d - d2);
                        j22++;
                        j13 = j13;
                        j16 = j25;
                    }
                }
            }
            j9 = j13;
            for (long j26 = 0; j26 < j3; j26++) {
                long j27 = j26 * j;
                long j28 = j27 * j2;
                long j29 = 0;
                while (j29 < j) {
                    doubleLargeArray4.setDouble(j6 + j29 + j27, doubleLargeArray3.getDouble(j5 + j29 + j28));
                    j29++;
                    j27 = j27;
                }
            }
            j10 = j12;
        } else {
            j9 = j13;
            for (long j30 = 1; j30 < j12; j30++) {
                long j31 = j2 - j30;
                long j32 = j30 * j3 * j;
                long j33 = j31 * j3 * j;
                long j34 = j30 * j;
                long j35 = j31 * j;
                for (long j36 = 0; j36 < j; j36++) {
                    long j37 = 0;
                    while (j37 < j3) {
                        long j38 = j37 * j;
                        long j39 = j38 * j2;
                        long j40 = j5 + j36;
                        long j41 = j34;
                        double d3 = doubleLargeArray3.getDouble(j40 + j34 + j39);
                        long j42 = j35;
                        double d4 = doubleLargeArray3.getDouble(j40 + j35 + j39);
                        long j43 = j6 + j36 + j38;
                        doubleLargeArray4.setDouble(j43 + j32, d3 + d4);
                        doubleLargeArray4.setDouble(j43 + j33, d3 - d4);
                        j37++;
                        j12 = j12;
                        j32 = j32;
                        j35 = j42;
                        j34 = j41;
                    }
                }
            }
            j10 = j12;
            for (long j44 = 0; j44 < j; j44++) {
                for (long j45 = 0; j45 < j3; j45++) {
                    long j46 = j45 * j;
                    doubleLargeArray4.setDouble(j6 + j44 + j46, doubleLargeArray3.getDouble(j5 + j44 + (j46 * j2)));
                }
            }
        }
        long j47 = 2 - j;
        long j48 = (j2 - 1) * j4;
        long j49 = j47;
        long j50 = 1;
        long j51 = 0;
        while (j50 < j10) {
            long j52 = j49 + j;
            long j53 = j50 * j4;
            long j54 = (j2 - j50) * j4;
            long j55 = j52 + j7;
            long j56 = j47;
            double d5 = this.wtablel.getDouble(j55 - 2);
            long j57 = j50;
            double d6 = j8;
            long j58 = j11;
            double d7 = this.wtablel.getDouble(j55 - 1) * d6;
            long j59 = 0;
            while (j59 < j4) {
                long j60 = j5 + j59;
                double d8 = d6;
                long j61 = j6 + j59;
                double d9 = d7;
                doubleLargeArray3.setDouble(j60 + j53, doubleLargeArray4.getDouble(j61) + (doubleLargeArray4.getDouble(j61 + j4) * d5));
                doubleLargeArray3.setDouble(j60 + j54, d9 * doubleLargeArray4.getDouble(j61 + j48));
                j59++;
                d6 = d8;
                j51 = j51;
                d7 = d9;
            }
            double d10 = d6;
            j51 += j;
            long j62 = j52;
            long j63 = 2;
            while (j63 < j10) {
                long j64 = j2 - j63;
                long j65 = j62 + j51;
                if (j65 > j9) {
                    j65 -= j9;
                }
                long j66 = j65 + j7;
                long j67 = j48;
                long j68 = j65;
                double d11 = this.wtablel.getDouble(j66 - 2);
                long j69 = j51;
                double d12 = this.wtablel.getDouble(j66 - 1) * d10;
                long j70 = j63 * j4;
                long j71 = j64 * j4;
                long j72 = 0;
                while (j72 < j4) {
                    long j73 = j5 + j72;
                    long j74 = j6 + j72;
                    long j75 = j63;
                    long j76 = j73 + j53;
                    double d13 = d12;
                    doubleLargeArray3.setDouble(j76, doubleLargeArray3.getDouble(j76) + (doubleLargeArray4.getDouble(j74 + j70) * d11));
                    long j77 = j73 + j54;
                    doubleLargeArray3.setDouble(j77, doubleLargeArray3.getDouble(j77) + (doubleLargeArray4.getDouble(j74 + j71) * d13));
                    j72++;
                    d11 = d11;
                    j63 = j75;
                    d12 = d13;
                }
                j63++;
                j48 = j67;
                j62 = j68;
                j51 = j69;
            }
            j50 = j57 + 1;
            j49 = j52;
            j47 = j56;
            j11 = j58;
        }
        long j78 = j47;
        long j79 = j11;
        for (long j80 = 1; j80 < j10; j80++) {
            long j81 = j80 * j4;
            for (long j82 = 0; j82 < j4; j82++) {
                long j83 = j6 + j82;
                doubleLargeArray4.setDouble(j83, doubleLargeArray4.getDouble(j83) + doubleLargeArray4.getDouble(j83 + j81));
            }
        }
        long j84 = 1;
        while (j84 < j10) {
            long j85 = j84 * j4;
            long j86 = (j2 - j84) * j4;
            long j87 = 1;
            while (j87 < j4) {
                long j88 = j6 + j87;
                long j89 = j5 + j87;
                long j90 = j84;
                long j91 = j89 + j85;
                long j92 = j89 + j86;
                long j93 = j87;
                double d14 = doubleLargeArray3.getDouble(j91 - 1);
                double d15 = doubleLargeArray3.getDouble(j91);
                double d16 = doubleLargeArray3.getDouble(j92 - 1);
                double d17 = doubleLargeArray3.getDouble(j92);
                long j94 = j88 + j85;
                long j95 = j88 + j86;
                doubleLargeArray4.setDouble(j94 - 1, d14 - d17);
                doubleLargeArray4.setDouble(j95 - 1, d14 + d17);
                doubleLargeArray4.setDouble(j94, d15 + d16);
                doubleLargeArray4.setDouble(j95, d15 - d16);
                j87 = j93 + 2;
                doubleLargeArray3 = doubleLargeArray;
                j84 = j90;
                j86 = j86;
                j85 = j85;
            }
            doubleLargeArray3 = doubleLargeArray;
            j84++;
        }
        iArr[0] = 1;
        if (j == 2) {
            return;
        }
        iArr[0] = 0;
        DoubleFFT_1D doubleFFT_1D = this;
        LargeArrayUtils.arraycopy(doubleLargeArray2, j6, doubleLargeArray, j5, j4);
        long j96 = j3 * j;
        for (long j97 = 1; j97 < j2; j97++) {
            long j98 = j97 * j96;
            long j99 = 0;
            while (j99 < j3) {
                long j100 = j99 * j;
                long j101 = j6 + j100 + j98;
                long j102 = j5 + j100 + j98;
                doubleLargeArray.setDouble(j102, doubleLargeArray4.getDouble(j101));
                doubleLargeArray.setDouble(j102 + 1, doubleLargeArray4.getDouble(j101 + 1));
                j99++;
                j96 = j96;
            }
        }
        DoubleLargeArray doubleLargeArray5 = doubleLargeArray;
        if (j79 <= j3) {
            long j103 = 1;
            long j104 = 0;
            while (j103 < j2) {
                long j105 = 2;
                j104 += 2;
                long j106 = j103 * j3 * j;
                long j107 = 3;
                while (j107 < j) {
                    long j108 = j104 + j105;
                    long j109 = j108 + j7;
                    long j110 = j109 - 1;
                    double d18 = doubleFFT_1D.wtablel.getDouble(j109 - j105);
                    long j111 = j103;
                    double d19 = j8 * doubleFFT_1D.wtablel.getDouble(j110);
                    long j112 = j5 + j107;
                    long j113 = j6 + j107;
                    long j114 = 0;
                    while (j114 < j3) {
                        long j115 = (j114 * j) + j106;
                        long j116 = j106;
                        long j117 = j112 + j115;
                        long j118 = j112;
                        long j119 = j113 + j115;
                        double d20 = doubleLargeArray4.getDouble(j119 - 1);
                        double d21 = doubleLargeArray4.getDouble(j119);
                        doubleLargeArray.setDouble(j117 - 1, (d18 * d20) - (d19 * d21));
                        doubleLargeArray.setDouble(j117, (d21 * d18) + (d20 * d19));
                        j114++;
                        doubleLargeArray5 = doubleLargeArray;
                        j106 = j116;
                        j112 = j118;
                    }
                    j107 += 2;
                    j105 = 2;
                    j103 = j111;
                    j104 = j108;
                }
                j103++;
            }
            return;
        }
        long j120 = 1;
        long j121 = j78;
        while (j120 < j2) {
            j121 += j;
            long j122 = j120 * j3 * j;
            long j123 = 0;
            while (j123 < j3) {
                long j124 = (j123 * j) + j122;
                long j125 = j121;
                long j126 = 3;
                while (j126 < j) {
                    long j127 = j125 + 2;
                    long j128 = j122;
                    long j129 = j125 + 1 + j7;
                    long j130 = j121;
                    double d22 = doubleFFT_1D.wtablel.getDouble(j129 - 1);
                    long j131 = j120;
                    long j132 = j123;
                    double d23 = j8 * doubleFFT_1D.wtablel.getDouble(j129);
                    long j133 = j5 + j126 + j124;
                    long j134 = j6 + j126 + j124;
                    long j135 = j124;
                    double d24 = doubleLargeArray4.getDouble(j134 - 1);
                    double d25 = doubleLargeArray4.getDouble(j134);
                    doubleLargeArray5.setDouble(j133 - 1, (d22 * d24) - (d23 * d25));
                    doubleLargeArray5.setDouble(j133, (d22 * d25) + (d23 * d24));
                    j126 += 2;
                    doubleFFT_1D = this;
                    doubleLargeArray4 = doubleLargeArray2;
                    j120 = j131;
                    j122 = j128;
                    j125 = j127;
                    j121 = j130;
                    j123 = j132;
                    j124 = j135;
                }
                j123++;
                doubleFFT_1D = this;
                doubleLargeArray4 = doubleLargeArray2;
                j120 = j120;
            }
            doubleFFT_1D = this;
            doubleLargeArray4 = doubleLargeArray2;
            j120++;
        }
    }
}
