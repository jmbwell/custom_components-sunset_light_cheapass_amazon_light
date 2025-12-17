package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.Pair;
/* loaded from: classes5.dex */
public class LegendreRuleFactory extends BaseRuleFactory<Double> {
    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    protected Pair<Double[], Double[]> computeRule(int i) throws DimensionMismatchException {
        Double valueOf = Double.valueOf(0.0d);
        int i2 = 1;
        if (i == 1) {
            return new Pair<>(new Double[]{valueOf}, new Double[]{Double.valueOf(2.0d)});
        }
        Double[] first = getRuleInternal(i - 1).getFirst();
        Double[] dArr = new Double[i];
        Double[] dArr2 = new Double[i];
        int i3 = i / 2;
        int i4 = 0;
        while (i4 < i3) {
            double doubleValue = i4 == 0 ? -1.0d : first[i4 - 1].doubleValue();
            double doubleValue2 = i3 == i2 ? 1.0d : first[i4].doubleValue();
            int i5 = i2;
            double d = doubleValue;
            double d2 = 1.0d;
            while (i5 < i) {
                int i6 = i5 + 1;
                i5 = i6;
                d2 = d;
                d = (((((i5 * 2) + 1) * doubleValue) * d) - (i5 * d2)) / i6;
            }
            double d3 = (doubleValue + doubleValue2) * 0.5d;
            double d4 = d3;
            int i7 = 0;
            double d5 = 1.0d;
            while (i7 == 0) {
                i7 = doubleValue2 - doubleValue <= Math.ulp(d3) ? i2 : 0;
                d4 = d3;
                int i8 = i2;
                d5 = 1.0d;
                while (i8 < i) {
                    i8++;
                    d5 = d4;
                    valueOf = valueOf;
                    d4 = (((((i8 * 2) + i2) * d3) * d4) - (i8 * d5)) / i8;
                    first = first;
                    i2 = 1;
                }
                Double d6 = valueOf;
                Double[] dArr3 = first;
                if (i7 == 0) {
                    if (d * d4 <= 0.0d) {
                        doubleValue2 = d3;
                    } else {
                        doubleValue = d3;
                        d = d4;
                    }
                    d3 = (doubleValue + doubleValue2) * 0.5d;
                    first = dArr3;
                    valueOf = d6;
                } else {
                    first = dArr3;
                    valueOf = d6;
                }
                i2 = 1;
            }
            double d7 = i * (d5 - (d4 * d3));
            double d8 = ((1.0d - (d3 * d3)) * 2.0d) / (d7 * d7);
            dArr[i4] = Double.valueOf(d3);
            dArr2[i4] = Double.valueOf(d8);
            int i9 = (i - i4) - 1;
            dArr[i9] = Double.valueOf(-d3);
            dArr2[i9] = Double.valueOf(d8);
            i4++;
            valueOf = valueOf;
            i2 = 1;
            first = first;
        }
        Double d9 = valueOf;
        int i10 = i2;
        double d10 = 1.0d;
        if (i % 2 != 0) {
            for (int i11 = i10; i11 < i; i11 += 2) {
                d10 = ((-i11) * d10) / (i11 + 1);
            }
            double d11 = i * d10;
            dArr[i3] = d9;
            dArr2[i3] = Double.valueOf(2.0d / (d11 * d11));
        }
        return new Pair<>(dArr, dArr2);
    }
}
