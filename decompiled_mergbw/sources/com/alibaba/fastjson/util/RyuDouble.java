package com.alibaba.fastjson.util;

import androidx.work.WorkRequest;
import java.lang.reflect.Array;
import java.math.BigInteger;
import okhttp3.internal.connection.RealConnection;
/* loaded from: classes.dex */
public final class RyuDouble {
    private static final int[][] POW5_SPLIT = (int[][]) Array.newInstance(Integer.TYPE, 326, 4);
    private static final int[][] POW5_INV_SPLIT = (int[][]) Array.newInstance(Integer.TYPE, 291, 4);

    static {
        BigInteger subtract = BigInteger.ONE.shiftLeft(31).subtract(BigInteger.ONE);
        BigInteger subtract2 = BigInteger.ONE.shiftLeft(31).subtract(BigInteger.ONE);
        int i = 0;
        while (i < 326) {
            BigInteger pow = BigInteger.valueOf(5L).pow(i);
            int bitLength = pow.bitLength();
            int i2 = i == 0 ? 1 : (int) (((i * 23219280) + 9999999) / 10000000);
            if (i2 != bitLength) {
                throw new IllegalStateException(bitLength + " != " + i2);
            }
            if (i < POW5_SPLIT.length) {
                for (int i3 = 0; i3 < 4; i3++) {
                    POW5_SPLIT[i][i3] = pow.shiftRight((bitLength - 121) + ((3 - i3) * 31)).and(subtract).intValue();
                }
            }
            if (i < POW5_INV_SPLIT.length) {
                BigInteger add = BigInteger.ONE.shiftLeft(bitLength + 121).divide(pow).add(BigInteger.ONE);
                for (int i4 = 0; i4 < 4; i4++) {
                    if (i4 == 0) {
                        POW5_INV_SPLIT[i][i4] = add.shiftRight((3 - i4) * 31).intValue();
                    } else {
                        POW5_INV_SPLIT[i][i4] = add.shiftRight((3 - i4) * 31).and(subtract2).intValue();
                    }
                }
            }
            i++;
        }
    }

    public static String toString(double d) {
        char[] cArr = new char[24];
        return new String(cArr, 0, toString(d, cArr, 0));
    }

    public static int toString(double d, char[] cArr, int i) {
        int i2;
        boolean z;
        boolean z2;
        long j;
        long j2;
        int i3;
        long j3;
        boolean z3;
        boolean z4;
        long j4;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z5;
        int i9;
        int i10;
        int i11;
        int i12;
        if (Double.isNaN(d)) {
            cArr[i] = 'N';
            cArr[i + 1] = 'a';
            i12 = i + 3;
            cArr[i + 2] = 'N';
        } else if (d == Double.POSITIVE_INFINITY) {
            cArr[i] = 'I';
            cArr[i + 1] = 'n';
            cArr[i + 2] = 'f';
            cArr[i + 3] = 'i';
            cArr[i + 4] = 'n';
            cArr[i + 5] = 'i';
            cArr[i + 6] = 't';
            cArr[i + 7] = 'y';
            return (i + 8) - i;
        } else if (d == Double.NEGATIVE_INFINITY) {
            cArr[i] = '-';
            cArr[i + 1] = 'I';
            cArr[i + 2] = 'n';
            cArr[i + 3] = 'f';
            cArr[i + 4] = 'i';
            cArr[i + 5] = 'n';
            cArr[i + 6] = 'i';
            cArr[i + 7] = 't';
            i12 = i + 9;
            cArr[i + 8] = 'y';
        } else {
            long doubleToLongBits = Double.doubleToLongBits(d);
            int i13 = (doubleToLongBits > 0L ? 1 : (doubleToLongBits == 0L ? 0 : -1));
            if (i13 != 0) {
                if (doubleToLongBits == Long.MIN_VALUE) {
                    cArr[i] = '-';
                    cArr[i + 1] = '0';
                    cArr[i + 2] = '.';
                    i8 = i + 4;
                    cArr[i + 3] = '0';
                } else {
                    int i14 = (int) ((doubleToLongBits >>> 52) & 2047);
                    long j5 = doubleToLongBits & 4503599627370495L;
                    if (i14 == 0) {
                        i2 = -1074;
                    } else {
                        i2 = i14 - 1075;
                        j5 |= 4503599627370496L;
                    }
                    boolean z6 = i13 < 0;
                    boolean z7 = (j5 & 1) == 0;
                    long j6 = 4 * j5;
                    long j7 = j6 + 2;
                    int i15 = (j5 != 4503599627370496L || i14 <= 1) ? 1 : 0;
                    long j8 = (j6 - 1) - i15;
                    int i16 = i2 - 2;
                    int i17 = 3;
                    if (i16 >= 0) {
                        int max = Math.max(0, ((int) ((i16 * 3010299) / 10000000)) - 1);
                        int i18 = (((-i16) + max) + ((max == 0 ? 1 : (int) (((max * 23219280) + 9999999) / 10000000)) + 121)) - 114;
                        if (i18 < 0) {
                            throw new IllegalArgumentException("" + i18);
                        }
                        int[] iArr = POW5_INV_SPLIT[max];
                        long j9 = j6 >>> 31;
                        long j10 = j6 & 2147483647L;
                        int i19 = iArr[0];
                        int i20 = iArr[1];
                        z = z6;
                        int i21 = iArr[2];
                        z2 = z7;
                        int i22 = iArr[3];
                        long j11 = ((((((((((((j10 * i22) >>> 31) + (i21 * j10)) + (j9 * i22)) >>> 31) + (i20 * j10)) + (i21 * j9)) >>> 31) + (i19 * j10)) + (i20 * j9)) >>> 21) + ((i19 * j9) << 10)) >>> i18;
                        long j12 = j7 >>> 31;
                        long j13 = j7 & 2147483647L;
                        long j14 = i19 * j12;
                        long j15 = i19 * j13;
                        long j16 = i20 * j12;
                        long j17 = i20 * j13;
                        long j18 = i21 * j12;
                        long j19 = i21 * j13;
                        long j20 = j12 * i22;
                        long j21 = j8 >>> 31;
                        long j22 = j8 & 2147483647L;
                        j3 = ((((((((((((j13 * i22) >>> 31) + j19) + j20) >>> 31) + j17) + j18) >>> 31) + j15) + j16) >>> 21) + (j14 << 10)) >>> i18;
                        j2 = ((((((((((((j22 * i22) >>> 31) + (i21 * j22)) + (j21 * i22)) >>> 31) + (i20 * j22)) + (i21 * j21)) >>> 31) + (i19 * j22)) + (i20 * j21)) >>> 21) + ((i19 * j21) << 10)) >>> i18;
                        if (max <= 21) {
                            int i23 = ((j6 % 5) > 0L ? 1 : ((j6 % 5) == 0L ? 0 : -1));
                            if (i23 == 0) {
                                if (i23 != 0) {
                                    i11 = 0;
                                } else if (j6 % 25 != 0) {
                                    i11 = 1;
                                } else if (j6 % 125 != 0) {
                                    i11 = 2;
                                } else if (j6 % 625 != 0) {
                                    i11 = 3;
                                } else {
                                    long j23 = j6 / 625;
                                    i11 = 4;
                                    for (long j24 = 0; j23 > j24 && j23 % 5 == j24; j24 = 0) {
                                        j23 /= 5;
                                        i11++;
                                    }
                                }
                                z4 = i11 >= max;
                                z5 = false;
                                j = j11;
                                z3 = z5;
                                i3 = max;
                            } else if (z2) {
                                if (j8 % 5 != 0) {
                                    i10 = 0;
                                } else if (j8 % 25 != 0) {
                                    i10 = 1;
                                } else if (j8 % 125 != 0) {
                                    i10 = 2;
                                } else if (j8 % 625 != 0) {
                                    i10 = 3;
                                } else {
                                    long j25 = j8 / 625;
                                    i10 = 4;
                                    for (long j26 = 0; j25 > j26 && j25 % 5 == j26; j26 = 0) {
                                        j25 /= 5;
                                        i10++;
                                    }
                                }
                                if (i10 >= max) {
                                    z5 = true;
                                    z4 = false;
                                    j = j11;
                                    z3 = z5;
                                    i3 = max;
                                }
                            } else {
                                if (j7 % 5 != 0) {
                                    i9 = 0;
                                } else if (j7 % 25 != 0) {
                                    i9 = 1;
                                } else if (j7 % 125 != 0) {
                                    i9 = 2;
                                } else if (j7 % 625 != 0) {
                                    i9 = 3;
                                } else {
                                    long j27 = j7 / 625;
                                    i9 = 4;
                                    for (long j28 = 0; j27 > j28 && j27 % 5 == j28; j28 = 0) {
                                        j27 /= 5;
                                        i9++;
                                    }
                                }
                                if (i9 >= max) {
                                    j3--;
                                }
                            }
                        }
                        z5 = false;
                        z4 = false;
                        j = j11;
                        z3 = z5;
                        i3 = max;
                    } else {
                        z = z6;
                        z2 = z7;
                        int i24 = -i16;
                        int max2 = Math.max(0, ((int) ((i24 * 6989700) / 10000000)) - 1);
                        int i25 = i24 - max2;
                        int i26 = (max2 - ((i25 == 0 ? 1 : (int) (((i25 * 23219280) + 9999999) / 10000000)) - 121)) - 114;
                        if (i26 < 0) {
                            throw new IllegalArgumentException("" + i26);
                        }
                        int[] iArr2 = POW5_SPLIT[i25];
                        long j29 = j6 >>> 31;
                        long j30 = j6 & 2147483647L;
                        int i27 = iArr2[0];
                        long j31 = i27 * j29;
                        long j32 = i27 * j30;
                        int i28 = iArr2[1];
                        long j33 = i28 * j29;
                        int i29 = i15;
                        long j34 = i28 * j30;
                        int i30 = iArr2[2];
                        long j35 = i30 * j29;
                        long j36 = i30 * j30;
                        int i31 = iArr2[3];
                        long j37 = j29 * i31;
                        long j38 = j7 >>> 31;
                        long j39 = j7 & 2147483647L;
                        j = ((((((((((((j30 * i31) >>> 31) + j36) + j37) >>> 31) + j34) + j35) >>> 31) + j32) + j33) >>> 21) + (j31 << 10)) >>> i26;
                        long j40 = ((((((((((((i31 * j39) >>> 31) + (i30 * j39)) + (j38 * i31)) >>> 31) + (i28 * j39)) + (i30 * j38)) >>> 31) + (i27 * j39)) + (i28 * j38)) >>> 21) + ((i27 * j38) << 10)) >>> i26;
                        long j41 = j8 >>> 31;
                        long j42 = j8 & 2147483647L;
                        j2 = ((((((((((((i31 * j42) >>> 31) + (i30 * j42)) + (j41 * i31)) >>> 31) + (i28 * j42)) + (i30 * j41)) >>> 31) + (i27 * j42)) + (i28 * j41)) >>> 21) + ((i27 * j41) << 10)) >>> i26;
                        i3 = max2 + i16;
                        if (max2 <= 1) {
                            if (z2) {
                                z4 = true;
                                j3 = j40;
                                z3 = i29 == 1;
                            } else {
                                j3 = j40 - 1;
                                z4 = true;
                                z3 = false;
                            }
                        } else if (max2 < 63) {
                            z4 = (j6 & ((1 << (max2 - 1)) - 1)) == 0;
                            j3 = j40;
                            z3 = false;
                        } else {
                            j3 = j40;
                            z3 = false;
                            z4 = false;
                        }
                    }
                    if (j3 >= 1000000000000000000L) {
                        i17 = 19;
                    } else if (j3 >= 100000000000000000L) {
                        i17 = 18;
                    } else if (j3 >= 10000000000000000L) {
                        i17 = 17;
                    } else if (j3 >= 1000000000000000L) {
                        i17 = 16;
                    } else if (j3 >= 100000000000000L) {
                        i17 = 15;
                    } else if (j3 >= 10000000000000L) {
                        i17 = 14;
                    } else if (j3 >= 1000000000000L) {
                        i17 = 13;
                    } else if (j3 >= 100000000000L) {
                        i17 = 12;
                    } else if (j3 >= RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                        i17 = 11;
                    } else if (j3 >= 1000000000) {
                        i17 = 10;
                    } else if (j3 >= 100000000) {
                        i17 = 9;
                    } else if (j3 >= 10000000) {
                        i17 = 8;
                    } else if (j3 >= 1000000) {
                        i17 = 7;
                    } else if (j3 >= 100000) {
                        i17 = 6;
                    } else if (j3 >= WorkRequest.MIN_BACKOFF_MILLIS) {
                        i17 = 5;
                    } else if (j3 >= 1000) {
                        i17 = 4;
                    } else if (j3 < 100) {
                        i17 = j3 >= 10 ? 2 : 1;
                    }
                    int i32 = i3 + i17;
                    int i33 = i32 - 1;
                    boolean z8 = i33 < -3 || i33 >= 7;
                    if (z3 || z4) {
                        int i34 = 0;
                        int i35 = 0;
                        while (true) {
                            long j43 = j3 / 10;
                            long j44 = j2 / 10;
                            if (j43 <= j44 || (j3 < 100 && z8)) {
                                break;
                            }
                            z3 &= j2 % 10 == 0;
                            z4 &= i34 == 0;
                            i34 = (int) (j % 10);
                            j /= 10;
                            i35++;
                            j3 = j43;
                            j2 = j44;
                        }
                        if (z3 && z2) {
                            while (j2 % 10 == 0 && (j3 >= 100 || !z8)) {
                                z4 &= i34 == 0;
                                i34 = (int) (j % 10);
                                j3 /= 10;
                                j /= 10;
                                j2 /= 10;
                                i35++;
                            }
                        }
                        if (z4 && i34 == 5 && j % 2 == 0) {
                            i34 = 4;
                        }
                        j4 = j + (((j != j2 || (z3 && z2)) && i34 < 5) ? 0 : 1);
                        i4 = i35;
                    } else {
                        int i36 = 0;
                        i4 = 0;
                        while (true) {
                            long j45 = j3 / 10;
                            long j46 = j2 / 10;
                            if (j45 <= j46 || (j3 < 100 && z8)) {
                                break;
                            }
                            i36 = (int) (j % 10);
                            j /= 10;
                            i4++;
                            j3 = j45;
                            j2 = j46;
                        }
                        j4 = j + ((j == j2 || i36 >= 5) ? 1 : 0);
                    }
                    int i37 = i17 - i4;
                    if (z) {
                        i5 = i + 1;
                        cArr[i] = '-';
                    } else {
                        i5 = i;
                    }
                    if (!z8) {
                        char c2 = '0';
                        if (i33 < 0) {
                            int i38 = i5 + 1;
                            cArr[i5] = '0';
                            int i39 = i5 + 2;
                            cArr[i38] = '.';
                            int i40 = -1;
                            while (i40 > i33) {
                                cArr[i39] = c2;
                                i40--;
                                i39++;
                                c2 = '0';
                            }
                            i6 = i39;
                            for (int i41 = 0; i41 < i37; i41++) {
                                cArr[((i39 + i37) - i41) - 1] = (char) ((j4 % 10) + 48);
                                j4 /= 10;
                                i6++;
                            }
                        } else if (i32 >= i37) {
                            for (int i42 = 0; i42 < i37; i42++) {
                                cArr[((i5 + i37) - i42) - 1] = (char) ((j4 % 10) + 48);
                                j4 /= 10;
                            }
                            int i43 = i5 + i37;
                            while (i37 < i32) {
                                cArr[i43] = '0';
                                i37++;
                                i43++;
                            }
                            cArr[i43] = '.';
                            i6 = i43 + 2;
                            cArr[i43 + 1] = '0';
                        } else {
                            int i44 = i5 + 1;
                            for (int i45 = 0; i45 < i37; i45++) {
                                if ((i37 - i45) - 1 == i33) {
                                    cArr[((i44 + i37) - i45) - 1] = '.';
                                    i44--;
                                }
                                cArr[((i44 + i37) - i45) - 1] = (char) ((j4 % 10) + 48);
                                j4 /= 10;
                            }
                            i6 = i5 + i37 + 1;
                        }
                        return i6 - i;
                    }
                    for (int i46 = 0; i46 < i37 - 1; i46++) {
                        j4 /= 10;
                        cArr[(i5 + i37) - i46] = (char) (((int) (j4 % 10)) + 48);
                    }
                    cArr[i5] = (char) ((j4 % 10) + 48);
                    cArr[i5 + 1] = '.';
                    int i47 = i5 + i37 + 1;
                    if (i37 == 1) {
                        cArr[i47] = '0';
                        i47++;
                    }
                    int i48 = i47 + 1;
                    cArr[i47] = 'E';
                    if (i33 < 0) {
                        cArr[i48] = '-';
                        i33 = -i33;
                        i48 = i47 + 2;
                    }
                    if (i33 >= 100) {
                        int i49 = i48 + 1;
                        i7 = 48;
                        cArr[i48] = (char) ((i33 / 100) + 48);
                        i33 %= 100;
                        i48 += 2;
                        cArr[i49] = (char) ((i33 / 10) + 48);
                    } else {
                        i7 = 48;
                        if (i33 >= 10) {
                            cArr[i48] = (char) ((i33 / 10) + 48);
                            i48++;
                        }
                    }
                    i8 = i48 + 1;
                    cArr[i48] = (char) ((i33 % 10) + i7);
                }
                return i8 - i;
            }
            cArr[i] = '0';
            cArr[i + 1] = '.';
            i12 = i + 3;
            cArr[i + 2] = '0';
        }
        return i12 - i;
    }
}
