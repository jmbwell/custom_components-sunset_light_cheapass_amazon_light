package org.apache.commons.math3.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.distribution.UniformIntegerDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
/* loaded from: classes5.dex */
public class MathArrays {
    private static final int SPLIT_FACTOR = 134217729;

    /* loaded from: classes5.dex */
    public interface Function {
        double evaluate(double[] dArr);

        double evaluate(double[] dArr, int i, int i2);
    }

    /* loaded from: classes5.dex */
    public enum OrderDirection {
        INCREASING,
        DECREASING
    }

    /* loaded from: classes5.dex */
    public enum Position {
        HEAD,
        TAIL
    }

    private MathArrays() {
    }

    public static double[] scale(double d, double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = dArr[i] * d;
        }
        return dArr2;
    }

    public static void scaleInPlace(double d, double[] dArr) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = dArr[i] * d;
        }
    }

    public static double[] ebeAdd(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        double[] dArr3 = (double[]) dArr.clone();
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr3[i] + dArr2[i];
        }
        return dArr3;
    }

    public static double[] ebeSubtract(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        double[] dArr3 = (double[]) dArr.clone();
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr3[i] - dArr2[i];
        }
        return dArr3;
    }

    public static double[] ebeMultiply(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        double[] dArr3 = (double[]) dArr.clone();
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr3[i] * dArr2[i];
        }
        return dArr3;
    }

    public static double[] ebeDivide(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        double[] dArr3 = (double[]) dArr.clone();
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr3[i] / dArr2[i];
        }
        return dArr3;
    }

    public static double distance1(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += FastMath.abs(dArr[i] - dArr2[i]);
        }
        return d;
    }

    public static int distance1(int[] iArr, int[] iArr2) {
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i += FastMath.abs(iArr[i2] - iArr2[i2]);
        }
        return i;
    }

    public static double distance(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        return FastMath.sqrt(d);
    }

    public static double distance(int[] iArr, int[] iArr2) {
        double d = 0.0d;
        for (int i = 0; i < iArr.length; i++) {
            double d2 = iArr[i] - iArr2[i];
            d += d2 * d2;
        }
        return FastMath.sqrt(d);
    }

    public static double distanceInf(double[] dArr, double[] dArr2) {
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d = FastMath.max(d, FastMath.abs(dArr[i] - dArr2[i]));
        }
        return d;
    }

    public static int distanceInf(int[] iArr, int[] iArr2) {
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i = FastMath.max(i, FastMath.abs(iArr[i2] - iArr2[i2]));
        }
        return i;
    }

    public static <T extends Comparable<? super T>> boolean isMonotonic(T[] tArr, OrderDirection orderDirection, boolean z) {
        T t = tArr[0];
        int length = tArr.length;
        for (int i = 1; i < length; i++) {
            int i2 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection[orderDirection.ordinal()];
            if (i2 == 1) {
                int compareTo = t.compareTo(tArr[i]);
                if (z) {
                    if (compareTo >= 0) {
                        return false;
                    }
                } else if (compareTo > 0) {
                    return false;
                }
            } else if (i2 == 2) {
                int compareTo2 = tArr[i].compareTo(t);
                if (z) {
                    if (compareTo2 >= 0) {
                        return false;
                    }
                } else if (compareTo2 > 0) {
                    return false;
                }
            } else {
                throw new MathInternalError();
            }
            t = tArr[i];
        }
        return true;
    }

    public static boolean isMonotonic(double[] dArr, OrderDirection orderDirection, boolean z) {
        return checkOrder(dArr, orderDirection, z, false);
    }

    public static boolean checkOrder(double[] dArr, OrderDirection orderDirection, boolean z, boolean z2) throws NonMonotonicSequenceException {
        double d = dArr[0];
        int length = dArr.length;
        int i = 1;
        while (i < length) {
            int i2 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection[orderDirection.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new MathInternalError();
                }
                if (z) {
                    if (dArr[i] >= d) {
                        break;
                    }
                    d = dArr[i];
                    i++;
                } else if (dArr[i] > d) {
                    break;
                } else {
                    d = dArr[i];
                    i++;
                }
            } else if (z) {
                if (dArr[i] <= d) {
                    break;
                }
                d = dArr[i];
                i++;
            } else if (dArr[i] < d) {
                break;
            } else {
                d = dArr[i];
                i++;
            }
        }
        if (i == length) {
            return true;
        }
        if (z2) {
            throw new NonMonotonicSequenceException(Double.valueOf(dArr[i]), Double.valueOf(d), i, orderDirection, z);
        }
        return false;
    }

    public static void checkOrder(double[] dArr, OrderDirection orderDirection, boolean z) throws NonMonotonicSequenceException {
        checkOrder(dArr, orderDirection, z, true);
    }

    public static void checkOrder(double[] dArr) throws NonMonotonicSequenceException {
        checkOrder(dArr, OrderDirection.INCREASING, true);
    }

    public static void checkRectangular(long[][] jArr) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(jArr);
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i].length != jArr[0].length) {
                throw new DimensionMismatchException(LocalizedFormats.DIFFERENT_ROWS_LENGTHS, jArr[i].length, jArr[0].length);
            }
        }
    }

    public static void checkPositive(double[] dArr) throws NotStrictlyPositiveException {
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[i]));
            }
        }
    }

    public static void checkNotNaN(double[] dArr) throws NotANumberException {
        for (double d : dArr) {
            if (Double.isNaN(d)) {
                throw new NotANumberException();
            }
        }
    }

    public static void checkNonNegative(long[] jArr) throws NotPositiveException {
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i] < 0) {
                throw new NotPositiveException(Long.valueOf(jArr[i]));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void checkNonNegative(long[][] r8) throws org.apache.commons.math3.exception.NotPositiveException {
        /*
            r0 = 0
            r1 = r0
        L2:
            int r2 = r8.length
            if (r1 >= r2) goto L27
            r2 = r0
        L6:
            r3 = r8[r1]
            int r4 = r3.length
            if (r2 >= r4) goto L24
            r4 = r3[r2]
            r6 = 0
            int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r3 < 0) goto L16
            int r2 = r2 + 1
            goto L6
        L16:
            org.apache.commons.math3.exception.NotPositiveException r0 = new org.apache.commons.math3.exception.NotPositiveException
            r8 = r8[r1]
            r1 = r8[r2]
            java.lang.Long r8 = java.lang.Long.valueOf(r1)
            r0.<init>(r8)
            throw r0
        L24:
            int r1 = r1 + 1
            goto L2
        L27:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.util.MathArrays.checkNonNegative(long[][]):void");
    }

    public static double safeNorm(double[] dArr) {
        double length = 1.304E19d / dArr.length;
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        for (double d6 : dArr) {
            double abs = FastMath.abs(d6);
            if (abs >= 3.834E-20d && abs <= length) {
                d2 += abs * abs;
            } else if (abs > 3.834E-20d) {
                if (abs > d3) {
                    double d7 = d3 / abs;
                    d = (d * d7 * d7) + 1.0d;
                    d3 = abs;
                } else {
                    double d8 = abs / d3;
                    d += d8 * d8;
                }
            } else if (abs > d4) {
                double d9 = d4 / abs;
                d5 = (d5 * d9 * d9) + 1.0d;
                d4 = abs;
            } else {
                if (abs != 0.0d) {
                    double d10 = abs / d4;
                    d5 += d10 * d10;
                }
            }
        }
        if (d != 0.0d) {
            return d3 * Math.sqrt(d + ((d2 / d3) / d3));
        }
        if (d2 == 0.0d) {
            return d4 * Math.sqrt(d5);
        }
        if (d2 >= d4) {
            return Math.sqrt(d2 * (((d4 / d2) * d4 * d5) + 1.0d));
        }
        return Math.sqrt(d4 * ((d2 / d4) + (d5 * d4)));
    }

    public static void sortInPlace(double[] dArr, double[]... dArr2) throws DimensionMismatchException, NullArgumentException {
        sortInPlace(dArr, OrderDirection.INCREASING, dArr2);
    }

    public static void sortInPlace(double[] dArr, OrderDirection orderDirection, double[]... dArr2) throws NullArgumentException, DimensionMismatchException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        int length = dArr.length;
        for (double[] dArr3 : dArr2) {
            if (dArr3 == null) {
                throw new NullArgumentException();
            }
            if (dArr3.length != length) {
                throw new DimensionMismatchException(dArr3.length, length);
            }
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(new Pair(Double.valueOf(dArr[i]), Integer.valueOf(i)));
        }
        Collections.sort(arrayList, orderDirection == OrderDirection.INCREASING ? new Comparator<Pair<Double, Integer>>() { // from class: org.apache.commons.math3.util.MathArrays.1
            @Override // java.util.Comparator
            public int compare(Pair<Double, Integer> pair, Pair<Double, Integer> pair2) {
                return pair.getKey().compareTo(pair2.getKey());
            }
        } : new Comparator<Pair<Double, Integer>>() { // from class: org.apache.commons.math3.util.MathArrays.2
            @Override // java.util.Comparator
            public int compare(Pair<Double, Integer> pair, Pair<Double, Integer> pair2) {
                return pair2.getKey().compareTo(pair.getKey());
            }
        });
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            Pair pair = (Pair) arrayList.get(i2);
            dArr[i2] = ((Double) pair.getKey()).doubleValue();
            iArr[i2] = ((Integer) pair.getValue()).intValue();
        }
        for (double[] dArr4 : dArr2) {
            double[] dArr5 = (double[]) dArr4.clone();
            for (int i3 = 0; i3 < length; i3++) {
                dArr4[i3] = dArr5[iArr[i3]];
            }
        }
    }

    public static int[] copyOf(int[] iArr) {
        return copyOf(iArr, iArr.length);
    }

    public static double[] copyOf(double[] dArr) {
        return copyOf(dArr, dArr.length);
    }

    public static int[] copyOf(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, FastMath.min(i, iArr.length));
        return iArr2;
    }

    public static double[] copyOf(double[] dArr, int i) {
        double[] dArr2 = new double[i];
        System.arraycopy(dArr, 0, dArr2, 0, FastMath.min(i, dArr.length));
        return dArr2;
    }

    public static double[] copyOfRange(double[] dArr, int i, int i2) {
        int i3 = i2 - i;
        double[] dArr2 = new double[i3];
        System.arraycopy(dArr, i, dArr2, 0, FastMath.min(i3, dArr.length - i));
        return dArr2;
    }

    public static double linearCombination(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        int length = dArr.length;
        if (length == dArr2.length) {
            int i = 1;
            if (length == 1) {
                return dArr[0] * dArr2[0];
            }
            double[] dArr3 = new double[length];
            double d = 0.0d;
            double d2 = 0.0d;
            for (int i2 = 0; i2 < length; i2++) {
                double d3 = dArr[i2];
                double d4 = d3 * 1.34217729E8d;
                double d5 = d4 - (d4 - d3);
                double d6 = d3 - d5;
                double d7 = dArr2[i2];
                double d8 = 1.34217729E8d * d7;
                double d9 = d8 - (d8 - d7);
                double d10 = d7 - d9;
                double d11 = d3 * d7;
                dArr3[i2] = d11;
                d2 += (d6 * d10) - (((d11 - (d5 * d9)) - (d6 * d9)) - (d5 * d10));
            }
            double d12 = dArr3[0];
            double d13 = dArr3[1];
            double d14 = d12 + d13;
            double d15 = d14 - d13;
            double d16 = (d13 - (d14 - d15)) + (d12 - d15);
            int i3 = length - 1;
            while (i < i3) {
                i++;
                double d17 = dArr3[i];
                double d18 = d14 + d17;
                double d19 = d18 - d17;
                d16 += (d17 - (d18 - d19)) + (d14 - d19);
                d14 = d18;
            }
            double d20 = d14 + d2 + d16;
            if (Double.isNaN(d20)) {
                for (int i4 = 0; i4 < length; i4++) {
                    d += dArr[i4] * dArr2[i4];
                }
                return d;
            }
            return d20;
        }
        throw new DimensionMismatchException(length, dArr2.length);
    }

    public static double linearCombination(double d, double d2, double d3, double d4) {
        double d5 = d * 1.34217729E8d;
        double d6 = d5 - (d5 - d);
        double d7 = d - d6;
        double d8 = d2 * 1.34217729E8d;
        double d9 = d8 - (d8 - d2);
        double d10 = d2 - d9;
        double d11 = d * d2;
        double d12 = d3 * 1.34217729E8d;
        double d13 = d12 - (d12 - d3);
        double d14 = d3 - d13;
        double d15 = 1.34217729E8d * d4;
        double d16 = d15 - (d15 - d4);
        double d17 = d4 - d16;
        double d18 = d3 * d4;
        double d19 = d11 + d18;
        double d20 = d19 - d18;
        double d21 = ((d7 * d10) - (((d11 - (d6 * d9)) - (d7 * d9)) - (d6 * d10))) + ((d14 * d17) - (((d18 - (d13 * d16)) - (d14 * d16)) - (d13 * d17))) + (d18 - (d19 - d20)) + (d11 - d20) + d19;
        return Double.isNaN(d21) ? d19 : d21;
    }

    public static double linearCombination(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d * 1.34217729E8d;
        double d8 = d7 - (d7 - d);
        double d9 = d - d8;
        double d10 = d2 * 1.34217729E8d;
        double d11 = d10 - (d10 - d2);
        double d12 = d2 - d11;
        double d13 = d * d2;
        double d14 = (d9 * d12) - (((d13 - (d8 * d11)) - (d9 * d11)) - (d8 * d12));
        double d15 = d3 * 1.34217729E8d;
        double d16 = d15 - (d15 - d3);
        double d17 = d3 - d16;
        double d18 = d4 * 1.34217729E8d;
        double d19 = d18 - (d18 - d4);
        double d20 = d4 - d19;
        double d21 = d3 * d4;
        double d22 = (d17 * d20) - (((d21 - (d16 * d19)) - (d17 * d19)) - (d16 * d20));
        double d23 = d5 * 1.34217729E8d;
        double d24 = d23 - (d23 - d5);
        double d25 = d5 - d24;
        double d26 = 1.34217729E8d * d6;
        double d27 = d26 - (d26 - d6);
        double d28 = d6 - d27;
        double d29 = d5 * d6;
        double d30 = d13 + d21;
        double d31 = d30 - d21;
        double d32 = d30 + d29;
        double d33 = d32 - d29;
        double d34 = d14 + d22 + ((d25 * d28) - (((d29 - (d24 * d27)) - (d25 * d27)) - (d24 * d28))) + (d21 - (d30 - d31)) + (d13 - d31) + (d29 - (d32 - d33)) + (d30 - d33) + d32;
        return Double.isNaN(d34) ? d32 : d34;
    }

    public static double linearCombination(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        double d9 = d * 1.34217729E8d;
        double d10 = d9 - (d9 - d);
        double d11 = d - d10;
        double d12 = d2 * 1.34217729E8d;
        double d13 = d12 - (d12 - d2);
        double d14 = d2 - d13;
        double d15 = d * d2;
        double d16 = (d11 * d14) - (((d15 - (d10 * d13)) - (d11 * d13)) - (d10 * d14));
        double d17 = d3 * 1.34217729E8d;
        double d18 = d17 - (d17 - d3);
        double d19 = d3 - d18;
        double d20 = d4 * 1.34217729E8d;
        double d21 = d20 - (d20 - d4);
        double d22 = d4 - d21;
        double d23 = d3 * d4;
        double d24 = (d19 * d22) - (((d23 - (d18 * d21)) - (d19 * d21)) - (d18 * d22));
        double d25 = d5 * 1.34217729E8d;
        double d26 = d25 - (d25 - d5);
        double d27 = d5 - d26;
        double d28 = d6 * 1.34217729E8d;
        double d29 = d28 - (d28 - d6);
        double d30 = d6 - d29;
        double d31 = d5 * d6;
        double d32 = (d27 * d30) - (((d31 - (d26 * d29)) - (d27 * d29)) - (d26 * d30));
        double d33 = d7 * 1.34217729E8d;
        double d34 = d33 - (d33 - d7);
        double d35 = d7 - d34;
        double d36 = 1.34217729E8d * d8;
        double d37 = d36 - (d36 - d8);
        double d38 = d8 - d37;
        double d39 = d7 * d8;
        double d40 = d15 + d23;
        double d41 = d40 - d23;
        double d42 = d40 + d31;
        double d43 = d42 - d31;
        double d44 = (d31 - (d42 - d43)) + (d40 - d43);
        double d45 = d42 + d39;
        double d46 = d45 - d39;
        double d47 = d16 + d24 + d32 + ((d35 * d38) - (((d39 - (d34 * d37)) - (d35 * d37)) - (d34 * d38))) + (d23 - (d40 - d41)) + (d15 - d41) + d44 + (d39 - (d45 - d46)) + (d42 - d46) + d45;
        return Double.isNaN(d47) ? d45 : d47;
    }

    public static boolean equals(float[] fArr, float[] fArr2) {
        if (fArr == null || fArr2 == null) {
            return !((fArr == null) ^ (fArr2 == null));
        } else if (fArr.length != fArr2.length) {
            return false;
        } else {
            for (int i = 0; i < fArr.length; i++) {
                if (!Precision.equals(fArr[i], fArr2[i])) {
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean equalsIncludingNaN(float[] fArr, float[] fArr2) {
        if (fArr == null || fArr2 == null) {
            return !((fArr == null) ^ (fArr2 == null));
        } else if (fArr.length != fArr2.length) {
            return false;
        } else {
            for (int i = 0; i < fArr.length; i++) {
                if (!Precision.equalsIncludingNaN(fArr[i], fArr2[i])) {
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean equals(double[] dArr, double[] dArr2) {
        if (dArr == null || dArr2 == null) {
            return !((dArr == null) ^ (dArr2 == null));
        } else if (dArr.length != dArr2.length) {
            return false;
        } else {
            for (int i = 0; i < dArr.length; i++) {
                if (!Precision.equals(dArr[i], dArr2[i])) {
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean equalsIncludingNaN(double[] dArr, double[] dArr2) {
        if (dArr == null || dArr2 == null) {
            return !((dArr == null) ^ (dArr2 == null));
        } else if (dArr.length != dArr2.length) {
            return false;
        } else {
            for (int i = 0; i < dArr.length; i++) {
                if (!Precision.equalsIncludingNaN(dArr[i], dArr2[i])) {
                    return false;
                }
            }
            return true;
        }
    }

    public static double[] normalizeArray(double[] dArr, double d) throws MathIllegalArgumentException, MathArithmeticException {
        if (Double.isInfinite(d)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NORMALIZE_INFINITE, new Object[0]);
        }
        if (Double.isNaN(d)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NORMALIZE_NAN, new Object[0]);
        }
        int length = dArr.length;
        double[] dArr2 = new double[length];
        double d2 = 0.0d;
        for (int i = 0; i < length; i++) {
            if (Double.isInfinite(dArr[i])) {
                throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_ARRAY_ELEMENT, Double.valueOf(dArr[i]), Integer.valueOf(i));
            }
            if (!Double.isNaN(dArr[i])) {
                d2 += dArr[i];
            }
        }
        if (d2 != 0.0d) {
            for (int i2 = 0; i2 < length; i2++) {
                if (Double.isNaN(dArr[i2])) {
                    dArr2[i2] = Double.NaN;
                } else {
                    dArr2[i2] = (dArr[i2] * d) / d2;
                }
            }
            return dArr2;
        }
        throw new MathArithmeticException(LocalizedFormats.ARRAY_SUMS_TO_ZERO, new Object[0]);
    }

    public static <T> T[] buildArray(Field<T> field, int i) {
        T[] tArr = (T[]) ((Object[]) Array.newInstance(field.getRuntimeClass(), i));
        Arrays.fill(tArr, field.getZero());
        return tArr;
    }

    public static <T> T[][] buildArray(Field<T> field, int i, int i2) {
        if (i2 < 0) {
            return (T[][]) ((Object[][]) Array.newInstance(buildArray(field, 0).getClass(), i));
        }
        T[][] tArr = (T[][]) ((Object[][]) Array.newInstance(field.getRuntimeClass(), i, i2));
        for (int i3 = 0; i3 < i; i3++) {
            Arrays.fill(tArr[i3], field.getZero());
        }
        return tArr;
    }

    public static double[] convolve(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length == 0 || length2 == 0) {
            throw new NoDataException();
        }
        int i = (length + length2) - 1;
        double[] dArr3 = new double[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            int max = FastMath.max(0, i3 - length);
            double d = 0.0d;
            for (int i4 = i2 - max; max < length2 && i4 >= 0; i4--) {
                d += dArr[i4] * dArr2[max];
                max++;
            }
            dArr3[i2] = d;
            i2 = i3;
        }
        return dArr3;
    }

    public static void shuffle(int[] iArr, int i, Position position) {
        shuffle(iArr, i, position, new Well19937c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.math3.util.MathArrays$3  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection;
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$util$MathArrays$Position;

        static {
            int[] iArr = new int[Position.values().length];
            $SwitchMap$org$apache$commons$math3$util$MathArrays$Position = iArr;
            try {
                iArr[Position.TAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$util$MathArrays$Position[Position.HEAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[OrderDirection.values().length];
            $SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection = iArr2;
            try {
                iArr2[OrderDirection.INCREASING.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$util$MathArrays$OrderDirection[OrderDirection.DECREASING.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void shuffle(int[] iArr, int i, Position position, RandomGenerator randomGenerator) {
        int i2 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$util$MathArrays$Position[position.ordinal()];
        if (i2 == 1) {
            int length = iArr.length - 1;
            while (length >= i) {
                int sample = length == i ? i : new UniformIntegerDistribution(randomGenerator, i, length).sample();
                int i3 = iArr[sample];
                iArr[sample] = iArr[length];
                iArr[length] = i3;
                length--;
            }
        } else if (i2 != 2) {
            throw new MathInternalError();
        } else {
            int i4 = 0;
            while (i4 <= i) {
                int sample2 = i4 == i ? i : new UniformIntegerDistribution(randomGenerator, i4, i).sample();
                int i5 = iArr[sample2];
                iArr[sample2] = iArr[i4];
                iArr[i4] = i5;
                i4++;
            }
        }
    }

    public static void shuffle(int[] iArr, RandomGenerator randomGenerator) {
        shuffle(iArr, 0, Position.TAIL, randomGenerator);
    }

    public static void shuffle(int[] iArr) {
        shuffle(iArr, new Well19937c());
    }

    public static int[] natural(int i) {
        return sequence(i, 0, 1);
    }

    public static int[] sequence(int i, int i2, int i3) {
        int[] iArr = new int[i];
        for (int i4 = 0; i4 < i; i4++) {
            iArr[i4] = (i4 * i3) + i2;
        }
        return iArr;
    }

    public static boolean verifyValues(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return verifyValues(dArr, i, i2, false);
    }

    public static boolean verifyValues(double[] dArr, int i, int i2, boolean z) throws MathIllegalArgumentException {
        if (dArr != null) {
            if (i >= 0) {
                if (i2 < 0) {
                    throw new NotPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i2));
                }
                int i3 = i + i2;
                if (i3 <= dArr.length) {
                    return i2 != 0 || z;
                }
                throw new NumberIsTooLargeException(LocalizedFormats.SUBARRAY_ENDS_AFTER_ARRAY_END, Integer.valueOf(i3), Integer.valueOf(dArr.length), true);
            }
            throw new NotPositiveException(LocalizedFormats.START_POSITION, Integer.valueOf(i));
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    public static boolean verifyValues(double[] dArr, double[] dArr2, int i, int i2) throws MathIllegalArgumentException {
        return verifyValues(dArr, dArr2, i, i2, false);
    }

    public static boolean verifyValues(double[] dArr, double[] dArr2, int i, int i2, boolean z) throws MathIllegalArgumentException {
        if (dArr2 == null || dArr == null) {
            throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
        }
        if (dArr2.length == dArr.length) {
            boolean z2 = false;
            for (int i3 = i; i3 < i + i2; i3++) {
                double d = dArr2[i3];
                if (Double.isNaN(d)) {
                    throw new MathIllegalArgumentException(LocalizedFormats.NAN_ELEMENT_AT_INDEX, Integer.valueOf(i3));
                }
                if (Double.isInfinite(d)) {
                    throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_ARRAY_ELEMENT, Double.valueOf(d), Integer.valueOf(i3));
                }
                if (d < 0.0d) {
                    throw new MathIllegalArgumentException(LocalizedFormats.NEGATIVE_ELEMENT_AT_INDEX, Integer.valueOf(i3), Double.valueOf(d));
                }
                if (!z2 && d > 0.0d) {
                    z2 = true;
                }
            }
            if (!z2) {
                throw new MathIllegalArgumentException(LocalizedFormats.WEIGHT_AT_LEAST_ONE_NON_ZERO, new Object[0]);
            }
            return verifyValues(dArr, i, i2, z);
        }
        throw new DimensionMismatchException(dArr2.length, dArr.length);
    }
}
