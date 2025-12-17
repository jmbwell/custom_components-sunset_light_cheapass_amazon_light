package org.jtransforms.dst;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jtransforms.utils.CommonUtils;
import pl.edu.icm.jlargearrays.ConcurrencyUtils;
import pl.edu.icm.jlargearrays.FloatLargeArray;
import pl.edu.icm.jlargearrays.LargeArray;
/* loaded from: classes5.dex */
public class FloatDST_3D {
    private int columns;
    private long columnsl;
    private FloatDST_1D dstColumns;
    private FloatDST_1D dstRows;
    private FloatDST_1D dstSlices;
    private boolean isPowerOfTwo;
    private int rowStride;
    private long rowStridel;
    private int rows;
    private long rowsl;
    private int sliceStride;
    private long sliceStridel;
    private int slices;
    private long slicesl;
    private boolean useThreads;

    public FloatDST_3D(long j, long j2, long j3) {
        this.isPowerOfTwo = false;
        this.useThreads = false;
        if (j <= 1 || j2 <= 1 || j3 <= 1) {
            throw new IllegalArgumentException("slices, rows and columns must be greater than 1");
        }
        this.slices = (int) j;
        this.rows = (int) j2;
        int i = (int) j3;
        this.columns = i;
        this.slicesl = j;
        this.rowsl = j2;
        this.columnsl = j3;
        long j4 = j2 * j3;
        this.sliceStride = (int) j4;
        this.rowStride = i;
        this.sliceStridel = j4;
        this.rowStridel = j3;
        long j5 = j * j2 * j3;
        if (j5 >= CommonUtils.getThreadsBeginN_3D()) {
            this.useThreads = true;
        }
        if (CommonUtils.isPowerOf2(j) && CommonUtils.isPowerOf2(j2) && CommonUtils.isPowerOf2(j3)) {
            this.isPowerOfTwo = true;
        }
        CommonUtils.setUseLargeArrays(j5 > ((long) LargeArray.getMaxSizeOf32bitArray()));
        FloatDST_1D floatDST_1D = new FloatDST_1D(j);
        this.dstSlices = floatDST_1D;
        if (j == j2) {
            this.dstRows = floatDST_1D;
        } else {
            this.dstRows = new FloatDST_1D(j2);
        }
        if (j == j3) {
            this.dstColumns = this.dstSlices;
        } else if (j2 == j3) {
            this.dstColumns = this.dstRows;
        } else {
            this.dstColumns = new FloatDST_1D(j3);
        }
    }

    public void forward(final float[] fArr, final boolean z) {
        int i;
        int i2;
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(-1, fArr, z);
                ddxt3db_subth(-1, fArr, z);
                return;
            }
            ddxt3da_sub(-1, fArr, z);
            ddxt3db_sub(-1, fArr, z);
            return;
        }
        int i3 = 0;
        if (numberOfThreads > 1 && this.useThreads && (i2 = this.slices) >= numberOfThreads && this.rows >= numberOfThreads && this.columns >= numberOfThreads) {
            Future[] futureArr = new Future[numberOfThreads];
            int i4 = i2 / numberOfThreads;
            int i5 = 0;
            while (i5 < numberOfThreads) {
                final int i6 = i5 * i4;
                final int i7 = i5 == numberOfThreads + (-1) ? this.slices : i6 + i4;
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i6; i8 < i7; i8++) {
                            int i9 = FloatDST_3D.this.sliceStride * i8;
                            for (int i10 = 0; i10 < FloatDST_3D.this.rows; i10++) {
                                FloatDST_3D.this.dstColumns.forward(fArr, (FloatDST_3D.this.rowStride * i10) + i9, z);
                            }
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            int i8 = 0;
            while (i8 < numberOfThreads) {
                final int i9 = i8 * i4;
                final int i10 = i8 == numberOfThreads + (-1) ? this.slices : i9 + i4;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.2
                    @Override // java.lang.Runnable
                    public void run() {
                        float[] fArr2 = new float[FloatDST_3D.this.rows];
                        for (int i11 = i9; i11 < i10; i11++) {
                            int i12 = FloatDST_3D.this.sliceStride * i11;
                            for (int i13 = 0; i13 < FloatDST_3D.this.columns; i13++) {
                                for (int i14 = 0; i14 < FloatDST_3D.this.rows; i14++) {
                                    fArr2[i14] = fArr[(FloatDST_3D.this.rowStride * i14) + i12 + i13];
                                }
                                FloatDST_3D.this.dstRows.forward(fArr2, z);
                                for (int i15 = 0; i15 < FloatDST_3D.this.rows; i15++) {
                                    fArr[(FloatDST_3D.this.rowStride * i15) + i12 + i13] = fArr2[i15];
                                }
                            }
                        }
                    }
                });
                i8++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e3) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            int i11 = this.rows / numberOfThreads;
            while (i3 < numberOfThreads) {
                final int i12 = i3 * i11;
                final int i13 = i3 == numberOfThreads + (-1) ? this.rows : i12 + i11;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.3
                    @Override // java.lang.Runnable
                    public void run() {
                        float[] fArr2 = new float[FloatDST_3D.this.slices];
                        for (int i14 = i12; i14 < i13; i14++) {
                            int i15 = FloatDST_3D.this.rowStride * i14;
                            for (int i16 = 0; i16 < FloatDST_3D.this.columns; i16++) {
                                for (int i17 = 0; i17 < FloatDST_3D.this.slices; i17++) {
                                    fArr2[i17] = fArr[(FloatDST_3D.this.sliceStride * i17) + i15 + i16];
                                }
                                FloatDST_3D.this.dstSlices.forward(fArr2, z);
                                for (int i18 = 0; i18 < FloatDST_3D.this.slices; i18++) {
                                    fArr[(FloatDST_3D.this.sliceStride * i18) + i15 + i16] = fArr2[i18];
                                }
                            }
                        }
                    }
                });
                i3++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e5) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e5);
                return;
            } catch (ExecutionException e6) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e6);
                return;
            }
        }
        for (int i14 = 0; i14 < this.slices; i14++) {
            int i15 = this.sliceStride * i14;
            for (int i16 = 0; i16 < this.rows; i16++) {
                this.dstColumns.forward(fArr, (this.rowStride * i16) + i15, z);
            }
        }
        float[] fArr2 = new float[this.rows];
        int i17 = 0;
        while (true) {
            i = this.slices;
            if (i17 >= i) {
                break;
            }
            int i18 = this.sliceStride * i17;
            for (int i19 = 0; i19 < this.columns; i19++) {
                for (int i20 = 0; i20 < this.rows; i20++) {
                    fArr2[i20] = fArr[(this.rowStride * i20) + i18 + i19];
                }
                this.dstRows.forward(fArr2, z);
                for (int i21 = 0; i21 < this.rows; i21++) {
                    fArr[(this.rowStride * i21) + i18 + i19] = fArr2[i21];
                }
            }
            i17++;
        }
        float[] fArr3 = new float[i];
        for (int i22 = 0; i22 < this.rows; i22++) {
            int i23 = this.rowStride * i22;
            for (int i24 = 0; i24 < this.columns; i24++) {
                for (int i25 = 0; i25 < this.slices; i25++) {
                    fArr3[i25] = fArr[(this.sliceStride * i25) + i23 + i24];
                }
                this.dstSlices.forward(fArr3, z);
                for (int i26 = 0; i26 < this.slices; i26++) {
                    fArr[(this.sliceStride * i26) + i23 + i24] = fArr3[i26];
                }
            }
        }
    }

    public void forward(final FloatLargeArray floatLargeArray, final boolean z) {
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(-1, floatLargeArray, z);
                ddxt3db_subth(-1, floatLargeArray, z);
                return;
            }
            ddxt3da_sub(-1, floatLargeArray, z);
            ddxt3db_sub(-1, floatLargeArray, z);
            return;
        }
        if (numberOfThreads > 1 && this.useThreads) {
            long j = this.slicesl;
            long j2 = numberOfThreads;
            if (j >= j2 && this.rowsl >= j2 && this.columnsl >= j2) {
                Future[] futureArr = new Future[numberOfThreads];
                long j3 = j / j2;
                int i = 0;
                while (i < numberOfThreads) {
                    final long j4 = i * j3;
                    final long j5 = i == numberOfThreads + (-1) ? this.slicesl : j4 + j3;
                    futureArr[i] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.4
                        @Override // java.lang.Runnable
                        public void run() {
                            for (long j6 = j4; j6 < j5; j6++) {
                                long j7 = FloatDST_3D.this.sliceStridel * j6;
                                for (long j8 = 0; j8 < FloatDST_3D.this.rowsl; j8++) {
                                    FloatDST_3D.this.dstColumns.forward(floatLargeArray, (FloatDST_3D.this.rowStridel * j8) + j7, z);
                                }
                            }
                        }
                    });
                    i++;
                    j2 = j2;
                }
                long j6 = j2;
                String str = null;
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
                int i2 = 0;
                while (i2 < numberOfThreads) {
                    final long j7 = i2 * j3;
                    final long j8 = i2 == numberOfThreads + (-1) ? this.slicesl : j7 + j3;
                    futureArr[i2] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.5
                        @Override // java.lang.Runnable
                        public void run() {
                            FloatLargeArray floatLargeArray2 = new FloatLargeArray(FloatDST_3D.this.rowsl, false);
                            for (long j9 = j7; j9 < j8; j9++) {
                                long j10 = FloatDST_3D.this.sliceStridel * j9;
                                for (long j11 = 0; j11 < FloatDST_3D.this.columnsl; j11++) {
                                    for (long j12 = 0; j12 < FloatDST_3D.this.rowsl; j12++) {
                                        floatLargeArray2.setFloat(j12, floatLargeArray.getFloat((FloatDST_3D.this.rowStridel * j12) + j10 + j11));
                                    }
                                    FloatDST_3D.this.dstRows.forward(floatLargeArray2, z);
                                    for (long j13 = 0; j13 < FloatDST_3D.this.rowsl; j13++) {
                                        floatLargeArray.setFloat((FloatDST_3D.this.rowStridel * j13) + j10 + j11, floatLargeArray2.getFloat(j13));
                                    }
                                }
                            }
                        }
                    });
                    i2++;
                    str = str;
                }
                String str2 = str;
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e3) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e3);
                } catch (ExecutionException e4) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e4);
                }
                long j9 = this.rowsl / j6;
                int i3 = 0;
                while (i3 < numberOfThreads) {
                    final long j10 = i3 * j9;
                    final long j11 = i3 == numberOfThreads + (-1) ? this.rowsl : j10 + j9;
                    futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.6
                        @Override // java.lang.Runnable
                        public void run() {
                            FloatLargeArray floatLargeArray2 = new FloatLargeArray(FloatDST_3D.this.slicesl, false);
                            for (long j12 = j10; j12 < j11; j12++) {
                                long j13 = FloatDST_3D.this.rowStridel * j12;
                                for (long j14 = 0; j14 < FloatDST_3D.this.columnsl; j14++) {
                                    for (long j15 = 0; j15 < FloatDST_3D.this.slicesl; j15++) {
                                        floatLargeArray2.setFloat(j15, floatLargeArray.getFloat((FloatDST_3D.this.sliceStridel * j15) + j13 + j14));
                                    }
                                    FloatDST_3D.this.dstSlices.forward(floatLargeArray2, z);
                                    for (long j16 = 0; j16 < FloatDST_3D.this.slicesl; j16++) {
                                        floatLargeArray.setFloat((FloatDST_3D.this.sliceStridel * j16) + j13 + j14, floatLargeArray2.getFloat(j16));
                                    }
                                }
                            }
                        }
                    });
                    i3++;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                    return;
                } catch (InterruptedException e5) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e5);
                    return;
                } catch (ExecutionException e6) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e6);
                    return;
                }
            }
        }
        for (long j12 = 0; j12 < this.slicesl; j12++) {
            long j13 = this.sliceStridel * j12;
            for (long j14 = 0; j14 < this.rowsl; j14++) {
                this.dstColumns.forward(floatLargeArray, (this.rowStridel * j14) + j13, z);
            }
        }
        FloatLargeArray floatLargeArray2 = new FloatLargeArray(this.rowsl, false);
        for (long j15 = 0; j15 < this.slicesl; j15++) {
            long j16 = this.sliceStridel * j15;
            for (long j17 = 0; j17 < this.columnsl; j17++) {
                for (long j18 = 0; j18 < this.rowsl; j18++) {
                    floatLargeArray2.setFloat(j18, floatLargeArray.getFloat((this.rowStridel * j18) + j16 + j17));
                }
                this.dstRows.forward(floatLargeArray2, z);
                long j19 = 0;
                while (j19 < this.rowsl) {
                    floatLargeArray.setFloat((this.rowStridel * j19) + j16 + j17, floatLargeArray2.getFloat(j19));
                    j19++;
                    j16 = j16;
                }
            }
        }
        FloatLargeArray floatLargeArray3 = new FloatLargeArray(this.slicesl, false);
        for (long j20 = 0; j20 < this.rowsl; j20++) {
            long j21 = this.rowStridel * j20;
            for (long j22 = 0; j22 < this.columnsl; j22++) {
                for (long j23 = 0; j23 < this.slicesl; j23++) {
                    floatLargeArray3.setFloat(j23, floatLargeArray.getFloat((this.sliceStridel * j23) + j21 + j22));
                }
                this.dstSlices.forward(floatLargeArray3, z);
                long j24 = 0;
                while (j24 < this.slicesl) {
                    floatLargeArray.setFloat((this.sliceStridel * j24) + j21 + j22, floatLargeArray3.getFloat(j24));
                    j24++;
                    j21 = j21;
                }
            }
        }
    }

    public void forward(final float[][][] fArr, final boolean z) {
        int i;
        int i2;
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(-1, fArr, z);
                ddxt3db_subth(-1, fArr, z);
                return;
            }
            ddxt3da_sub(-1, fArr, z);
            ddxt3db_sub(-1, fArr, z);
            return;
        }
        int i3 = 0;
        if (numberOfThreads > 1 && this.useThreads && (i2 = this.slices) >= numberOfThreads && this.rows >= numberOfThreads && this.columns >= numberOfThreads) {
            Future[] futureArr = new Future[numberOfThreads];
            int i4 = i2 / numberOfThreads;
            int i5 = 0;
            while (i5 < numberOfThreads) {
                final int i6 = i5 * i4;
                final int i7 = i5 == numberOfThreads + (-1) ? this.slices : i6 + i4;
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.7
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i6; i8 < i7; i8++) {
                            for (int i9 = 0; i9 < FloatDST_3D.this.rows; i9++) {
                                FloatDST_3D.this.dstColumns.forward(fArr[i8][i9], z);
                            }
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            int i8 = 0;
            while (i8 < numberOfThreads) {
                final int i9 = i8 * i4;
                final int i10 = i8 == numberOfThreads + (-1) ? this.slices : i9 + i4;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.8
                    @Override // java.lang.Runnable
                    public void run() {
                        float[] fArr2 = new float[FloatDST_3D.this.rows];
                        for (int i11 = i9; i11 < i10; i11++) {
                            for (int i12 = 0; i12 < FloatDST_3D.this.columns; i12++) {
                                for (int i13 = 0; i13 < FloatDST_3D.this.rows; i13++) {
                                    fArr2[i13] = fArr[i11][i13][i12];
                                }
                                FloatDST_3D.this.dstRows.forward(fArr2, z);
                                for (int i14 = 0; i14 < FloatDST_3D.this.rows; i14++) {
                                    fArr[i11][i14][i12] = fArr2[i14];
                                }
                            }
                        }
                    }
                });
                i8++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e3) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            int i11 = this.rows / numberOfThreads;
            while (i3 < numberOfThreads) {
                final int i12 = i3 * i11;
                final int i13 = i3 == numberOfThreads + (-1) ? this.rows : i12 + i11;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.9
                    @Override // java.lang.Runnable
                    public void run() {
                        float[] fArr2 = new float[FloatDST_3D.this.slices];
                        for (int i14 = i12; i14 < i13; i14++) {
                            for (int i15 = 0; i15 < FloatDST_3D.this.columns; i15++) {
                                for (int i16 = 0; i16 < FloatDST_3D.this.slices; i16++) {
                                    fArr2[i16] = fArr[i16][i14][i15];
                                }
                                FloatDST_3D.this.dstSlices.forward(fArr2, z);
                                for (int i17 = 0; i17 < FloatDST_3D.this.slices; i17++) {
                                    fArr[i17][i14][i15] = fArr2[i17];
                                }
                            }
                        }
                    }
                });
                i3++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e5) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e5);
                return;
            } catch (ExecutionException e6) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e6);
                return;
            }
        }
        for (int i14 = 0; i14 < this.slices; i14++) {
            for (int i15 = 0; i15 < this.rows; i15++) {
                this.dstColumns.forward(fArr[i14][i15], z);
            }
        }
        float[] fArr2 = new float[this.rows];
        int i16 = 0;
        while (true) {
            i = this.slices;
            if (i16 >= i) {
                break;
            }
            for (int i17 = 0; i17 < this.columns; i17++) {
                for (int i18 = 0; i18 < this.rows; i18++) {
                    fArr2[i18] = fArr[i16][i18][i17];
                }
                this.dstRows.forward(fArr2, z);
                for (int i19 = 0; i19 < this.rows; i19++) {
                    fArr[i16][i19][i17] = fArr2[i19];
                }
            }
            i16++;
        }
        float[] fArr3 = new float[i];
        for (int i20 = 0; i20 < this.rows; i20++) {
            for (int i21 = 0; i21 < this.columns; i21++) {
                for (int i22 = 0; i22 < this.slices; i22++) {
                    fArr3[i22] = fArr[i22][i20][i21];
                }
                this.dstSlices.forward(fArr3, z);
                for (int i23 = 0; i23 < this.slices; i23++) {
                    fArr[i23][i20][i21] = fArr3[i23];
                }
            }
        }
    }

    public void inverse(final float[] fArr, final boolean z) {
        int i;
        int i2;
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(1, fArr, z);
                ddxt3db_subth(1, fArr, z);
                return;
            }
            ddxt3da_sub(1, fArr, z);
            ddxt3db_sub(1, fArr, z);
            return;
        }
        int i3 = 0;
        if (numberOfThreads > 1 && this.useThreads && (i2 = this.slices) >= numberOfThreads && this.rows >= numberOfThreads && this.columns >= numberOfThreads) {
            Future[] futureArr = new Future[numberOfThreads];
            int i4 = i2 / numberOfThreads;
            int i5 = 0;
            while (i5 < numberOfThreads) {
                final int i6 = i5 * i4;
                final int i7 = i5 == numberOfThreads + (-1) ? this.slices : i6 + i4;
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.10
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i6; i8 < i7; i8++) {
                            int i9 = FloatDST_3D.this.sliceStride * i8;
                            for (int i10 = 0; i10 < FloatDST_3D.this.rows; i10++) {
                                FloatDST_3D.this.dstColumns.inverse(fArr, (FloatDST_3D.this.rowStride * i10) + i9, z);
                            }
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            int i8 = 0;
            while (i8 < numberOfThreads) {
                final int i9 = i8 * i4;
                final int i10 = i8 == numberOfThreads + (-1) ? this.slices : i9 + i4;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.11
                    @Override // java.lang.Runnable
                    public void run() {
                        float[] fArr2 = new float[FloatDST_3D.this.rows];
                        for (int i11 = i9; i11 < i10; i11++) {
                            int i12 = FloatDST_3D.this.sliceStride * i11;
                            for (int i13 = 0; i13 < FloatDST_3D.this.columns; i13++) {
                                for (int i14 = 0; i14 < FloatDST_3D.this.rows; i14++) {
                                    fArr2[i14] = fArr[(FloatDST_3D.this.rowStride * i14) + i12 + i13];
                                }
                                FloatDST_3D.this.dstRows.inverse(fArr2, z);
                                for (int i15 = 0; i15 < FloatDST_3D.this.rows; i15++) {
                                    fArr[(FloatDST_3D.this.rowStride * i15) + i12 + i13] = fArr2[i15];
                                }
                            }
                        }
                    }
                });
                i8++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e3) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            int i11 = this.rows / numberOfThreads;
            while (i3 < numberOfThreads) {
                final int i12 = i3 * i11;
                final int i13 = i3 == numberOfThreads + (-1) ? this.rows : i12 + i11;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.12
                    @Override // java.lang.Runnable
                    public void run() {
                        float[] fArr2 = new float[FloatDST_3D.this.slices];
                        for (int i14 = i12; i14 < i13; i14++) {
                            int i15 = FloatDST_3D.this.rowStride * i14;
                            for (int i16 = 0; i16 < FloatDST_3D.this.columns; i16++) {
                                for (int i17 = 0; i17 < FloatDST_3D.this.slices; i17++) {
                                    fArr2[i17] = fArr[(FloatDST_3D.this.sliceStride * i17) + i15 + i16];
                                }
                                FloatDST_3D.this.dstSlices.inverse(fArr2, z);
                                for (int i18 = 0; i18 < FloatDST_3D.this.slices; i18++) {
                                    fArr[(FloatDST_3D.this.sliceStride * i18) + i15 + i16] = fArr2[i18];
                                }
                            }
                        }
                    }
                });
                i3++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e5) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e5);
                return;
            } catch (ExecutionException e6) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e6);
                return;
            }
        }
        for (int i14 = 0; i14 < this.slices; i14++) {
            int i15 = this.sliceStride * i14;
            for (int i16 = 0; i16 < this.rows; i16++) {
                this.dstColumns.inverse(fArr, (this.rowStride * i16) + i15, z);
            }
        }
        float[] fArr2 = new float[this.rows];
        int i17 = 0;
        while (true) {
            i = this.slices;
            if (i17 >= i) {
                break;
            }
            int i18 = this.sliceStride * i17;
            for (int i19 = 0; i19 < this.columns; i19++) {
                for (int i20 = 0; i20 < this.rows; i20++) {
                    fArr2[i20] = fArr[(this.rowStride * i20) + i18 + i19];
                }
                this.dstRows.inverse(fArr2, z);
                for (int i21 = 0; i21 < this.rows; i21++) {
                    fArr[(this.rowStride * i21) + i18 + i19] = fArr2[i21];
                }
            }
            i17++;
        }
        float[] fArr3 = new float[i];
        for (int i22 = 0; i22 < this.rows; i22++) {
            int i23 = this.rowStride * i22;
            for (int i24 = 0; i24 < this.columns; i24++) {
                for (int i25 = 0; i25 < this.slices; i25++) {
                    fArr3[i25] = fArr[(this.sliceStride * i25) + i23 + i24];
                }
                this.dstSlices.inverse(fArr3, z);
                for (int i26 = 0; i26 < this.slices; i26++) {
                    fArr[(this.sliceStride * i26) + i23 + i24] = fArr3[i26];
                }
            }
        }
    }

    public void inverse(final FloatLargeArray floatLargeArray, final boolean z) {
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(1, floatLargeArray, z);
                ddxt3db_subth(1, floatLargeArray, z);
                return;
            }
            ddxt3da_sub(1, floatLargeArray, z);
            ddxt3db_sub(1, floatLargeArray, z);
            return;
        }
        if (numberOfThreads > 1 && this.useThreads) {
            long j = this.slicesl;
            long j2 = numberOfThreads;
            if (j >= j2 && this.rowsl >= j2 && this.columnsl >= j2) {
                Future[] futureArr = new Future[numberOfThreads];
                long j3 = j / j2;
                int i = 0;
                while (i < numberOfThreads) {
                    final long j4 = i * j3;
                    final long j5 = i == numberOfThreads + (-1) ? this.slicesl : j4 + j3;
                    futureArr[i] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.13
                        @Override // java.lang.Runnable
                        public void run() {
                            for (long j6 = j4; j6 < j5; j6++) {
                                long j7 = FloatDST_3D.this.sliceStride * j6;
                                for (long j8 = 0; j8 < FloatDST_3D.this.rowsl; j8++) {
                                    FloatDST_3D.this.dstColumns.inverse(floatLargeArray, (FloatDST_3D.this.rowStride * j8) + j7, z);
                                }
                            }
                        }
                    });
                    i++;
                    j2 = j2;
                }
                long j6 = j2;
                String str = null;
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
                int i2 = 0;
                while (i2 < numberOfThreads) {
                    final long j7 = i2 * j3;
                    final long j8 = i2 == numberOfThreads + (-1) ? this.slicesl : j7 + j3;
                    futureArr[i2] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.14
                        @Override // java.lang.Runnable
                        public void run() {
                            FloatLargeArray floatLargeArray2 = new FloatLargeArray(FloatDST_3D.this.rowsl, false);
                            for (long j9 = j7; j9 < j8; j9++) {
                                long j10 = FloatDST_3D.this.sliceStride * j9;
                                for (long j11 = 0; j11 < FloatDST_3D.this.columnsl; j11++) {
                                    for (long j12 = 0; j12 < FloatDST_3D.this.rowsl; j12++) {
                                        floatLargeArray2.setFloat(j12, floatLargeArray.getFloat((FloatDST_3D.this.rowStride * j12) + j10 + j11));
                                    }
                                    FloatDST_3D.this.dstRows.inverse(floatLargeArray2, z);
                                    for (long j13 = 0; j13 < FloatDST_3D.this.rowsl; j13++) {
                                        floatLargeArray.setFloat((FloatDST_3D.this.rowStride * j13) + j10 + j11, floatLargeArray2.getFloat(j13));
                                    }
                                }
                            }
                        }
                    });
                    i2++;
                    str = str;
                }
                String str2 = str;
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e3) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e3);
                } catch (ExecutionException e4) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e4);
                }
                long j9 = this.rowsl / j6;
                int i3 = 0;
                while (i3 < numberOfThreads) {
                    final long j10 = i3 * j9;
                    final long j11 = i3 == numberOfThreads + (-1) ? this.rowsl : j10 + j9;
                    futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.15
                        @Override // java.lang.Runnable
                        public void run() {
                            FloatLargeArray floatLargeArray2 = new FloatLargeArray(FloatDST_3D.this.slicesl, false);
                            for (long j12 = j10; j12 < j11; j12++) {
                                long j13 = FloatDST_3D.this.rowStride * j12;
                                for (long j14 = 0; j14 < FloatDST_3D.this.columnsl; j14++) {
                                    for (long j15 = 0; j15 < FloatDST_3D.this.slicesl; j15++) {
                                        floatLargeArray2.setFloat(j15, floatLargeArray.getFloat((FloatDST_3D.this.sliceStride * j15) + j13 + j14));
                                    }
                                    FloatDST_3D.this.dstSlices.inverse(floatLargeArray2, z);
                                    for (long j16 = 0; j16 < FloatDST_3D.this.slicesl; j16++) {
                                        floatLargeArray.setFloat((FloatDST_3D.this.sliceStride * j16) + j13 + j14, floatLargeArray2.getFloat(j16));
                                    }
                                }
                            }
                        }
                    });
                    i3++;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                    return;
                } catch (InterruptedException e5) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e5);
                    return;
                } catch (ExecutionException e6) {
                    Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e6);
                    return;
                }
            }
        }
        for (long j12 = 0; j12 < this.slicesl; j12++) {
            long j13 = this.sliceStride * j12;
            for (long j14 = 0; j14 < this.rowsl; j14++) {
                this.dstColumns.inverse(floatLargeArray, (this.rowStride * j14) + j13, z);
            }
        }
        FloatLargeArray floatLargeArray2 = new FloatLargeArray(this.rowsl, false);
        for (long j15 = 0; j15 < this.slicesl; j15++) {
            long j16 = this.sliceStride * j15;
            for (long j17 = 0; j17 < this.columnsl; j17++) {
                for (long j18 = 0; j18 < this.rowsl; j18++) {
                    floatLargeArray2.setFloat(j18, floatLargeArray.getFloat((this.rowStride * j18) + j16 + j17));
                }
                this.dstRows.inverse(floatLargeArray2, z);
                long j19 = 0;
                while (j19 < this.rowsl) {
                    floatLargeArray.setFloat((this.rowStride * j19) + j16 + j17, floatLargeArray2.getFloat(j19));
                    j19++;
                    j16 = j16;
                }
            }
        }
        FloatLargeArray floatLargeArray3 = new FloatLargeArray(this.slicesl, false);
        for (long j20 = 0; j20 < this.rowsl; j20++) {
            long j21 = this.rowStride * j20;
            for (long j22 = 0; j22 < this.columnsl; j22++) {
                for (long j23 = 0; j23 < this.slicesl; j23++) {
                    floatLargeArray3.setFloat(j23, floatLargeArray.getFloat((this.sliceStride * j23) + j21 + j22));
                }
                this.dstSlices.inverse(floatLargeArray3, z);
                long j24 = 0;
                while (j24 < this.slicesl) {
                    floatLargeArray.setFloat((this.sliceStride * j24) + j21 + j22, floatLargeArray3.getFloat(j24));
                    j24++;
                    j21 = j21;
                }
            }
        }
    }

    public void inverse(final float[][][] fArr, final boolean z) {
        int i;
        int i2;
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(1, fArr, z);
                ddxt3db_subth(1, fArr, z);
                return;
            }
            ddxt3da_sub(1, fArr, z);
            ddxt3db_sub(1, fArr, z);
            return;
        }
        int i3 = 0;
        if (numberOfThreads > 1 && this.useThreads && (i2 = this.slices) >= numberOfThreads && this.rows >= numberOfThreads && this.columns >= numberOfThreads) {
            Future[] futureArr = new Future[numberOfThreads];
            int i4 = i2 / numberOfThreads;
            int i5 = 0;
            while (i5 < numberOfThreads) {
                final int i6 = i5 * i4;
                final int i7 = i5 == numberOfThreads + (-1) ? this.slices : i6 + i4;
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.16
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i6; i8 < i7; i8++) {
                            for (int i9 = 0; i9 < FloatDST_3D.this.rows; i9++) {
                                FloatDST_3D.this.dstColumns.inverse(fArr[i8][i9], z);
                            }
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            int i8 = 0;
            while (i8 < numberOfThreads) {
                final int i9 = i8 * i4;
                final int i10 = i8 == numberOfThreads + (-1) ? this.slices : i9 + i4;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.17
                    @Override // java.lang.Runnable
                    public void run() {
                        float[] fArr2 = new float[FloatDST_3D.this.rows];
                        for (int i11 = i9; i11 < i10; i11++) {
                            for (int i12 = 0; i12 < FloatDST_3D.this.columns; i12++) {
                                for (int i13 = 0; i13 < FloatDST_3D.this.rows; i13++) {
                                    fArr2[i13] = fArr[i11][i13][i12];
                                }
                                FloatDST_3D.this.dstRows.inverse(fArr2, z);
                                for (int i14 = 0; i14 < FloatDST_3D.this.rows; i14++) {
                                    fArr[i11][i14][i12] = fArr2[i14];
                                }
                            }
                        }
                    }
                });
                i8++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e3) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            int i11 = this.rows / numberOfThreads;
            while (i3 < numberOfThreads) {
                final int i12 = i3 * i11;
                final int i13 = i3 == numberOfThreads + (-1) ? this.rows : i12 + i11;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.18
                    @Override // java.lang.Runnable
                    public void run() {
                        float[] fArr2 = new float[FloatDST_3D.this.slices];
                        for (int i14 = i12; i14 < i13; i14++) {
                            for (int i15 = 0; i15 < FloatDST_3D.this.columns; i15++) {
                                for (int i16 = 0; i16 < FloatDST_3D.this.slices; i16++) {
                                    fArr2[i16] = fArr[i16][i14][i15];
                                }
                                FloatDST_3D.this.dstSlices.inverse(fArr2, z);
                                for (int i17 = 0; i17 < FloatDST_3D.this.slices; i17++) {
                                    fArr[i17][i14][i15] = fArr2[i17];
                                }
                            }
                        }
                    }
                });
                i3++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
                return;
            } catch (InterruptedException e5) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e5);
                return;
            } catch (ExecutionException e6) {
                Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e6);
                return;
            }
        }
        for (int i14 = 0; i14 < this.slices; i14++) {
            for (int i15 = 0; i15 < this.rows; i15++) {
                this.dstColumns.inverse(fArr[i14][i15], z);
            }
        }
        float[] fArr2 = new float[this.rows];
        int i16 = 0;
        while (true) {
            i = this.slices;
            if (i16 >= i) {
                break;
            }
            for (int i17 = 0; i17 < this.columns; i17++) {
                for (int i18 = 0; i18 < this.rows; i18++) {
                    fArr2[i18] = fArr[i16][i18][i17];
                }
                this.dstRows.inverse(fArr2, z);
                for (int i19 = 0; i19 < this.rows; i19++) {
                    fArr[i16][i19][i17] = fArr2[i19];
                }
            }
            i16++;
        }
        float[] fArr3 = new float[i];
        for (int i20 = 0; i20 < this.rows; i20++) {
            for (int i21 = 0; i21 < this.columns; i21++) {
                for (int i22 = 0; i22 < this.slices; i22++) {
                    fArr3[i22] = fArr[i22][i20][i21];
                }
                this.dstSlices.inverse(fArr3, z);
                for (int i23 = 0; i23 < this.slices; i23++) {
                    fArr[i23][i20][i21] = fArr3[i23];
                }
            }
        }
    }

    private void ddxt3da_sub(int i, float[] fArr, boolean z) {
        int i2 = this.rows * 4;
        if (this.columns == 2) {
            i2 >>= 1;
        }
        float[] fArr2 = new float[i2];
        if (i == -1) {
            for (int i3 = 0; i3 < this.slices; i3++) {
                int i4 = this.sliceStride * i3;
                for (int i5 = 0; i5 < this.rows; i5++) {
                    this.dstColumns.forward(fArr, (this.rowStride * i5) + i4, z);
                }
                int i6 = this.columns;
                if (i6 > 2) {
                    for (int i7 = 0; i7 < this.columns; i7 += 4) {
                        int i8 = 0;
                        while (true) {
                            int i9 = this.rows;
                            if (i8 >= i9) {
                                break;
                            }
                            int i10 = (this.rowStride * i8) + i4 + i7;
                            int i11 = i9 + i8;
                            fArr2[i8] = fArr[i10];
                            fArr2[i11] = fArr[i10 + 1];
                            fArr2[i11 + i9] = fArr[i10 + 2];
                            fArr2[i11 + (i9 * 2)] = fArr[i10 + 3];
                            i8++;
                        }
                        this.dstRows.forward(fArr2, 0, z);
                        this.dstRows.forward(fArr2, this.rows, z);
                        this.dstRows.forward(fArr2, this.rows * 2, z);
                        this.dstRows.forward(fArr2, this.rows * 3, z);
                        int i12 = 0;
                        while (true) {
                            int i13 = this.rows;
                            if (i12 < i13) {
                                int i14 = (this.rowStride * i12) + i4 + i7;
                                int i15 = i13 + i12;
                                fArr[i14] = fArr2[i12];
                                fArr[i14 + 1] = fArr2[i15];
                                fArr[i14 + 2] = fArr2[i15 + i13];
                                fArr[i14 + 3] = fArr2[i15 + (i13 * 2)];
                                i12++;
                            }
                        }
                    }
                } else if (i6 == 2) {
                    int i16 = 0;
                    while (true) {
                        int i17 = this.rows;
                        if (i16 >= i17) {
                            break;
                        }
                        int i18 = (this.rowStride * i16) + i4;
                        fArr2[i16] = fArr[i18];
                        fArr2[i17 + i16] = fArr[i18 + 1];
                        i16++;
                    }
                    this.dstRows.forward(fArr2, 0, z);
                    this.dstRows.forward(fArr2, this.rows, z);
                    int i19 = 0;
                    while (true) {
                        int i20 = this.rows;
                        if (i19 < i20) {
                            int i21 = (this.rowStride * i19) + i4;
                            fArr[i21] = fArr2[i19];
                            fArr[i21 + 1] = fArr2[i20 + i19];
                            i19++;
                        }
                    }
                }
            }
            return;
        }
        for (int i22 = 0; i22 < this.slices; i22++) {
            int i23 = this.sliceStride * i22;
            for (int i24 = 0; i24 < this.rows; i24++) {
                this.dstColumns.inverse(fArr, (this.rowStride * i24) + i23, z);
            }
            int i25 = this.columns;
            if (i25 > 2) {
                for (int i26 = 0; i26 < this.columns; i26 += 4) {
                    int i27 = 0;
                    while (true) {
                        int i28 = this.rows;
                        if (i27 >= i28) {
                            break;
                        }
                        int i29 = (this.rowStride * i27) + i23 + i26;
                        int i30 = i28 + i27;
                        fArr2[i27] = fArr[i29];
                        fArr2[i30] = fArr[i29 + 1];
                        fArr2[i30 + i28] = fArr[i29 + 2];
                        fArr2[i30 + (i28 * 2)] = fArr[i29 + 3];
                        i27++;
                    }
                    this.dstRows.inverse(fArr2, 0, z);
                    this.dstRows.inverse(fArr2, this.rows, z);
                    this.dstRows.inverse(fArr2, this.rows * 2, z);
                    this.dstRows.inverse(fArr2, this.rows * 3, z);
                    int i31 = 0;
                    while (true) {
                        int i32 = this.rows;
                        if (i31 < i32) {
                            int i33 = (this.rowStride * i31) + i23 + i26;
                            int i34 = i32 + i31;
                            fArr[i33] = fArr2[i31];
                            fArr[i33 + 1] = fArr2[i34];
                            fArr[i33 + 2] = fArr2[i34 + i32];
                            fArr[i33 + 3] = fArr2[i34 + (i32 * 2)];
                            i31++;
                        }
                    }
                }
            } else if (i25 == 2) {
                int i35 = 0;
                while (true) {
                    int i36 = this.rows;
                    if (i35 >= i36) {
                        break;
                    }
                    int i37 = (this.rowStride * i35) + i23;
                    fArr2[i35] = fArr[i37];
                    fArr2[i36 + i35] = fArr[i37 + 1];
                    i35++;
                }
                this.dstRows.inverse(fArr2, 0, z);
                this.dstRows.inverse(fArr2, this.rows, z);
                int i38 = 0;
                while (true) {
                    int i39 = this.rows;
                    if (i38 < i39) {
                        int i40 = (this.rowStride * i38) + i23;
                        fArr[i40] = fArr2[i38];
                        fArr[i40 + 1] = fArr2[i39 + i38];
                        i38++;
                    }
                }
            }
        }
    }

    private void ddxt3da_sub(int i, FloatLargeArray floatLargeArray, boolean z) {
        long j;
        boolean z2;
        long j2;
        boolean z3 = z;
        long j3 = this.rowsl * 4;
        long j4 = 2;
        if (this.columnsl == 2) {
            j3 >>= 1;
        }
        FloatLargeArray floatLargeArray2 = new FloatLargeArray(j3);
        if (i == -1) {
            long j5 = 0;
            while (j5 < this.slicesl) {
                long j6 = this.sliceStridel * j5;
                for (long j7 = 0; j7 < this.rowsl; j7++) {
                    this.dstColumns.forward(floatLargeArray, (this.rowStride * j7) + j6, z3);
                }
                long j8 = this.columnsl;
                if (j8 > j4) {
                    long j9 = 0;
                    while (j9 < this.columnsl) {
                        long j10 = 0;
                        while (true) {
                            long j11 = this.rowsl;
                            if (j10 >= j11) {
                                break;
                            }
                            long j12 = j5;
                            long j13 = (this.rowStridel * j10) + j6 + j9;
                            long j14 = j11 + j10;
                            floatLargeArray2.setFloat(j10, floatLargeArray.getFloat(j13));
                            floatLargeArray2.setFloat(j14, floatLargeArray.getFloat(j13 + 1));
                            floatLargeArray2.setFloat(this.rowsl + j14, floatLargeArray.getFloat(j13 + 2));
                            floatLargeArray2.setFloat(j14 + (this.rowsl * 2), floatLargeArray.getFloat(j13 + 3));
                            j10++;
                            j5 = j12;
                            j9 = j9;
                            j6 = j6;
                        }
                        long j15 = j5;
                        long j16 = j6;
                        long j17 = j9;
                        this.dstRows.forward(floatLargeArray2, 0L, z3);
                        this.dstRows.forward(floatLargeArray2, this.rowsl, z3);
                        this.dstRows.forward(floatLargeArray2, this.rowsl * 2, z3);
                        this.dstRows.forward(floatLargeArray2, this.rowsl * 3, z3);
                        long j18 = 0;
                        while (true) {
                            long j19 = this.rowsl;
                            if (j18 < j19) {
                                long j20 = j16 + (this.rowStridel * j18) + j17;
                                long j21 = j19 + j18;
                                floatLargeArray.setFloat(j20, floatLargeArray2.getFloat(j18));
                                floatLargeArray.setFloat(j20 + 1, floatLargeArray2.getFloat(j21));
                                floatLargeArray.setFloat(j20 + 2, floatLargeArray2.getFloat(this.rowsl + j21));
                                floatLargeArray.setFloat(j20 + 3, floatLargeArray2.getFloat(j21 + (this.rowsl * 2)));
                                j18++;
                            }
                        }
                        j9 = j17 + 4;
                        j5 = j15;
                        j6 = j16;
                    }
                    j2 = j5;
                } else {
                    j2 = j5;
                    if (j8 == j4) {
                        for (long j22 = 0; j22 < this.rowsl; j22++) {
                            long j23 = j6 + (this.rowStridel * j22);
                            floatLargeArray2.setFloat(j22, floatLargeArray.getFloat(j23));
                            floatLargeArray2.setFloat(this.rowsl + j22, floatLargeArray.getFloat(j23 + 1));
                        }
                        this.dstRows.forward(floatLargeArray2, 0L, z3);
                        this.dstRows.forward(floatLargeArray2, this.rowsl, z3);
                        for (long j24 = 0; j24 < this.rowsl; j24++) {
                            long j25 = j6 + (this.rowStridel * j24);
                            floatLargeArray.setFloat(j25, floatLargeArray2.getFloat(j24));
                            floatLargeArray.setFloat(j25 + 1, floatLargeArray2.getFloat(this.rowsl + j24));
                        }
                    }
                }
                j5 = j2 + 1;
                j4 = 2;
            }
            return;
        }
        long j26 = 0;
        while (j26 < this.slicesl) {
            long j27 = this.sliceStridel * j26;
            for (long j28 = 0; j28 < this.rowsl; j28++) {
                this.dstColumns.inverse(floatLargeArray, (this.rowStridel * j28) + j27, z3);
            }
            long j29 = this.columnsl;
            if (j29 > 2) {
                long j30 = 0;
                while (true) {
                    j = j26;
                    if (j30 >= this.columnsl) {
                        break;
                    }
                    long j31 = 0;
                    while (true) {
                        long j32 = this.rowsl;
                        if (j31 >= j32) {
                            break;
                        }
                        long j33 = (this.rowStridel * j31) + j27 + j30;
                        long j34 = j32 + j31;
                        floatLargeArray2.setFloat(j31, floatLargeArray.getFloat(j33));
                        floatLargeArray2.setFloat(j34, floatLargeArray.getFloat(j33 + 1));
                        floatLargeArray2.setFloat(this.rowsl + j34, floatLargeArray.getFloat(j33 + 2));
                        floatLargeArray2.setFloat(j34 + (this.rowsl * 2), floatLargeArray.getFloat(j33 + 3));
                        j31++;
                        j30 = j30;
                        j27 = j27;
                    }
                    long j35 = j27;
                    long j36 = j30;
                    this.dstRows.inverse(floatLargeArray2, 0L, z3);
                    this.dstRows.inverse(floatLargeArray2, this.rowsl, z3);
                    this.dstRows.inverse(floatLargeArray2, this.rowsl * 2, z3);
                    this.dstRows.inverse(floatLargeArray2, this.rowsl * 3, z3);
                    long j37 = 0;
                    while (true) {
                        long j38 = this.rowsl;
                        if (j37 < j38) {
                            long j39 = j35 + (this.rowStridel * j37) + j36;
                            long j40 = j38 + j37;
                            floatLargeArray.setFloat(j39, floatLargeArray2.getFloat(j37));
                            floatLargeArray.setFloat(j39 + 1, floatLargeArray2.getFloat(j40));
                            floatLargeArray.setFloat(j39 + 2, floatLargeArray2.getFloat(this.rowsl + j40));
                            floatLargeArray.setFloat(j39 + 3, floatLargeArray2.getFloat(j40 + (this.rowsl * 2)));
                            j37++;
                        }
                    }
                    j30 = j36 + 4;
                    z3 = z;
                    j26 = j;
                    j27 = j35;
                }
            } else {
                j = j26;
                if (j29 == 2) {
                    for (long j41 = 0; j41 < this.rowsl; j41++) {
                        long j42 = j27 + (this.rowStridel * j41);
                        floatLargeArray2.setFloat(j41, floatLargeArray.getFloat(j42));
                        floatLargeArray2.setFloat(this.rowsl + j41, floatLargeArray.getFloat(j42 + 1));
                    }
                    z2 = z;
                    this.dstRows.inverse(floatLargeArray2, 0L, z2);
                    this.dstRows.inverse(floatLargeArray2, this.rowsl, z2);
                    for (long j43 = 0; j43 < this.rowsl; j43++) {
                        long j44 = j27 + (this.rowStridel * j43);
                        floatLargeArray.setFloat(j44, floatLargeArray2.getFloat(j43));
                        floatLargeArray.setFloat(j44 + 1, floatLargeArray2.getFloat(this.rowsl + j43));
                    }
                    j26 = j + 1;
                    z3 = z2;
                }
            }
            z2 = z;
            j26 = j + 1;
            z3 = z2;
        }
    }

    private void ddxt3da_sub(int i, float[][][] fArr, boolean z) {
        int i2 = this.rows * 4;
        if (this.columns == 2) {
            i2 >>= 1;
        }
        float[] fArr2 = new float[i2];
        if (i == -1) {
            for (int i3 = 0; i3 < this.slices; i3++) {
                for (int i4 = 0; i4 < this.rows; i4++) {
                    this.dstColumns.forward(fArr[i3][i4], z);
                }
                int i5 = this.columns;
                if (i5 > 2) {
                    for (int i6 = 0; i6 < this.columns; i6 += 4) {
                        int i7 = 0;
                        while (true) {
                            int i8 = this.rows;
                            if (i7 >= i8) {
                                break;
                            }
                            int i9 = i8 + i7;
                            float[] fArr3 = fArr[i3][i7];
                            fArr2[i7] = fArr3[i6];
                            fArr2[i9] = fArr3[i6 + 1];
                            fArr2[i9 + i8] = fArr3[i6 + 2];
                            fArr2[i9 + (i8 * 2)] = fArr3[i6 + 3];
                            i7++;
                        }
                        this.dstRows.forward(fArr2, 0, z);
                        this.dstRows.forward(fArr2, this.rows, z);
                        this.dstRows.forward(fArr2, this.rows * 2, z);
                        this.dstRows.forward(fArr2, this.rows * 3, z);
                        int i10 = 0;
                        while (true) {
                            int i11 = this.rows;
                            if (i10 < i11) {
                                int i12 = i11 + i10;
                                float[] fArr4 = fArr[i3][i10];
                                fArr4[i6] = fArr2[i10];
                                fArr4[i6 + 1] = fArr2[i12];
                                fArr4[i6 + 2] = fArr2[i12 + i11];
                                fArr4[i6 + 3] = fArr2[i12 + (i11 * 2)];
                                i10++;
                            }
                        }
                    }
                } else if (i5 == 2) {
                    int i13 = 0;
                    while (true) {
                        int i14 = this.rows;
                        if (i13 >= i14) {
                            break;
                        }
                        float[] fArr5 = fArr[i3][i13];
                        fArr2[i13] = fArr5[0];
                        fArr2[i14 + i13] = fArr5[1];
                        i13++;
                    }
                    this.dstRows.forward(fArr2, 0, z);
                    this.dstRows.forward(fArr2, this.rows, z);
                    int i15 = 0;
                    while (true) {
                        int i16 = this.rows;
                        if (i15 < i16) {
                            float[] fArr6 = fArr[i3][i15];
                            fArr6[0] = fArr2[i15];
                            fArr6[1] = fArr2[i16 + i15];
                            i15++;
                        }
                    }
                }
            }
            return;
        }
        for (int i17 = 0; i17 < this.slices; i17++) {
            for (int i18 = 0; i18 < this.rows; i18++) {
                this.dstColumns.inverse(fArr[i17][i18], z);
            }
            int i19 = this.columns;
            if (i19 > 2) {
                for (int i20 = 0; i20 < this.columns; i20 += 4) {
                    int i21 = 0;
                    while (true) {
                        int i22 = this.rows;
                        if (i21 >= i22) {
                            break;
                        }
                        int i23 = i22 + i21;
                        float[] fArr7 = fArr[i17][i21];
                        fArr2[i21] = fArr7[i20];
                        fArr2[i23] = fArr7[i20 + 1];
                        fArr2[i23 + i22] = fArr7[i20 + 2];
                        fArr2[i23 + (i22 * 2)] = fArr7[i20 + 3];
                        i21++;
                    }
                    this.dstRows.inverse(fArr2, 0, z);
                    this.dstRows.inverse(fArr2, this.rows, z);
                    this.dstRows.inverse(fArr2, this.rows * 2, z);
                    this.dstRows.inverse(fArr2, this.rows * 3, z);
                    int i24 = 0;
                    while (true) {
                        int i25 = this.rows;
                        if (i24 < i25) {
                            int i26 = i25 + i24;
                            float[] fArr8 = fArr[i17][i24];
                            fArr8[i20] = fArr2[i24];
                            fArr8[i20 + 1] = fArr2[i26];
                            fArr8[i20 + 2] = fArr2[i26 + i25];
                            fArr8[i20 + 3] = fArr2[i26 + (i25 * 2)];
                            i24++;
                        }
                    }
                }
            } else if (i19 == 2) {
                int i27 = 0;
                while (true) {
                    int i28 = this.rows;
                    if (i27 >= i28) {
                        break;
                    }
                    float[] fArr9 = fArr[i17][i27];
                    fArr2[i27] = fArr9[0];
                    fArr2[i28 + i27] = fArr9[1];
                    i27++;
                }
                this.dstRows.inverse(fArr2, 0, z);
                this.dstRows.inverse(fArr2, this.rows, z);
                int i29 = 0;
                while (true) {
                    int i30 = this.rows;
                    if (i29 < i30) {
                        float[] fArr10 = fArr[i17][i29];
                        fArr10[0] = fArr2[i29];
                        fArr10[1] = fArr2[i30 + i29];
                        i29++;
                    }
                }
            }
        }
    }

    private void ddxt3db_sub(int i, float[] fArr, boolean z) {
        int i2 = this.slices * 4;
        int i3 = this.columns;
        if (i3 == 2) {
            i2 >>= 1;
        }
        float[] fArr2 = new float[i2];
        if (i == -1) {
            if (i3 <= 2) {
                if (i3 == 2) {
                    for (int i4 = 0; i4 < this.rows; i4++) {
                        int i5 = this.rowStride * i4;
                        int i6 = 0;
                        while (true) {
                            int i7 = this.slices;
                            if (i6 >= i7) {
                                break;
                            }
                            int i8 = (this.sliceStride * i6) + i5;
                            fArr2[i6] = fArr[i8];
                            fArr2[i7 + i6] = fArr[i8 + 1];
                            i6++;
                        }
                        this.dstSlices.forward(fArr2, 0, z);
                        this.dstSlices.forward(fArr2, this.slices, z);
                        int i9 = 0;
                        while (true) {
                            int i10 = this.slices;
                            if (i9 < i10) {
                                int i11 = (this.sliceStride * i9) + i5;
                                fArr[i11] = fArr2[i9];
                                fArr[i11 + 1] = fArr2[i10 + i9];
                                i9++;
                            }
                        }
                    }
                    return;
                }
                return;
            }
            for (int i12 = 0; i12 < this.rows; i12++) {
                int i13 = this.rowStride * i12;
                for (int i14 = 0; i14 < this.columns; i14 += 4) {
                    int i15 = 0;
                    while (true) {
                        int i16 = this.slices;
                        if (i15 >= i16) {
                            break;
                        }
                        int i17 = (this.sliceStride * i15) + i13 + i14;
                        int i18 = i16 + i15;
                        fArr2[i15] = fArr[i17];
                        fArr2[i18] = fArr[i17 + 1];
                        fArr2[i18 + i16] = fArr[i17 + 2];
                        fArr2[i18 + (i16 * 2)] = fArr[i17 + 3];
                        i15++;
                    }
                    this.dstSlices.forward(fArr2, 0, z);
                    this.dstSlices.forward(fArr2, this.slices, z);
                    this.dstSlices.forward(fArr2, this.slices * 2, z);
                    this.dstSlices.forward(fArr2, this.slices * 3, z);
                    int i19 = 0;
                    while (true) {
                        int i20 = this.slices;
                        if (i19 < i20) {
                            int i21 = (this.sliceStride * i19) + i13 + i14;
                            int i22 = i20 + i19;
                            fArr[i21] = fArr2[i19];
                            fArr[i21 + 1] = fArr2[i22];
                            fArr[i21 + 2] = fArr2[i22 + i20];
                            fArr[i21 + 3] = fArr2[i22 + (i20 * 2)];
                            i19++;
                        }
                    }
                }
            }
        } else if (i3 <= 2) {
            if (i3 == 2) {
                for (int i23 = 0; i23 < this.rows; i23++) {
                    int i24 = this.rowStride * i23;
                    int i25 = 0;
                    while (true) {
                        int i26 = this.slices;
                        if (i25 >= i26) {
                            break;
                        }
                        int i27 = (this.sliceStride * i25) + i24;
                        fArr2[i25] = fArr[i27];
                        fArr2[i26 + i25] = fArr[i27 + 1];
                        i25++;
                    }
                    this.dstSlices.inverse(fArr2, 0, z);
                    this.dstSlices.inverse(fArr2, this.slices, z);
                    int i28 = 0;
                    while (true) {
                        int i29 = this.slices;
                        if (i28 < i29) {
                            int i30 = (this.sliceStride * i28) + i24;
                            fArr[i30] = fArr2[i28];
                            fArr[i30 + 1] = fArr2[i29 + i28];
                            i28++;
                        }
                    }
                }
            }
        } else {
            for (int i31 = 0; i31 < this.rows; i31++) {
                int i32 = this.rowStride * i31;
                for (int i33 = 0; i33 < this.columns; i33 += 4) {
                    int i34 = 0;
                    while (true) {
                        int i35 = this.slices;
                        if (i34 >= i35) {
                            break;
                        }
                        int i36 = (this.sliceStride * i34) + i32 + i33;
                        int i37 = i35 + i34;
                        fArr2[i34] = fArr[i36];
                        fArr2[i37] = fArr[i36 + 1];
                        fArr2[i37 + i35] = fArr[i36 + 2];
                        fArr2[i37 + (i35 * 2)] = fArr[i36 + 3];
                        i34++;
                    }
                    this.dstSlices.inverse(fArr2, 0, z);
                    this.dstSlices.inverse(fArr2, this.slices, z);
                    this.dstSlices.inverse(fArr2, this.slices * 2, z);
                    this.dstSlices.inverse(fArr2, this.slices * 3, z);
                    int i38 = 0;
                    while (true) {
                        int i39 = this.slices;
                        if (i38 < i39) {
                            int i40 = (this.sliceStride * i38) + i32 + i33;
                            int i41 = i39 + i38;
                            fArr[i40] = fArr2[i38];
                            fArr[i40 + 1] = fArr2[i41];
                            fArr[i40 + 2] = fArr2[i41 + i39];
                            fArr[i40 + 3] = fArr2[i41 + (i39 * 2)];
                            i38++;
                        }
                    }
                }
            }
        }
    }

    private void ddxt3db_sub(int i, FloatLargeArray floatLargeArray, boolean z) {
        boolean z2 = z;
        long j = this.slicesl * 4;
        long j2 = 2;
        if (this.columnsl == 2) {
            j >>= 1;
        }
        FloatLargeArray floatLargeArray2 = new FloatLargeArray(j);
        if (i == -1) {
            long j3 = this.columnsl;
            if (j3 <= 2) {
                if (j3 == 2) {
                    for (long j4 = 0; j4 < this.rowsl; j4++) {
                        long j5 = this.rowStridel * j4;
                        for (long j6 = 0; j6 < this.slicesl; j6++) {
                            long j7 = (this.sliceStridel * j6) + j5;
                            floatLargeArray2.setFloat(j6, floatLargeArray.getFloat(j7));
                            floatLargeArray2.setFloat(this.slicesl + j6, floatLargeArray.getFloat(j7 + 1));
                        }
                        this.dstSlices.forward(floatLargeArray2, 0L, z2);
                        this.dstSlices.forward(floatLargeArray2, this.slicesl, z2);
                        for (long j8 = 0; j8 < this.slicesl; j8++) {
                            long j9 = (this.sliceStridel * j8) + j5;
                            floatLargeArray.setFloat(j9, floatLargeArray2.getFloat(j8));
                            floatLargeArray.setFloat(j9 + 1, floatLargeArray2.getFloat(this.slicesl + j8));
                        }
                    }
                    return;
                }
                return;
            }
            long j10 = 0;
            while (j10 < this.rowsl) {
                long j11 = this.rowStridel * j10;
                long j12 = 0;
                while (j12 < this.columnsl) {
                    long j13 = 0;
                    while (true) {
                        long j14 = this.slicesl;
                        if (j13 >= j14) {
                            break;
                        }
                        long j15 = (this.sliceStridel * j13) + j11 + j12;
                        long j16 = j14 + j13;
                        floatLargeArray2.setFloat(j13, floatLargeArray.getFloat(j15));
                        floatLargeArray2.setFloat(j16, floatLargeArray.getFloat(j15 + 1));
                        floatLargeArray2.setFloat(this.slicesl + j16, floatLargeArray.getFloat(j15 + 2));
                        floatLargeArray2.setFloat(j16 + (this.slicesl * 2), floatLargeArray.getFloat(j15 + 3));
                        j13++;
                        j10 = j10;
                        j11 = j11;
                    }
                    long j17 = j10;
                    long j18 = j11;
                    this.dstSlices.forward(floatLargeArray2, 0L, z2);
                    this.dstSlices.forward(floatLargeArray2, this.slicesl, z2);
                    this.dstSlices.forward(floatLargeArray2, this.slicesl * 2, z2);
                    this.dstSlices.forward(floatLargeArray2, this.slicesl * 3, z2);
                    long j19 = 0;
                    while (true) {
                        long j20 = this.slicesl;
                        if (j19 < j20) {
                            long j21 = (this.sliceStridel * j19) + j18 + j12;
                            long j22 = j20 + j19;
                            floatLargeArray.setFloat(j21, floatLargeArray2.getFloat(j19));
                            floatLargeArray.setFloat(j21 + 1, floatLargeArray2.getFloat(j22));
                            floatLargeArray.setFloat(j21 + 2, floatLargeArray2.getFloat(this.slicesl + j22));
                            floatLargeArray.setFloat(j21 + 3, floatLargeArray2.getFloat(j22 + (this.slicesl * 2)));
                            j19++;
                        }
                    }
                    j12 += 4;
                    j2 = 2;
                    j10 = j17;
                    j11 = j18;
                }
                j10++;
            }
            return;
        }
        long j23 = this.columnsl;
        if (j23 <= 2) {
            if (j23 == 2) {
                for (long j24 = 0; j24 < this.rowsl; j24++) {
                    long j25 = this.rowStridel * j24;
                    for (long j26 = 0; j26 < this.slicesl; j26++) {
                        long j27 = (this.sliceStridel * j26) + j25;
                        floatLargeArray2.setFloat(j26, floatLargeArray.getFloat(j27));
                        floatLargeArray2.setFloat(this.slicesl + j26, floatLargeArray.getFloat(j27 + 1));
                    }
                    this.dstSlices.inverse(floatLargeArray2, 0L, z);
                    this.dstSlices.inverse(floatLargeArray2, this.slicesl, z);
                    for (long j28 = 0; j28 < this.slicesl; j28++) {
                        long j29 = (this.sliceStridel * j28) + j25;
                        floatLargeArray.setFloat(j29, floatLargeArray2.getFloat(j28));
                        floatLargeArray.setFloat(j29 + 1, floatLargeArray2.getFloat(this.slicesl + j28));
                    }
                }
                return;
            }
            return;
        }
        long j30 = 0;
        while (j30 < this.rowsl) {
            long j31 = this.rowStridel * j30;
            long j32 = 0;
            while (j32 < this.columnsl) {
                long j33 = j30;
                long j34 = 0;
                while (true) {
                    long j35 = this.slicesl;
                    if (j34 >= j35) {
                        break;
                    }
                    long j36 = (this.sliceStridel * j34) + j31 + j32;
                    long j37 = j35 + j34;
                    floatLargeArray2.setFloat(j34, floatLargeArray.getFloat(j36));
                    floatLargeArray2.setFloat(j37, floatLargeArray.getFloat(j36 + 1));
                    floatLargeArray2.setFloat(this.slicesl + j37, floatLargeArray.getFloat(j36 + 2));
                    floatLargeArray2.setFloat(j37 + (this.slicesl * 2), floatLargeArray.getFloat(j36 + 3));
                    j34++;
                    j32 = j32;
                    j31 = j31;
                }
                long j38 = j31;
                long j39 = j32;
                this.dstSlices.inverse(floatLargeArray2, 0L, z2);
                this.dstSlices.inverse(floatLargeArray2, this.slicesl, z2);
                this.dstSlices.inverse(floatLargeArray2, this.slicesl * 2, z2);
                this.dstSlices.inverse(floatLargeArray2, this.slicesl * 3, z2);
                long j40 = 0;
                while (true) {
                    long j41 = this.slicesl;
                    if (j40 < j41) {
                        long j42 = (this.sliceStridel * j40) + j38 + j39;
                        long j43 = j41 + j40;
                        floatLargeArray.setFloat(j42, floatLargeArray2.getFloat(j40));
                        floatLargeArray.setFloat(j42 + 1, floatLargeArray2.getFloat(j43));
                        floatLargeArray.setFloat(j42 + 2, floatLargeArray2.getFloat(this.slicesl + j43));
                        floatLargeArray.setFloat(j42 + 3, floatLargeArray2.getFloat(j43 + (this.slicesl * 2)));
                        j40++;
                    }
                }
                j32 = j39 + 4;
                z2 = z;
                j30 = j33;
                j31 = j38;
            }
            z2 = z;
            j30++;
        }
    }

    private void ddxt3db_sub(int i, float[][][] fArr, boolean z) {
        int i2 = this.slices * 4;
        int i3 = this.columns;
        if (i3 == 2) {
            i2 >>= 1;
        }
        float[] fArr2 = new float[i2];
        if (i == -1) {
            if (i3 <= 2) {
                if (i3 == 2) {
                    for (int i4 = 0; i4 < this.rows; i4++) {
                        int i5 = 0;
                        while (true) {
                            int i6 = this.slices;
                            if (i5 >= i6) {
                                break;
                            }
                            float[] fArr3 = fArr[i5][i4];
                            fArr2[i5] = fArr3[0];
                            fArr2[i6 + i5] = fArr3[1];
                            i5++;
                        }
                        this.dstSlices.forward(fArr2, 0, z);
                        this.dstSlices.forward(fArr2, this.slices, z);
                        int i7 = 0;
                        while (true) {
                            int i8 = this.slices;
                            if (i7 < i8) {
                                float[] fArr4 = fArr[i7][i4];
                                fArr4[0] = fArr2[i7];
                                fArr4[1] = fArr2[i8 + i7];
                                i7++;
                            }
                        }
                    }
                    return;
                }
                return;
            }
            for (int i9 = 0; i9 < this.rows; i9++) {
                for (int i10 = 0; i10 < this.columns; i10 += 4) {
                    int i11 = 0;
                    while (true) {
                        int i12 = this.slices;
                        if (i11 >= i12) {
                            break;
                        }
                        int i13 = i12 + i11;
                        float[] fArr5 = fArr[i11][i9];
                        fArr2[i11] = fArr5[i10];
                        fArr2[i13] = fArr5[i10 + 1];
                        fArr2[i13 + i12] = fArr5[i10 + 2];
                        fArr2[i13 + (i12 * 2)] = fArr5[i10 + 3];
                        i11++;
                    }
                    this.dstSlices.forward(fArr2, 0, z);
                    this.dstSlices.forward(fArr2, this.slices, z);
                    this.dstSlices.forward(fArr2, this.slices * 2, z);
                    this.dstSlices.forward(fArr2, this.slices * 3, z);
                    int i14 = 0;
                    while (true) {
                        int i15 = this.slices;
                        if (i14 < i15) {
                            int i16 = i15 + i14;
                            float[] fArr6 = fArr[i14][i9];
                            fArr6[i10] = fArr2[i14];
                            fArr6[i10 + 1] = fArr2[i16];
                            fArr6[i10 + 2] = fArr2[i16 + i15];
                            fArr6[i10 + 3] = fArr2[i16 + (i15 * 2)];
                            i14++;
                        }
                    }
                }
            }
        } else if (i3 <= 2) {
            if (i3 == 2) {
                for (int i17 = 0; i17 < this.rows; i17++) {
                    int i18 = 0;
                    while (true) {
                        int i19 = this.slices;
                        if (i18 >= i19) {
                            break;
                        }
                        float[] fArr7 = fArr[i18][i17];
                        fArr2[i18] = fArr7[0];
                        fArr2[i19 + i18] = fArr7[1];
                        i18++;
                    }
                    this.dstSlices.inverse(fArr2, 0, z);
                    this.dstSlices.inverse(fArr2, this.slices, z);
                    int i20 = 0;
                    while (true) {
                        int i21 = this.slices;
                        if (i20 < i21) {
                            float[] fArr8 = fArr[i20][i17];
                            fArr8[0] = fArr2[i20];
                            fArr8[1] = fArr2[i21 + i20];
                            i20++;
                        }
                    }
                }
            }
        } else {
            for (int i22 = 0; i22 < this.rows; i22++) {
                for (int i23 = 0; i23 < this.columns; i23 += 4) {
                    int i24 = 0;
                    while (true) {
                        int i25 = this.slices;
                        if (i24 >= i25) {
                            break;
                        }
                        int i26 = i25 + i24;
                        float[] fArr9 = fArr[i24][i22];
                        fArr2[i24] = fArr9[i23];
                        fArr2[i26] = fArr9[i23 + 1];
                        fArr2[i26 + i25] = fArr9[i23 + 2];
                        fArr2[i26 + (i25 * 2)] = fArr9[i23 + 3];
                        i24++;
                    }
                    this.dstSlices.inverse(fArr2, 0, z);
                    this.dstSlices.inverse(fArr2, this.slices, z);
                    this.dstSlices.inverse(fArr2, this.slices * 2, z);
                    this.dstSlices.inverse(fArr2, this.slices * 3, z);
                    int i27 = 0;
                    while (true) {
                        int i28 = this.slices;
                        if (i27 < i28) {
                            int i29 = i28 + i27;
                            float[] fArr10 = fArr[i27][i22];
                            fArr10[i23] = fArr2[i27];
                            fArr10[i23 + 1] = fArr2[i29];
                            fArr10[i23 + 2] = fArr2[i29 + i28];
                            fArr10[i23 + 3] = fArr2[i29 + (i28 * 2)];
                            i27++;
                        }
                    }
                }
            }
        }
    }

    private void ddxt3da_subth(final int i, final float[] fArr, final boolean z) {
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        int i2 = this.slices;
        if (numberOfThreads <= i2) {
            i2 = ConcurrencyUtils.getNumberOfThreads();
        }
        final int i3 = i2;
        int i4 = this.rows * 4;
        if (this.columns == 2) {
            i4 >>= 1;
        }
        final int i5 = i4;
        Future[] futureArr = new Future[i3];
        for (int i6 = 0; i6 < i3; i6++) {
            final int i7 = i6;
            futureArr[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.19
                @Override // java.lang.Runnable
                public void run() {
                    float[] fArr2 = new float[i5];
                    if (i == -1) {
                        int i8 = i7;
                        while (i8 < FloatDST_3D.this.slices) {
                            int i9 = FloatDST_3D.this.sliceStride * i8;
                            for (int i10 = 0; i10 < FloatDST_3D.this.rows; i10++) {
                                FloatDST_3D.this.dstColumns.forward(fArr, (FloatDST_3D.this.rowStride * i10) + i9, z);
                            }
                            if (FloatDST_3D.this.columns > 2) {
                                for (int i11 = 0; i11 < FloatDST_3D.this.columns; i11 += 4) {
                                    for (int i12 = 0; i12 < FloatDST_3D.this.rows; i12++) {
                                        int i13 = (FloatDST_3D.this.rowStride * i12) + i9 + i11;
                                        int i14 = FloatDST_3D.this.rows + i12;
                                        float[] fArr3 = fArr;
                                        fArr2[i12] = fArr3[i13];
                                        fArr2[i14] = fArr3[i13 + 1];
                                        fArr2[FloatDST_3D.this.rows + i14] = fArr[i13 + 2];
                                        fArr2[i14 + (FloatDST_3D.this.rows * 2)] = fArr[i13 + 3];
                                    }
                                    FloatDST_3D.this.dstRows.forward(fArr2, 0, z);
                                    FloatDST_3D.this.dstRows.forward(fArr2, FloatDST_3D.this.rows, z);
                                    FloatDST_3D.this.dstRows.forward(fArr2, FloatDST_3D.this.rows * 2, z);
                                    FloatDST_3D.this.dstRows.forward(fArr2, FloatDST_3D.this.rows * 3, z);
                                    for (int i15 = 0; i15 < FloatDST_3D.this.rows; i15++) {
                                        int i16 = (FloatDST_3D.this.rowStride * i15) + i9 + i11;
                                        int i17 = FloatDST_3D.this.rows + i15;
                                        float[] fArr4 = fArr;
                                        fArr4[i16] = fArr2[i15];
                                        fArr4[i16 + 1] = fArr2[i17];
                                        fArr4[i16 + 2] = fArr2[FloatDST_3D.this.rows + i17];
                                        fArr[i16 + 3] = fArr2[i17 + (FloatDST_3D.this.rows * 2)];
                                    }
                                }
                            } else if (FloatDST_3D.this.columns == 2) {
                                for (int i18 = 0; i18 < FloatDST_3D.this.rows; i18++) {
                                    int i19 = (FloatDST_3D.this.rowStride * i18) + i9;
                                    fArr2[i18] = fArr[i19];
                                    fArr2[FloatDST_3D.this.rows + i18] = fArr[i19 + 1];
                                }
                                FloatDST_3D.this.dstRows.forward(fArr2, 0, z);
                                FloatDST_3D.this.dstRows.forward(fArr2, FloatDST_3D.this.rows, z);
                                for (int i20 = 0; i20 < FloatDST_3D.this.rows; i20++) {
                                    int i21 = (FloatDST_3D.this.rowStride * i20) + i9;
                                    float[] fArr5 = fArr;
                                    fArr5[i21] = fArr2[i20];
                                    fArr5[i21 + 1] = fArr2[FloatDST_3D.this.rows + i20];
                                }
                            }
                            i8 += i3;
                        }
                        return;
                    }
                    int i22 = i7;
                    while (i22 < FloatDST_3D.this.slices) {
                        int i23 = FloatDST_3D.this.sliceStride * i22;
                        for (int i24 = 0; i24 < FloatDST_3D.this.rows; i24++) {
                            FloatDST_3D.this.dstColumns.inverse(fArr, (FloatDST_3D.this.rowStride * i24) + i23, z);
                        }
                        if (FloatDST_3D.this.columns > 2) {
                            for (int i25 = 0; i25 < FloatDST_3D.this.columns; i25 += 4) {
                                for (int i26 = 0; i26 < FloatDST_3D.this.rows; i26++) {
                                    int i27 = (FloatDST_3D.this.rowStride * i26) + i23 + i25;
                                    int i28 = FloatDST_3D.this.rows + i26;
                                    float[] fArr6 = fArr;
                                    fArr2[i26] = fArr6[i27];
                                    fArr2[i28] = fArr6[i27 + 1];
                                    fArr2[FloatDST_3D.this.rows + i28] = fArr[i27 + 2];
                                    fArr2[i28 + (FloatDST_3D.this.rows * 2)] = fArr[i27 + 3];
                                }
                                FloatDST_3D.this.dstRows.inverse(fArr2, 0, z);
                                FloatDST_3D.this.dstRows.inverse(fArr2, FloatDST_3D.this.rows, z);
                                FloatDST_3D.this.dstRows.inverse(fArr2, FloatDST_3D.this.rows * 2, z);
                                FloatDST_3D.this.dstRows.inverse(fArr2, FloatDST_3D.this.rows * 3, z);
                                for (int i29 = 0; i29 < FloatDST_3D.this.rows; i29++) {
                                    int i30 = (FloatDST_3D.this.rowStride * i29) + i23 + i25;
                                    int i31 = FloatDST_3D.this.rows + i29;
                                    float[] fArr7 = fArr;
                                    fArr7[i30] = fArr2[i29];
                                    fArr7[i30 + 1] = fArr2[i31];
                                    fArr7[i30 + 2] = fArr2[FloatDST_3D.this.rows + i31];
                                    fArr[i30 + 3] = fArr2[i31 + (FloatDST_3D.this.rows * 2)];
                                }
                            }
                        } else if (FloatDST_3D.this.columns == 2) {
                            for (int i32 = 0; i32 < FloatDST_3D.this.rows; i32++) {
                                int i33 = (FloatDST_3D.this.rowStride * i32) + i23;
                                fArr2[i32] = fArr[i33];
                                fArr2[FloatDST_3D.this.rows + i32] = fArr[i33 + 1];
                            }
                            FloatDST_3D.this.dstRows.inverse(fArr2, 0, z);
                            FloatDST_3D.this.dstRows.inverse(fArr2, FloatDST_3D.this.rows, z);
                            for (int i34 = 0; i34 < FloatDST_3D.this.rows; i34++) {
                                int i35 = (FloatDST_3D.this.rowStride * i34) + i23;
                                float[] fArr8 = fArr;
                                fArr8[i35] = fArr2[i34];
                                fArr8[i35 + 1] = fArr2[FloatDST_3D.this.rows + i34];
                            }
                        }
                        i22 += i3;
                    }
                }
            });
        }
        try {
            ConcurrencyUtils.waitForCompletion(futureArr);
        } catch (InterruptedException e) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3da_subth(final int i, final FloatLargeArray floatLargeArray, final boolean z) {
        long j = this.slicesl;
        if (ConcurrencyUtils.getNumberOfThreads() <= j) {
            j = ConcurrencyUtils.getNumberOfThreads();
        }
        final int i2 = (int) j;
        long j2 = this.rowsl * 4;
        if (this.columnsl == 2) {
            j2 >>= 1;
        }
        final long j3 = j2;
        Future[] futureArr = new Future[i2];
        int i3 = 0;
        while (i3 < i2) {
            final long j4 = i3;
            int i4 = i3;
            futureArr[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.20
                @Override // java.lang.Runnable
                public void run() {
                    long j5;
                    long j6;
                    FloatLargeArray floatLargeArray2 = new FloatLargeArray(j3);
                    long j7 = 2;
                    long j8 = 1;
                    if (i == -1) {
                        long j9 = j4;
                        while (j9 < FloatDST_3D.this.slicesl) {
                            long j10 = FloatDST_3D.this.sliceStridel * j9;
                            for (long j11 = 0; j11 < FloatDST_3D.this.rowsl; j11 += j8) {
                                FloatDST_3D.this.dstColumns.forward(floatLargeArray, (FloatDST_3D.this.rowStridel * j11) + j10, z);
                            }
                            if (FloatDST_3D.this.columnsl > j7) {
                                long j12 = 0;
                                while (j12 < FloatDST_3D.this.columnsl) {
                                    long j13 = 0;
                                    while (j13 < FloatDST_3D.this.rowsl) {
                                        long j14 = (FloatDST_3D.this.rowStridel * j13) + j10 + j12;
                                        long j15 = FloatDST_3D.this.rowsl + j13;
                                        floatLargeArray2.setFloat(j13, floatLargeArray.getFloat(j14));
                                        floatLargeArray2.setFloat(j15, floatLargeArray.getFloat(j14 + 1));
                                        floatLargeArray2.setFloat(FloatDST_3D.this.rowsl + j15, floatLargeArray.getFloat(j14 + 2));
                                        floatLargeArray2.setFloat(j15 + (FloatDST_3D.this.rowsl * 2), floatLargeArray.getFloat(j14 + 3));
                                        j13++;
                                        j9 = j9;
                                        j12 = j12;
                                    }
                                    long j16 = j9;
                                    long j17 = j12;
                                    FloatDST_3D.this.dstRows.forward(floatLargeArray2, 0L, z);
                                    FloatDST_3D.this.dstRows.forward(floatLargeArray2, FloatDST_3D.this.rowsl, z);
                                    FloatDST_3D.this.dstRows.forward(floatLargeArray2, FloatDST_3D.this.rowsl * 2, z);
                                    FloatDST_3D.this.dstRows.forward(floatLargeArray2, FloatDST_3D.this.rowsl * 3, z);
                                    for (long j18 = 0; j18 < FloatDST_3D.this.rowsl; j18++) {
                                        long j19 = (FloatDST_3D.this.rowStridel * j18) + j10 + j17;
                                        long j20 = FloatDST_3D.this.rowsl + j18;
                                        floatLargeArray.setFloat(j19, floatLargeArray2.getFloat(j18));
                                        floatLargeArray.setFloat(j19 + 1, floatLargeArray2.getFloat(j20));
                                        floatLargeArray.setFloat(j19 + 2, floatLargeArray2.getFloat(j20 + FloatDST_3D.this.rowsl));
                                        floatLargeArray.setFloat(j19 + 3, floatLargeArray2.getFloat(j20 + (FloatDST_3D.this.rowsl * 2)));
                                    }
                                    j12 = j17 + 4;
                                    j9 = j16;
                                }
                                j6 = j9;
                            } else {
                                j6 = j9;
                                if (FloatDST_3D.this.columnsl == j7) {
                                    for (long j21 = 0; j21 < FloatDST_3D.this.rowsl; j21++) {
                                        long j22 = (FloatDST_3D.this.rowStridel * j21) + j10;
                                        floatLargeArray2.setFloat(j21, floatLargeArray.getFloat(j22));
                                        floatLargeArray2.setFloat(FloatDST_3D.this.rowsl + j21, floatLargeArray.getFloat(j22 + 1));
                                    }
                                    FloatDST_3D.this.dstRows.forward(floatLargeArray2, 0L, z);
                                    FloatDST_3D.this.dstRows.forward(floatLargeArray2, FloatDST_3D.this.rowsl, z);
                                    for (long j23 = 0; j23 < FloatDST_3D.this.rowsl; j23++) {
                                        long j24 = (FloatDST_3D.this.rowStridel * j23) + j10;
                                        floatLargeArray.setFloat(j24, floatLargeArray2.getFloat(j23));
                                        floatLargeArray.setFloat(j24 + 1, floatLargeArray2.getFloat(FloatDST_3D.this.rowsl + j23));
                                    }
                                }
                            }
                            j9 = j6 + i2;
                            j7 = 2;
                            j8 = 1;
                        }
                        return;
                    }
                    long j25 = j4;
                    while (j25 < FloatDST_3D.this.slicesl) {
                        long j26 = FloatDST_3D.this.sliceStridel * j25;
                        for (long j27 = 0; j27 < FloatDST_3D.this.rowsl; j27++) {
                            FloatDST_3D.this.dstColumns.inverse(floatLargeArray, (FloatDST_3D.this.rowStridel * j27) + j26, z);
                        }
                        if (FloatDST_3D.this.columnsl > 2) {
                            long j28 = 0;
                            while (j28 < FloatDST_3D.this.columnsl) {
                                long j29 = 0;
                                while (j29 < FloatDST_3D.this.rowsl) {
                                    long j30 = (FloatDST_3D.this.rowStridel * j29) + j26 + j28;
                                    long j31 = FloatDST_3D.this.rowsl + j29;
                                    floatLargeArray2.setFloat(j29, floatLargeArray.getFloat(j30));
                                    floatLargeArray2.setFloat(j31, floatLargeArray.getFloat(j30 + 1));
                                    floatLargeArray2.setFloat(FloatDST_3D.this.rowsl + j31, floatLargeArray.getFloat(j30 + 2));
                                    floatLargeArray2.setFloat(j31 + (FloatDST_3D.this.rowsl * 2), floatLargeArray.getFloat(j30 + 3));
                                    j29++;
                                    j25 = j25;
                                    j28 = j28;
                                }
                                long j32 = j25;
                                long j33 = j28;
                                FloatDST_3D.this.dstRows.inverse(floatLargeArray2, 0L, z);
                                FloatDST_3D.this.dstRows.inverse(floatLargeArray2, FloatDST_3D.this.rowsl, z);
                                FloatDST_3D.this.dstRows.inverse(floatLargeArray2, FloatDST_3D.this.rowsl * 2, z);
                                FloatDST_3D.this.dstRows.inverse(floatLargeArray2, FloatDST_3D.this.rowsl * 3, z);
                                for (long j34 = 0; j34 < FloatDST_3D.this.rowsl; j34++) {
                                    long j35 = (FloatDST_3D.this.rowStridel * j34) + j26 + j33;
                                    long j36 = FloatDST_3D.this.rowsl + j34;
                                    floatLargeArray.setFloat(j35, floatLargeArray2.getFloat(j34));
                                    floatLargeArray.setFloat(j35 + 1, floatLargeArray2.getFloat(j36));
                                    floatLargeArray.setFloat(j35 + 2, floatLargeArray2.getFloat(j36 + FloatDST_3D.this.rowsl));
                                    floatLargeArray.setFloat(j35 + 3, floatLargeArray2.getFloat(j36 + (FloatDST_3D.this.rowsl * 2)));
                                }
                                j28 = j33 + 4;
                                j25 = j32;
                            }
                            j5 = j25;
                        } else {
                            j5 = j25;
                            if (FloatDST_3D.this.columnsl == 2) {
                                for (long j37 = 0; j37 < FloatDST_3D.this.rowsl; j37++) {
                                    long j38 = (FloatDST_3D.this.rowStridel * j37) + j26;
                                    floatLargeArray2.setFloat(j37, floatLargeArray.getFloat(j38));
                                    floatLargeArray2.setFloat(FloatDST_3D.this.rowsl + j37, floatLargeArray.getFloat(j38 + 1));
                                }
                                FloatDST_3D.this.dstRows.inverse(floatLargeArray2, 0L, z);
                                FloatDST_3D.this.dstRows.inverse(floatLargeArray2, FloatDST_3D.this.rowsl, z);
                                for (long j39 = 0; j39 < FloatDST_3D.this.rowsl; j39++) {
                                    long j40 = (FloatDST_3D.this.rowStridel * j39) + j26;
                                    floatLargeArray.setFloat(j40, floatLargeArray2.getFloat(j39));
                                    floatLargeArray.setFloat(j40 + 1, floatLargeArray2.getFloat(FloatDST_3D.this.rowsl + j39));
                                }
                            }
                        }
                        j25 = j5 + i2;
                    }
                }
            });
            i3 = i4 + 1;
        }
        try {
            ConcurrencyUtils.waitForCompletion(futureArr);
        } catch (InterruptedException e) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3da_subth(final int i, final float[][][] fArr, final boolean z) {
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        int i2 = this.slices;
        if (numberOfThreads <= i2) {
            i2 = ConcurrencyUtils.getNumberOfThreads();
        }
        final int i3 = i2;
        int i4 = this.rows * 4;
        if (this.columns == 2) {
            i4 >>= 1;
        }
        final int i5 = i4;
        Future[] futureArr = new Future[i3];
        for (int i6 = 0; i6 < i3; i6++) {
            final int i7 = i6;
            futureArr[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.21
                @Override // java.lang.Runnable
                public void run() {
                    float[] fArr2 = new float[i5];
                    if (i == -1) {
                        int i8 = i7;
                        while (i8 < FloatDST_3D.this.slices) {
                            for (int i9 = 0; i9 < FloatDST_3D.this.rows; i9++) {
                                FloatDST_3D.this.dstColumns.forward(fArr[i8][i9], z);
                            }
                            if (FloatDST_3D.this.columns > 2) {
                                for (int i10 = 0; i10 < FloatDST_3D.this.columns; i10 += 4) {
                                    for (int i11 = 0; i11 < FloatDST_3D.this.rows; i11++) {
                                        int i12 = FloatDST_3D.this.rows + i11;
                                        float[] fArr3 = fArr[i8][i11];
                                        fArr2[i11] = fArr3[i10];
                                        fArr2[i12] = fArr3[i10 + 1];
                                        fArr2[FloatDST_3D.this.rows + i12] = fArr[i8][i11][i10 + 2];
                                        fArr2[i12 + (FloatDST_3D.this.rows * 2)] = fArr[i8][i11][i10 + 3];
                                    }
                                    FloatDST_3D.this.dstRows.forward(fArr2, 0, z);
                                    FloatDST_3D.this.dstRows.forward(fArr2, FloatDST_3D.this.rows, z);
                                    FloatDST_3D.this.dstRows.forward(fArr2, FloatDST_3D.this.rows * 2, z);
                                    FloatDST_3D.this.dstRows.forward(fArr2, FloatDST_3D.this.rows * 3, z);
                                    for (int i13 = 0; i13 < FloatDST_3D.this.rows; i13++) {
                                        int i14 = FloatDST_3D.this.rows + i13;
                                        float[] fArr4 = fArr[i8][i13];
                                        fArr4[i10] = fArr2[i13];
                                        fArr4[i10 + 1] = fArr2[i14];
                                        fArr4[i10 + 2] = fArr2[FloatDST_3D.this.rows + i14];
                                        fArr[i8][i13][i10 + 3] = fArr2[i14 + (FloatDST_3D.this.rows * 2)];
                                    }
                                }
                            } else if (FloatDST_3D.this.columns == 2) {
                                for (int i15 = 0; i15 < FloatDST_3D.this.rows; i15++) {
                                    fArr2[i15] = fArr[i8][i15][0];
                                    fArr2[FloatDST_3D.this.rows + i15] = fArr[i8][i15][1];
                                }
                                FloatDST_3D.this.dstRows.forward(fArr2, 0, z);
                                FloatDST_3D.this.dstRows.forward(fArr2, FloatDST_3D.this.rows, z);
                                for (int i16 = 0; i16 < FloatDST_3D.this.rows; i16++) {
                                    float[] fArr5 = fArr[i8][i16];
                                    fArr5[0] = fArr2[i16];
                                    fArr5[1] = fArr2[FloatDST_3D.this.rows + i16];
                                }
                            }
                            i8 += i3;
                        }
                        return;
                    }
                    int i17 = i7;
                    while (i17 < FloatDST_3D.this.slices) {
                        for (int i18 = 0; i18 < FloatDST_3D.this.rows; i18++) {
                            FloatDST_3D.this.dstColumns.inverse(fArr[i17][i18], z);
                        }
                        if (FloatDST_3D.this.columns > 2) {
                            for (int i19 = 0; i19 < FloatDST_3D.this.columns; i19 += 4) {
                                for (int i20 = 0; i20 < FloatDST_3D.this.rows; i20++) {
                                    int i21 = FloatDST_3D.this.rows + i20;
                                    float[] fArr6 = fArr[i17][i20];
                                    fArr2[i20] = fArr6[i19];
                                    fArr2[i21] = fArr6[i19 + 1];
                                    fArr2[FloatDST_3D.this.rows + i21] = fArr[i17][i20][i19 + 2];
                                    fArr2[i21 + (FloatDST_3D.this.rows * 2)] = fArr[i17][i20][i19 + 3];
                                }
                                FloatDST_3D.this.dstRows.inverse(fArr2, 0, z);
                                FloatDST_3D.this.dstRows.inverse(fArr2, FloatDST_3D.this.rows, z);
                                FloatDST_3D.this.dstRows.inverse(fArr2, FloatDST_3D.this.rows * 2, z);
                                FloatDST_3D.this.dstRows.inverse(fArr2, FloatDST_3D.this.rows * 3, z);
                                for (int i22 = 0; i22 < FloatDST_3D.this.rows; i22++) {
                                    int i23 = FloatDST_3D.this.rows + i22;
                                    float[] fArr7 = fArr[i17][i22];
                                    fArr7[i19] = fArr2[i22];
                                    fArr7[i19 + 1] = fArr2[i23];
                                    fArr7[i19 + 2] = fArr2[FloatDST_3D.this.rows + i23];
                                    fArr[i17][i22][i19 + 3] = fArr2[i23 + (FloatDST_3D.this.rows * 2)];
                                }
                            }
                        } else if (FloatDST_3D.this.columns == 2) {
                            for (int i24 = 0; i24 < FloatDST_3D.this.rows; i24++) {
                                fArr2[i24] = fArr[i17][i24][0];
                                fArr2[FloatDST_3D.this.rows + i24] = fArr[i17][i24][1];
                            }
                            FloatDST_3D.this.dstRows.inverse(fArr2, 0, z);
                            FloatDST_3D.this.dstRows.inverse(fArr2, FloatDST_3D.this.rows, z);
                            for (int i25 = 0; i25 < FloatDST_3D.this.rows; i25++) {
                                float[] fArr8 = fArr[i17][i25];
                                fArr8[0] = fArr2[i25];
                                fArr8[1] = fArr2[FloatDST_3D.this.rows + i25];
                            }
                        }
                        i17 += i3;
                    }
                }
            });
        }
        try {
            ConcurrencyUtils.waitForCompletion(futureArr);
        } catch (InterruptedException e) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3db_subth(final int i, final float[] fArr, final boolean z) {
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        int i2 = this.rows;
        if (numberOfThreads <= i2) {
            i2 = ConcurrencyUtils.getNumberOfThreads();
        }
        final int i3 = i2;
        int i4 = this.slices * 4;
        if (this.columns == 2) {
            i4 >>= 1;
        }
        final int i5 = i4;
        Future[] futureArr = new Future[i3];
        for (int i6 = 0; i6 < i3; i6++) {
            final int i7 = i6;
            futureArr[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.22
                @Override // java.lang.Runnable
                public void run() {
                    float[] fArr2 = new float[i5];
                    if (i == -1) {
                        if (FloatDST_3D.this.columns <= 2) {
                            if (FloatDST_3D.this.columns == 2) {
                                int i8 = i7;
                                while (i8 < FloatDST_3D.this.rows) {
                                    int i9 = FloatDST_3D.this.rowStride * i8;
                                    for (int i10 = 0; i10 < FloatDST_3D.this.slices; i10++) {
                                        int i11 = (FloatDST_3D.this.sliceStride * i10) + i9;
                                        fArr2[i10] = fArr[i11];
                                        fArr2[FloatDST_3D.this.slices + i10] = fArr[i11 + 1];
                                    }
                                    FloatDST_3D.this.dstSlices.forward(fArr2, 0, z);
                                    FloatDST_3D.this.dstSlices.forward(fArr2, FloatDST_3D.this.slices, z);
                                    for (int i12 = 0; i12 < FloatDST_3D.this.slices; i12++) {
                                        int i13 = (FloatDST_3D.this.sliceStride * i12) + i9;
                                        float[] fArr3 = fArr;
                                        fArr3[i13] = fArr2[i12];
                                        fArr3[i13 + 1] = fArr2[FloatDST_3D.this.slices + i12];
                                    }
                                    i8 += i3;
                                }
                                return;
                            }
                            return;
                        }
                        int i14 = i7;
                        while (i14 < FloatDST_3D.this.rows) {
                            int i15 = FloatDST_3D.this.rowStride * i14;
                            for (int i16 = 0; i16 < FloatDST_3D.this.columns; i16 += 4) {
                                for (int i17 = 0; i17 < FloatDST_3D.this.slices; i17++) {
                                    int i18 = (FloatDST_3D.this.sliceStride * i17) + i15 + i16;
                                    int i19 = FloatDST_3D.this.slices + i17;
                                    float[] fArr4 = fArr;
                                    fArr2[i17] = fArr4[i18];
                                    fArr2[i19] = fArr4[i18 + 1];
                                    fArr2[FloatDST_3D.this.slices + i19] = fArr[i18 + 2];
                                    fArr2[i19 + (FloatDST_3D.this.slices * 2)] = fArr[i18 + 3];
                                }
                                FloatDST_3D.this.dstSlices.forward(fArr2, 0, z);
                                FloatDST_3D.this.dstSlices.forward(fArr2, FloatDST_3D.this.slices, z);
                                FloatDST_3D.this.dstSlices.forward(fArr2, FloatDST_3D.this.slices * 2, z);
                                FloatDST_3D.this.dstSlices.forward(fArr2, FloatDST_3D.this.slices * 3, z);
                                for (int i20 = 0; i20 < FloatDST_3D.this.slices; i20++) {
                                    int i21 = (FloatDST_3D.this.sliceStride * i20) + i15 + i16;
                                    int i22 = FloatDST_3D.this.slices + i20;
                                    float[] fArr5 = fArr;
                                    fArr5[i21] = fArr2[i20];
                                    fArr5[i21 + 1] = fArr2[i22];
                                    fArr5[i21 + 2] = fArr2[FloatDST_3D.this.slices + i22];
                                    fArr[i21 + 3] = fArr2[i22 + (FloatDST_3D.this.slices * 2)];
                                }
                            }
                            i14 += i3;
                        }
                    } else if (FloatDST_3D.this.columns <= 2) {
                        if (FloatDST_3D.this.columns == 2) {
                            int i23 = i7;
                            while (i23 < FloatDST_3D.this.rows) {
                                int i24 = FloatDST_3D.this.rowStride * i23;
                                for (int i25 = 0; i25 < FloatDST_3D.this.slices; i25++) {
                                    int i26 = (FloatDST_3D.this.sliceStride * i25) + i24;
                                    fArr2[i25] = fArr[i26];
                                    fArr2[FloatDST_3D.this.slices + i25] = fArr[i26 + 1];
                                }
                                FloatDST_3D.this.dstSlices.inverse(fArr2, 0, z);
                                FloatDST_3D.this.dstSlices.inverse(fArr2, FloatDST_3D.this.slices, z);
                                for (int i27 = 0; i27 < FloatDST_3D.this.slices; i27++) {
                                    int i28 = (FloatDST_3D.this.sliceStride * i27) + i24;
                                    float[] fArr6 = fArr;
                                    fArr6[i28] = fArr2[i27];
                                    fArr6[i28 + 1] = fArr2[FloatDST_3D.this.slices + i27];
                                }
                                i23 += i3;
                            }
                        }
                    } else {
                        int i29 = i7;
                        while (i29 < FloatDST_3D.this.rows) {
                            int i30 = FloatDST_3D.this.rowStride * i29;
                            for (int i31 = 0; i31 < FloatDST_3D.this.columns; i31 += 4) {
                                for (int i32 = 0; i32 < FloatDST_3D.this.slices; i32++) {
                                    int i33 = (FloatDST_3D.this.sliceStride * i32) + i30 + i31;
                                    int i34 = FloatDST_3D.this.slices + i32;
                                    float[] fArr7 = fArr;
                                    fArr2[i32] = fArr7[i33];
                                    fArr2[i34] = fArr7[i33 + 1];
                                    fArr2[FloatDST_3D.this.slices + i34] = fArr[i33 + 2];
                                    fArr2[i34 + (FloatDST_3D.this.slices * 2)] = fArr[i33 + 3];
                                }
                                FloatDST_3D.this.dstSlices.inverse(fArr2, 0, z);
                                FloatDST_3D.this.dstSlices.inverse(fArr2, FloatDST_3D.this.slices, z);
                                FloatDST_3D.this.dstSlices.inverse(fArr2, FloatDST_3D.this.slices * 2, z);
                                FloatDST_3D.this.dstSlices.inverse(fArr2, FloatDST_3D.this.slices * 3, z);
                                for (int i35 = 0; i35 < FloatDST_3D.this.slices; i35++) {
                                    int i36 = (FloatDST_3D.this.sliceStride * i35) + i30 + i31;
                                    int i37 = FloatDST_3D.this.slices + i35;
                                    float[] fArr8 = fArr;
                                    fArr8[i36] = fArr2[i35];
                                    fArr8[i36 + 1] = fArr2[i37];
                                    fArr8[i36 + 2] = fArr2[FloatDST_3D.this.slices + i37];
                                    fArr[i36 + 3] = fArr2[i37 + (FloatDST_3D.this.slices * 2)];
                                }
                            }
                            i29 += i3;
                        }
                    }
                }
            });
        }
        try {
            ConcurrencyUtils.waitForCompletion(futureArr);
        } catch (InterruptedException e) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3db_subth(final int i, final FloatLargeArray floatLargeArray, final boolean z) {
        long j = this.rowsl;
        if (ConcurrencyUtils.getNumberOfThreads() <= j) {
            j = ConcurrencyUtils.getNumberOfThreads();
        }
        final int i2 = (int) j;
        long j2 = this.slicesl * 4;
        if (this.columnsl == 2) {
            j2 >>= 1;
        }
        final long j3 = j2;
        Future[] futureArr = new Future[i2];
        int i3 = 0;
        while (i3 < i2) {
            final long j4 = i3;
            int i4 = i3;
            futureArr[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.23
                @Override // java.lang.Runnable
                public void run() {
                    FloatLargeArray floatLargeArray2 = new FloatLargeArray(j3);
                    long j5 = 1;
                    if (i == -1) {
                        if (FloatDST_3D.this.columnsl <= 2) {
                            if (FloatDST_3D.this.columnsl == 2) {
                                long j6 = j4;
                                while (j6 < FloatDST_3D.this.rowsl) {
                                    long j7 = FloatDST_3D.this.rowStridel * j6;
                                    for (long j8 = 0; j8 < FloatDST_3D.this.slicesl; j8++) {
                                        long j9 = (FloatDST_3D.this.sliceStridel * j8) + j7;
                                        floatLargeArray2.setFloat(j8, floatLargeArray.getFloat(j9));
                                        floatLargeArray2.setFloat(FloatDST_3D.this.slicesl + j8, floatLargeArray.getFloat(j9 + 1));
                                    }
                                    FloatDST_3D.this.dstSlices.forward(floatLargeArray2, 0L, z);
                                    FloatDST_3D.this.dstSlices.forward(floatLargeArray2, FloatDST_3D.this.slicesl, z);
                                    for (long j10 = 0; j10 < FloatDST_3D.this.slicesl; j10++) {
                                        long j11 = (FloatDST_3D.this.sliceStridel * j10) + j7;
                                        floatLargeArray.setFloat(j11, floatLargeArray2.getFloat(j10));
                                        floatLargeArray.setFloat(j11 + 1, floatLargeArray2.getFloat(FloatDST_3D.this.slicesl + j10));
                                    }
                                    j6 += i2;
                                }
                                return;
                            }
                            return;
                        }
                        long j12 = j4;
                        while (j12 < FloatDST_3D.this.rowsl) {
                            long j13 = FloatDST_3D.this.rowStridel * j12;
                            long j14 = 0;
                            while (j14 < FloatDST_3D.this.columnsl) {
                                long j15 = 0;
                                while (j15 < FloatDST_3D.this.slicesl) {
                                    long j16 = (FloatDST_3D.this.sliceStridel * j15) + j13 + j14;
                                    long j17 = FloatDST_3D.this.slicesl + j15;
                                    floatLargeArray2.setFloat(j15, floatLargeArray.getFloat(j16));
                                    floatLargeArray2.setFloat(j17, floatLargeArray.getFloat(j16 + j5));
                                    floatLargeArray2.setFloat(FloatDST_3D.this.slicesl + j17, floatLargeArray.getFloat(j16 + 2));
                                    floatLargeArray2.setFloat(j17 + (FloatDST_3D.this.slicesl * 2), floatLargeArray.getFloat(j16 + 3));
                                    j15++;
                                    j5 = 1;
                                    j12 = j12;
                                }
                                long j18 = j12;
                                FloatDST_3D.this.dstSlices.forward(floatLargeArray2, 0L, z);
                                FloatDST_3D.this.dstSlices.forward(floatLargeArray2, FloatDST_3D.this.slicesl, z);
                                FloatDST_3D.this.dstSlices.forward(floatLargeArray2, FloatDST_3D.this.slicesl * 2, z);
                                FloatDST_3D.this.dstSlices.forward(floatLargeArray2, FloatDST_3D.this.slicesl * 3, z);
                                for (long j19 = 0; j19 < FloatDST_3D.this.slicesl; j19++) {
                                    long j20 = (FloatDST_3D.this.sliceStridel * j19) + j13 + j14;
                                    long j21 = FloatDST_3D.this.slicesl + j19;
                                    floatLargeArray.setFloat(j20, floatLargeArray2.getFloat(j19));
                                    floatLargeArray.setFloat(j20 + 1, floatLargeArray2.getFloat(j21));
                                    floatLargeArray.setFloat(j20 + 2, floatLargeArray2.getFloat(j21 + FloatDST_3D.this.slicesl));
                                    floatLargeArray.setFloat(j20 + 3, floatLargeArray2.getFloat(j21 + (FloatDST_3D.this.slicesl * 2)));
                                }
                                j14 += 4;
                                j12 = j18;
                                j5 = 1;
                            }
                            j12 += i2;
                            j5 = 1;
                        }
                    } else if (FloatDST_3D.this.columnsl <= 2) {
                        if (FloatDST_3D.this.columnsl == 2) {
                            long j22 = j4;
                            while (j22 < FloatDST_3D.this.rowsl) {
                                long j23 = FloatDST_3D.this.rowStridel * j22;
                                for (long j24 = 0; j24 < FloatDST_3D.this.slicesl; j24++) {
                                    long j25 = (FloatDST_3D.this.sliceStridel * j24) + j23;
                                    floatLargeArray2.setFloat(j24, floatLargeArray.getFloat(j25));
                                    floatLargeArray2.setFloat(FloatDST_3D.this.slicesl + j24, floatLargeArray.getFloat(j25 + 1));
                                }
                                FloatDST_3D.this.dstSlices.inverse(floatLargeArray2, 0L, z);
                                FloatDST_3D.this.dstSlices.inverse(floatLargeArray2, FloatDST_3D.this.slicesl, z);
                                for (long j26 = 0; j26 < FloatDST_3D.this.slicesl; j26++) {
                                    long j27 = (FloatDST_3D.this.sliceStridel * j26) + j23;
                                    floatLargeArray.setFloat(j27, floatLargeArray2.getFloat(j26));
                                    floatLargeArray.setFloat(j27 + 1, floatLargeArray2.getFloat(FloatDST_3D.this.slicesl + j26));
                                }
                                j22 += i2;
                            }
                        }
                    } else {
                        long j28 = j4;
                        while (j28 < FloatDST_3D.this.rowsl) {
                            long j29 = FloatDST_3D.this.rowStridel * j28;
                            long j30 = 0;
                            while (j30 < FloatDST_3D.this.columnsl) {
                                long j31 = 0;
                                while (j31 < FloatDST_3D.this.slicesl) {
                                    long j32 = (FloatDST_3D.this.sliceStridel * j31) + j29 + j30;
                                    long j33 = FloatDST_3D.this.slicesl + j31;
                                    floatLargeArray2.setFloat(j31, floatLargeArray.getFloat(j32));
                                    floatLargeArray2.setFloat(j33, floatLargeArray.getFloat(j32 + 1));
                                    floatLargeArray2.setFloat(FloatDST_3D.this.slicesl + j33, floatLargeArray.getFloat(j32 + 2));
                                    floatLargeArray2.setFloat(j33 + (FloatDST_3D.this.slicesl * 2), floatLargeArray.getFloat(j32 + 3));
                                    j31++;
                                    j28 = j28;
                                    j30 = j30;
                                }
                                long j34 = j28;
                                long j35 = j30;
                                FloatDST_3D.this.dstSlices.inverse(floatLargeArray2, 0L, z);
                                FloatDST_3D.this.dstSlices.inverse(floatLargeArray2, FloatDST_3D.this.slicesl, z);
                                FloatDST_3D.this.dstSlices.inverse(floatLargeArray2, FloatDST_3D.this.slicesl * 2, z);
                                FloatDST_3D.this.dstSlices.inverse(floatLargeArray2, FloatDST_3D.this.slicesl * 3, z);
                                for (long j36 = 0; j36 < FloatDST_3D.this.slicesl; j36++) {
                                    long j37 = (FloatDST_3D.this.sliceStridel * j36) + j29 + j35;
                                    long j38 = FloatDST_3D.this.slicesl + j36;
                                    floatLargeArray.setFloat(j37, floatLargeArray2.getFloat(j36));
                                    floatLargeArray.setFloat(j37 + 1, floatLargeArray2.getFloat(j38));
                                    floatLargeArray.setFloat(j37 + 2, floatLargeArray2.getFloat(j38 + FloatDST_3D.this.slicesl));
                                    floatLargeArray.setFloat(j37 + 3, floatLargeArray2.getFloat(j38 + (FloatDST_3D.this.slicesl * 2)));
                                }
                                j30 = j35 + 4;
                                j28 = j34;
                            }
                            j28 += i2;
                        }
                    }
                }
            });
            i3 = i4 + 1;
        }
        try {
            ConcurrencyUtils.waitForCompletion(futureArr);
        } catch (InterruptedException e) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3db_subth(final int i, final float[][][] fArr, final boolean z) {
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        int i2 = this.rows;
        if (numberOfThreads <= i2) {
            i2 = ConcurrencyUtils.getNumberOfThreads();
        }
        final int i3 = i2;
        int i4 = this.slices * 4;
        if (this.columns == 2) {
            i4 >>= 1;
        }
        final int i5 = i4;
        Future[] futureArr = new Future[i3];
        for (int i6 = 0; i6 < i3; i6++) {
            final int i7 = i6;
            futureArr[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dst.FloatDST_3D.24
                @Override // java.lang.Runnable
                public void run() {
                    float[] fArr2 = new float[i5];
                    if (i == -1) {
                        if (FloatDST_3D.this.columns <= 2) {
                            if (FloatDST_3D.this.columns == 2) {
                                int i8 = i7;
                                while (i8 < FloatDST_3D.this.rows) {
                                    for (int i9 = 0; i9 < FloatDST_3D.this.slices; i9++) {
                                        fArr2[i9] = fArr[i9][i8][0];
                                        fArr2[FloatDST_3D.this.slices + i9] = fArr[i9][i8][1];
                                    }
                                    FloatDST_3D.this.dstSlices.forward(fArr2, 0, z);
                                    FloatDST_3D.this.dstSlices.forward(fArr2, FloatDST_3D.this.slices, z);
                                    for (int i10 = 0; i10 < FloatDST_3D.this.slices; i10++) {
                                        float[] fArr3 = fArr[i10][i8];
                                        fArr3[0] = fArr2[i10];
                                        fArr3[1] = fArr2[FloatDST_3D.this.slices + i10];
                                    }
                                    i8 += i3;
                                }
                                return;
                            }
                            return;
                        }
                        int i11 = i7;
                        while (i11 < FloatDST_3D.this.rows) {
                            for (int i12 = 0; i12 < FloatDST_3D.this.columns; i12 += 4) {
                                for (int i13 = 0; i13 < FloatDST_3D.this.slices; i13++) {
                                    int i14 = FloatDST_3D.this.slices + i13;
                                    float[] fArr4 = fArr[i13][i11];
                                    fArr2[i13] = fArr4[i12];
                                    fArr2[i14] = fArr4[i12 + 1];
                                    fArr2[FloatDST_3D.this.slices + i14] = fArr[i13][i11][i12 + 2];
                                    fArr2[i14 + (FloatDST_3D.this.slices * 2)] = fArr[i13][i11][i12 + 3];
                                }
                                FloatDST_3D.this.dstSlices.forward(fArr2, 0, z);
                                FloatDST_3D.this.dstSlices.forward(fArr2, FloatDST_3D.this.slices, z);
                                FloatDST_3D.this.dstSlices.forward(fArr2, FloatDST_3D.this.slices * 2, z);
                                FloatDST_3D.this.dstSlices.forward(fArr2, FloatDST_3D.this.slices * 3, z);
                                for (int i15 = 0; i15 < FloatDST_3D.this.slices; i15++) {
                                    int i16 = FloatDST_3D.this.slices + i15;
                                    float[] fArr5 = fArr[i15][i11];
                                    fArr5[i12] = fArr2[i15];
                                    fArr5[i12 + 1] = fArr2[i16];
                                    fArr5[i12 + 2] = fArr2[FloatDST_3D.this.slices + i16];
                                    fArr[i15][i11][i12 + 3] = fArr2[i16 + (FloatDST_3D.this.slices * 2)];
                                }
                            }
                            i11 += i3;
                        }
                    } else if (FloatDST_3D.this.columns <= 2) {
                        if (FloatDST_3D.this.columns == 2) {
                            int i17 = i7;
                            while (i17 < FloatDST_3D.this.rows) {
                                for (int i18 = 0; i18 < FloatDST_3D.this.slices; i18++) {
                                    fArr2[i18] = fArr[i18][i17][0];
                                    fArr2[FloatDST_3D.this.slices + i18] = fArr[i18][i17][1];
                                }
                                FloatDST_3D.this.dstSlices.inverse(fArr2, 0, z);
                                FloatDST_3D.this.dstSlices.inverse(fArr2, FloatDST_3D.this.slices, z);
                                for (int i19 = 0; i19 < FloatDST_3D.this.slices; i19++) {
                                    float[] fArr6 = fArr[i19][i17];
                                    fArr6[0] = fArr2[i19];
                                    fArr6[1] = fArr2[FloatDST_3D.this.slices + i19];
                                }
                                i17 += i3;
                            }
                        }
                    } else {
                        int i20 = i7;
                        while (i20 < FloatDST_3D.this.rows) {
                            for (int i21 = 0; i21 < FloatDST_3D.this.columns; i21 += 4) {
                                for (int i22 = 0; i22 < FloatDST_3D.this.slices; i22++) {
                                    int i23 = FloatDST_3D.this.slices + i22;
                                    float[] fArr7 = fArr[i22][i20];
                                    fArr2[i22] = fArr7[i21];
                                    fArr2[i23] = fArr7[i21 + 1];
                                    fArr2[FloatDST_3D.this.slices + i23] = fArr[i22][i20][i21 + 2];
                                    fArr2[i23 + (FloatDST_3D.this.slices * 2)] = fArr[i22][i20][i21 + 3];
                                }
                                FloatDST_3D.this.dstSlices.inverse(fArr2, 0, z);
                                FloatDST_3D.this.dstSlices.inverse(fArr2, FloatDST_3D.this.slices, z);
                                FloatDST_3D.this.dstSlices.inverse(fArr2, FloatDST_3D.this.slices * 2, z);
                                FloatDST_3D.this.dstSlices.inverse(fArr2, FloatDST_3D.this.slices * 3, z);
                                for (int i24 = 0; i24 < FloatDST_3D.this.slices; i24++) {
                                    int i25 = FloatDST_3D.this.slices + i24;
                                    float[] fArr8 = fArr[i24][i20];
                                    fArr8[i21] = fArr2[i24];
                                    fArr8[i21 + 1] = fArr2[i25];
                                    fArr8[i21 + 2] = fArr2[FloatDST_3D.this.slices + i25];
                                    fArr[i24][i20][i21 + 3] = fArr2[i25 + (FloatDST_3D.this.slices * 2)];
                                }
                            }
                            i20 += i3;
                        }
                    }
                }
            });
        }
        try {
            ConcurrencyUtils.waitForCompletion(futureArr);
        } catch (InterruptedException e) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(FloatDST_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }
}
