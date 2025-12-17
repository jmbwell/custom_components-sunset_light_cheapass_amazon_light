package org.jtransforms.fft;

import org.apache.commons.math3.util.FastMath;
import pl.edu.icm.jlargearrays.DoubleLargeArray;
import pl.edu.icm.jlargearrays.FloatLargeArray;
/* loaded from: classes5.dex */
public class RealFFTUtils_3D {
    private static final int ONE = 1;
    private static final long ONEL = 1;
    private static final int TWO = 2;
    private static final long TWOL = 2;
    private static final int ZERO = 0;
    private static final long ZEROL = 0;
    private final int columns;
    private final long columnsl;
    private final int rowStride;
    private final long rowStridel;
    private final int rows;
    private final long rowsl;
    private final int sliceStride;
    private final long sliceStridel;
    private final int slices;
    private final long slicesl;

    public RealFFTUtils_3D(long j, long j2, long j3) {
        this.slices = (int) j;
        int i = (int) j2;
        this.rows = i;
        int i2 = (int) j3;
        this.columns = i2;
        this.rowStride = i2;
        this.sliceStride = i * i2;
        this.slicesl = j;
        this.rowsl = j2;
        this.columnsl = j3;
        this.rowStridel = j3;
        this.sliceStridel = j2 * j3;
    }

    public int getIndex(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7 = i3 & 1;
        int i8 = i2 << 1;
        int i9 = i << 1;
        int i10 = i == 0 ? 0 : this.slices - i;
        int i11 = i2 == 0 ? 0 : this.rows - i2;
        if (i3 > 1) {
            int i12 = this.columns;
            if (i3 >= i12) {
                if (i3 > i12 + 1) {
                    int i13 = (i10 * this.sliceStride) + (i11 * this.rowStride) + ((i12 << 1) - i3);
                    return i7 == 0 ? i13 : -(i13 + 2);
                } else if (i2 == 0) {
                    if (i == 0) {
                        return i7 == 0 ? 1 : Integer.MIN_VALUE;
                    }
                    int i14 = this.slices;
                    if (i9 < i14) {
                        int i15 = i10 * this.sliceStride;
                        return i7 == 0 ? i15 + 1 : -i15;
                    } else if (i9 > i14) {
                        int i16 = i * this.sliceStride;
                        return i7 == 0 ? i16 + 1 : i16;
                    } else {
                        int i17 = i * this.sliceStride;
                        if (i7 == 0) {
                            return i17 + 1;
                        }
                        return Integer.MIN_VALUE;
                    }
                } else {
                    int i18 = this.rows;
                    if (i8 < i18) {
                        int i19 = (i10 * this.sliceStride) + (i11 * this.rowStride);
                        return i7 == 0 ? i19 + 1 : -i19;
                    } else if (i8 > i18) {
                        int i20 = (i * this.sliceStride) + (i2 * this.rowStride);
                        return i7 == 0 ? i20 + 1 : i20;
                    } else if (i == 0) {
                        int i21 = (i2 * this.rowStride) + 1;
                        if (i7 == 0) {
                            return i21;
                        }
                        return Integer.MIN_VALUE;
                    } else {
                        int i22 = this.slices;
                        if (i9 < i22) {
                            int i23 = (i10 * this.sliceStride) + (i2 * this.rowStride);
                            return i7 == 0 ? i23 + 1 : -i23;
                        } else if (i9 > i22) {
                            int i24 = (i * this.sliceStride) + (i2 * this.rowStride);
                            return i7 == 0 ? i24 + 1 : i24;
                        } else {
                            int i25 = (i * this.sliceStride) + (i2 * this.rowStride);
                            if (i7 == 0) {
                                return i25 + 1;
                            }
                            return Integer.MIN_VALUE;
                        }
                    }
                }
            }
            i4 = i * this.sliceStride;
            i5 = this.rowStride;
        } else if (i2 == 0) {
            if (i == 0) {
                return i3 == 0 ? 0 : Integer.MIN_VALUE;
            }
            int i26 = this.slices;
            if (i9 < i26) {
                i6 = i * this.sliceStride;
                return i6 + i3;
            } else if (i9 > i26) {
                int i27 = i10 * this.sliceStride;
                return i7 == 0 ? i27 : -(i27 + 1);
            } else if (i7 == 0) {
                return i * this.sliceStride;
            } else {
                return Integer.MIN_VALUE;
            }
        } else {
            int i28 = this.rows;
            if (i8 < i28) {
                i4 = i * this.sliceStride;
                i5 = this.rowStride;
            } else if (i8 > i28) {
                int i29 = (i10 * this.sliceStride) + (i11 * this.rowStride);
                return i7 == 0 ? i29 : -(i29 + 1);
            } else if (i == 0) {
                if (i7 == 0) {
                    return i2 * this.rowStride;
                }
                return Integer.MIN_VALUE;
            } else {
                int i30 = this.slices;
                if (i9 >= i30) {
                    if (i9 > i30) {
                        int i31 = (i10 * this.sliceStride) + (i2 * this.rowStride);
                        return i7 == 0 ? i31 : -(i31 + 1);
                    }
                    int i32 = (i * this.sliceStride) + (i2 * this.rowStride);
                    if (i7 == 0) {
                        return i32;
                    }
                    return Integer.MIN_VALUE;
                }
                i4 = i * this.sliceStride;
                i5 = this.rowStride;
            }
        }
        i6 = i4 + (i2 * i5);
        return i6 + i3;
    }

    public long getIndex(long j, long j2, long j3) {
        long j4;
        long j5;
        long j6;
        long j7 = j3 & 1;
        long j8 = j2 << 1;
        long j9 = j << 1;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        long j10 = i == 0 ? 0L : this.slicesl - j;
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        long j11 = i2 == 0 ? 0L : this.rowsl - j2;
        if (j3 > 1) {
            long j12 = this.columnsl;
            if (j3 >= j12) {
                if (j3 > j12 + 1) {
                    long j13 = (j10 * this.sliceStridel) + (j11 * this.rowStridel) + ((j12 << 1) - j3);
                    return j7 == 0 ? j13 : -(j13 + 2);
                } else if (i2 == 0) {
                    if (i == 0) {
                        return j7 == 0 ? 1L : Long.MIN_VALUE;
                    }
                    long j14 = this.slicesl;
                    if (j9 < j14) {
                        long j15 = j10 * this.sliceStridel;
                        return j7 == 0 ? j15 + 1 : -j15;
                    } else if (j9 > j14) {
                        long j16 = this.sliceStridel * j;
                        return j7 == 0 ? j16 + 1 : j16;
                    } else {
                        long j17 = this.sliceStridel * j;
                        if (j7 == 0) {
                            return j17 + 1;
                        }
                        return Long.MIN_VALUE;
                    }
                } else {
                    long j18 = this.rowsl;
                    if (j8 < j18) {
                        long j19 = (j10 * this.sliceStridel) + (j11 * this.rowStridel);
                        return j7 == 0 ? j19 + 1 : -j19;
                    } else if (j8 > j18) {
                        long j20 = (this.sliceStridel * j) + (this.rowStridel * j2);
                        return j7 == 0 ? j20 + 1 : j20;
                    } else if (i == 0) {
                        long j21 = (this.rowStridel * j2) + 1;
                        if (j7 == 0) {
                            return j21;
                        }
                        return Long.MIN_VALUE;
                    } else {
                        long j22 = this.slicesl;
                        if (j9 < j22) {
                            long j23 = (j10 * this.sliceStridel) + (this.rowStridel * j2);
                            return j7 == 0 ? j23 + 1 : -j23;
                        } else if (j9 > j22) {
                            long j24 = (this.sliceStridel * j) + (this.rowStridel * j2);
                            return j7 == 0 ? j24 + 1 : j24;
                        } else {
                            long j25 = (this.sliceStridel * j) + (this.rowStridel * j2);
                            if (j7 == 0) {
                                return j25 + 1;
                            }
                            return Long.MIN_VALUE;
                        }
                    }
                }
            }
            j4 = this.sliceStridel * j;
            j5 = this.rowStridel;
        } else if (i2 == 0) {
            if (i == 0) {
                return j3 == 0 ? 0L : Long.MIN_VALUE;
            }
            long j26 = this.slicesl;
            if (j9 < j26) {
                j6 = this.sliceStridel * j;
                return j6 + j3;
            } else if (j9 > j26) {
                long j27 = j10 * this.sliceStridel;
                return j7 == 0 ? j27 : -(j27 + 1);
            } else if (j7 == 0) {
                return j * this.sliceStridel;
            } else {
                return Long.MIN_VALUE;
            }
        } else {
            long j28 = this.rowsl;
            if (j8 < j28) {
                j4 = this.sliceStridel * j;
                j5 = this.rowStridel;
            } else if (j8 > j28) {
                long j29 = (j10 * this.sliceStridel) + (j11 * this.rowStridel);
                return j7 == 0 ? j29 : -(j29 + 1);
            } else if (i == 0) {
                if (j7 == 0) {
                    return j2 * this.rowStridel;
                }
                return Long.MIN_VALUE;
            } else {
                long j30 = this.slicesl;
                if (j9 >= j30) {
                    if (j9 > j30) {
                        long j31 = (j10 * this.sliceStridel) + (this.rowStridel * j2);
                        return j7 == 0 ? j31 : -(j31 + 1);
                    }
                    long j32 = (this.sliceStridel * j) + (this.rowStridel * j2);
                    if (j7 == 0) {
                        return j32;
                    }
                    return Long.MIN_VALUE;
                }
                j4 = this.sliceStridel * j;
                j5 = this.rowStridel;
            }
        }
        j6 = j4 + (j5 * j2);
        return j6 + j3;
    }

    public void pack(double d, int i, int i2, int i3, double[] dArr, int i4) {
        int index = getIndex(i, i2, i3);
        if (index >= 0) {
            dArr[i4 + index] = d;
        } else if (index > Integer.MIN_VALUE) {
            dArr[i4 - index] = -d;
        } else {
            throw new IllegalArgumentException(String.format("[%d][%d][%d] component cannot be modified (always zero)", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    public void pack(double d, long j, long j2, long j3, DoubleLargeArray doubleLargeArray, long j4) {
        long index = getIndex(j, j2, j3);
        if (index >= 0) {
            doubleLargeArray.setDouble(j4 + index, d);
        } else if (index > Long.MIN_VALUE) {
            doubleLargeArray.setDouble(j4 - index, -d);
        } else {
            throw new IllegalArgumentException(String.format("[%d][%d][%d] component cannot be modified (always zero)", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    public void pack(double d, int i, int i2, int i3, double[][][] dArr) {
        int index = getIndex(i, i2, i3);
        int abs = FastMath.abs(index);
        int i4 = this.sliceStride;
        int i5 = abs / i4;
        int i6 = abs % i4;
        int i7 = this.rowStride;
        int i8 = i6 / i7;
        int i9 = i6 % i7;
        if (index >= 0) {
            dArr[i5][i8][i9] = d;
        } else if (index > Integer.MIN_VALUE) {
            dArr[i5][i8][i9] = -d;
        } else {
            throw new IllegalArgumentException(String.format("[%d][%d] component cannot be modified (always zero)", Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    public void pack(float f, int i, int i2, int i3, float[] fArr, int i4) {
        int index = getIndex(i, i2, i3);
        if (index >= 0) {
            fArr[i4 + index] = f;
        } else if (index > Integer.MIN_VALUE) {
            fArr[i4 - index] = -f;
        } else {
            throw new IllegalArgumentException(String.format("[%d][%d][%d] component cannot be modified (always zero)", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    public void pack(float f, long j, long j2, long j3, FloatLargeArray floatLargeArray, long j4) {
        long index = getIndex(j, j2, j3);
        if (index >= 0) {
            floatLargeArray.setFloat(j4 + index, f);
        } else if (index > Long.MIN_VALUE) {
            floatLargeArray.setFloat(j4 - index, -f);
        } else {
            throw new IllegalArgumentException(String.format("[%d][%d][%d] component cannot be modified (always zero)", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    public void pack(float f, int i, int i2, int i3, float[][][] fArr) {
        int index = getIndex(i, i2, i3);
        int abs = FastMath.abs(index);
        int i4 = this.sliceStride;
        int i5 = abs / i4;
        int i6 = abs % i4;
        int i7 = this.rowStride;
        int i8 = i6 / i7;
        int i9 = i6 % i7;
        if (index >= 0) {
            fArr[i5][i8][i9] = f;
        } else if (index > Integer.MIN_VALUE) {
            fArr[i5][i8][i9] = -f;
        } else {
            throw new IllegalArgumentException(String.format("[%d][%d][%d] component cannot be modified (always zero)", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    public double unpack(int i, int i2, int i3, double[] dArr, int i4) {
        int index = getIndex(i, i2, i3);
        if (index >= 0) {
            return dArr[i4 + index];
        }
        if (index > Integer.MIN_VALUE) {
            return -dArr[i4 - index];
        }
        return 0.0d;
    }

    public double unpack(long j, long j2, long j3, DoubleLargeArray doubleLargeArray, long j4) {
        long index = getIndex(j, j2, j3);
        if (index >= 0) {
            return doubleLargeArray.getDouble(j4 + index);
        }
        if (index > Long.MIN_VALUE) {
            return -doubleLargeArray.getDouble(j4 - index);
        }
        return 0.0d;
    }

    public double unpack(int i, int i2, int i3, double[][][] dArr) {
        int index = getIndex(i, i2, i3);
        int abs = FastMath.abs(index);
        int i4 = this.sliceStride;
        int i5 = abs / i4;
        int i6 = abs % i4;
        int i7 = this.rowStride;
        int i8 = i6 / i7;
        int i9 = i6 % i7;
        if (index >= 0) {
            return dArr[i5][i8][i9];
        }
        if (index > Integer.MIN_VALUE) {
            return -dArr[i5][i8][i9];
        }
        return 0.0d;
    }

    public float unpack(int i, int i2, int i3, float[] fArr, int i4) {
        int index = getIndex(i, i2, i3);
        if (index >= 0) {
            return fArr[i4 + index];
        }
        if (index > Integer.MIN_VALUE) {
            return -fArr[i4 - index];
        }
        return 0.0f;
    }

    public float unpack(long j, long j2, long j3, FloatLargeArray floatLargeArray, long j4) {
        long index = getIndex(j, j2, j3);
        if (index >= 0) {
            return floatLargeArray.getFloat(j4 + index);
        }
        if (index > Long.MIN_VALUE) {
            return -floatLargeArray.getFloat(j4 - index);
        }
        return 0.0f;
    }

    public float unpack(int i, int i2, int i3, float[][][] fArr) {
        int index = getIndex(i, i2, i3);
        int abs = FastMath.abs(index);
        int i4 = this.sliceStride;
        int i5 = abs / i4;
        int i6 = abs % i4;
        int i7 = this.rowStride;
        int i8 = i6 / i7;
        int i9 = i6 % i7;
        if (index >= 0) {
            return fArr[i5][i8][i9];
        }
        if (index > Integer.MIN_VALUE) {
            return -fArr[i5][i8][i9];
        }
        return 0.0f;
    }
}
