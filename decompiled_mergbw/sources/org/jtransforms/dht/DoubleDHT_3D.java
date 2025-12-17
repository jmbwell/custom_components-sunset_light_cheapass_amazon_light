package org.jtransforms.dht;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jtransforms.utils.CommonUtils;
import pl.edu.icm.jlargearrays.ConcurrencyUtils;
import pl.edu.icm.jlargearrays.DoubleLargeArray;
import pl.edu.icm.jlargearrays.LargeArray;
/* loaded from: classes5.dex */
public class DoubleDHT_3D {
    private int columns;
    private long columnsl;
    private DoubleDHT_1D dhtColumns;
    private DoubleDHT_1D dhtRows;
    private DoubleDHT_1D dhtSlices;
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

    public DoubleDHT_3D(long j, long j2, long j3) {
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
        DoubleDHT_1D doubleDHT_1D = new DoubleDHT_1D(j);
        this.dhtSlices = doubleDHT_1D;
        if (j == j2) {
            this.dhtRows = doubleDHT_1D;
        } else {
            this.dhtRows = new DoubleDHT_1D(j2);
        }
        if (j == j3) {
            this.dhtColumns = this.dhtSlices;
        } else if (j2 == j3) {
            this.dhtColumns = this.dhtRows;
        } else {
            this.dhtColumns = new DoubleDHT_1D(j3);
        }
    }

    public void forward(final double[] dArr) {
        int i;
        int i2;
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(-1, dArr, true);
                ddxt3db_subth(-1, dArr, true);
            } else {
                ddxt3da_sub(-1, dArr, true);
                ddxt3db_sub(-1, dArr, true);
            }
            yTransform(dArr);
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
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i6; i8 < i7; i8++) {
                            int i9 = DoubleDHT_3D.this.sliceStride * i8;
                            for (int i10 = 0; i10 < DoubleDHT_3D.this.rows; i10++) {
                                DoubleDHT_3D.this.dhtColumns.forward(dArr, (DoubleDHT_3D.this.rowStride * i10) + i9);
                            }
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            int i8 = 0;
            while (i8 < numberOfThreads) {
                final int i9 = i8 * i4;
                final int i10 = i8 == numberOfThreads + (-1) ? this.slices : i9 + i4;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.2
                    @Override // java.lang.Runnable
                    public void run() {
                        double[] dArr2 = new double[DoubleDHT_3D.this.rows];
                        for (int i11 = i9; i11 < i10; i11++) {
                            int i12 = DoubleDHT_3D.this.sliceStride * i11;
                            for (int i13 = 0; i13 < DoubleDHT_3D.this.columns; i13++) {
                                for (int i14 = 0; i14 < DoubleDHT_3D.this.rows; i14++) {
                                    dArr2[i14] = dArr[(DoubleDHT_3D.this.rowStride * i14) + i12 + i13];
                                }
                                DoubleDHT_3D.this.dhtRows.forward(dArr2);
                                for (int i15 = 0; i15 < DoubleDHT_3D.this.rows; i15++) {
                                    dArr[(DoubleDHT_3D.this.rowStride * i15) + i12 + i13] = dArr2[i15];
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
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            int i11 = this.rows / numberOfThreads;
            while (i3 < numberOfThreads) {
                final int i12 = i3 * i11;
                final int i13 = i3 == numberOfThreads + (-1) ? this.rows : i12 + i11;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.3
                    @Override // java.lang.Runnable
                    public void run() {
                        double[] dArr2 = new double[DoubleDHT_3D.this.slices];
                        for (int i14 = i12; i14 < i13; i14++) {
                            int i15 = DoubleDHT_3D.this.rowStride * i14;
                            for (int i16 = 0; i16 < DoubleDHT_3D.this.columns; i16++) {
                                for (int i17 = 0; i17 < DoubleDHT_3D.this.slices; i17++) {
                                    dArr2[i17] = dArr[(DoubleDHT_3D.this.sliceStride * i17) + i15 + i16];
                                }
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2);
                                for (int i18 = 0; i18 < DoubleDHT_3D.this.slices; i18++) {
                                    dArr[(DoubleDHT_3D.this.sliceStride * i18) + i15 + i16] = dArr2[i18];
                                }
                            }
                        }
                    }
                });
                i3++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e5) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e5);
            } catch (ExecutionException e6) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e6);
            }
        } else {
            for (int i14 = 0; i14 < this.slices; i14++) {
                int i15 = this.sliceStride * i14;
                for (int i16 = 0; i16 < this.rows; i16++) {
                    this.dhtColumns.forward(dArr, (this.rowStride * i16) + i15);
                }
            }
            double[] dArr2 = new double[this.rows];
            int i17 = 0;
            while (true) {
                i = this.slices;
                if (i17 >= i) {
                    break;
                }
                int i18 = this.sliceStride * i17;
                for (int i19 = 0; i19 < this.columns; i19++) {
                    for (int i20 = 0; i20 < this.rows; i20++) {
                        dArr2[i20] = dArr[(this.rowStride * i20) + i18 + i19];
                    }
                    this.dhtRows.forward(dArr2);
                    for (int i21 = 0; i21 < this.rows; i21++) {
                        dArr[(this.rowStride * i21) + i18 + i19] = dArr2[i21];
                    }
                }
                i17++;
            }
            double[] dArr3 = new double[i];
            for (int i22 = 0; i22 < this.rows; i22++) {
                int i23 = this.rowStride * i22;
                for (int i24 = 0; i24 < this.columns; i24++) {
                    for (int i25 = 0; i25 < this.slices; i25++) {
                        dArr3[i25] = dArr[(this.sliceStride * i25) + i23 + i24];
                    }
                    this.dhtSlices.forward(dArr3);
                    for (int i26 = 0; i26 < this.slices; i26++) {
                        dArr[(this.sliceStride * i26) + i23 + i24] = dArr3[i26];
                    }
                }
            }
        }
        yTransform(dArr);
    }

    public void forward(final DoubleLargeArray doubleLargeArray) {
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(-1, doubleLargeArray, true);
                ddxt3db_subth(-1, doubleLargeArray, true);
            } else {
                ddxt3da_sub(-1, doubleLargeArray, true);
                ddxt3db_sub(-1, doubleLargeArray, true);
            }
            yTransform(doubleLargeArray);
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
                    futureArr[i] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.4
                        @Override // java.lang.Runnable
                        public void run() {
                            for (long j6 = j4; j6 < j5; j6++) {
                                long j7 = DoubleDHT_3D.this.sliceStride * j6;
                                for (long j8 = 0; j8 < DoubleDHT_3D.this.rowsl; j8++) {
                                    DoubleDHT_3D.this.dhtColumns.forward(doubleLargeArray, (DoubleDHT_3D.this.rowStride * j8) + j7);
                                }
                            }
                        }
                    });
                    i++;
                }
                String str = null;
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
                int i2 = 0;
                while (i2 < numberOfThreads) {
                    final long j6 = i2 * j3;
                    final long j7 = i2 == numberOfThreads + (-1) ? this.slicesl : j6 + j3;
                    futureArr[i2] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.5
                        @Override // java.lang.Runnable
                        public void run() {
                            DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(DoubleDHT_3D.this.rowsl, false);
                            for (long j8 = j6; j8 < j7; j8++) {
                                long j9 = DoubleDHT_3D.this.sliceStride * j8;
                                for (long j10 = 0; j10 < DoubleDHT_3D.this.columnsl; j10++) {
                                    for (long j11 = 0; j11 < DoubleDHT_3D.this.rowsl; j11++) {
                                        doubleLargeArray2.setDouble(j11, doubleLargeArray.getDouble((DoubleDHT_3D.this.rowStride * j11) + j9 + j10));
                                    }
                                    DoubleDHT_3D.this.dhtRows.forward(doubleLargeArray2);
                                    long j12 = 0;
                                    while (j12 < DoubleDHT_3D.this.rowsl) {
                                        doubleLargeArray.setDouble((DoubleDHT_3D.this.rowStride * j12) + j9 + j10, doubleLargeArray2.getDouble(j12));
                                        j12++;
                                        j9 = j9;
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
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e3);
                } catch (ExecutionException e4) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e4);
                }
                long j8 = this.rowsl / j2;
                int i3 = 0;
                while (i3 < numberOfThreads) {
                    final long j9 = i3 * j8;
                    final long j10 = i3 == numberOfThreads + (-1) ? this.rowsl : j9 + j8;
                    futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.6
                        @Override // java.lang.Runnable
                        public void run() {
                            DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(DoubleDHT_3D.this.slicesl, false);
                            for (long j11 = j9; j11 < j10; j11++) {
                                long j12 = DoubleDHT_3D.this.rowStride * j11;
                                for (long j13 = 0; j13 < DoubleDHT_3D.this.columnsl; j13++) {
                                    for (long j14 = 0; j14 < DoubleDHT_3D.this.slicesl; j14++) {
                                        doubleLargeArray2.setDouble(j14, doubleLargeArray.getDouble((DoubleDHT_3D.this.sliceStride * j14) + j12 + j13));
                                    }
                                    DoubleDHT_3D.this.dhtSlices.forward(doubleLargeArray2);
                                    long j15 = 0;
                                    while (j15 < DoubleDHT_3D.this.slicesl) {
                                        doubleLargeArray.setDouble((DoubleDHT_3D.this.sliceStride * j15) + j12 + j13, doubleLargeArray2.getDouble(j15));
                                        j15++;
                                        j12 = j12;
                                    }
                                }
                            }
                        }
                    });
                    i3++;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e5) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e5);
                } catch (ExecutionException e6) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e6);
                }
                yTransform(doubleLargeArray);
            }
        }
        for (long j11 = 0; j11 < this.slicesl; j11++) {
            long j12 = this.sliceStride * j11;
            for (long j13 = 0; j13 < this.rowsl; j13++) {
                this.dhtColumns.forward(doubleLargeArray, (this.rowStride * j13) + j12);
            }
        }
        DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(this.rowsl, false);
        for (long j14 = 0; j14 < this.slicesl; j14++) {
            long j15 = this.sliceStride * j14;
            for (long j16 = 0; j16 < this.columnsl; j16++) {
                for (long j17 = 0; j17 < this.rowsl; j17++) {
                    doubleLargeArray2.setDouble(j17, doubleLargeArray.getDouble((this.rowStride * j17) + j15 + j16));
                }
                this.dhtRows.forward(doubleLargeArray2);
                long j18 = 0;
                while (j18 < this.rowsl) {
                    doubleLargeArray.setDouble((this.rowStride * j18) + j15 + j16, doubleLargeArray2.getDouble(j18));
                    j18++;
                    j15 = j15;
                }
            }
        }
        DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(this.slicesl, false);
        for (long j19 = 0; j19 < this.rowsl; j19++) {
            long j20 = this.rowStride * j19;
            for (long j21 = 0; j21 < this.columnsl; j21++) {
                for (long j22 = 0; j22 < this.slicesl; j22++) {
                    doubleLargeArray3.setDouble(j22, doubleLargeArray.getDouble((this.sliceStride * j22) + j20 + j21));
                }
                this.dhtSlices.forward(doubleLargeArray3);
                long j23 = 0;
                while (j23 < this.slicesl) {
                    doubleLargeArray.setDouble((this.sliceStride * j23) + j20 + j21, doubleLargeArray3.getDouble(j23));
                    j23++;
                    j20 = j20;
                }
            }
        }
        yTransform(doubleLargeArray);
    }

    public void forward(final double[][][] dArr) {
        int i;
        int i2;
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(-1, dArr, true);
                ddxt3db_subth(-1, dArr, true);
            } else {
                ddxt3da_sub(-1, dArr, true);
                ddxt3db_sub(-1, dArr, true);
            }
            yTransform(dArr);
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
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.7
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i6; i8 < i7; i8++) {
                            for (int i9 = 0; i9 < DoubleDHT_3D.this.rows; i9++) {
                                DoubleDHT_3D.this.dhtColumns.forward(dArr[i8][i9]);
                            }
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            int i8 = 0;
            while (i8 < numberOfThreads) {
                final int i9 = i8 * i4;
                final int i10 = i8 == numberOfThreads + (-1) ? this.slices : i9 + i4;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.8
                    @Override // java.lang.Runnable
                    public void run() {
                        double[] dArr2 = new double[DoubleDHT_3D.this.rows];
                        for (int i11 = i9; i11 < i10; i11++) {
                            for (int i12 = 0; i12 < DoubleDHT_3D.this.columns; i12++) {
                                for (int i13 = 0; i13 < DoubleDHT_3D.this.rows; i13++) {
                                    dArr2[i13] = dArr[i11][i13][i12];
                                }
                                DoubleDHT_3D.this.dhtRows.forward(dArr2);
                                for (int i14 = 0; i14 < DoubleDHT_3D.this.rows; i14++) {
                                    dArr[i11][i14][i12] = dArr2[i14];
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
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            int i11 = this.rows / numberOfThreads;
            while (i3 < numberOfThreads) {
                final int i12 = i3 * i11;
                final int i13 = i3 == numberOfThreads + (-1) ? this.rows : i12 + i11;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.9
                    @Override // java.lang.Runnable
                    public void run() {
                        double[] dArr2 = new double[DoubleDHT_3D.this.slices];
                        for (int i14 = i12; i14 < i13; i14++) {
                            for (int i15 = 0; i15 < DoubleDHT_3D.this.columns; i15++) {
                                for (int i16 = 0; i16 < DoubleDHT_3D.this.slices; i16++) {
                                    dArr2[i16] = dArr[i16][i14][i15];
                                }
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2);
                                for (int i17 = 0; i17 < DoubleDHT_3D.this.slices; i17++) {
                                    dArr[i17][i14][i15] = dArr2[i17];
                                }
                            }
                        }
                    }
                });
                i3++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e5) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e5);
            } catch (ExecutionException e6) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e6);
            }
        } else {
            for (int i14 = 0; i14 < this.slices; i14++) {
                for (int i15 = 0; i15 < this.rows; i15++) {
                    this.dhtColumns.forward(dArr[i14][i15]);
                }
            }
            double[] dArr2 = new double[this.rows];
            int i16 = 0;
            while (true) {
                i = this.slices;
                if (i16 >= i) {
                    break;
                }
                for (int i17 = 0; i17 < this.columns; i17++) {
                    for (int i18 = 0; i18 < this.rows; i18++) {
                        dArr2[i18] = dArr[i16][i18][i17];
                    }
                    this.dhtRows.forward(dArr2);
                    for (int i19 = 0; i19 < this.rows; i19++) {
                        dArr[i16][i19][i17] = dArr2[i19];
                    }
                }
                i16++;
            }
            double[] dArr3 = new double[i];
            for (int i20 = 0; i20 < this.rows; i20++) {
                for (int i21 = 0; i21 < this.columns; i21++) {
                    for (int i22 = 0; i22 < this.slices; i22++) {
                        dArr3[i22] = dArr[i22][i20][i21];
                    }
                    this.dhtSlices.forward(dArr3);
                    for (int i23 = 0; i23 < this.slices; i23++) {
                        dArr[i23][i20][i21] = dArr3[i23];
                    }
                }
            }
        }
        yTransform(dArr);
    }

    public void inverse(final double[] dArr, final boolean z) {
        int i;
        int i2;
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(1, dArr, z);
                ddxt3db_subth(1, dArr, z);
            } else {
                ddxt3da_sub(1, dArr, z);
                ddxt3db_sub(1, dArr, z);
            }
            yTransform(dArr);
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
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.10
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i6; i8 < i7; i8++) {
                            int i9 = DoubleDHT_3D.this.sliceStride * i8;
                            for (int i10 = 0; i10 < DoubleDHT_3D.this.rows; i10++) {
                                DoubleDHT_3D.this.dhtColumns.inverse(dArr, (DoubleDHT_3D.this.rowStride * i10) + i9, z);
                            }
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            int i8 = 0;
            while (i8 < numberOfThreads) {
                final int i9 = i8 * i4;
                final int i10 = i8 == numberOfThreads + (-1) ? this.slices : i9 + i4;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.11
                    @Override // java.lang.Runnable
                    public void run() {
                        double[] dArr2 = new double[DoubleDHT_3D.this.rows];
                        for (int i11 = i9; i11 < i10; i11++) {
                            int i12 = DoubleDHT_3D.this.sliceStride * i11;
                            for (int i13 = 0; i13 < DoubleDHT_3D.this.columns; i13++) {
                                for (int i14 = 0; i14 < DoubleDHT_3D.this.rows; i14++) {
                                    dArr2[i14] = dArr[(DoubleDHT_3D.this.rowStride * i14) + i12 + i13];
                                }
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, z);
                                for (int i15 = 0; i15 < DoubleDHT_3D.this.rows; i15++) {
                                    dArr[(DoubleDHT_3D.this.rowStride * i15) + i12 + i13] = dArr2[i15];
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
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            int i11 = this.rows / numberOfThreads;
            while (i3 < numberOfThreads) {
                final int i12 = i3 * i11;
                final int i13 = i3 == numberOfThreads + (-1) ? this.rows : i12 + i11;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.12
                    @Override // java.lang.Runnable
                    public void run() {
                        double[] dArr2 = new double[DoubleDHT_3D.this.slices];
                        for (int i14 = i12; i14 < i13; i14++) {
                            int i15 = DoubleDHT_3D.this.rowStride * i14;
                            for (int i16 = 0; i16 < DoubleDHT_3D.this.columns; i16++) {
                                for (int i17 = 0; i17 < DoubleDHT_3D.this.slices; i17++) {
                                    dArr2[i17] = dArr[(DoubleDHT_3D.this.sliceStride * i17) + i15 + i16];
                                }
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, z);
                                for (int i18 = 0; i18 < DoubleDHT_3D.this.slices; i18++) {
                                    dArr[(DoubleDHT_3D.this.sliceStride * i18) + i15 + i16] = dArr2[i18];
                                }
                            }
                        }
                    }
                });
                i3++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e5) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e5);
            } catch (ExecutionException e6) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e6);
            }
        } else {
            for (int i14 = 0; i14 < this.slices; i14++) {
                int i15 = this.sliceStride * i14;
                for (int i16 = 0; i16 < this.rows; i16++) {
                    this.dhtColumns.inverse(dArr, (this.rowStride * i16) + i15, z);
                }
            }
            double[] dArr2 = new double[this.rows];
            int i17 = 0;
            while (true) {
                i = this.slices;
                if (i17 >= i) {
                    break;
                }
                int i18 = this.sliceStride * i17;
                for (int i19 = 0; i19 < this.columns; i19++) {
                    for (int i20 = 0; i20 < this.rows; i20++) {
                        dArr2[i20] = dArr[(this.rowStride * i20) + i18 + i19];
                    }
                    this.dhtRows.inverse(dArr2, z);
                    for (int i21 = 0; i21 < this.rows; i21++) {
                        dArr[(this.rowStride * i21) + i18 + i19] = dArr2[i21];
                    }
                }
                i17++;
            }
            double[] dArr3 = new double[i];
            for (int i22 = 0; i22 < this.rows; i22++) {
                int i23 = this.rowStride * i22;
                for (int i24 = 0; i24 < this.columns; i24++) {
                    for (int i25 = 0; i25 < this.slices; i25++) {
                        dArr3[i25] = dArr[(this.sliceStride * i25) + i23 + i24];
                    }
                    this.dhtSlices.inverse(dArr3, z);
                    for (int i26 = 0; i26 < this.slices; i26++) {
                        dArr[(this.sliceStride * i26) + i23 + i24] = dArr3[i26];
                    }
                }
            }
        }
        yTransform(dArr);
    }

    public void inverse(final DoubleLargeArray doubleLargeArray, final boolean z) {
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(1, doubleLargeArray, z);
                ddxt3db_subth(1, doubleLargeArray, z);
            } else {
                ddxt3da_sub(1, doubleLargeArray, z);
                ddxt3db_sub(1, doubleLargeArray, z);
            }
            yTransform(doubleLargeArray);
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
                    futureArr[i] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.13
                        @Override // java.lang.Runnable
                        public void run() {
                            for (long j6 = j4; j6 < j5; j6++) {
                                long j7 = DoubleDHT_3D.this.sliceStridel * j6;
                                for (long j8 = 0; j8 < DoubleDHT_3D.this.rowsl; j8++) {
                                    DoubleDHT_3D.this.dhtColumns.inverse(doubleLargeArray, (DoubleDHT_3D.this.rowStridel * j8) + j7, z);
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
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                } catch (ExecutionException e2) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
                }
                int i2 = 0;
                while (i2 < numberOfThreads) {
                    final long j7 = i2 * j3;
                    final long j8 = i2 == numberOfThreads + (-1) ? this.slicesl : j7 + j3;
                    futureArr[i2] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.14
                        @Override // java.lang.Runnable
                        public void run() {
                            DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(DoubleDHT_3D.this.rowsl, false);
                            for (long j9 = j7; j9 < j8; j9++) {
                                long j10 = DoubleDHT_3D.this.sliceStridel * j9;
                                for (long j11 = 0; j11 < DoubleDHT_3D.this.columnsl; j11++) {
                                    for (long j12 = 0; j12 < DoubleDHT_3D.this.rowsl; j12++) {
                                        doubleLargeArray2.setDouble(j12, doubleLargeArray.getDouble((DoubleDHT_3D.this.rowStridel * j12) + j10 + j11));
                                    }
                                    DoubleDHT_3D.this.dhtRows.inverse(doubleLargeArray2, z);
                                    long j13 = 0;
                                    while (j13 < DoubleDHT_3D.this.rowsl) {
                                        doubleLargeArray.setDouble((DoubleDHT_3D.this.rowStridel * j13) + j10 + j11, doubleLargeArray2.getDouble(j13));
                                        j13++;
                                        j10 = j10;
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
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e3);
                } catch (ExecutionException e4) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e4);
                }
                long j9 = this.rowsl / j6;
                int i3 = 0;
                while (i3 < numberOfThreads) {
                    final long j10 = i3 * j9;
                    final long j11 = i3 == numberOfThreads + (-1) ? this.rowsl : j10 + j9;
                    futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.15
                        @Override // java.lang.Runnable
                        public void run() {
                            DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(DoubleDHT_3D.this.slicesl, false);
                            for (long j12 = j10; j12 < j11; j12++) {
                                long j13 = DoubleDHT_3D.this.rowStridel * j12;
                                for (long j14 = 0; j14 < DoubleDHT_3D.this.columnsl; j14++) {
                                    for (long j15 = 0; j15 < DoubleDHT_3D.this.slicesl; j15++) {
                                        doubleLargeArray2.setDouble(j15, doubleLargeArray.getDouble((DoubleDHT_3D.this.sliceStridel * j15) + j13 + j14));
                                    }
                                    DoubleDHT_3D.this.dhtSlices.inverse(doubleLargeArray2, z);
                                    long j16 = 0;
                                    while (j16 < DoubleDHT_3D.this.slicesl) {
                                        doubleLargeArray.setDouble((DoubleDHT_3D.this.sliceStridel * j16) + j13 + j14, doubleLargeArray2.getDouble(j16));
                                        j16++;
                                        j13 = j13;
                                    }
                                }
                            }
                        }
                    });
                    i3++;
                }
                try {
                    ConcurrencyUtils.waitForCompletion(futureArr);
                } catch (InterruptedException e5) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e5);
                } catch (ExecutionException e6) {
                    Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, str2, (Throwable) e6);
                }
                yTransform(doubleLargeArray);
            }
        }
        for (long j12 = 0; j12 < this.slicesl; j12++) {
            long j13 = this.sliceStridel * j12;
            for (long j14 = 0; j14 < this.rowsl; j14++) {
                this.dhtColumns.inverse(doubleLargeArray, (this.rowStridel * j14) + j13, z);
            }
        }
        DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(this.rowsl, false);
        for (long j15 = 0; j15 < this.slicesl; j15++) {
            long j16 = this.sliceStridel * j15;
            for (long j17 = 0; j17 < this.columnsl; j17++) {
                for (long j18 = 0; j18 < this.rowsl; j18++) {
                    doubleLargeArray2.setDouble(j18, doubleLargeArray.getDouble((this.rowStridel * j18) + j16 + j17));
                }
                this.dhtRows.inverse(doubleLargeArray2, z);
                long j19 = 0;
                while (j19 < this.rowsl) {
                    doubleLargeArray.setDouble((this.rowStridel * j19) + j16 + j17, doubleLargeArray2.getDouble(j19));
                    j19++;
                    j16 = j16;
                }
            }
        }
        DoubleLargeArray doubleLargeArray3 = new DoubleLargeArray(this.slicesl, false);
        for (long j20 = 0; j20 < this.rowsl; j20++) {
            long j21 = this.rowStridel * j20;
            for (long j22 = 0; j22 < this.columnsl; j22++) {
                for (long j23 = 0; j23 < this.slicesl; j23++) {
                    doubleLargeArray3.setDouble(j23, doubleLargeArray.getDouble((this.sliceStridel * j23) + j21 + j22));
                }
                this.dhtSlices.inverse(doubleLargeArray3, z);
                long j24 = 0;
                while (j24 < this.slicesl) {
                    doubleLargeArray.setDouble((this.sliceStridel * j24) + j21 + j22, doubleLargeArray3.getDouble(j24));
                    j24++;
                    j21 = j21;
                }
            }
        }
        yTransform(doubleLargeArray);
    }

    public void inverse(final double[][][] dArr, final boolean z) {
        int i;
        int i2;
        int numberOfThreads = ConcurrencyUtils.getNumberOfThreads();
        if (this.isPowerOfTwo) {
            if (numberOfThreads > 1 && this.useThreads) {
                ddxt3da_subth(1, dArr, z);
                ddxt3db_subth(1, dArr, z);
            } else {
                ddxt3da_sub(1, dArr, z);
                ddxt3db_sub(1, dArr, z);
            }
            yTransform(dArr);
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
                futureArr[i5] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.16
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i8 = i6; i8 < i7; i8++) {
                            for (int i9 = 0; i9 < DoubleDHT_3D.this.rows; i9++) {
                                DoubleDHT_3D.this.dhtColumns.inverse(dArr[i8][i9], z);
                            }
                        }
                    }
                });
                i5++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            } catch (ExecutionException e2) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
            }
            int i8 = 0;
            while (i8 < numberOfThreads) {
                final int i9 = i8 * i4;
                final int i10 = i8 == numberOfThreads + (-1) ? this.slices : i9 + i4;
                futureArr[i8] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.17
                    @Override // java.lang.Runnable
                    public void run() {
                        double[] dArr2 = new double[DoubleDHT_3D.this.rows];
                        for (int i11 = i9; i11 < i10; i11++) {
                            for (int i12 = 0; i12 < DoubleDHT_3D.this.columns; i12++) {
                                for (int i13 = 0; i13 < DoubleDHT_3D.this.rows; i13++) {
                                    dArr2[i13] = dArr[i11][i13][i12];
                                }
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, z);
                                for (int i14 = 0; i14 < DoubleDHT_3D.this.rows; i14++) {
                                    dArr[i11][i14][i12] = dArr2[i14];
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
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e3);
            } catch (ExecutionException e4) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e4);
            }
            int i11 = this.rows / numberOfThreads;
            while (i3 < numberOfThreads) {
                final int i12 = i3 * i11;
                final int i13 = i3 == numberOfThreads + (-1) ? this.rows : i12 + i11;
                futureArr[i3] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.18
                    @Override // java.lang.Runnable
                    public void run() {
                        double[] dArr2 = new double[DoubleDHT_3D.this.slices];
                        for (int i14 = i12; i14 < i13; i14++) {
                            for (int i15 = 0; i15 < DoubleDHT_3D.this.columns; i15++) {
                                for (int i16 = 0; i16 < DoubleDHT_3D.this.slices; i16++) {
                                    dArr2[i16] = dArr[i16][i14][i15];
                                }
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, z);
                                for (int i17 = 0; i17 < DoubleDHT_3D.this.slices; i17++) {
                                    dArr[i17][i14][i15] = dArr2[i17];
                                }
                            }
                        }
                    }
                });
                i3++;
            }
            try {
                ConcurrencyUtils.waitForCompletion(futureArr);
            } catch (InterruptedException e5) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e5);
            } catch (ExecutionException e6) {
                Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e6);
            }
        } else {
            for (int i14 = 0; i14 < this.slices; i14++) {
                for (int i15 = 0; i15 < this.rows; i15++) {
                    this.dhtColumns.inverse(dArr[i14][i15], z);
                }
            }
            double[] dArr2 = new double[this.rows];
            int i16 = 0;
            while (true) {
                i = this.slices;
                if (i16 >= i) {
                    break;
                }
                for (int i17 = 0; i17 < this.columns; i17++) {
                    for (int i18 = 0; i18 < this.rows; i18++) {
                        dArr2[i18] = dArr[i16][i18][i17];
                    }
                    this.dhtRows.inverse(dArr2, z);
                    for (int i19 = 0; i19 < this.rows; i19++) {
                        dArr[i16][i19][i17] = dArr2[i19];
                    }
                }
                i16++;
            }
            double[] dArr3 = new double[i];
            for (int i20 = 0; i20 < this.rows; i20++) {
                for (int i21 = 0; i21 < this.columns; i21++) {
                    for (int i22 = 0; i22 < this.slices; i22++) {
                        dArr3[i22] = dArr[i22][i20][i21];
                    }
                    this.dhtSlices.inverse(dArr3, z);
                    for (int i23 = 0; i23 < this.slices; i23++) {
                        dArr[i23][i20][i21] = dArr3[i23];
                    }
                }
            }
        }
        yTransform(dArr);
    }

    private void ddxt3da_sub(int i, double[] dArr, boolean z) {
        int i2 = this.rows * 4;
        if (this.columns == 2) {
            i2 >>= 1;
        }
        double[] dArr2 = new double[i2];
        if (i == -1) {
            for (int i3 = 0; i3 < this.slices; i3++) {
                int i4 = this.sliceStride * i3;
                for (int i5 = 0; i5 < this.rows; i5++) {
                    this.dhtColumns.forward(dArr, (this.rowStride * i5) + i4);
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
                            dArr2[i8] = dArr[i10];
                            dArr2[i11] = dArr[i10 + 1];
                            dArr2[i11 + i9] = dArr[i10 + 2];
                            dArr2[i11 + (i9 * 2)] = dArr[i10 + 3];
                            i8++;
                        }
                        this.dhtRows.forward(dArr2, 0);
                        this.dhtRows.forward(dArr2, this.rows);
                        this.dhtRows.forward(dArr2, this.rows * 2);
                        this.dhtRows.forward(dArr2, this.rows * 3);
                        int i12 = 0;
                        while (true) {
                            int i13 = this.rows;
                            if (i12 < i13) {
                                int i14 = (this.rowStride * i12) + i4 + i7;
                                int i15 = i13 + i12;
                                dArr[i14] = dArr2[i12];
                                dArr[i14 + 1] = dArr2[i15];
                                dArr[i14 + 2] = dArr2[i15 + i13];
                                dArr[i14 + 3] = dArr2[i15 + (i13 * 2)];
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
                        dArr2[i16] = dArr[i18];
                        dArr2[i17 + i16] = dArr[i18 + 1];
                        i16++;
                    }
                    this.dhtRows.forward(dArr2, 0);
                    this.dhtRows.forward(dArr2, this.rows);
                    int i19 = 0;
                    while (true) {
                        int i20 = this.rows;
                        if (i19 < i20) {
                            int i21 = (this.rowStride * i19) + i4;
                            dArr[i21] = dArr2[i19];
                            dArr[i21 + 1] = dArr2[i20 + i19];
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
                this.dhtColumns.inverse(dArr, (this.rowStride * i24) + i23, z);
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
                        dArr2[i27] = dArr[i29];
                        dArr2[i30] = dArr[i29 + 1];
                        dArr2[i30 + i28] = dArr[i29 + 2];
                        dArr2[i30 + (i28 * 2)] = dArr[i29 + 3];
                        i27++;
                    }
                    this.dhtRows.inverse(dArr2, 0, z);
                    this.dhtRows.inverse(dArr2, this.rows, z);
                    this.dhtRows.inverse(dArr2, this.rows * 2, z);
                    this.dhtRows.inverse(dArr2, this.rows * 3, z);
                    int i31 = 0;
                    while (true) {
                        int i32 = this.rows;
                        if (i31 < i32) {
                            int i33 = (this.rowStride * i31) + i23 + i26;
                            int i34 = i32 + i31;
                            dArr[i33] = dArr2[i31];
                            dArr[i33 + 1] = dArr2[i34];
                            dArr[i33 + 2] = dArr2[i34 + i32];
                            dArr[i33 + 3] = dArr2[i34 + (i32 * 2)];
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
                    dArr2[i35] = dArr[i37];
                    dArr2[i36 + i35] = dArr[i37 + 1];
                    i35++;
                }
                this.dhtRows.inverse(dArr2, 0, z);
                this.dhtRows.inverse(dArr2, this.rows, z);
                int i38 = 0;
                while (true) {
                    int i39 = this.rows;
                    if (i38 < i39) {
                        int i40 = (this.rowStride * i38) + i23;
                        dArr[i40] = dArr2[i38];
                        dArr[i40 + 1] = dArr2[i39 + i38];
                        i38++;
                    }
                }
            }
        }
    }

    private void ddxt3da_sub(int i, DoubleLargeArray doubleLargeArray, boolean z) {
        long j;
        long j2;
        long j3 = this.rowsl * 4;
        long j4 = 2;
        if (this.columnsl == 2) {
            j3 >>= 1;
        }
        DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(j3);
        if (i == -1) {
            long j5 = 0;
            while (j5 < this.slicesl) {
                long j6 = this.sliceStridel * j5;
                for (long j7 = 0; j7 < this.rowsl; j7++) {
                    this.dhtColumns.forward(doubleLargeArray, (this.rowStridel * j7) + j6);
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
                            doubleLargeArray2.setDouble(j10, doubleLargeArray.getDouble(j13));
                            doubleLargeArray2.setDouble(j14, doubleLargeArray.getDouble(j13 + 1));
                            doubleLargeArray2.setDouble(this.rowsl + j14, doubleLargeArray.getDouble(j13 + 2));
                            doubleLargeArray2.setDouble(j14 + (this.rowsl * 2), doubleLargeArray.getDouble(j13 + 3));
                            j10++;
                            j5 = j12;
                            j9 = j9;
                            j6 = j6;
                        }
                        long j15 = j5;
                        long j16 = j6;
                        long j17 = j9;
                        this.dhtRows.forward(doubleLargeArray2, 0L);
                        this.dhtRows.forward(doubleLargeArray2, this.rowsl);
                        this.dhtRows.forward(doubleLargeArray2, this.rowsl * 2);
                        this.dhtRows.forward(doubleLargeArray2, this.rowsl * 3);
                        long j18 = 0;
                        while (true) {
                            long j19 = this.rowsl;
                            if (j18 < j19) {
                                long j20 = j16 + (this.rowStridel * j18) + j17;
                                long j21 = j19 + j18;
                                doubleLargeArray.setDouble(j20, doubleLargeArray2.getDouble(j18));
                                doubleLargeArray.setDouble(j20 + 1, doubleLargeArray2.getDouble(j21));
                                doubleLargeArray.setDouble(j20 + 2, doubleLargeArray2.getDouble(this.rowsl + j21));
                                doubleLargeArray.setDouble(j20 + 3, doubleLargeArray2.getDouble(j21 + (this.rowsl * 2)));
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
                            doubleLargeArray2.setDouble(j22, doubleLargeArray.getDouble(j23));
                            doubleLargeArray2.setDouble(this.rowsl + j22, doubleLargeArray.getDouble(j23 + 1));
                        }
                        this.dhtRows.forward(doubleLargeArray2, 0L);
                        this.dhtRows.forward(doubleLargeArray2, this.rowsl);
                        for (long j24 = 0; j24 < this.rowsl; j24++) {
                            long j25 = j6 + (this.rowStridel * j24);
                            doubleLargeArray.setDouble(j25, doubleLargeArray2.getDouble(j24));
                            doubleLargeArray.setDouble(j25 + 1, doubleLargeArray2.getDouble(this.rowsl + j24));
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
                this.dhtColumns.inverse(doubleLargeArray, (this.rowStridel * j28) + j27, z);
            }
            long j29 = this.columnsl;
            if (j29 > 2) {
                long j30 = 0;
                while (j30 < this.columnsl) {
                    long j31 = 0;
                    while (true) {
                        long j32 = this.rowsl;
                        if (j31 >= j32) {
                            break;
                        }
                        long j33 = j26;
                        long j34 = (this.rowStridel * j31) + j27 + j30;
                        long j35 = j32 + j31;
                        doubleLargeArray2.setDouble(j31, doubleLargeArray.getDouble(j34));
                        doubleLargeArray2.setDouble(j35, doubleLargeArray.getDouble(j34 + 1));
                        doubleLargeArray2.setDouble(this.rowsl + j35, doubleLargeArray.getDouble(j34 + 2));
                        doubleLargeArray2.setDouble(j35 + (this.rowsl * 2), doubleLargeArray.getDouble(j34 + 3));
                        j31++;
                        j26 = j33;
                        j30 = j30;
                        j27 = j27;
                    }
                    long j36 = j26;
                    long j37 = j27;
                    long j38 = j30;
                    this.dhtRows.inverse(doubleLargeArray2, 0L, z);
                    this.dhtRows.inverse(doubleLargeArray2, this.rowsl, z);
                    this.dhtRows.inverse(doubleLargeArray2, this.rowsl * 2, z);
                    this.dhtRows.inverse(doubleLargeArray2, this.rowsl * 3, z);
                    long j39 = 0;
                    while (true) {
                        long j40 = this.rowsl;
                        if (j39 < j40) {
                            long j41 = j37 + (this.rowStridel * j39) + j38;
                            long j42 = j40 + j39;
                            doubleLargeArray.setDouble(j41, doubleLargeArray2.getDouble(j39));
                            doubleLargeArray.setDouble(j41 + 1, doubleLargeArray2.getDouble(j42));
                            doubleLargeArray.setDouble(j41 + 2, doubleLargeArray2.getDouble(this.rowsl + j42));
                            doubleLargeArray.setDouble(j41 + 3, doubleLargeArray2.getDouble(j42 + (this.rowsl * 2)));
                            j39++;
                        }
                    }
                    j30 = j38 + 4;
                    j26 = j36;
                    j27 = j37;
                }
                j = j26;
            } else {
                j = j26;
                if (j29 == 2) {
                    for (long j43 = 0; j43 < this.rowsl; j43++) {
                        long j44 = j27 + (this.rowStridel * j43);
                        doubleLargeArray2.setDouble(j43, doubleLargeArray.getDouble(j44));
                        doubleLargeArray2.setDouble(this.rowsl + j43, doubleLargeArray.getDouble(j44 + 1));
                    }
                    this.dhtRows.inverse(doubleLargeArray2, 0L, z);
                    this.dhtRows.inverse(doubleLargeArray2, this.rowsl, z);
                    for (long j45 = 0; j45 < this.rowsl; j45++) {
                        long j46 = j27 + (this.rowStridel * j45);
                        doubleLargeArray.setDouble(j46, doubleLargeArray2.getDouble(j45));
                        doubleLargeArray.setDouble(j46 + 1, doubleLargeArray2.getDouble(this.rowsl + j45));
                    }
                    j26 = j + 1;
                }
            }
            j26 = j + 1;
        }
    }

    private void ddxt3da_sub(int i, double[][][] dArr, boolean z) {
        int i2 = this.rows * 4;
        if (this.columnsl == 2) {
            i2 >>= 1;
        }
        double[] dArr2 = new double[i2];
        if (i == -1) {
            for (int i3 = 0; i3 < this.slices; i3++) {
                for (int i4 = 0; i4 < this.rows; i4++) {
                    this.dhtColumns.forward(dArr[i3][i4]);
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
                            double[] dArr3 = dArr[i3][i7];
                            dArr2[i7] = dArr3[i6];
                            dArr2[i9] = dArr3[i6 + 1];
                            dArr2[i9 + i8] = dArr3[i6 + 2];
                            dArr2[i9 + (i8 * 2)] = dArr3[i6 + 3];
                            i7++;
                        }
                        this.dhtRows.forward(dArr2, 0);
                        this.dhtRows.forward(dArr2, this.rows);
                        this.dhtRows.forward(dArr2, this.rows * 2);
                        this.dhtRows.forward(dArr2, this.rows * 3);
                        int i10 = 0;
                        while (true) {
                            int i11 = this.rows;
                            if (i10 < i11) {
                                int i12 = i11 + i10;
                                double[] dArr4 = dArr[i3][i10];
                                dArr4[i6] = dArr2[i10];
                                dArr4[i6 + 1] = dArr2[i12];
                                dArr4[i6 + 2] = dArr2[i12 + i11];
                                dArr4[i6 + 3] = dArr2[i12 + (i11 * 2)];
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
                        double[] dArr5 = dArr[i3][i13];
                        dArr2[i13] = dArr5[0];
                        dArr2[i14 + i13] = dArr5[1];
                        i13++;
                    }
                    this.dhtRows.forward(dArr2, 0);
                    this.dhtRows.forward(dArr2, this.rows);
                    int i15 = 0;
                    while (true) {
                        int i16 = this.rows;
                        if (i15 < i16) {
                            double[] dArr6 = dArr[i3][i15];
                            dArr6[0] = dArr2[i15];
                            dArr6[1] = dArr2[i16 + i15];
                            i15++;
                        }
                    }
                }
            }
            return;
        }
        for (int i17 = 0; i17 < this.slices; i17++) {
            for (int i18 = 0; i18 < this.rows; i18++) {
                this.dhtColumns.inverse(dArr[i17][i18], z);
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
                        double[] dArr7 = dArr[i17][i21];
                        dArr2[i21] = dArr7[i20];
                        dArr2[i23] = dArr7[i20 + 1];
                        dArr2[i23 + i22] = dArr7[i20 + 2];
                        dArr2[i23 + (i22 * 2)] = dArr7[i20 + 3];
                        i21++;
                    }
                    this.dhtRows.inverse(dArr2, 0, z);
                    this.dhtRows.inverse(dArr2, this.rows, z);
                    this.dhtRows.inverse(dArr2, this.rows * 2, z);
                    this.dhtRows.inverse(dArr2, this.rows * 3, z);
                    int i24 = 0;
                    while (true) {
                        int i25 = this.rows;
                        if (i24 < i25) {
                            int i26 = i25 + i24;
                            double[] dArr8 = dArr[i17][i24];
                            dArr8[i20] = dArr2[i24];
                            dArr8[i20 + 1] = dArr2[i26];
                            dArr8[i20 + 2] = dArr2[i26 + i25];
                            dArr8[i20 + 3] = dArr2[i26 + (i25 * 2)];
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
                    double[] dArr9 = dArr[i17][i27];
                    dArr2[i27] = dArr9[0];
                    dArr2[i28 + i27] = dArr9[1];
                    i27++;
                }
                this.dhtRows.inverse(dArr2, 0, z);
                this.dhtRows.inverse(dArr2, this.rows, z);
                int i29 = 0;
                while (true) {
                    int i30 = this.rows;
                    if (i29 < i30) {
                        double[] dArr10 = dArr[i17][i29];
                        dArr10[0] = dArr2[i29];
                        dArr10[1] = dArr2[i30 + i29];
                        i29++;
                    }
                }
            }
        }
    }

    private void ddxt3db_sub(int i, double[] dArr, boolean z) {
        int i2 = this.slices * 4;
        int i3 = this.columns;
        if (i3 == 2) {
            i2 >>= 1;
        }
        double[] dArr2 = new double[i2];
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
                            dArr2[i6] = dArr[i8];
                            dArr2[i7 + i6] = dArr[i8 + 1];
                            i6++;
                        }
                        this.dhtSlices.forward(dArr2, 0);
                        this.dhtSlices.forward(dArr2, this.slices);
                        int i9 = 0;
                        while (true) {
                            int i10 = this.slices;
                            if (i9 < i10) {
                                int i11 = (this.sliceStride * i9) + i5;
                                dArr[i11] = dArr2[i9];
                                dArr[i11 + 1] = dArr2[i10 + i9];
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
                        dArr2[i15] = dArr[i17];
                        dArr2[i18] = dArr[i17 + 1];
                        dArr2[i18 + i16] = dArr[i17 + 2];
                        dArr2[i18 + (i16 * 2)] = dArr[i17 + 3];
                        i15++;
                    }
                    this.dhtSlices.forward(dArr2, 0);
                    this.dhtSlices.forward(dArr2, this.slices);
                    this.dhtSlices.forward(dArr2, this.slices * 2);
                    this.dhtSlices.forward(dArr2, this.slices * 3);
                    int i19 = 0;
                    while (true) {
                        int i20 = this.slices;
                        if (i19 < i20) {
                            int i21 = (this.sliceStride * i19) + i13 + i14;
                            int i22 = i20 + i19;
                            dArr[i21] = dArr2[i19];
                            dArr[i21 + 1] = dArr2[i22];
                            dArr[i21 + 2] = dArr2[i22 + i20];
                            dArr[i21 + 3] = dArr2[i22 + (i20 * 2)];
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
                        dArr2[i25] = dArr[i27];
                        dArr2[i26 + i25] = dArr[i27 + 1];
                        i25++;
                    }
                    this.dhtSlices.inverse(dArr2, 0, z);
                    this.dhtSlices.inverse(dArr2, this.slices, z);
                    int i28 = 0;
                    while (true) {
                        int i29 = this.slices;
                        if (i28 < i29) {
                            int i30 = (this.sliceStride * i28) + i24;
                            dArr[i30] = dArr2[i28];
                            dArr[i30 + 1] = dArr2[i29 + i28];
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
                        dArr2[i34] = dArr[i36];
                        dArr2[i37] = dArr[i36 + 1];
                        dArr2[i37 + i35] = dArr[i36 + 2];
                        dArr2[i37 + (i35 * 2)] = dArr[i36 + 3];
                        i34++;
                    }
                    this.dhtSlices.inverse(dArr2, 0, z);
                    this.dhtSlices.inverse(dArr2, this.slices, z);
                    this.dhtSlices.inverse(dArr2, this.slices * 2, z);
                    this.dhtSlices.inverse(dArr2, this.slices * 3, z);
                    int i38 = 0;
                    while (true) {
                        int i39 = this.slices;
                        if (i38 < i39) {
                            int i40 = (this.sliceStride * i38) + i32 + i33;
                            int i41 = i39 + i38;
                            dArr[i40] = dArr2[i38];
                            dArr[i40 + 1] = dArr2[i41];
                            dArr[i40 + 2] = dArr2[i41 + i39];
                            dArr[i40 + 3] = dArr2[i41 + (i39 * 2)];
                            i38++;
                        }
                    }
                }
            }
        }
    }

    private void ddxt3db_sub(int i, DoubleLargeArray doubleLargeArray, boolean z) {
        long j = this.slicesl * 4;
        long j2 = 2;
        if (this.columnsl == 2) {
            j >>= 1;
        }
        DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(j);
        if (i == -1) {
            long j3 = this.columnsl;
            if (j3 <= 2) {
                if (j3 == 2) {
                    for (long j4 = 0; j4 < this.rowsl; j4++) {
                        long j5 = this.rowStridel * j4;
                        for (long j6 = 0; j6 < this.slicesl; j6++) {
                            long j7 = (this.sliceStridel * j6) + j5;
                            doubleLargeArray2.setDouble(j6, doubleLargeArray.getDouble(j7));
                            doubleLargeArray2.setDouble(this.slicesl + j6, doubleLargeArray.getDouble(j7 + 1));
                        }
                        this.dhtSlices.forward(doubleLargeArray2, 0L);
                        this.dhtSlices.forward(doubleLargeArray2, this.slicesl);
                        for (long j8 = 0; j8 < this.slicesl; j8++) {
                            long j9 = (this.sliceStridel * j8) + j5;
                            doubleLargeArray.setDouble(j9, doubleLargeArray2.getDouble(j8));
                            doubleLargeArray.setDouble(j9 + 1, doubleLargeArray2.getDouble(this.slicesl + j8));
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
                        doubleLargeArray2.setDouble(j13, doubleLargeArray.getDouble(j15));
                        doubleLargeArray2.setDouble(j16, doubleLargeArray.getDouble(j15 + 1));
                        doubleLargeArray2.setDouble(this.slicesl + j16, doubleLargeArray.getDouble(j15 + 2));
                        doubleLargeArray2.setDouble(j16 + (this.slicesl * 2), doubleLargeArray.getDouble(j15 + 3));
                        j13++;
                        j10 = j10;
                        j11 = j11;
                    }
                    long j17 = j10;
                    long j18 = j11;
                    this.dhtSlices.forward(doubleLargeArray2, 0L);
                    this.dhtSlices.forward(doubleLargeArray2, this.slicesl);
                    this.dhtSlices.forward(doubleLargeArray2, this.slicesl * 2);
                    this.dhtSlices.forward(doubleLargeArray2, this.slicesl * 3);
                    long j19 = 0;
                    while (true) {
                        long j20 = this.slicesl;
                        if (j19 < j20) {
                            long j21 = (this.sliceStridel * j19) + j18 + j12;
                            long j22 = j20 + j19;
                            doubleLargeArray.setDouble(j21, doubleLargeArray2.getDouble(j19));
                            doubleLargeArray.setDouble(j21 + 1, doubleLargeArray2.getDouble(j22));
                            doubleLargeArray.setDouble(j21 + 2, doubleLargeArray2.getDouble(this.slicesl + j22));
                            doubleLargeArray.setDouble(j21 + 3, doubleLargeArray2.getDouble(j22 + (this.slicesl * 2)));
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
                        doubleLargeArray2.setDouble(j26, doubleLargeArray.getDouble(j27));
                        doubleLargeArray2.setDouble(this.slicesl + j26, doubleLargeArray.getDouble(j27 + 1));
                    }
                    this.dhtSlices.inverse(doubleLargeArray2, 0L, z);
                    this.dhtSlices.inverse(doubleLargeArray2, this.slicesl, z);
                    for (long j28 = 0; j28 < this.slicesl; j28++) {
                        long j29 = (this.sliceStridel * j28) + j25;
                        doubleLargeArray.setDouble(j29, doubleLargeArray2.getDouble(j28));
                        doubleLargeArray.setDouble(j29 + 1, doubleLargeArray2.getDouble(this.slicesl + j28));
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
                long j33 = 0;
                while (true) {
                    long j34 = this.slicesl;
                    if (j33 >= j34) {
                        break;
                    }
                    long j35 = j30;
                    long j36 = (this.sliceStridel * j33) + j31 + j32;
                    long j37 = j34 + j33;
                    doubleLargeArray2.setDouble(j33, doubleLargeArray.getDouble(j36));
                    doubleLargeArray2.setDouble(j37, doubleLargeArray.getDouble(j36 + 1));
                    doubleLargeArray2.setDouble(this.slicesl + j37, doubleLargeArray.getDouble(j36 + 2));
                    doubleLargeArray2.setDouble(j37 + (this.slicesl * 2), doubleLargeArray.getDouble(j36 + 3));
                    j33++;
                    j30 = j35;
                    j32 = j32;
                    j31 = j31;
                }
                long j38 = j30;
                long j39 = j31;
                long j40 = j32;
                this.dhtSlices.inverse(doubleLargeArray2, 0L, z);
                this.dhtSlices.inverse(doubleLargeArray2, this.slicesl, z);
                this.dhtSlices.inverse(doubleLargeArray2, this.slicesl * 2, z);
                this.dhtSlices.inverse(doubleLargeArray2, this.slicesl * 3, z);
                long j41 = 0;
                while (true) {
                    long j42 = this.slicesl;
                    if (j41 < j42) {
                        long j43 = (this.sliceStridel * j41) + j39 + j40;
                        long j44 = j42 + j41;
                        doubleLargeArray.setDouble(j43, doubleLargeArray2.getDouble(j41));
                        doubleLargeArray.setDouble(j43 + 1, doubleLargeArray2.getDouble(j44));
                        doubleLargeArray.setDouble(j43 + 2, doubleLargeArray2.getDouble(this.slicesl + j44));
                        doubleLargeArray.setDouble(j43 + 3, doubleLargeArray2.getDouble(j44 + (this.slicesl * 2)));
                        j41++;
                    }
                }
                j32 = j40 + 4;
                j30 = j38;
                j31 = j39;
            }
            j30++;
        }
    }

    private void ddxt3db_sub(int i, double[][][] dArr, boolean z) {
        int i2 = this.slices * 4;
        int i3 = this.columns;
        if (i3 == 2) {
            i2 >>= 1;
        }
        double[] dArr2 = new double[i2];
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
                            double[] dArr3 = dArr[i5][i4];
                            dArr2[i5] = dArr3[0];
                            dArr2[i6 + i5] = dArr3[1];
                            i5++;
                        }
                        this.dhtSlices.forward(dArr2, 0);
                        this.dhtSlices.forward(dArr2, this.slices);
                        int i7 = 0;
                        while (true) {
                            int i8 = this.slices;
                            if (i7 < i8) {
                                double[] dArr4 = dArr[i7][i4];
                                dArr4[0] = dArr2[i7];
                                dArr4[1] = dArr2[i8 + i7];
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
                        double[] dArr5 = dArr[i11][i9];
                        dArr2[i11] = dArr5[i10];
                        dArr2[i13] = dArr5[i10 + 1];
                        dArr2[i13 + i12] = dArr5[i10 + 2];
                        dArr2[i13 + (i12 * 2)] = dArr5[i10 + 3];
                        i11++;
                    }
                    this.dhtSlices.forward(dArr2, 0);
                    this.dhtSlices.forward(dArr2, this.slices);
                    this.dhtSlices.forward(dArr2, this.slices * 2);
                    this.dhtSlices.forward(dArr2, this.slices * 3);
                    int i14 = 0;
                    while (true) {
                        int i15 = this.slices;
                        if (i14 < i15) {
                            int i16 = i15 + i14;
                            double[] dArr6 = dArr[i14][i9];
                            dArr6[i10] = dArr2[i14];
                            dArr6[i10 + 1] = dArr2[i16];
                            dArr6[i10 + 2] = dArr2[i16 + i15];
                            dArr6[i10 + 3] = dArr2[i16 + (i15 * 2)];
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
                        double[] dArr7 = dArr[i18][i17];
                        dArr2[i18] = dArr7[0];
                        dArr2[i19 + i18] = dArr7[1];
                        i18++;
                    }
                    this.dhtSlices.inverse(dArr2, 0, z);
                    this.dhtSlices.inverse(dArr2, this.slices, z);
                    int i20 = 0;
                    while (true) {
                        int i21 = this.slices;
                        if (i20 < i21) {
                            double[] dArr8 = dArr[i20][i17];
                            dArr8[0] = dArr2[i20];
                            dArr8[1] = dArr2[i21 + i20];
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
                        double[] dArr9 = dArr[i24][i22];
                        dArr2[i24] = dArr9[i23];
                        dArr2[i26] = dArr9[i23 + 1];
                        dArr2[i26 + i25] = dArr9[i23 + 2];
                        dArr2[i26 + (i25 * 2)] = dArr9[i23 + 3];
                        i24++;
                    }
                    this.dhtSlices.inverse(dArr2, 0, z);
                    this.dhtSlices.inverse(dArr2, this.slices, z);
                    this.dhtSlices.inverse(dArr2, this.slices * 2, z);
                    this.dhtSlices.inverse(dArr2, this.slices * 3, z);
                    int i27 = 0;
                    while (true) {
                        int i28 = this.slices;
                        if (i27 < i28) {
                            int i29 = i28 + i27;
                            double[] dArr10 = dArr[i27][i22];
                            dArr10[i23] = dArr2[i27];
                            dArr10[i23 + 1] = dArr2[i29];
                            dArr10[i23 + 2] = dArr2[i29 + i28];
                            dArr10[i23 + 3] = dArr2[i29 + (i28 * 2)];
                            i27++;
                        }
                    }
                }
            }
        }
    }

    private void ddxt3da_subth(final int i, final double[] dArr, final boolean z) {
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
            futureArr[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.19
                @Override // java.lang.Runnable
                public void run() {
                    double[] dArr2 = new double[i5];
                    if (i == -1) {
                        int i8 = i7;
                        while (i8 < DoubleDHT_3D.this.slices) {
                            int i9 = DoubleDHT_3D.this.sliceStride * i8;
                            for (int i10 = 0; i10 < DoubleDHT_3D.this.rows; i10++) {
                                DoubleDHT_3D.this.dhtColumns.forward(dArr, (DoubleDHT_3D.this.rowStride * i10) + i9);
                            }
                            if (DoubleDHT_3D.this.columns > 2) {
                                for (int i11 = 0; i11 < DoubleDHT_3D.this.columns; i11 += 4) {
                                    for (int i12 = 0; i12 < DoubleDHT_3D.this.rows; i12++) {
                                        int i13 = (DoubleDHT_3D.this.rowStride * i12) + i9 + i11;
                                        int i14 = DoubleDHT_3D.this.rows + i12;
                                        double[] dArr3 = dArr;
                                        dArr2[i12] = dArr3[i13];
                                        dArr2[i14] = dArr3[i13 + 1];
                                        dArr2[DoubleDHT_3D.this.rows + i14] = dArr[i13 + 2];
                                        dArr2[i14 + (DoubleDHT_3D.this.rows * 2)] = dArr[i13 + 3];
                                    }
                                    DoubleDHT_3D.this.dhtRows.forward(dArr2, 0);
                                    DoubleDHT_3D.this.dhtRows.forward(dArr2, DoubleDHT_3D.this.rows);
                                    DoubleDHT_3D.this.dhtRows.forward(dArr2, DoubleDHT_3D.this.rows * 2);
                                    DoubleDHT_3D.this.dhtRows.forward(dArr2, DoubleDHT_3D.this.rows * 3);
                                    for (int i15 = 0; i15 < DoubleDHT_3D.this.rows; i15++) {
                                        int i16 = (DoubleDHT_3D.this.rowStride * i15) + i9 + i11;
                                        int i17 = DoubleDHT_3D.this.rows + i15;
                                        double[] dArr4 = dArr;
                                        dArr4[i16] = dArr2[i15];
                                        dArr4[i16 + 1] = dArr2[i17];
                                        dArr4[i16 + 2] = dArr2[DoubleDHT_3D.this.rows + i17];
                                        dArr[i16 + 3] = dArr2[i17 + (DoubleDHT_3D.this.rows * 2)];
                                    }
                                }
                            } else if (DoubleDHT_3D.this.columns == 2) {
                                for (int i18 = 0; i18 < DoubleDHT_3D.this.rows; i18++) {
                                    int i19 = (DoubleDHT_3D.this.rowStride * i18) + i9;
                                    dArr2[i18] = dArr[i19];
                                    dArr2[DoubleDHT_3D.this.rows + i18] = dArr[i19 + 1];
                                }
                                DoubleDHT_3D.this.dhtRows.forward(dArr2, 0);
                                DoubleDHT_3D.this.dhtRows.forward(dArr2, DoubleDHT_3D.this.rows);
                                for (int i20 = 0; i20 < DoubleDHT_3D.this.rows; i20++) {
                                    int i21 = (DoubleDHT_3D.this.rowStride * i20) + i9;
                                    double[] dArr5 = dArr;
                                    dArr5[i21] = dArr2[i20];
                                    dArr5[i21 + 1] = dArr2[DoubleDHT_3D.this.rows + i20];
                                }
                            }
                            i8 += i3;
                        }
                        return;
                    }
                    int i22 = i7;
                    while (i22 < DoubleDHT_3D.this.slices) {
                        int i23 = DoubleDHT_3D.this.sliceStride * i22;
                        for (int i24 = 0; i24 < DoubleDHT_3D.this.rows; i24++) {
                            DoubleDHT_3D.this.dhtColumns.inverse(dArr, (DoubleDHT_3D.this.rowStride * i24) + i23, z);
                        }
                        if (DoubleDHT_3D.this.columns > 2) {
                            for (int i25 = 0; i25 < DoubleDHT_3D.this.columns; i25 += 4) {
                                for (int i26 = 0; i26 < DoubleDHT_3D.this.rows; i26++) {
                                    int i27 = (DoubleDHT_3D.this.rowStride * i26) + i23 + i25;
                                    int i28 = DoubleDHT_3D.this.rows + i26;
                                    double[] dArr6 = dArr;
                                    dArr2[i26] = dArr6[i27];
                                    dArr2[i28] = dArr6[i27 + 1];
                                    dArr2[DoubleDHT_3D.this.rows + i28] = dArr[i27 + 2];
                                    dArr2[i28 + (DoubleDHT_3D.this.rows * 2)] = dArr[i27 + 3];
                                }
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, 0, z);
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, DoubleDHT_3D.this.rows, z);
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, DoubleDHT_3D.this.rows * 2, z);
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, DoubleDHT_3D.this.rows * 3, z);
                                for (int i29 = 0; i29 < DoubleDHT_3D.this.rows; i29++) {
                                    int i30 = (DoubleDHT_3D.this.rowStride * i29) + i23 + i25;
                                    int i31 = DoubleDHT_3D.this.rows + i29;
                                    double[] dArr7 = dArr;
                                    dArr7[i30] = dArr2[i29];
                                    dArr7[i30 + 1] = dArr2[i31];
                                    dArr7[i30 + 2] = dArr2[DoubleDHT_3D.this.rows + i31];
                                    dArr[i30 + 3] = dArr2[i31 + (DoubleDHT_3D.this.rows * 2)];
                                }
                            }
                        } else if (DoubleDHT_3D.this.columns == 2) {
                            for (int i32 = 0; i32 < DoubleDHT_3D.this.rows; i32++) {
                                int i33 = (DoubleDHT_3D.this.rowStride * i32) + i23;
                                dArr2[i32] = dArr[i33];
                                dArr2[DoubleDHT_3D.this.rows + i32] = dArr[i33 + 1];
                            }
                            DoubleDHT_3D.this.dhtRows.inverse(dArr2, 0, z);
                            DoubleDHT_3D.this.dhtRows.inverse(dArr2, DoubleDHT_3D.this.rows, z);
                            for (int i34 = 0; i34 < DoubleDHT_3D.this.rows; i34++) {
                                int i35 = (DoubleDHT_3D.this.rowStride * i34) + i23;
                                double[] dArr8 = dArr;
                                dArr8[i35] = dArr2[i34];
                                dArr8[i35 + 1] = dArr2[DoubleDHT_3D.this.rows + i34];
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
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3da_subth(final int i, final DoubleLargeArray doubleLargeArray, final boolean z) {
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
            futureArr[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.20
                @Override // java.lang.Runnable
                public void run() {
                    long j5;
                    long j6;
                    DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(j3);
                    long j7 = 2;
                    long j8 = 1;
                    if (i == -1) {
                        long j9 = j4;
                        while (j9 < DoubleDHT_3D.this.slicesl) {
                            long j10 = DoubleDHT_3D.this.sliceStride * j9;
                            for (long j11 = 0; j11 < DoubleDHT_3D.this.rowsl; j11 += j8) {
                                DoubleDHT_3D.this.dhtColumns.forward(doubleLargeArray, (DoubleDHT_3D.this.rowStride * j11) + j10);
                            }
                            if (DoubleDHT_3D.this.columnsl > j7) {
                                long j12 = 0;
                                while (j12 < DoubleDHT_3D.this.columnsl) {
                                    long j13 = 0;
                                    while (j13 < DoubleDHT_3D.this.rowsl) {
                                        long j14 = (DoubleDHT_3D.this.rowStride * j13) + j10 + j12;
                                        long j15 = DoubleDHT_3D.this.rowsl + j13;
                                        doubleLargeArray2.setDouble(j13, doubleLargeArray.getDouble(j14));
                                        doubleLargeArray2.setDouble(j15, doubleLargeArray.getDouble(j14 + 1));
                                        doubleLargeArray2.setDouble(DoubleDHT_3D.this.rowsl + j15, doubleLargeArray.getDouble(j14 + 2));
                                        doubleLargeArray2.setDouble(j15 + (DoubleDHT_3D.this.rowsl * 2), doubleLargeArray.getDouble(j14 + 3));
                                        j13++;
                                        j9 = j9;
                                        j12 = j12;
                                    }
                                    long j16 = j9;
                                    long j17 = j12;
                                    DoubleDHT_3D.this.dhtRows.forward(doubleLargeArray2, 0L);
                                    DoubleDHT_3D.this.dhtRows.forward(doubleLargeArray2, DoubleDHT_3D.this.rowsl);
                                    DoubleDHT_3D.this.dhtRows.forward(doubleLargeArray2, DoubleDHT_3D.this.rowsl * 2);
                                    DoubleDHT_3D.this.dhtRows.forward(doubleLargeArray2, DoubleDHT_3D.this.rowsl * 3);
                                    for (long j18 = 0; j18 < DoubleDHT_3D.this.rowsl; j18++) {
                                        long j19 = (DoubleDHT_3D.this.rowStride * j18) + j10 + j17;
                                        long j20 = DoubleDHT_3D.this.rowsl + j18;
                                        doubleLargeArray.setDouble(j19, doubleLargeArray2.getDouble(j18));
                                        doubleLargeArray.setDouble(j19 + 1, doubleLargeArray2.getDouble(j20));
                                        doubleLargeArray.setDouble(j19 + 2, doubleLargeArray2.getDouble(j20 + DoubleDHT_3D.this.rowsl));
                                        doubleLargeArray.setDouble(j19 + 3, doubleLargeArray2.getDouble(j20 + (DoubleDHT_3D.this.rowsl * 2)));
                                    }
                                    j12 = j17 + 4;
                                    j9 = j16;
                                }
                                j6 = j9;
                            } else {
                                j6 = j9;
                                if (DoubleDHT_3D.this.columnsl == j7) {
                                    for (long j21 = 0; j21 < DoubleDHT_3D.this.rowsl; j21++) {
                                        long j22 = (DoubleDHT_3D.this.rowStride * j21) + j10;
                                        doubleLargeArray2.setDouble(j21, doubleLargeArray.getDouble(j22));
                                        doubleLargeArray2.setDouble(DoubleDHT_3D.this.rowsl + j21, doubleLargeArray.getDouble(j22 + 1));
                                    }
                                    DoubleDHT_3D.this.dhtRows.forward(doubleLargeArray2, 0L);
                                    DoubleDHT_3D.this.dhtRows.forward(doubleLargeArray2, DoubleDHT_3D.this.rowsl);
                                    for (long j23 = 0; j23 < DoubleDHT_3D.this.rowsl; j23++) {
                                        long j24 = (DoubleDHT_3D.this.rowStride * j23) + j10;
                                        doubleLargeArray.setDouble(j24, doubleLargeArray2.getDouble(j23));
                                        doubleLargeArray.setDouble(j24 + 1, doubleLargeArray2.getDouble(DoubleDHT_3D.this.rowsl + j23));
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
                    while (j25 < DoubleDHT_3D.this.slicesl) {
                        long j26 = DoubleDHT_3D.this.sliceStride * j25;
                        for (long j27 = 0; j27 < DoubleDHT_3D.this.rowsl; j27++) {
                            DoubleDHT_3D.this.dhtColumns.inverse(doubleLargeArray, (DoubleDHT_3D.this.rowStride * j27) + j26, z);
                        }
                        if (DoubleDHT_3D.this.columnsl > 2) {
                            long j28 = 0;
                            while (j28 < DoubleDHT_3D.this.columnsl) {
                                long j29 = 0;
                                while (j29 < DoubleDHT_3D.this.rowsl) {
                                    long j30 = (DoubleDHT_3D.this.rowStride * j29) + j26 + j28;
                                    long j31 = DoubleDHT_3D.this.rowsl + j29;
                                    doubleLargeArray2.setDouble(j29, doubleLargeArray.getDouble(j30));
                                    doubleLargeArray2.setDouble(j31, doubleLargeArray.getDouble(j30 + 1));
                                    doubleLargeArray2.setDouble(DoubleDHT_3D.this.rowsl + j31, doubleLargeArray.getDouble(j30 + 2));
                                    doubleLargeArray2.setDouble(j31 + (DoubleDHT_3D.this.rowsl * 2), doubleLargeArray.getDouble(j30 + 3));
                                    j29++;
                                    j25 = j25;
                                    j28 = j28;
                                }
                                long j32 = j25;
                                long j33 = j28;
                                DoubleDHT_3D.this.dhtRows.inverse(doubleLargeArray2, 0L, z);
                                DoubleDHT_3D.this.dhtRows.inverse(doubleLargeArray2, DoubleDHT_3D.this.rowsl, z);
                                DoubleDHT_3D.this.dhtRows.inverse(doubleLargeArray2, DoubleDHT_3D.this.rowsl * 2, z);
                                DoubleDHT_3D.this.dhtRows.inverse(doubleLargeArray2, DoubleDHT_3D.this.rowsl * 3, z);
                                for (long j34 = 0; j34 < DoubleDHT_3D.this.rowsl; j34++) {
                                    long j35 = (DoubleDHT_3D.this.rowStride * j34) + j26 + j33;
                                    long j36 = DoubleDHT_3D.this.rowsl + j34;
                                    doubleLargeArray.setDouble(j35, doubleLargeArray2.getDouble(j34));
                                    doubleLargeArray.setDouble(j35 + 1, doubleLargeArray2.getDouble(j36));
                                    doubleLargeArray.setDouble(j35 + 2, doubleLargeArray2.getDouble(j36 + DoubleDHT_3D.this.rowsl));
                                    doubleLargeArray.setDouble(j35 + 3, doubleLargeArray2.getDouble(j36 + (DoubleDHT_3D.this.rowsl * 2)));
                                }
                                j28 = j33 + 4;
                                j25 = j32;
                            }
                            j5 = j25;
                        } else {
                            j5 = j25;
                            if (DoubleDHT_3D.this.columnsl == 2) {
                                for (long j37 = 0; j37 < DoubleDHT_3D.this.rowsl; j37++) {
                                    long j38 = (DoubleDHT_3D.this.rowStride * j37) + j26;
                                    doubleLargeArray2.setDouble(j37, doubleLargeArray.getDouble(j38));
                                    doubleLargeArray2.setDouble(DoubleDHT_3D.this.rowsl + j37, doubleLargeArray.getDouble(j38 + 1));
                                }
                                DoubleDHT_3D.this.dhtRows.inverse(doubleLargeArray2, 0L, z);
                                DoubleDHT_3D.this.dhtRows.inverse(doubleLargeArray2, DoubleDHT_3D.this.rowsl, z);
                                for (long j39 = 0; j39 < DoubleDHT_3D.this.rowsl; j39++) {
                                    long j40 = (DoubleDHT_3D.this.rowStride * j39) + j26;
                                    doubleLargeArray.setDouble(j40, doubleLargeArray2.getDouble(j39));
                                    doubleLargeArray.setDouble(j40 + 1, doubleLargeArray2.getDouble(DoubleDHT_3D.this.rowsl + j39));
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
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3da_subth(final int i, final double[][][] dArr, final boolean z) {
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
            futureArr[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.21
                @Override // java.lang.Runnable
                public void run() {
                    double[] dArr2 = new double[i5];
                    if (i == -1) {
                        int i8 = i7;
                        while (i8 < DoubleDHT_3D.this.slices) {
                            for (int i9 = 0; i9 < DoubleDHT_3D.this.rows; i9++) {
                                DoubleDHT_3D.this.dhtColumns.forward(dArr[i8][i9]);
                            }
                            if (DoubleDHT_3D.this.columns > 2) {
                                for (int i10 = 0; i10 < DoubleDHT_3D.this.columns; i10 += 4) {
                                    for (int i11 = 0; i11 < DoubleDHT_3D.this.rows; i11++) {
                                        int i12 = DoubleDHT_3D.this.rows + i11;
                                        double[] dArr3 = dArr[i8][i11];
                                        dArr2[i11] = dArr3[i10];
                                        dArr2[i12] = dArr3[i10 + 1];
                                        dArr2[DoubleDHT_3D.this.rows + i12] = dArr[i8][i11][i10 + 2];
                                        dArr2[i12 + (DoubleDHT_3D.this.rows * 2)] = dArr[i8][i11][i10 + 3];
                                    }
                                    DoubleDHT_3D.this.dhtRows.forward(dArr2, 0);
                                    DoubleDHT_3D.this.dhtRows.forward(dArr2, DoubleDHT_3D.this.rows);
                                    DoubleDHT_3D.this.dhtRows.forward(dArr2, DoubleDHT_3D.this.rows * 2);
                                    DoubleDHT_3D.this.dhtRows.forward(dArr2, DoubleDHT_3D.this.rows * 3);
                                    for (int i13 = 0; i13 < DoubleDHT_3D.this.rows; i13++) {
                                        int i14 = DoubleDHT_3D.this.rows + i13;
                                        double[] dArr4 = dArr[i8][i13];
                                        dArr4[i10] = dArr2[i13];
                                        dArr4[i10 + 1] = dArr2[i14];
                                        dArr4[i10 + 2] = dArr2[DoubleDHT_3D.this.rows + i14];
                                        dArr[i8][i13][i10 + 3] = dArr2[i14 + (DoubleDHT_3D.this.rows * 2)];
                                    }
                                }
                            } else if (DoubleDHT_3D.this.columns == 2) {
                                for (int i15 = 0; i15 < DoubleDHT_3D.this.rows; i15++) {
                                    dArr2[i15] = dArr[i8][i15][0];
                                    dArr2[DoubleDHT_3D.this.rows + i15] = dArr[i8][i15][1];
                                }
                                DoubleDHT_3D.this.dhtRows.forward(dArr2, 0);
                                DoubleDHT_3D.this.dhtRows.forward(dArr2, DoubleDHT_3D.this.rows);
                                for (int i16 = 0; i16 < DoubleDHT_3D.this.rows; i16++) {
                                    double[] dArr5 = dArr[i8][i16];
                                    dArr5[0] = dArr2[i16];
                                    dArr5[1] = dArr2[DoubleDHT_3D.this.rows + i16];
                                }
                            }
                            i8 += i3;
                        }
                        return;
                    }
                    int i17 = i7;
                    while (i17 < DoubleDHT_3D.this.slices) {
                        for (int i18 = 0; i18 < DoubleDHT_3D.this.rows; i18++) {
                            DoubleDHT_3D.this.dhtColumns.inverse(dArr[i17][i18], z);
                        }
                        if (DoubleDHT_3D.this.columns > 2) {
                            for (int i19 = 0; i19 < DoubleDHT_3D.this.columns; i19 += 4) {
                                for (int i20 = 0; i20 < DoubleDHT_3D.this.rows; i20++) {
                                    int i21 = DoubleDHT_3D.this.rows + i20;
                                    double[] dArr6 = dArr[i17][i20];
                                    dArr2[i20] = dArr6[i19];
                                    dArr2[i21] = dArr6[i19 + 1];
                                    dArr2[DoubleDHT_3D.this.rows + i21] = dArr[i17][i20][i19 + 2];
                                    dArr2[i21 + (DoubleDHT_3D.this.rows * 2)] = dArr[i17][i20][i19 + 3];
                                }
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, 0, z);
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, DoubleDHT_3D.this.rows, z);
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, DoubleDHT_3D.this.rows * 2, z);
                                DoubleDHT_3D.this.dhtRows.inverse(dArr2, DoubleDHT_3D.this.rows * 3, z);
                                for (int i22 = 0; i22 < DoubleDHT_3D.this.rows; i22++) {
                                    int i23 = DoubleDHT_3D.this.rows + i22;
                                    double[] dArr7 = dArr[i17][i22];
                                    dArr7[i19] = dArr2[i22];
                                    dArr7[i19 + 1] = dArr2[i23];
                                    dArr7[i19 + 2] = dArr2[DoubleDHT_3D.this.rows + i23];
                                    dArr[i17][i22][i19 + 3] = dArr2[i23 + (DoubleDHT_3D.this.rows * 2)];
                                }
                            }
                        } else if (DoubleDHT_3D.this.columns == 2) {
                            for (int i24 = 0; i24 < DoubleDHT_3D.this.rows; i24++) {
                                dArr2[i24] = dArr[i17][i24][0];
                                dArr2[DoubleDHT_3D.this.rows + i24] = dArr[i17][i24][1];
                            }
                            DoubleDHT_3D.this.dhtRows.inverse(dArr2, 0, z);
                            DoubleDHT_3D.this.dhtRows.inverse(dArr2, DoubleDHT_3D.this.rows, z);
                            for (int i25 = 0; i25 < DoubleDHT_3D.this.rows; i25++) {
                                double[] dArr8 = dArr[i17][i25];
                                dArr8[0] = dArr2[i25];
                                dArr8[1] = dArr2[DoubleDHT_3D.this.rows + i25];
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
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3db_subth(final int i, final double[] dArr, final boolean z) {
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
            futureArr[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.22
                @Override // java.lang.Runnable
                public void run() {
                    double[] dArr2 = new double[i5];
                    if (i == -1) {
                        if (DoubleDHT_3D.this.columns <= 2) {
                            if (DoubleDHT_3D.this.columns == 2) {
                                int i8 = i7;
                                while (i8 < DoubleDHT_3D.this.rows) {
                                    int i9 = DoubleDHT_3D.this.rowStride * i8;
                                    for (int i10 = 0; i10 < DoubleDHT_3D.this.slices; i10++) {
                                        int i11 = (DoubleDHT_3D.this.sliceStride * i10) + i9;
                                        dArr2[i10] = dArr[i11];
                                        dArr2[DoubleDHT_3D.this.slices + i10] = dArr[i11 + 1];
                                    }
                                    DoubleDHT_3D.this.dhtSlices.forward(dArr2, 0);
                                    DoubleDHT_3D.this.dhtSlices.forward(dArr2, DoubleDHT_3D.this.slices);
                                    for (int i12 = 0; i12 < DoubleDHT_3D.this.slices; i12++) {
                                        int i13 = (DoubleDHT_3D.this.sliceStride * i12) + i9;
                                        double[] dArr3 = dArr;
                                        dArr3[i13] = dArr2[i12];
                                        dArr3[i13 + 1] = dArr2[DoubleDHT_3D.this.slices + i12];
                                    }
                                    i8 += i3;
                                }
                                return;
                            }
                            return;
                        }
                        int i14 = i7;
                        while (i14 < DoubleDHT_3D.this.rows) {
                            int i15 = DoubleDHT_3D.this.rowStride * i14;
                            for (int i16 = 0; i16 < DoubleDHT_3D.this.columns; i16 += 4) {
                                for (int i17 = 0; i17 < DoubleDHT_3D.this.slices; i17++) {
                                    int i18 = (DoubleDHT_3D.this.sliceStride * i17) + i15 + i16;
                                    int i19 = DoubleDHT_3D.this.slices + i17;
                                    double[] dArr4 = dArr;
                                    dArr2[i17] = dArr4[i18];
                                    dArr2[i19] = dArr4[i18 + 1];
                                    dArr2[DoubleDHT_3D.this.slices + i19] = dArr[i18 + 2];
                                    dArr2[i19 + (DoubleDHT_3D.this.slices * 2)] = dArr[i18 + 3];
                                }
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2, 0);
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2, DoubleDHT_3D.this.slices);
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2, DoubleDHT_3D.this.slices * 2);
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2, DoubleDHT_3D.this.slices * 3);
                                for (int i20 = 0; i20 < DoubleDHT_3D.this.slices; i20++) {
                                    int i21 = (DoubleDHT_3D.this.sliceStride * i20) + i15 + i16;
                                    int i22 = DoubleDHT_3D.this.slices + i20;
                                    double[] dArr5 = dArr;
                                    dArr5[i21] = dArr2[i20];
                                    dArr5[i21 + 1] = dArr2[i22];
                                    dArr5[i21 + 2] = dArr2[DoubleDHT_3D.this.slices + i22];
                                    dArr[i21 + 3] = dArr2[i22 + (DoubleDHT_3D.this.slices * 2)];
                                }
                            }
                            i14 += i3;
                        }
                    } else if (DoubleDHT_3D.this.columns <= 2) {
                        if (DoubleDHT_3D.this.columns == 2) {
                            int i23 = i7;
                            while (i23 < DoubleDHT_3D.this.rows) {
                                int i24 = DoubleDHT_3D.this.rowStride * i23;
                                for (int i25 = 0; i25 < DoubleDHT_3D.this.slices; i25++) {
                                    int i26 = (DoubleDHT_3D.this.sliceStride * i25) + i24;
                                    dArr2[i25] = dArr[i26];
                                    dArr2[DoubleDHT_3D.this.slices + i25] = dArr[i26 + 1];
                                }
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, 0, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, DoubleDHT_3D.this.slices, z);
                                for (int i27 = 0; i27 < DoubleDHT_3D.this.slices; i27++) {
                                    int i28 = (DoubleDHT_3D.this.sliceStride * i27) + i24;
                                    double[] dArr6 = dArr;
                                    dArr6[i28] = dArr2[i27];
                                    dArr6[i28 + 1] = dArr2[DoubleDHT_3D.this.slices + i27];
                                }
                                i23 += i3;
                            }
                        }
                    } else {
                        int i29 = i7;
                        while (i29 < DoubleDHT_3D.this.rows) {
                            int i30 = DoubleDHT_3D.this.rowStride * i29;
                            for (int i31 = 0; i31 < DoubleDHT_3D.this.columns; i31 += 4) {
                                for (int i32 = 0; i32 < DoubleDHT_3D.this.slices; i32++) {
                                    int i33 = (DoubleDHT_3D.this.sliceStride * i32) + i30 + i31;
                                    int i34 = DoubleDHT_3D.this.slices + i32;
                                    double[] dArr7 = dArr;
                                    dArr2[i32] = dArr7[i33];
                                    dArr2[i34] = dArr7[i33 + 1];
                                    dArr2[DoubleDHT_3D.this.slices + i34] = dArr[i33 + 2];
                                    dArr2[i34 + (DoubleDHT_3D.this.slices * 2)] = dArr[i33 + 3];
                                }
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, 0, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, DoubleDHT_3D.this.slices, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, DoubleDHT_3D.this.slices * 2, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, DoubleDHT_3D.this.slices * 3, z);
                                for (int i35 = 0; i35 < DoubleDHT_3D.this.slices; i35++) {
                                    int i36 = (DoubleDHT_3D.this.sliceStride * i35) + i30 + i31;
                                    int i37 = DoubleDHT_3D.this.slices + i35;
                                    double[] dArr8 = dArr;
                                    dArr8[i36] = dArr2[i35];
                                    dArr8[i36 + 1] = dArr2[i37];
                                    dArr8[i36 + 2] = dArr2[DoubleDHT_3D.this.slices + i37];
                                    dArr[i36 + 3] = dArr2[i37 + (DoubleDHT_3D.this.slices * 2)];
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
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3db_subth(final int i, final DoubleLargeArray doubleLargeArray, final boolean z) {
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
            futureArr[i4] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.23
                @Override // java.lang.Runnable
                public void run() {
                    DoubleLargeArray doubleLargeArray2 = new DoubleLargeArray(j3);
                    long j5 = 1;
                    if (i == -1) {
                        if (DoubleDHT_3D.this.columnsl <= 2) {
                            if (DoubleDHT_3D.this.columnsl == 2) {
                                long j6 = j4;
                                while (j6 < DoubleDHT_3D.this.rowsl) {
                                    long j7 = DoubleDHT_3D.this.rowStridel * j6;
                                    for (long j8 = 0; j8 < DoubleDHT_3D.this.slicesl; j8++) {
                                        long j9 = (DoubleDHT_3D.this.sliceStridel * j8) + j7;
                                        doubleLargeArray2.setDouble(j8, doubleLargeArray.getDouble(j9));
                                        doubleLargeArray2.setDouble(DoubleDHT_3D.this.slicesl + j8, doubleLargeArray.getDouble(j9 + 1));
                                    }
                                    DoubleDHT_3D.this.dhtSlices.forward(doubleLargeArray2, 0L);
                                    DoubleDHT_3D.this.dhtSlices.forward(doubleLargeArray2, DoubleDHT_3D.this.slicesl);
                                    for (long j10 = 0; j10 < DoubleDHT_3D.this.slicesl; j10++) {
                                        long j11 = (DoubleDHT_3D.this.sliceStridel * j10) + j7;
                                        doubleLargeArray.setDouble(j11, doubleLargeArray2.getDouble(j10));
                                        doubleLargeArray.setDouble(j11 + 1, doubleLargeArray2.getDouble(DoubleDHT_3D.this.slicesl + j10));
                                    }
                                    j6 += i2;
                                }
                                return;
                            }
                            return;
                        }
                        long j12 = j4;
                        while (j12 < DoubleDHT_3D.this.rowsl) {
                            long j13 = DoubleDHT_3D.this.rowStridel * j12;
                            long j14 = 0;
                            while (j14 < DoubleDHT_3D.this.columnsl) {
                                long j15 = 0;
                                while (j15 < DoubleDHT_3D.this.slicesl) {
                                    long j16 = (DoubleDHT_3D.this.sliceStridel * j15) + j13 + j14;
                                    long j17 = DoubleDHT_3D.this.slicesl + j15;
                                    doubleLargeArray2.setDouble(j15, doubleLargeArray.getDouble(j16));
                                    doubleLargeArray2.setDouble(j17, doubleLargeArray.getDouble(j16 + j5));
                                    doubleLargeArray2.setDouble(DoubleDHT_3D.this.slicesl + j17, doubleLargeArray.getDouble(j16 + 2));
                                    doubleLargeArray2.setDouble(j17 + (DoubleDHT_3D.this.slicesl * 2), doubleLargeArray.getDouble(j16 + 3));
                                    j15++;
                                    j5 = 1;
                                    j12 = j12;
                                }
                                long j18 = j12;
                                DoubleDHT_3D.this.dhtSlices.forward(doubleLargeArray2, 0L);
                                DoubleDHT_3D.this.dhtSlices.forward(doubleLargeArray2, DoubleDHT_3D.this.slicesl);
                                DoubleDHT_3D.this.dhtSlices.forward(doubleLargeArray2, DoubleDHT_3D.this.slicesl * 2);
                                DoubleDHT_3D.this.dhtSlices.forward(doubleLargeArray2, DoubleDHT_3D.this.slicesl * 3);
                                for (long j19 = 0; j19 < DoubleDHT_3D.this.slicesl; j19++) {
                                    long j20 = (DoubleDHT_3D.this.sliceStridel * j19) + j13 + j14;
                                    long j21 = DoubleDHT_3D.this.slicesl + j19;
                                    doubleLargeArray.setDouble(j20, doubleLargeArray2.getDouble(j19));
                                    doubleLargeArray.setDouble(j20 + 1, doubleLargeArray2.getDouble(j21));
                                    doubleLargeArray.setDouble(j20 + 2, doubleLargeArray2.getDouble(j21 + DoubleDHT_3D.this.slicesl));
                                    doubleLargeArray.setDouble(j20 + 3, doubleLargeArray2.getDouble(j21 + (DoubleDHT_3D.this.slicesl * 2)));
                                }
                                j14 += 4;
                                j12 = j18;
                                j5 = 1;
                            }
                            j12 += i2;
                            j5 = 1;
                        }
                    } else if (DoubleDHT_3D.this.columnsl <= 2) {
                        if (DoubleDHT_3D.this.columnsl == 2) {
                            long j22 = j4;
                            while (j22 < DoubleDHT_3D.this.rowsl) {
                                long j23 = DoubleDHT_3D.this.rowStridel * j22;
                                for (long j24 = 0; j24 < DoubleDHT_3D.this.slicesl; j24++) {
                                    long j25 = (DoubleDHT_3D.this.sliceStridel * j24) + j23;
                                    doubleLargeArray2.setDouble(j24, doubleLargeArray.getDouble(j25));
                                    doubleLargeArray2.setDouble(DoubleDHT_3D.this.slicesl + j24, doubleLargeArray.getDouble(j25 + 1));
                                }
                                DoubleDHT_3D.this.dhtSlices.inverse(doubleLargeArray2, 0L, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(doubleLargeArray2, DoubleDHT_3D.this.slicesl, z);
                                for (long j26 = 0; j26 < DoubleDHT_3D.this.slicesl; j26++) {
                                    long j27 = (DoubleDHT_3D.this.sliceStridel * j26) + j23;
                                    doubleLargeArray.setDouble(j27, doubleLargeArray2.getDouble(j26));
                                    doubleLargeArray.setDouble(j27 + 1, doubleLargeArray2.getDouble(DoubleDHT_3D.this.slicesl + j26));
                                }
                                j22 += i2;
                            }
                        }
                    } else {
                        long j28 = j4;
                        while (j28 < DoubleDHT_3D.this.rowsl) {
                            long j29 = DoubleDHT_3D.this.rowStridel * j28;
                            long j30 = 0;
                            while (j30 < DoubleDHT_3D.this.columnsl) {
                                long j31 = 0;
                                while (j31 < DoubleDHT_3D.this.slicesl) {
                                    long j32 = (DoubleDHT_3D.this.sliceStridel * j31) + j29 + j30;
                                    long j33 = DoubleDHT_3D.this.slicesl + j31;
                                    doubleLargeArray2.setDouble(j31, doubleLargeArray.getDouble(j32));
                                    doubleLargeArray2.setDouble(j33, doubleLargeArray.getDouble(j32 + 1));
                                    doubleLargeArray2.setDouble(DoubleDHT_3D.this.slicesl + j33, doubleLargeArray.getDouble(j32 + 2));
                                    doubleLargeArray2.setDouble(j33 + (DoubleDHT_3D.this.slicesl * 2), doubleLargeArray.getDouble(j32 + 3));
                                    j31++;
                                    j28 = j28;
                                    j30 = j30;
                                }
                                long j34 = j28;
                                long j35 = j30;
                                DoubleDHT_3D.this.dhtSlices.inverse(doubleLargeArray2, 0L, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(doubleLargeArray2, DoubleDHT_3D.this.slicesl, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(doubleLargeArray2, DoubleDHT_3D.this.slicesl * 2, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(doubleLargeArray2, DoubleDHT_3D.this.slicesl * 3, z);
                                for (long j36 = 0; j36 < DoubleDHT_3D.this.slicesl; j36++) {
                                    long j37 = (DoubleDHT_3D.this.sliceStridel * j36) + j29 + j35;
                                    long j38 = DoubleDHT_3D.this.slicesl + j36;
                                    doubleLargeArray.setDouble(j37, doubleLargeArray2.getDouble(j36));
                                    doubleLargeArray.setDouble(j37 + 1, doubleLargeArray2.getDouble(j38));
                                    doubleLargeArray.setDouble(j37 + 2, doubleLargeArray2.getDouble(j38 + DoubleDHT_3D.this.slicesl));
                                    doubleLargeArray.setDouble(j37 + 3, doubleLargeArray2.getDouble(j38 + (DoubleDHT_3D.this.slicesl * 2)));
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
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void ddxt3db_subth(final int i, final double[][][] dArr, final boolean z) {
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
            futureArr[i6] = ConcurrencyUtils.submit(new Runnable() { // from class: org.jtransforms.dht.DoubleDHT_3D.24
                @Override // java.lang.Runnable
                public void run() {
                    double[] dArr2 = new double[i5];
                    if (i == -1) {
                        if (DoubleDHT_3D.this.columns <= 2) {
                            if (DoubleDHT_3D.this.columns == 2) {
                                int i8 = i7;
                                while (i8 < DoubleDHT_3D.this.rows) {
                                    for (int i9 = 0; i9 < DoubleDHT_3D.this.slices; i9++) {
                                        dArr2[i9] = dArr[i9][i8][0];
                                        dArr2[DoubleDHT_3D.this.slices + i9] = dArr[i9][i8][1];
                                    }
                                    DoubleDHT_3D.this.dhtSlices.forward(dArr2, 0);
                                    DoubleDHT_3D.this.dhtSlices.forward(dArr2, DoubleDHT_3D.this.slices);
                                    for (int i10 = 0; i10 < DoubleDHT_3D.this.slices; i10++) {
                                        double[] dArr3 = dArr[i10][i8];
                                        dArr3[0] = dArr2[i10];
                                        dArr3[1] = dArr2[DoubleDHT_3D.this.slices + i10];
                                    }
                                    i8 += i3;
                                }
                                return;
                            }
                            return;
                        }
                        int i11 = i7;
                        while (i11 < DoubleDHT_3D.this.rows) {
                            for (int i12 = 0; i12 < DoubleDHT_3D.this.columns; i12 += 4) {
                                for (int i13 = 0; i13 < DoubleDHT_3D.this.slices; i13++) {
                                    int i14 = DoubleDHT_3D.this.slices + i13;
                                    double[] dArr4 = dArr[i13][i11];
                                    dArr2[i13] = dArr4[i12];
                                    dArr2[i14] = dArr4[i12 + 1];
                                    dArr2[DoubleDHT_3D.this.slices + i14] = dArr[i13][i11][i12 + 2];
                                    dArr2[i14 + (DoubleDHT_3D.this.slices * 2)] = dArr[i13][i11][i12 + 3];
                                }
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2, 0);
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2, DoubleDHT_3D.this.slices);
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2, DoubleDHT_3D.this.slices * 2);
                                DoubleDHT_3D.this.dhtSlices.forward(dArr2, DoubleDHT_3D.this.slices * 3);
                                for (int i15 = 0; i15 < DoubleDHT_3D.this.slices; i15++) {
                                    int i16 = DoubleDHT_3D.this.slices + i15;
                                    double[] dArr5 = dArr[i15][i11];
                                    dArr5[i12] = dArr2[i15];
                                    dArr5[i12 + 1] = dArr2[i16];
                                    dArr5[i12 + 2] = dArr2[DoubleDHT_3D.this.slices + i16];
                                    dArr[i15][i11][i12 + 3] = dArr2[i16 + (DoubleDHT_3D.this.slices * 2)];
                                }
                            }
                            i11 += i3;
                        }
                    } else if (DoubleDHT_3D.this.columns <= 2) {
                        if (DoubleDHT_3D.this.columns == 2) {
                            int i17 = i7;
                            while (i17 < DoubleDHT_3D.this.rows) {
                                for (int i18 = 0; i18 < DoubleDHT_3D.this.slices; i18++) {
                                    dArr2[i18] = dArr[i18][i17][0];
                                    dArr2[DoubleDHT_3D.this.slices + i18] = dArr[i18][i17][1];
                                }
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, 0, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, DoubleDHT_3D.this.slices, z);
                                for (int i19 = 0; i19 < DoubleDHT_3D.this.slices; i19++) {
                                    double[] dArr6 = dArr[i19][i17];
                                    dArr6[0] = dArr2[i19];
                                    dArr6[1] = dArr2[DoubleDHT_3D.this.slices + i19];
                                }
                                i17 += i3;
                            }
                        }
                    } else {
                        int i20 = i7;
                        while (i20 < DoubleDHT_3D.this.rows) {
                            for (int i21 = 0; i21 < DoubleDHT_3D.this.columns; i21 += 4) {
                                for (int i22 = 0; i22 < DoubleDHT_3D.this.slices; i22++) {
                                    int i23 = DoubleDHT_3D.this.slices + i22;
                                    double[] dArr7 = dArr[i22][i20];
                                    dArr2[i22] = dArr7[i21];
                                    dArr2[i23] = dArr7[i21 + 1];
                                    dArr2[DoubleDHT_3D.this.slices + i23] = dArr[i22][i20][i21 + 2];
                                    dArr2[i23 + (DoubleDHT_3D.this.slices * 2)] = dArr[i22][i20][i21 + 3];
                                }
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, 0, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, DoubleDHT_3D.this.slices, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, DoubleDHT_3D.this.slices * 2, z);
                                DoubleDHT_3D.this.dhtSlices.inverse(dArr2, DoubleDHT_3D.this.slices * 3, z);
                                for (int i24 = 0; i24 < DoubleDHT_3D.this.slices; i24++) {
                                    int i25 = DoubleDHT_3D.this.slices + i24;
                                    double[] dArr8 = dArr[i24][i20];
                                    dArr8[i21] = dArr2[i24];
                                    dArr8[i21 + 1] = dArr2[i25];
                                    dArr8[i21 + 2] = dArr2[DoubleDHT_3D.this.slices + i25];
                                    dArr[i24][i20][i21 + 3] = dArr2[i25 + (DoubleDHT_3D.this.slices * 2)];
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
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
        } catch (ExecutionException e2) {
            Logger.getLogger(DoubleDHT_3D.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e2);
        }
    }

    private void yTransform(double[] dArr) {
        int i = 0;
        while (true) {
            int i2 = this.slices;
            if (i > i2 / 2) {
                return;
            }
            int i3 = (i2 - i) % i2;
            int i4 = this.sliceStride;
            int i5 = i * i4;
            int i6 = i3 * i4;
            int i7 = 0;
            while (true) {
                int i8 = this.rows;
                if (i7 <= i8 / 2) {
                    int i9 = (i8 - i7) % i8;
                    int i10 = this.rowStride;
                    int i11 = i7 * i10;
                    int i12 = i9 * i10;
                    int i13 = 0;
                    while (true) {
                        int i14 = this.columns;
                        if (i13 <= i14 / 2) {
                            int i15 = (i14 - i13) % i14;
                            int i16 = i5 + i12;
                            int i17 = i16 + i13;
                            int i18 = i5 + i11;
                            int i19 = i18 + i15;
                            int i20 = i6 + i11;
                            int i21 = i20 + i13;
                            int i22 = i6 + i12;
                            int i23 = i22 + i15;
                            int i24 = i22 + i13;
                            int i25 = i20 + i15;
                            int i26 = i18 + i13;
                            int i27 = i16 + i15;
                            double d = dArr[i17];
                            double d2 = dArr[i19];
                            double d3 = dArr[i21];
                            double d4 = dArr[i23];
                            double d5 = dArr[i24];
                            double d6 = dArr[i25];
                            double d7 = dArr[i26];
                            double d8 = dArr[i27];
                            double d9 = d + d2;
                            dArr[i26] = ((d9 + d3) - d4) / 2.0d;
                            double d10 = d5 + d6;
                            dArr[i21] = ((d10 + d7) - d8) / 2.0d;
                            double d11 = d7 + d8;
                            dArr[i17] = ((d11 + d5) - d6) / 2.0d;
                            double d12 = d3 + d4;
                            dArr[i24] = ((d12 + d) - d2) / 2.0d;
                            dArr[i19] = ((d11 + d6) - d5) / 2.0d;
                            dArr[i25] = ((d12 + d2) - d) / 2.0d;
                            dArr[i27] = ((d9 + d4) - d3) / 2.0d;
                            dArr[i23] = ((d10 + d8) - d7) / 2.0d;
                            i13++;
                        }
                    }
                    i7++;
                }
            }
            i++;
        }
    }

    private void yTransform(DoubleLargeArray doubleLargeArray) {
        long j = 0;
        while (true) {
            long j2 = this.slicesl;
            long j3 = 2;
            if (j > j2 / 2) {
                return;
            }
            long j4 = (j2 - j) % j2;
            long j5 = this.sliceStridel;
            long j6 = j * j5;
            long j7 = j4 * j5;
            long j8 = 0;
            while (true) {
                long j9 = this.rowsl;
                if (j8 <= j9 / j3) {
                    long j10 = (j9 - j8) % j9;
                    long j11 = this.rowStridel;
                    long j12 = j8 * j11;
                    long j13 = j10 * j11;
                    long j14 = 0;
                    while (true) {
                        long j15 = this.columnsl;
                        if (j14 <= j15 / j3) {
                            long j16 = (j15 - j14) % j15;
                            long j17 = j6 + j13;
                            long j18 = j17 + j14;
                            long j19 = j6 + j12;
                            long j20 = j6;
                            long j21 = j19 + j16;
                            long j22 = j7 + j12;
                            long j23 = j;
                            long j24 = j22 + j14;
                            long j25 = j7 + j13;
                            long j26 = j7;
                            long j27 = j25 + j16;
                            long j28 = j8;
                            long j29 = j25 + j14;
                            long j30 = j22 + j16;
                            long j31 = j19 + j14;
                            long j32 = j17 + j16;
                            double d = doubleLargeArray.getDouble(j18);
                            double d2 = doubleLargeArray.getDouble(j21);
                            double d3 = doubleLargeArray.getDouble(j24);
                            double d4 = doubleLargeArray.getDouble(j27);
                            double d5 = doubleLargeArray.getDouble(j29);
                            double d6 = doubleLargeArray.getDouble(j30);
                            double d7 = doubleLargeArray.getDouble(j31);
                            double d8 = doubleLargeArray.getDouble(j32);
                            double d9 = d + d2;
                            doubleLargeArray.setDouble(j31, ((d9 + d3) - d4) / 2.0d);
                            double d10 = d5 + d6;
                            doubleLargeArray.setDouble(j24, ((d10 + d7) - d8) / 2.0d);
                            double d11 = d7 + d8;
                            doubleLargeArray.setDouble(j18, ((d11 + d5) - d6) / 2.0d);
                            double d12 = d3 + d4;
                            doubleLargeArray.setDouble(j29, ((d12 + d) - d2) / 2.0d);
                            doubleLargeArray.setDouble(j21, ((d11 + d6) - d5) / 2.0d);
                            doubleLargeArray.setDouble(j30, ((d12 + d2) - d) / 2.0d);
                            doubleLargeArray.setDouble(j32, ((d9 + d4) - d3) / 2.0d);
                            doubleLargeArray.setDouble(j27, ((d10 + d8) - d7) / 2.0d);
                            j14++;
                            j6 = j20;
                            j = j23;
                            j7 = j26;
                            j8 = j28;
                            j3 = 2;
                        }
                    }
                    j8++;
                    j3 = 2;
                }
            }
            j++;
        }
    }

    private void yTransform(double[][][] dArr) {
        int i = 0;
        while (true) {
            int i2 = this.slices;
            if (i > i2 / 2) {
                return;
            }
            int i3 = (i2 - i) % i2;
            int i4 = 0;
            while (true) {
                int i5 = this.rows;
                if (i4 <= i5 / 2) {
                    int i6 = (i5 - i4) % i5;
                    int i7 = 0;
                    while (true) {
                        int i8 = this.columns;
                        if (i7 <= i8 / 2) {
                            int i9 = (i8 - i7) % i8;
                            double[][] dArr2 = dArr[i];
                            double[] dArr3 = dArr2[i6];
                            double d = dArr3[i7];
                            double[] dArr4 = dArr2[i4];
                            double d2 = dArr4[i9];
                            double[][] dArr5 = dArr[i3];
                            double[] dArr6 = dArr5[i4];
                            double d3 = dArr6[i7];
                            double[] dArr7 = dArr5[i6];
                            double d4 = dArr7[i9];
                            double d5 = dArr7[i7];
                            double d6 = dArr6[i9];
                            double d7 = dArr4[i7];
                            double d8 = dArr3[i9];
                            double d9 = d + d2;
                            dArr4[i7] = ((d9 + d3) - d4) / 2.0d;
                            double d10 = d5 + d6;
                            dArr6[i7] = ((d10 + d7) - d8) / 2.0d;
                            double d11 = d7 + d8;
                            dArr3[i7] = ((d11 + d5) - d6) / 2.0d;
                            double d12 = d3 + d4;
                            dArr7[i7] = ((d12 + d) - d2) / 2.0d;
                            dArr4[i9] = ((d11 + d6) - d5) / 2.0d;
                            dArr6[i9] = ((d12 + d2) - d) / 2.0d;
                            dArr3[i9] = ((d9 + d4) - d3) / 2.0d;
                            dArr7[i9] = ((d10 + d8) - d7) / 2.0d;
                            i7++;
                        }
                    }
                    i4++;
                }
            }
            i++;
        }
    }
}
