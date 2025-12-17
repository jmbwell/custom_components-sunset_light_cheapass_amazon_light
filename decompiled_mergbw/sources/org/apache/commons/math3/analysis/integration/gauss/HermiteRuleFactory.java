package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Pair;
/* loaded from: classes5.dex */
public class HermiteRuleFactory extends BaseRuleFactory<Double> {
    private static final double H0 = 0.7511255444649425d;
    private static final double H1 = 1.0622519320271968d;
    private static final double SQRT_PI = 1.772453850905516d;

    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    protected Pair<Double[], Double[]> computeRule(int i) throws DimensionMismatchException {
        double d;
        Double valueOf = Double.valueOf(0.0d);
        int i2 = 0;
        int i3 = 1;
        if (i == 1) {
            return new Pair<>(new Double[]{valueOf}, new Double[]{Double.valueOf((double) SQRT_PI)});
        }
        int i4 = i - 1;
        Double[] first = getRuleInternal(i4).getFirst();
        Double[] dArr = new Double[i];
        Double[] dArr2 = new Double[i];
        double sqrt = FastMath.sqrt(i4 * 2);
        double sqrt2 = FastMath.sqrt(i * 2);
        int i5 = i / 2;
        while (true) {
            d = H0;
            if (i2 >= i5) {
                break;
            }
            double doubleValue = i2 == 0 ? -sqrt : first[i2 - 1].doubleValue();
            double doubleValue2 = i5 == i3 ? -0.5d : first[i2].doubleValue();
            double d2 = doubleValue * H1;
            double d3 = 0.7511255444649425d;
            while (i3 < i) {
                int i6 = i3 + 1;
                double d4 = sqrt;
                double d5 = i6;
                double sqrt3 = FastMath.sqrt(2.0d / d5);
                d3 = d2;
                sqrt = d4;
                i3 = i6;
                d2 = ((sqrt3 * doubleValue) * d2) - (FastMath.sqrt(i3 / d5) * d3);
                first = first;
            }
            Double[] dArr3 = first;
            double d6 = sqrt;
            double d7 = (doubleValue + doubleValue2) * 0.5d;
            double d8 = 0.7511255444649425d;
            boolean z = false;
            while (!z) {
                z = doubleValue2 - doubleValue <= Math.ulp(d7);
                double d9 = d7 * H1;
                double d10 = 0.7511255444649425d;
                int i7 = 1;
                while (i7 < i) {
                    int i8 = i7 + 1;
                    double d11 = doubleValue;
                    double d12 = i8;
                    d10 = d9;
                    i7 = i8;
                    d9 = ((FastMath.sqrt(2.0d / d12) * d7) * d9) - (FastMath.sqrt(i7 / d12) * d10);
                    doubleValue = d11;
                }
                double d13 = doubleValue;
                if (z) {
                    d8 = d10;
                    doubleValue = d13;
                } else {
                    if (d2 * d9 < 0.0d) {
                        doubleValue2 = d7;
                        doubleValue = d13;
                    } else {
                        doubleValue = d7;
                        d2 = d9;
                    }
                    d7 = (doubleValue + doubleValue2) * 0.5d;
                    d8 = d10;
                }
            }
            double d14 = d8 * sqrt2;
            double d15 = 2.0d / (d14 * d14);
            dArr[i2] = Double.valueOf(d7);
            dArr2[i2] = Double.valueOf(d15);
            int i9 = i4 - i2;
            dArr[i9] = Double.valueOf(-d7);
            dArr2[i9] = Double.valueOf(d15);
            i2++;
            sqrt = d6;
            first = dArr3;
            i3 = 1;
        }
        if (i % 2 != 0) {
            for (int i10 = 1; i10 < i; i10 += 2) {
                d *= -FastMath.sqrt(i10 / (i10 + 1));
            }
            double d16 = sqrt2 * d;
            dArr[i5] = valueOf;
            dArr2[i5] = Double.valueOf(2.0d / (d16 * d16));
        }
        return new Pair<>(dArr, dArr2);
    }
}
