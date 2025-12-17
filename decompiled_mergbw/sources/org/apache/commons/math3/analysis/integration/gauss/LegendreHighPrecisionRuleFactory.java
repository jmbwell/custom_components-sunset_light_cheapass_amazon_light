package org.apache.commons.math3.analysis.integration.gauss;

import androidx.exifinterface.media.ExifInterface;
import java.math.BigDecimal;
import java.math.MathContext;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.Pair;
/* loaded from: classes5.dex */
public class LegendreHighPrecisionRuleFactory extends BaseRuleFactory<BigDecimal> {
    private final MathContext mContext;
    private final BigDecimal minusOne;
    private final BigDecimal oneHalf;
    private final BigDecimal two;

    public LegendreHighPrecisionRuleFactory() {
        this(MathContext.DECIMAL128);
    }

    public LegendreHighPrecisionRuleFactory(MathContext mathContext) {
        this.mContext = mathContext;
        this.two = new BigDecimal(ExifInterface.GPS_MEASUREMENT_2D, mathContext);
        this.minusOne = new BigDecimal("-1", mathContext);
        this.oneHalf = new BigDecimal("0.5", mathContext);
    }

    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    protected Pair<BigDecimal[], BigDecimal[]> computeRule(int i) throws DimensionMismatchException {
        int i2 = 1;
        if (i == 1) {
            return new Pair<>(new BigDecimal[]{BigDecimal.ZERO}, new BigDecimal[]{this.two});
        }
        BigDecimal[] first = getRuleInternal(i - 1).getFirst();
        BigDecimal[] bigDecimalArr = new BigDecimal[i];
        BigDecimal[] bigDecimalArr2 = new BigDecimal[i];
        int i3 = i / 2;
        int i4 = 0;
        while (i4 < i3) {
            BigDecimal bigDecimal = i4 == 0 ? this.minusOne : first[i4 - 1];
            BigDecimal bigDecimal2 = i3 == i2 ? BigDecimal.ONE : first[i4];
            BigDecimal bigDecimal3 = BigDecimal.ONE;
            int i5 = i2;
            BigDecimal bigDecimal4 = bigDecimal2;
            BigDecimal bigDecimal5 = BigDecimal.ONE;
            BigDecimal bigDecimal6 = bigDecimal3;
            BigDecimal bigDecimal7 = bigDecimal;
            while (i5 < i) {
                BigDecimal[] bigDecimalArr3 = first;
                BigDecimal bigDecimal8 = new BigDecimal((i5 * 2) + 1, this.mContext);
                BigDecimal bigDecimal9 = new BigDecimal(i5, this.mContext);
                int i6 = i5 + 1;
                BigDecimal bigDecimal10 = new BigDecimal(i6, this.mContext);
                BigDecimal divide = bigDecimal7.multiply(bigDecimal.multiply(bigDecimal8, this.mContext), this.mContext).subtract(bigDecimal6.multiply(bigDecimal9, this.mContext), this.mContext).divide(bigDecimal10, this.mContext);
                BigDecimal divide2 = bigDecimal4.multiply(bigDecimal2.multiply(bigDecimal8, this.mContext), this.mContext).subtract(bigDecimal5.multiply(bigDecimal9, this.mContext), this.mContext).divide(bigDecimal10, this.mContext);
                bigDecimal6 = bigDecimal7;
                bigDecimal5 = bigDecimal4;
                first = bigDecimalArr3;
                i3 = i3;
                bigDecimal7 = divide;
                bigDecimal4 = divide2;
                i5 = i6;
            }
            BigDecimal[] bigDecimalArr4 = first;
            int i7 = i3;
            BigDecimal multiply = bigDecimal.add(bigDecimal2, this.mContext).multiply(this.oneHalf, this.mContext);
            BigDecimal bigDecimal11 = BigDecimal.ONE;
            boolean z = false;
            BigDecimal bigDecimal12 = multiply;
            while (!z) {
                z = bigDecimal2.subtract(bigDecimal, this.mContext).compareTo(multiply.ulp().multiply(BigDecimal.TEN, this.mContext)) <= 0;
                bigDecimal11 = BigDecimal.ONE;
                int i8 = 1;
                bigDecimal12 = multiply;
                while (i8 < i) {
                    BigDecimal bigDecimal13 = new BigDecimal((i8 * 2) + 1, this.mContext);
                    BigDecimal bigDecimal14 = new BigDecimal(i8, this.mContext);
                    i8++;
                    BigDecimal divide3 = bigDecimal12.multiply(multiply.multiply(bigDecimal13, this.mContext), this.mContext).subtract(bigDecimal11.multiply(bigDecimal14, this.mContext), this.mContext).divide(new BigDecimal(i8, this.mContext), this.mContext);
                    bigDecimal = bigDecimal;
                    bigDecimal11 = bigDecimal12;
                    bigDecimal12 = divide3;
                }
                BigDecimal bigDecimal15 = bigDecimal;
                if (z) {
                    bigDecimal = bigDecimal15;
                } else {
                    if (bigDecimal7.signum() * bigDecimal12.signum() <= 0) {
                        bigDecimal2 = multiply;
                        multiply = bigDecimal15;
                    } else {
                        bigDecimal7 = bigDecimal12;
                    }
                    bigDecimal = multiply;
                    multiply = multiply.add(bigDecimal2, this.mContext).multiply(this.oneHalf, this.mContext);
                }
            }
            BigDecimal divide4 = BigDecimal.ONE.subtract(multiply.pow(2, this.mContext), this.mContext).multiply(this.two, this.mContext).divide(bigDecimal11.subtract(multiply.multiply(bigDecimal12, this.mContext), this.mContext).multiply(new BigDecimal(i, this.mContext)).pow(2, this.mContext), this.mContext);
            bigDecimalArr[i4] = multiply;
            bigDecimalArr2[i4] = divide4;
            int i9 = (i - i4) - 1;
            bigDecimalArr[i9] = multiply.negate(this.mContext);
            bigDecimalArr2[i9] = divide4;
            i4++;
            i2 = 1;
            first = bigDecimalArr4;
            i3 = i7;
        }
        int i10 = i3;
        int i11 = i2;
        if (i % 2 != 0) {
            BigDecimal bigDecimal16 = BigDecimal.ONE;
            for (int i12 = i11; i12 < i; i12 += 2) {
                bigDecimal16 = bigDecimal16.multiply(new BigDecimal(i12, this.mContext), this.mContext).divide(new BigDecimal(i12 + 1, this.mContext), this.mContext).negate(this.mContext);
            }
            BigDecimal divide5 = this.two.divide(bigDecimal16.multiply(new BigDecimal(i, this.mContext), this.mContext).pow(2, this.mContext), this.mContext);
            bigDecimalArr[i10] = BigDecimal.ZERO;
            bigDecimalArr2[i10] = divide5;
        }
        return new Pair<>(bigDecimalArr, bigDecimalArr2);
    }
}
