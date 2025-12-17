package org.jtransforms.dst;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jtransforms.dct.FloatDCT_1D;
import org.jtransforms.utils.CommonUtils;
import pl.edu.icm.jlargearrays.ConcurrencyUtils;
import pl.edu.icm.jlargearrays.FloatLargeArray;
import pl.edu.icm.jlargearrays.LargeArray;
/* loaded from: classes5.dex */
public class FloatDST_1D {
    private final FloatDCT_1D dct;
    private final int n;
    private final long nl;
    private final boolean useLargeArrays;

    public FloatDST_1D(long j) {
        this.n = (int) j;
        this.nl = j;
        this.useLargeArrays = CommonUtils.isUseLargeArrays() || j > ((long) LargeArray.getMaxSizeOf32bitArray());
        this.dct = new FloatDCT_1D(j);
    }

    public void forward(float[] fArr, boolean z) {
        forward(fArr, 0, z);
    }

    public void forward(FloatLargeArray floatLargeArray, boolean z) {
        forward(floatLargeArray, 0L, z);
    }

    public void forward(final float[] fArr, final int i, boolean z) {
        int i2 = this.n;
        if (i2 == 1) {
            return;
        }
        if (this.useLargeArrays) {
            forward(new FloatLargeArray(fArr), i, z);
            return;
        }
        int i3 = i2 / 2;
        int i4 = i2 + i;
        for (int i5 = i + 1; i5 < i4; i5 += 2) {
            fArr[i5] = -fArr[i5];
        }
        this.dct.forward(fArr, i, z);
        if (ConcurrencyUtils.getNumberOfThreads() > 1 && i3 > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i6 = i3 / 2;
            Future[] futureArr = new Future[2];
            int i7 = 0;
            while (i7 < 2) {
                final int i8 = i7 * i6;
                final int i9 = i7 == 1 ? i3 : i8 + i6;
                futureArr[i7] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_1D.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int i10 = (i + FloatDST_1D.this.n) - 1;
                        for (int i11 = i8; i11 < i9; i11++) {
                            int i12 = i + i11;
                            float[] fArr2 = fArr;
                            float f = fArr2[i12];
                            int i13 = i10 - i11;
                            fArr2[i12] = fArr2[i13];
                            fArr2[i13] = f;
                        }
                    }
                });
                i7++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e) {
                Logger.getLogger(FloatDST_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                return;
            } catch (ExecutionException e2) {
                Logger.getLogger(FloatDST_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                return;
            }
        }
        int i10 = (this.n + i) - 1;
        for (int i11 = 0; i11 < i3; i11++) {
            int i12 = i + i11;
            float f = fArr[i12];
            int i13 = i10 - i11;
            fArr[i12] = fArr[i13];
            fArr[i13] = f;
        }
    }

    public void forward(final FloatLargeArray floatLargeArray, final long j, boolean z) {
        long j2 = this.nl;
        if (j2 == 1) {
            return;
        }
        if (!this.useLargeArrays) {
            if (!floatLargeArray.isLarge() && !floatLargeArray.isConstant() && j < 2147483647L) {
                forward(floatLargeArray.getData(), (int) j, z);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        }
        long j3 = j2 / 2;
        long j4 = j2 + j;
        for (long j5 = j + 1; j5 < j4; j5 += 2) {
            floatLargeArray.setFloat(j5, -floatLargeArray.getFloat(j5));
        }
        this.dct.forward(floatLargeArray, j, z);
        int i = 1;
        if (ConcurrencyUtils.getNumberOfThreads() > 1 && j3 > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i2 = 2;
            long j6 = j3 / 2;
            Future[] futureArr = new Future[2];
            int i3 = 0;
            while (i3 < i2) {
                final long j7 = i3 * j6;
                long j8 = i3 == i ? j3 : j7 + j6;
                int i4 = i3;
                int i5 = i2;
                Future[] futureArr2 = futureArr;
                final long j9 = j8;
                futureArr2[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_1D.2
                    @Override // java.lang.Runnable
                    public void run() {
                        long j10 = (j + FloatDST_1D.this.nl) - 1;
                        for (long j11 = j7; j11 < j9; j11++) {
                            long j12 = j + j11;
                            float f = floatLargeArray.getFloat(j12);
                            long j13 = j10 - j11;
                            FloatLargeArray floatLargeArray2 = floatLargeArray;
                            floatLargeArray2.setFloat(j12, floatLargeArray2.getFloat(j13));
                            floatLargeArray.setFloat(j13, f);
                        }
                    }
                });
                i3 = i4 + 1;
                futureArr = futureArr2;
                i2 = i5;
                i = i;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e) {
                Logger.getLogger(FloatDST_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                return;
            } catch (ExecutionException e2) {
                Logger.getLogger(FloatDST_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                return;
            }
        }
        long j10 = (this.nl + j) - 1;
        for (long j11 = 0; j11 < j3; j11++) {
            long j12 = j + j11;
            float f = floatLargeArray.getFloat(j12);
            long j13 = j10 - j11;
            floatLargeArray.setFloat(j12, floatLargeArray.getFloat(j13));
            floatLargeArray.setFloat(j13, f);
        }
    }

    public void inverse(float[] fArr, boolean z) {
        inverse(fArr, 0, z);
    }

    public void inverse(FloatLargeArray floatLargeArray, boolean z) {
        inverse(floatLargeArray, 0L, z);
    }

    public void inverse(final float[] fArr, final int i, boolean z) {
        int i2 = this.n;
        if (i2 == 1) {
            return;
        }
        if (this.useLargeArrays) {
            inverse(new FloatLargeArray(fArr), i, z);
            return;
        }
        int i3 = i2 / 2;
        if (ConcurrencyUtils.getNumberOfThreads() > 1 && i3 > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            int i4 = i3 / 2;
            Future[] futureArr = new Future[2];
            int i5 = 0;
            while (i5 < 2) {
                final int i6 = i5 * i4;
                final int i7 = i5 == 1 ? i3 : i6 + i4;
                int i8 = i5;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_1D.3
                    @Override // java.lang.Runnable
                    public void run() {
                        int i9 = (i + FloatDST_1D.this.n) - 1;
                        for (int i10 = i6; i10 < i7; i10++) {
                            int i11 = i + i10;
                            float[] fArr2 = fArr;
                            float f = fArr2[i11];
                            int i12 = i9 - i10;
                            fArr2[i11] = fArr2[i12];
                            fArr2[i12] = f;
                        }
                    }
                });
                i5 = i8 + 1;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(FloatDST_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(FloatDST_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
        } else {
            int i9 = (this.n + i) - 1;
            for (int i10 = 0; i10 < i3; i10++) {
                int i11 = i + i10;
                float f = fArr[i11];
                int i12 = i9 - i10;
                fArr[i11] = fArr[i12];
                fArr[i12] = f;
            }
        }
        this.dct.inverse(fArr, i, z);
        int i13 = this.n + i;
        for (int i14 = i + 1; i14 < i13; i14 += 2) {
            fArr[i14] = -fArr[i14];
        }
    }

    public void inverse(final FloatLargeArray floatLargeArray, final long j, boolean z) {
        long j2 = this.nl;
        if (j2 == 1) {
            return;
        }
        if (!this.useLargeArrays) {
            if (!floatLargeArray.isLarge() && !floatLargeArray.isConstant() && j < 2147483647L) {
                inverse(floatLargeArray.getData(), (int) j, z);
                return;
            }
            throw new IllegalArgumentException("The data array is too big.");
        }
        long j3 = j2 / 2;
        int i = 1;
        if (ConcurrencyUtils.getNumberOfThreads() > 1 && j3 > CommonUtils.getThreadsBeginN_1D_FFT_2Threads()) {
            long j4 = j3 / 2;
            Future[] futureArr = new Future[2];
            int i2 = 0;
            while (i2 < 2) {
                final long j5 = i2 * j4;
                Future[] futureArr2 = futureArr;
                int i3 = i2;
                final long j6 = i2 == i ? j3 : j5 + j4;
                futureArr2[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_1D.4
                    @Override // java.lang.Runnable
                    public void run() {
                        long j7 = (j + FloatDST_1D.this.nl) - 1;
                        for (long j8 = j5; j8 < j6; j8++) {
                            long j9 = j + j8;
                            float f = floatLargeArray.getFloat(j9);
                            long j10 = j7 - j8;
                            FloatLargeArray floatLargeArray2 = floatLargeArray;
                            floatLargeArray2.setFloat(j9, floatLargeArray2.getFloat(j10));
                            floatLargeArray.setFloat(j10, f);
                        }
                    }
                });
                i2 = i3 + 1;
                i = i;
                futureArr = futureArr2;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(FloatDST_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(FloatDST_1D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
        } else {
            long j7 = (this.nl + j) - 1;
            for (long j8 = 0; j8 < j3; j8++) {
                long j9 = j + j8;
                float f = floatLargeArray.getFloat(j9);
                long j10 = j7 - j8;
                floatLargeArray.setFloat(j9, floatLargeArray.getFloat(j10));
                floatLargeArray.setFloat(j10, f);
            }
        }
        this.dct.inverse(floatLargeArray, j, z);
        long j11 = this.nl + j;
        for (long j12 = j + 1; j12 < j11; j12 += 2) {
            floatLargeArray.setFloat(j12, -floatLargeArray.getFloat(j12));
        }
    }
}
