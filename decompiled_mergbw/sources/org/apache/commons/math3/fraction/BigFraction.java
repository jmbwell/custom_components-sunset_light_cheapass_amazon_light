package org.apache.commons.math3.fraction;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.ArithmeticUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
/* loaded from: classes5.dex */
public class BigFraction extends Number implements FieldElement<BigFraction>, Comparable<BigFraction>, Serializable {
    private static final long serialVersionUID = -5630213147331578515L;
    private final BigInteger denominator;
    private final BigInteger numerator;
    public static final BigFraction TWO = new BigFraction(2);
    public static final BigFraction ONE = new BigFraction(1);
    public static final BigFraction ZERO = new BigFraction(0);
    public static final BigFraction MINUS_ONE = new BigFraction(-1);
    public static final BigFraction FOUR_FIFTHS = new BigFraction(4, 5);
    public static final BigFraction ONE_FIFTH = new BigFraction(1, 5);
    public static final BigFraction ONE_HALF = new BigFraction(1, 2);
    public static final BigFraction ONE_QUARTER = new BigFraction(1, 4);
    public static final BigFraction ONE_THIRD = new BigFraction(1, 3);
    public static final BigFraction THREE_FIFTHS = new BigFraction(3, 5);
    public static final BigFraction THREE_QUARTERS = new BigFraction(3, 4);
    public static final BigFraction TWO_FIFTHS = new BigFraction(2, 5);
    public static final BigFraction TWO_QUARTERS = new BigFraction(2, 4);
    public static final BigFraction TWO_THIRDS = new BigFraction(2, 3);
    private static final BigInteger ONE_HUNDRED = BigInteger.valueOf(100);

    public BigFraction(BigInteger bigInteger) {
        this(bigInteger, BigInteger.ONE);
    }

    public BigFraction(BigInteger bigInteger, BigInteger bigInteger2) {
        MathUtils.checkNotNull(bigInteger, LocalizedFormats.NUMERATOR, new Object[0]);
        MathUtils.checkNotNull(bigInteger2, LocalizedFormats.DENOMINATOR, new Object[0]);
        if (BigInteger.ZERO.equals(bigInteger2)) {
            throw new ZeroException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
        }
        if (BigInteger.ZERO.equals(bigInteger)) {
            this.numerator = BigInteger.ZERO;
            this.denominator = BigInteger.ONE;
            return;
        }
        BigInteger gcd = bigInteger.gcd(bigInteger2);
        if (BigInteger.ONE.compareTo(gcd) < 0) {
            bigInteger = bigInteger.divide(gcd);
            bigInteger2 = bigInteger2.divide(gcd);
        }
        if (BigInteger.ZERO.compareTo(bigInteger2) > 0) {
            bigInteger = bigInteger.negate();
            bigInteger2 = bigInteger2.negate();
        }
        this.numerator = bigInteger;
        this.denominator = bigInteger2;
    }

    public BigFraction(double d) throws MathIllegalArgumentException {
        if (Double.isNaN(d)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NAN_VALUE_CONVERSION, new Object[0]);
        }
        if (Double.isInfinite(d)) {
            throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_VALUE_CONVERSION, new Object[0]);
        }
        long doubleToLongBits = Double.doubleToLongBits(d);
        long j = Long.MIN_VALUE & doubleToLongBits;
        long j2 = 9218868437227405312L & doubleToLongBits;
        long j3 = doubleToLongBits & 4503599627370495L;
        j3 = j2 != 0 ? j3 | 4503599627370496L : j3;
        j3 = j != 0 ? -j3 : j3;
        int i = ((int) (j2 >> 52)) - 1075;
        while ((9007199254740990L & j3) != 0 && (1 & j3) == 0) {
            j3 >>= 1;
            i++;
        }
        if (i < 0) {
            this.numerator = BigInteger.valueOf(j3);
            this.denominator = BigInteger.ZERO.flipBit(-i);
            return;
        }
        this.numerator = BigInteger.valueOf(j3).multiply(BigInteger.ZERO.flipBit(i));
        this.denominator = BigInteger.ONE;
    }

    public BigFraction(double d, double d2, int i) throws FractionConversionException {
        this(d, d2, Integer.MAX_VALUE, i);
    }

    private BigFraction(double d, double d2, int i, int i2) throws FractionConversionException {
        long j;
        long j2;
        long j3;
        long floor = (long) FastMath.floor(d);
        if (FastMath.abs(floor) > 2147483647L) {
            throw new FractionConversionException(d, floor, 1L);
        }
        if (FastMath.abs(floor - d) < d2) {
            this.numerator = BigInteger.valueOf(floor);
            this.denominator = BigInteger.ONE;
            return;
        }
        double d3 = d;
        long j4 = 1;
        long j5 = 0;
        long j6 = 1;
        int i3 = 0;
        boolean z = false;
        long j7 = floor;
        while (true) {
            i3++;
            double d4 = 1.0d / (d3 - floor);
            long floor2 = (long) FastMath.floor(d4);
            long j8 = floor;
            j = (floor2 * j7) + j6;
            j2 = j7;
            j3 = (floor2 * j4) + j5;
            if (j > 2147483647L || j3 > 2147483647L) {
                break;
            }
            long j9 = floor2;
            boolean z2 = z;
            long j10 = j6;
            double d5 = j / j3;
            if (i3 >= i2 || FastMath.abs(d5 - d) <= d2 || j3 >= i) {
                z = true;
                j9 = j8;
                j6 = j10;
            } else {
                j5 = j4;
                d3 = d4;
                j6 = j2;
                z = z2;
                j2 = j;
                j4 = j3;
            }
            if (z) {
                break;
            }
            floor = j9;
            j7 = j2;
        }
        if (d2 != 0.0d || FastMath.abs(j4) >= i) {
            throw new FractionConversionException(d, j, j3);
        }
        if (i3 >= i2) {
            throw new FractionConversionException(d, i2);
        }
        if (j3 < i) {
            this.numerator = BigInteger.valueOf(j);
            this.denominator = BigInteger.valueOf(j3);
            return;
        }
        this.numerator = BigInteger.valueOf(j2);
        this.denominator = BigInteger.valueOf(j4);
    }

    public BigFraction(double d, int i) throws FractionConversionException {
        this(d, 0.0d, i, 100);
    }

    public BigFraction(int i) {
        this(BigInteger.valueOf(i), BigInteger.ONE);
    }

    public BigFraction(int i, int i2) {
        this(BigInteger.valueOf(i), BigInteger.valueOf(i2));
    }

    public BigFraction(long j) {
        this(BigInteger.valueOf(j), BigInteger.ONE);
    }

    public BigFraction(long j, long j2) {
        this(BigInteger.valueOf(j), BigInteger.valueOf(j2));
    }

    public static BigFraction getReducedFraction(int i, int i2) {
        if (i == 0) {
            return ZERO;
        }
        return new BigFraction(i, i2);
    }

    public BigFraction abs() {
        return BigInteger.ZERO.compareTo(this.numerator) <= 0 ? this : negate();
    }

    public BigFraction add(BigInteger bigInteger) throws NullArgumentException {
        MathUtils.checkNotNull(bigInteger);
        return new BigFraction(this.numerator.add(this.denominator.multiply(bigInteger)), this.denominator);
    }

    public BigFraction add(int i) {
        return add(BigInteger.valueOf(i));
    }

    public BigFraction add(long j) {
        return add(BigInteger.valueOf(j));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigFraction add(BigFraction bigFraction) {
        BigInteger multiply;
        BigInteger bigInteger;
        if (bigFraction == null) {
            throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
        }
        if (ZERO.equals(bigFraction)) {
            return this;
        }
        if (this.denominator.equals(bigFraction.denominator)) {
            bigInteger = this.numerator.add(bigFraction.numerator);
            multiply = this.denominator;
        } else {
            BigInteger add = this.numerator.multiply(bigFraction.denominator).add(bigFraction.numerator.multiply(this.denominator));
            multiply = this.denominator.multiply(bigFraction.denominator);
            bigInteger = add;
        }
        return new BigFraction(bigInteger, multiply);
    }

    public BigDecimal bigDecimalValue() {
        return new BigDecimal(this.numerator).divide(new BigDecimal(this.denominator));
    }

    public BigDecimal bigDecimalValue(int i) {
        return new BigDecimal(this.numerator).divide(new BigDecimal(this.denominator), i);
    }

    public BigDecimal bigDecimalValue(int i, int i2) {
        return new BigDecimal(this.numerator).divide(new BigDecimal(this.denominator), i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(BigFraction bigFraction) {
        return this.numerator.multiply(bigFraction.denominator).compareTo(this.denominator.multiply(bigFraction.numerator));
    }

    public BigFraction divide(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
        }
        if (BigInteger.ZERO.equals(bigInteger)) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
        }
        return new BigFraction(this.numerator, this.denominator.multiply(bigInteger));
    }

    public BigFraction divide(int i) {
        return divide(BigInteger.valueOf(i));
    }

    public BigFraction divide(long j) {
        return divide(BigInteger.valueOf(j));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigFraction divide(BigFraction bigFraction) {
        if (bigFraction == null) {
            throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
        }
        if (BigInteger.ZERO.equals(bigFraction.numerator)) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
        }
        return multiply(bigFraction.reciprocal());
    }

    @Override // java.lang.Number
    public double doubleValue() {
        double doubleValue = this.numerator.doubleValue() / this.denominator.doubleValue();
        if (Double.isNaN(doubleValue)) {
            int max = FastMath.max(this.numerator.bitLength(), this.denominator.bitLength()) - FastMath.getExponent(Double.MAX_VALUE);
            return this.numerator.shiftRight(max).doubleValue() / this.denominator.shiftRight(max).doubleValue();
        }
        return doubleValue;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BigFraction) {
            BigFraction reduce = ((BigFraction) obj).reduce();
            BigFraction reduce2 = reduce();
            if (reduce2.numerator.equals(reduce.numerator) && reduce2.denominator.equals(reduce.denominator)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Number
    public float floatValue() {
        float floatValue = this.numerator.floatValue() / this.denominator.floatValue();
        if (Double.isNaN(floatValue)) {
            int max = FastMath.max(this.numerator.bitLength(), this.denominator.bitLength()) - FastMath.getExponent(Float.MAX_VALUE);
            return this.numerator.shiftRight(max).floatValue() / this.denominator.shiftRight(max).floatValue();
        }
        return floatValue;
    }

    public BigInteger getDenominator() {
        return this.denominator;
    }

    public int getDenominatorAsInt() {
        return this.denominator.intValue();
    }

    public long getDenominatorAsLong() {
        return this.denominator.longValue();
    }

    public BigInteger getNumerator() {
        return this.numerator;
    }

    public int getNumeratorAsInt() {
        return this.numerator.intValue();
    }

    public long getNumeratorAsLong() {
        return this.numerator.longValue();
    }

    public int hashCode() {
        return ((this.numerator.hashCode() + 629) * 37) + this.denominator.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.numerator.divide(this.denominator).intValue();
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.numerator.divide(this.denominator).longValue();
    }

    public BigFraction multiply(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new NullArgumentException();
        }
        return new BigFraction(bigInteger.multiply(this.numerator), this.denominator);
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigFraction multiply(int i) {
        return multiply(BigInteger.valueOf(i));
    }

    public BigFraction multiply(long j) {
        return multiply(BigInteger.valueOf(j));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigFraction multiply(BigFraction bigFraction) {
        if (bigFraction == null) {
            throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
        }
        if (this.numerator.equals(BigInteger.ZERO) || bigFraction.numerator.equals(BigInteger.ZERO)) {
            return ZERO;
        }
        return new BigFraction(this.numerator.multiply(bigFraction.numerator), this.denominator.multiply(bigFraction.denominator));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigFraction negate() {
        return new BigFraction(this.numerator.negate(), this.denominator);
    }

    public double percentageValue() {
        return multiply(ONE_HUNDRED).doubleValue();
    }

    public BigFraction pow(int i) {
        if (i < 0) {
            int i2 = -i;
            return new BigFraction(this.denominator.pow(i2), this.numerator.pow(i2));
        }
        return new BigFraction(this.numerator.pow(i), this.denominator.pow(i));
    }

    public BigFraction pow(long j) {
        if (j < 0) {
            long j2 = -j;
            return new BigFraction(ArithmeticUtils.pow(this.denominator, j2), ArithmeticUtils.pow(this.numerator, j2));
        }
        return new BigFraction(ArithmeticUtils.pow(this.numerator, j), ArithmeticUtils.pow(this.denominator, j));
    }

    public BigFraction pow(BigInteger bigInteger) {
        if (bigInteger.compareTo(BigInteger.ZERO) < 0) {
            BigInteger negate = bigInteger.negate();
            return new BigFraction(ArithmeticUtils.pow(this.denominator, negate), ArithmeticUtils.pow(this.numerator, negate));
        }
        return new BigFraction(ArithmeticUtils.pow(this.numerator, bigInteger), ArithmeticUtils.pow(this.denominator, bigInteger));
    }

    public double pow(double d) {
        return FastMath.pow(this.numerator.doubleValue(), d) / FastMath.pow(this.denominator.doubleValue(), d);
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigFraction reciprocal() {
        return new BigFraction(this.denominator, this.numerator);
    }

    public BigFraction reduce() {
        BigInteger gcd = this.numerator.gcd(this.denominator);
        return new BigFraction(this.numerator.divide(gcd), this.denominator.divide(gcd));
    }

    public BigFraction subtract(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new NullArgumentException();
        }
        return new BigFraction(this.numerator.subtract(this.denominator.multiply(bigInteger)), this.denominator);
    }

    public BigFraction subtract(int i) {
        return subtract(BigInteger.valueOf(i));
    }

    public BigFraction subtract(long j) {
        return subtract(BigInteger.valueOf(j));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigFraction subtract(BigFraction bigFraction) {
        BigInteger multiply;
        BigInteger bigInteger;
        if (bigFraction == null) {
            throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
        }
        if (ZERO.equals(bigFraction)) {
            return this;
        }
        if (this.denominator.equals(bigFraction.denominator)) {
            bigInteger = this.numerator.subtract(bigFraction.numerator);
            multiply = this.denominator;
        } else {
            BigInteger subtract = this.numerator.multiply(bigFraction.denominator).subtract(bigFraction.numerator.multiply(this.denominator));
            multiply = this.denominator.multiply(bigFraction.denominator);
            bigInteger = subtract;
        }
        return new BigFraction(bigInteger, multiply);
    }

    public String toString() {
        if (BigInteger.ONE.equals(this.denominator)) {
            return this.numerator.toString();
        }
        if (BigInteger.ZERO.equals(this.numerator)) {
            return "0";
        }
        return this.numerator + " / " + this.denominator;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Field<BigFraction> getField() {
        return BigFractionField.getInstance();
    }
}
