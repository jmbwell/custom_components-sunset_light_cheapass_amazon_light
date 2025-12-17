package org.apache.commons.math3.dfp;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.WorkRequest;
import java.util.Arrays;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.interpolation.MicrosphereInterpolator;
import org.apache.commons.math3.dfp.DfpField;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public class Dfp implements RealFieldElement<Dfp> {
    private static final String ADD_TRAP = "add";
    private static final String ALIGN_TRAP = "align";
    private static final String DIVIDE_TRAP = "divide";
    public static final int ERR_SCALE = 32760;
    public static final byte FINITE = 0;
    private static final String GREATER_THAN_TRAP = "greaterThan";
    public static final byte INFINITE = 1;
    private static final String LESS_THAN_TRAP = "lessThan";
    public static final int MAX_EXP = 32768;
    public static final int MIN_EXP = -32767;
    private static final String MULTIPLY_TRAP = "multiply";
    private static final String NAN_STRING = "NaN";
    private static final String NEG_INFINITY_STRING = "-Infinity";
    private static final String NEW_INSTANCE_TRAP = "newInstance";
    private static final String NEXT_AFTER_TRAP = "nextAfter";
    private static final String POS_INFINITY_STRING = "Infinity";
    public static final byte QNAN = 3;
    public static final int RADIX = 10000;
    public static final byte SNAN = 2;
    private static final String SQRT_TRAP = "sqrt";
    private static final String TRUNC_TRAP = "trunc";
    protected int exp;
    private final DfpField field;
    protected int[] mant;
    protected byte nans;
    protected byte sign;

    protected Dfp trap(int i, String str, Dfp dfp, Dfp dfp2, Dfp dfp3) {
        return dfp2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Dfp(DfpField dfpField) {
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Dfp(DfpField dfpField, byte b2) {
        this(dfpField, b2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Dfp(DfpField dfpField, int i) {
        this(dfpField, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Dfp(DfpField dfpField, long j) {
        boolean z;
        this.mant = new int[dfpField.getRadixDigits()];
        int i = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        if (j == Long.MIN_VALUE) {
            j++;
            z = true;
        } else {
            z = false;
        }
        if (j < 0) {
            this.sign = (byte) -1;
            j = -j;
        } else {
            this.sign = (byte) 1;
        }
        this.exp = 0;
        while (j != 0) {
            int[] iArr = this.mant;
            int length = iArr.length;
            int i2 = this.exp;
            System.arraycopy(iArr, length - i2, iArr, (iArr.length - 1) - i2, i2);
            int[] iArr2 = this.mant;
            iArr2[iArr2.length - 1] = (int) (j % WorkRequest.MIN_BACKOFF_MILLIS);
            j /= WorkRequest.MIN_BACKOFF_MILLIS;
            this.exp++;
        }
        if (!z) {
            return;
        }
        while (true) {
            int[] iArr3 = this.mant;
            if (i >= iArr3.length - 1) {
                return;
            }
            int i3 = iArr3[i];
            if (i3 != 0) {
                iArr3[i] = i3 + 1;
                return;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Dfp(DfpField dfpField, double d) {
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        long doubleToLongBits = Double.doubleToLongBits(d);
        long j = doubleToLongBits & 4503599627370495L;
        int i = (int) ((9218868437227405312L & doubleToLongBits) >> 52);
        int i2 = i - 1023;
        if (i2 == -1023) {
            if (d == 0.0d) {
                if ((doubleToLongBits & Long.MIN_VALUE) != 0) {
                    this.sign = (byte) -1;
                    return;
                }
                return;
            }
            i2 = i - 1022;
            while ((j & 4503599627370496L) == 0) {
                i2--;
                j <<= 1;
            }
            j &= 4503599627370495L;
        }
        if (i2 != 1024) {
            Dfp multiply = new Dfp(dfpField, j).divide(new Dfp(dfpField, 4503599627370496L)).add(dfpField.getOne()).multiply(DfpMath.pow(dfpField.getTwo(), i2));
            multiply = (doubleToLongBits & Long.MIN_VALUE) != 0 ? multiply.negate() : multiply;
            int[] iArr = multiply.mant;
            int[] iArr2 = this.mant;
            System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
            this.sign = multiply.sign;
            this.exp = multiply.exp;
            this.nans = multiply.nans;
        } else if (d != d) {
            this.sign = (byte) 1;
            this.nans = (byte) 3;
        } else if (d < 0.0d) {
            this.sign = (byte) -1;
            this.nans = (byte) 1;
        } else {
            this.sign = (byte) 1;
            this.nans = (byte) 1;
        }
    }

    public Dfp(Dfp dfp) {
        this.mant = (int[]) dfp.mant.clone();
        this.sign = dfp.sign;
        this.exp = dfp.exp;
        this.nans = dfp.nans;
        this.field = dfp.field;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Dfp(DfpField dfpField, String str) {
        int i;
        int i2;
        int[] iArr;
        String str2 = str;
        this.mant = new int[dfpField.getRadixDigits()];
        int i3 = 1;
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        int radixDigits = (getRadixDigits() * 4) + 8;
        char[] cArr = new char[radixDigits];
        if (str2.equals(POS_INFINITY_STRING)) {
            this.sign = (byte) 1;
            this.nans = (byte) 1;
        } else if (str2.equals(NEG_INFINITY_STRING)) {
            this.sign = (byte) -1;
            this.nans = (byte) 1;
        } else if (str2.equals(NAN_STRING)) {
            this.sign = (byte) 1;
            this.nans = (byte) 3;
        } else {
            int indexOf = str2.indexOf("e");
            indexOf = indexOf == -1 ? str2.indexOf(ExifInterface.LONGITUDE_EAST) : indexOf;
            if (indexOf != -1) {
                String substring = str2.substring(0, indexOf);
                String substring2 = str2.substring(indexOf + 1);
                boolean z = false;
                i = 0;
                for (int i4 = 0; i4 < substring2.length(); i4++) {
                    if (substring2.charAt(i4) == '-') {
                        z = true;
                    } else if (substring2.charAt(i4) >= '0' && substring2.charAt(i4) <= '9') {
                        i = ((i * 10) + substring2.charAt(i4)) - 48;
                    }
                }
                i = z ? -i : i;
                str2 = substring;
            } else {
                i = 0;
            }
            if (str2.indexOf("-") != -1) {
                this.sign = (byte) -1;
            }
            int i5 = 0;
            boolean z2 = false;
            int i6 = 0;
            while (true) {
                if (str2.charAt(i5) >= '1' && str2.charAt(i5) <= '9') {
                    break;
                }
                if (z2 && str2.charAt(i5) == '0') {
                    i6--;
                }
                z2 = str2.charAt(i5) == '.' ? true : z2;
                i5++;
                if (i5 == str2.length()) {
                    break;
                }
            }
            cArr[0] = '0';
            cArr[1] = '0';
            cArr[2] = '0';
            cArr[3] = '0';
            int i7 = i6;
            int i8 = 4;
            int i9 = 0;
            while (true) {
                if (i5 == str2.length()) {
                    i2 = 4;
                    break;
                }
                i2 = 4;
                if (i8 == (this.mant.length * 4) + 5) {
                    break;
                } else if (str2.charAt(i5) == '.') {
                    i5++;
                    i7 = i9;
                    i3 = 1;
                    z2 = true;
                } else {
                    if (str2.charAt(i5) < '0' || str2.charAt(i5) > '9') {
                        i5++;
                    } else {
                        cArr[i8] = str2.charAt(i5);
                        i8++;
                        i5++;
                        i9++;
                    }
                    i3 = 1;
                }
            }
            if (z2 && i8 != i2) {
                while (true) {
                    i8--;
                    if (i8 == i2 || cArr[i8] != '0') {
                        break;
                    }
                    i9--;
                    i2 = 4;
                }
            }
            if (z2 && i9 == 0) {
                i7 = 0;
            }
            i7 = z2 ? i7 : i8 - 4;
            int i10 = i9 + 3;
            for (int i11 = 4; i10 > i11 && cArr[i10] == '0'; i11 = 4) {
                i10--;
            }
            int i12 = 4;
            int i13 = ((400 - i7) - (i % 4)) % 4;
            int i14 = 4 - i13;
            int i15 = i7 + i13;
            while (true) {
                int i16 = i10 - i14;
                iArr = this.mant;
                if (i16 >= iArr.length * i12) {
                    break;
                }
                int i17 = 0;
                while (i17 < i12) {
                    i10++;
                    cArr[i10] = '0';
                    i17++;
                    i12 = 4;
                }
            }
            for (int length = iArr.length - i3; length >= 0; length--) {
                this.mant[length] = ((cArr[i14] - '0') * 1000) + ((cArr[i14 + 1] - '0') * 100) + ((cArr[i14 + 2] - '0') * 10) + (cArr[i14 + 3] - '0');
                i14 += 4;
            }
            this.exp = (i15 + i) / 4;
            if (i14 < radixDigits) {
                round((cArr[i14] - '0') * 1000);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Dfp(DfpField dfpField, byte b2, byte b3) {
        this.field = dfpField;
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = b2;
        this.exp = 0;
        this.nans = b3;
    }

    public Dfp newInstance() {
        return new Dfp(getField());
    }

    public Dfp newInstance(byte b2) {
        return new Dfp(getField(), b2);
    }

    public Dfp newInstance(int i) {
        return new Dfp(getField(), i);
    }

    public Dfp newInstance(long j) {
        return new Dfp(getField(), j);
    }

    public Dfp newInstance(double d) {
        return new Dfp(getField(), d);
    }

    public Dfp newInstance(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, NEW_INSTANCE_TRAP, dfp, newInstance);
        }
        return new Dfp(dfp);
    }

    public Dfp newInstance(String str) {
        return new Dfp(this.field, str);
    }

    public Dfp newInstance(byte b2, byte b3) {
        return this.field.newDfp(b2, b3);
    }

    @Override // org.apache.commons.math3.FieldElement
    public DfpField getField() {
        return this.field;
    }

    public int getRadixDigits() {
        return this.field.getRadixDigits();
    }

    public Dfp getZero() {
        return this.field.getZero();
    }

    public Dfp getOne() {
        return this.field.getOne();
    }

    public Dfp getTwo() {
        return this.field.getTwo();
    }

    protected void shiftLeft() {
        for (int length = this.mant.length - 1; length > 0; length--) {
            int[] iArr = this.mant;
            iArr[length] = iArr[length - 1];
        }
        this.mant[0] = 0;
        this.exp--;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void shiftRight() {
        int i = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i < iArr.length - 1) {
                int i2 = i + 1;
                iArr[i] = iArr[i2];
                i = i2;
            } else {
                iArr[iArr.length - 1] = 0;
                this.exp++;
                return;
            }
        }
    }

    protected int align(int i) {
        int i2 = this.exp - i;
        int i3 = i2 < 0 ? -i2 : i2;
        if (i2 == 0) {
            return 0;
        }
        int[] iArr = this.mant;
        if (i3 > iArr.length + 1) {
            Arrays.fill(iArr, 0);
            this.exp = i;
            this.field.setIEEEFlagsBits(16);
            dotrap(16, ALIGN_TRAP, this, this);
            return 0;
        }
        boolean z = false;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            if (i2 < 0) {
                if (i4 != 0) {
                    z = true;
                }
                i4 = this.mant[0];
                shiftRight();
            } else {
                shiftLeft();
            }
        }
        if (z) {
            this.field.setIEEEFlagsBits(16);
            dotrap(16, ALIGN_TRAP, this, this);
        }
        return i4;
    }

    public boolean lessThan(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            dotrap(1, LESS_THAN_TRAP, dfp, newInstance);
            return false;
        } else if (!isNaN() && !dfp.isNaN()) {
            return compare(this, dfp) < 0;
        } else {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, dfp, newInstance(getZero()));
            return false;
        }
    }

    public boolean greaterThan(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            dotrap(1, GREATER_THAN_TRAP, dfp, newInstance);
            return false;
        } else if (!isNaN() && !dfp.isNaN()) {
            return compare(this, dfp) > 0;
        } else {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, GREATER_THAN_TRAP, dfp, newInstance(getZero()));
            return false;
        }
    }

    public boolean negativeOrNull() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign >= 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] != 0 || isInfinite()) {
                return false;
            }
        }
        return true;
    }

    public boolean strictlyNegative() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        } else if (this.sign < 0) {
            int[] iArr = this.mant;
            return iArr[iArr.length - 1] != 0 || isInfinite();
        } else {
            return false;
        }
    }

    public boolean positiveOrNull() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign <= 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] != 0 || isInfinite()) {
                return false;
            }
        }
        return true;
    }

    public boolean strictlyPositive() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        } else if (this.sign > 0) {
            int[] iArr = this.mant;
            return iArr[iArr.length - 1] != 0 || isInfinite();
        } else {
            return false;
        }
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp abs() {
        Dfp newInstance = newInstance(this);
        newInstance.sign = (byte) 1;
        return newInstance;
    }

    public boolean isInfinite() {
        return this.nans == 1;
    }

    public boolean isNaN() {
        byte b2 = this.nans;
        return b2 == 3 || b2 == 2;
    }

    public boolean isZero() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        int[] iArr = this.mant;
        return iArr[iArr.length - 1] == 0 && !isInfinite();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Dfp) {
            Dfp dfp = (Dfp) obj;
            return !isNaN() && !dfp.isNaN() && this.field.getRadixDigits() == dfp.field.getRadixDigits() && compare(this, dfp) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (this.sign << 8) + 17 + (this.nans << 16) + this.exp + Arrays.hashCode(this.mant);
    }

    public boolean unequal(Dfp dfp) {
        if (isNaN() || dfp.isNaN() || this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            return false;
        }
        return greaterThan(dfp) || lessThan(dfp);
    }

    private static int compare(Dfp dfp, Dfp dfp2) {
        int[] iArr = dfp.mant;
        if (iArr[iArr.length - 1] == 0) {
            int[] iArr2 = dfp2.mant;
            if (iArr2[iArr2.length - 1] == 0 && dfp.nans == 0 && dfp2.nans == 0) {
                return 0;
            }
        }
        byte b2 = dfp.sign;
        byte b3 = dfp2.sign;
        if (b2 != b3) {
            return b2 == -1 ? -1 : 1;
        }
        byte b4 = dfp.nans;
        if (b4 == 1 && dfp2.nans == 0) {
            return b2;
        }
        if (b4 == 0 && dfp2.nans == 1) {
            return -b3;
        }
        if (b4 == 1 && dfp2.nans == 1) {
            return 0;
        }
        int[] iArr3 = dfp2.mant;
        if (iArr3[iArr3.length - 1] != 0 && iArr[iArr3.length - 1] != 0) {
            int i = dfp.exp;
            int i2 = dfp2.exp;
            if (i < i2) {
                return -b2;
            }
            if (i > i2) {
                return b2;
            }
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            int i3 = dfp.mant[length];
            int i4 = dfp2.mant[length];
            if (i3 > i4) {
                return dfp.sign;
            }
            if (i3 < i4) {
                return -dfp.sign;
            }
        }
        return 0;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp rint() {
        return trunc(DfpField.RoundingMode.ROUND_HALF_EVEN);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp floor() {
        return trunc(DfpField.RoundingMode.ROUND_FLOOR);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp ceil() {
        return trunc(DfpField.RoundingMode.ROUND_CEIL);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp remainder(Dfp dfp) {
        Dfp subtract = subtract(divide(dfp).rint().multiply(dfp));
        if (subtract.mant[this.mant.length - 1] == 0) {
            subtract.sign = this.sign;
        }
        return subtract;
    }

    protected Dfp trunc(DfpField.RoundingMode roundingMode) {
        int i;
        if (isNaN()) {
            return newInstance(this);
        }
        if (this.nans == 1) {
            return newInstance(this);
        }
        int[] iArr = this.mant;
        if (iArr[iArr.length - 1] == 0) {
            return newInstance(this);
        }
        int i2 = this.exp;
        if (i2 < 0) {
            this.field.setIEEEFlagsBits(16);
            return dotrap(16, TRUNC_TRAP, this, newInstance(getZero()));
        } else if (i2 >= iArr.length) {
            return newInstance(this);
        } else {
            Dfp newInstance = newInstance(this);
            boolean z = false;
            for (int i3 = 0; i3 < this.mant.length - newInstance.exp; i3++) {
                int[] iArr2 = newInstance.mant;
                z |= iArr2[i3] != 0;
                iArr2[i3] = 0;
            }
            if (z) {
                int i4 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[roundingMode.ordinal()];
                if (i4 != 1) {
                    if (i4 == 2) {
                        if (newInstance.sign == 1) {
                            newInstance = newInstance.add(getOne());
                        }
                    } else {
                        Dfp newInstance2 = newInstance("0.5");
                        Dfp subtract = subtract(newInstance);
                        subtract.sign = (byte) 1;
                        if (subtract.greaterThan(newInstance2)) {
                            subtract = newInstance(getOne());
                            subtract.sign = this.sign;
                            newInstance = newInstance.add(subtract);
                        }
                        if (subtract.equals(newInstance2) && (i = newInstance.exp) > 0 && (newInstance.mant[this.mant.length - i] & 1) != 0) {
                            Dfp newInstance3 = newInstance(getOne());
                            newInstance3.sign = this.sign;
                            newInstance = newInstance.add(newInstance3);
                        }
                    }
                } else if (newInstance.sign == -1) {
                    newInstance = newInstance.add(newInstance(-1));
                }
                this.field.setIEEEFlagsBits(16);
                return dotrap(16, TRUNC_TRAP, this, newInstance);
            }
            return newInstance;
        }
    }

    public int intValue() {
        Dfp rint = rint();
        if (rint.greaterThan(newInstance(Integer.MAX_VALUE))) {
            return Integer.MAX_VALUE;
        }
        if (rint.lessThan(newInstance(Integer.MIN_VALUE))) {
            return Integer.MIN_VALUE;
        }
        int i = 0;
        for (int length = this.mant.length - 1; length >= this.mant.length - rint.exp; length--) {
            i = (i * 10000) + rint.mant[length];
        }
        return rint.sign == -1 ? -i : i;
    }

    public int log10K() {
        return this.exp - 1;
    }

    public Dfp power10K(int i) {
        Dfp newInstance = newInstance(getOne());
        newInstance.exp = i + 1;
        return newInstance;
    }

    public int intLog10() {
        int[] iArr = this.mant;
        if (iArr[iArr.length - 1] > 1000) {
            return (this.exp * 4) - 1;
        }
        if (iArr[iArr.length - 1] > 100) {
            return (this.exp * 4) - 2;
        }
        if (iArr[iArr.length - 1] > 10) {
            return (this.exp * 4) - 3;
        }
        return (this.exp * 4) - 4;
    }

    public Dfp power10(int i) {
        Dfp newInstance = newInstance(getOne());
        if (i >= 0) {
            newInstance.exp = (i / 4) + 1;
        } else {
            newInstance.exp = (i + 1) / 4;
        }
        int i2 = ((i % 4) + 4) % 4;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    return newInstance.multiply(100);
                }
                return newInstance.multiply(1000);
            }
            return newInstance.multiply(10);
        }
        return newInstance;
    }

    protected int complement(int i) {
        int i2 = 10000 - i;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i4 >= iArr.length) {
                break;
            }
            iArr[i4] = 9999 - iArr[i4];
            i4++;
        }
        int i5 = i2 / 10000;
        int i6 = i2 - (i5 * 10000);
        while (true) {
            int[] iArr2 = this.mant;
            if (i3 >= iArr2.length) {
                return i6;
            }
            int i7 = iArr2[i3] + i5;
            i5 = i7 / 10000;
            iArr2[i3] = i7 - (i5 * 10000);
            i3++;
        }
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp add(Dfp dfp) {
        int align;
        int i;
        int[] iArr;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, ADD_TRAP, dfp, newInstance);
        }
        if (this.nans != 0 || dfp.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (dfp.isNaN()) {
                return dfp;
            }
            byte b2 = this.nans;
            if (b2 == 1 && dfp.nans == 0) {
                return this;
            }
            byte b3 = dfp.nans;
            if (b3 == 1 && b2 == 0) {
                return dfp;
            }
            if (b3 == 1 && b2 == 1 && this.sign == dfp.sign) {
                return dfp;
            }
            if (b3 == 1 && b2 == 1 && this.sign != dfp.sign) {
                this.field.setIEEEFlagsBits(1);
                Dfp newInstance2 = newInstance(getZero());
                newInstance2.nans = (byte) 3;
                return dotrap(1, ADD_TRAP, dfp, newInstance2);
            }
        }
        Dfp newInstance3 = newInstance(this);
        Dfp newInstance4 = newInstance(dfp);
        Dfp newInstance5 = newInstance(getZero());
        byte b4 = newInstance3.sign;
        byte b5 = newInstance4.sign;
        newInstance3.sign = (byte) 1;
        newInstance4.sign = (byte) 1;
        byte b6 = compare(newInstance3, newInstance4) > 0 ? b4 : b5;
        int[] iArr2 = newInstance4.mant;
        int[] iArr3 = this.mant;
        if (iArr2[iArr3.length - 1] == 0) {
            newInstance4.exp = newInstance3.exp;
        }
        if (newInstance3.mant[iArr3.length - 1] == 0) {
            newInstance3.exp = newInstance4.exp;
        }
        int i2 = newInstance3.exp;
        int i3 = newInstance4.exp;
        if (i2 < i3) {
            i = newInstance3.align(i3);
            align = 0;
        } else {
            align = newInstance4.align(i2);
            i = 0;
        }
        if (b4 != b5) {
            if (b4 == b6) {
                align = newInstance4.complement(align);
            } else {
                i = newInstance3.complement(i);
            }
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.mant.length; i5++) {
            int i6 = newInstance3.mant[i5] + newInstance4.mant[i5] + i4;
            i4 = i6 / 10000;
            newInstance5.mant[i5] = i6 - (i4 * 10000);
        }
        newInstance5.exp = newInstance3.exp;
        newInstance5.sign = b6;
        if (i4 != 0 && b4 == b5) {
            int i7 = newInstance5.mant[0];
            newInstance5.shiftRight();
            newInstance5.mant[this.mant.length - 1] = i4;
            int round = newInstance5.round(i7);
            if (round != 0) {
                newInstance5 = dotrap(round, ADD_TRAP, dfp, newInstance5);
            }
        }
        int i8 = 0;
        while (true) {
            iArr = this.mant;
            if (i8 >= iArr.length || newInstance5.mant[iArr.length - 1] != 0) {
                break;
            }
            newInstance5.shiftLeft();
            if (i8 == 0) {
                newInstance5.mant[0] = i + align;
                i = 0;
                align = 0;
            }
            i8++;
        }
        if (newInstance5.mant[iArr.length - 1] == 0) {
            newInstance5.exp = 0;
            if (b4 != b5) {
                newInstance5.sign = (byte) 1;
            }
        }
        int round2 = newInstance5.round(i + align);
        return round2 != 0 ? dotrap(round2, ADD_TRAP, dfp, newInstance5) : newInstance5;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp negate() {
        Dfp newInstance = newInstance(this);
        newInstance.sign = (byte) (-newInstance.sign);
        return newInstance;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp subtract(Dfp dfp) {
        return add(dfp.negate());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
        if ((r7.mant[0] & 1) != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        if (r8 > 5000) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        if (r8 >= 5000) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
        if (r8 != 0) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003b, code lost:
        if ((r7.mant[0] & 1) != 1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
        if (r8 != 0) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (r8 != 0) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004b A[LOOP:0: B:28:0x0046->B:30:0x004b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0058 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int round(int r8) {
        /*
            r7 = this;
            int[] r0 = org.apache.commons.math3.dfp.Dfp.AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode
            org.apache.commons.math3.dfp.DfpField r1 = r7.field
            org.apache.commons.math3.dfp.DfpField$RoundingMode r1 = r1.getRoundingMode()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 0
            r2 = 5000(0x1388, float:7.006E-42)
            r3 = 1
            switch(r0) {
                case 2: goto L3e;
                case 3: goto L32;
                case 4: goto L63;
                case 5: goto L2f;
                case 6: goto L2c;
                case 7: goto L29;
                case 8: goto L1d;
                default: goto L15;
            }
        L15:
            byte r0 = r7.sign
            r2 = -1
            if (r0 != r2) goto L63
            if (r8 == 0) goto L63
            goto L44
        L1d:
            if (r8 > r2) goto L44
            if (r8 != r2) goto L63
            int[] r0 = r7.mant
            r0 = r0[r1]
            r0 = r0 & r3
            if (r0 != 0) goto L63
            goto L44
        L29:
            if (r8 <= r2) goto L63
            goto L44
        L2c:
            if (r8 < r2) goto L63
            goto L44
        L2f:
            if (r8 == 0) goto L63
            goto L44
        L32:
            if (r8 > r2) goto L44
            if (r8 != r2) goto L63
            int[] r0 = r7.mant
            r0 = r0[r1]
            r0 = r0 & r3
            if (r0 != r3) goto L63
            goto L44
        L3e:
            byte r0 = r7.sign
            if (r0 != r3) goto L63
            if (r8 == 0) goto L63
        L44:
            r0 = r1
            r2 = r3
        L46:
            int[] r4 = r7.mant
            int r5 = r4.length
            if (r0 >= r5) goto L58
            r5 = r4[r0]
            int r5 = r5 + r2
            int r2 = r5 / 10000
            int r6 = r2 * 10000
            int r5 = r5 - r6
            r4[r0] = r5
            int r0 = r0 + 1
            goto L46
        L58:
            if (r2 == 0) goto L63
            r7.shiftRight()
            int[] r0 = r7.mant
            int r4 = r0.length
            int r4 = r4 - r3
            r0[r4] = r2
        L63:
            int r0 = r7.exp
            r2 = -32767(0xffffffffffff8001, float:NaN)
            if (r0 >= r2) goto L71
            org.apache.commons.math3.dfp.DfpField r8 = r7.field
            r0 = 8
            r8.setIEEEFlagsBits(r0)
            return r0
        L71:
            r2 = 32768(0x8000, float:4.5918E-41)
            if (r0 <= r2) goto L7d
            org.apache.commons.math3.dfp.DfpField r8 = r7.field
            r0 = 4
            r8.setIEEEFlagsBits(r0)
            return r0
        L7d:
            if (r8 == 0) goto L87
            org.apache.commons.math3.dfp.DfpField r8 = r7.field
            r0 = 16
            r8.setIEEEFlagsBits(r0)
            return r0
        L87:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.dfp.Dfp.round(int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0099, code lost:
        if (r6[r6.length - 1] != 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a7, code lost:
        if (r12.mant[r11.mant.length - 1] == 0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a9, code lost:
        r11.field.setIEEEFlagsBits(1);
        r0 = newInstance(getZero());
        r0.nans = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bc, code lost:
        return dotrap(1, org.apache.commons.math3.dfp.Dfp.MULTIPLY_TRAP, r12, r0);
     */
    @Override // org.apache.commons.math3.FieldElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.dfp.Dfp multiply(org.apache.commons.math3.dfp.Dfp r12) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.dfp.Dfp.multiply(org.apache.commons.math3.dfp.Dfp):org.apache.commons.math3.dfp.Dfp");
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp multiply(int i) {
        if (i >= 0 && i < 10000) {
            return multiplyFast(i);
        }
        return multiply(newInstance(i));
    }

    private Dfp multiplyFast(int i) {
        int i2;
        Dfp newInstance = newInstance(this);
        if (this.nans != 0) {
            if (isNaN()) {
                return this;
            }
            byte b2 = this.nans;
            if (b2 == 1 && i != 0) {
                return newInstance(this);
            }
            if (b2 == 1 && i == 0) {
                this.field.setIEEEFlagsBits(1);
                Dfp newInstance2 = newInstance(getZero());
                newInstance2.nans = (byte) 3;
                return dotrap(1, MULTIPLY_TRAP, newInstance(getZero()), newInstance2);
            }
        }
        if (i < 0 || i >= 10000) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance3 = newInstance(getZero());
            newInstance3.nans = (byte) 3;
            return dotrap(1, MULTIPLY_TRAP, newInstance3, newInstance3);
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i3 >= iArr.length) {
                break;
            }
            int i5 = (iArr[i3] * i) + i4;
            i4 = i5 / 10000;
            newInstance.mant[i3] = i5 - (i4 * 10000);
            i3++;
        }
        if (i4 != 0) {
            i2 = newInstance.mant[0];
            newInstance.shiftRight();
            newInstance.mant[this.mant.length - 1] = i4;
        } else {
            i2 = 0;
        }
        if (newInstance.mant[this.mant.length - 1] == 0) {
            newInstance.exp = 0;
        }
        int round = newInstance.round(i2);
        return round != 0 ? dotrap(round, MULTIPLY_TRAP, newInstance, newInstance) : newInstance;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Dfp divide(Dfp dfp) {
        int[] iArr;
        int[] iArr2;
        int i;
        int round;
        int i2;
        int[] iArr3;
        int i3 = 1;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, DIVIDE_TRAP, dfp, newInstance);
        }
        Dfp newInstance2 = newInstance(getZero());
        if (this.nans != 0 || dfp.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (dfp.isNaN()) {
                return dfp;
            }
            byte b2 = this.nans;
            if (b2 == 1 && dfp.nans == 0) {
                Dfp newInstance3 = newInstance(this);
                newInstance3.sign = (byte) (this.sign * dfp.sign);
                return newInstance3;
            }
            byte b3 = dfp.nans;
            if (b3 == 1 && b2 == 0) {
                Dfp newInstance4 = newInstance(getZero());
                newInstance4.sign = (byte) (this.sign * dfp.sign);
                return newInstance4;
            } else if (b3 == 1 && b2 == 1) {
                this.field.setIEEEFlagsBits(1);
                Dfp newInstance5 = newInstance(getZero());
                newInstance5.nans = (byte) 3;
                return dotrap(1, DIVIDE_TRAP, dfp, newInstance5);
            }
        }
        int[] iArr4 = dfp.mant;
        int[] iArr5 = this.mant;
        int i4 = 2;
        if (iArr4[iArr5.length - 1] == 0) {
            this.field.setIEEEFlagsBits(2);
            Dfp newInstance6 = newInstance(getZero());
            newInstance6.sign = (byte) (this.sign * dfp.sign);
            newInstance6.nans = (byte) 1;
            return dotrap(2, DIVIDE_TRAP, dfp, newInstance6);
        }
        int[] iArr6 = new int[iArr5.length + 1];
        int[] iArr7 = new int[iArr5.length + 2];
        int[] iArr8 = new int[iArr5.length + 1];
        iArr6[iArr5.length] = 0;
        iArr7[iArr5.length] = 0;
        iArr7[iArr5.length + 1] = 0;
        iArr8[iArr5.length] = 0;
        int i5 = 0;
        while (true) {
            iArr = this.mant;
            if (i5 >= iArr.length) {
                break;
            }
            iArr6[i5] = iArr[i5];
            iArr7[i5] = 0;
            iArr8[i5] = 0;
            i5++;
        }
        int length = iArr.length + 1;
        int i6 = 0;
        int i7 = 0;
        while (length >= 0) {
            int[] iArr9 = this.mant;
            int i8 = (iArr6[iArr9.length] * 10000) + iArr6[iArr9.length - i3];
            int[] iArr10 = dfp.mant;
            int i9 = i8 / (iArr10[iArr9.length - i3] + i3);
            int i10 = (i8 + i3) / iArr10[iArr9.length - i3];
            boolean z = false;
            while (!z) {
                i7 = (i9 + i10) / i4;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    int[] iArr11 = this.mant;
                    i2 = i9;
                    if (i11 >= iArr11.length + i3) {
                        break;
                    }
                    int i13 = ((i11 < iArr11.length ? dfp.mant[i11] : 0) * i7) + i12;
                    int i14 = i13 / 10000;
                    iArr8[i11] = i13 - (i14 * 10000);
                    i11++;
                    i12 = i14;
                    i9 = i2;
                    i3 = 1;
                }
                int i15 = 0;
                int i16 = 1;
                while (true) {
                    iArr3 = this.mant;
                    if (i15 >= iArr3.length + 1) {
                        break;
                    }
                    int i17 = (9999 - iArr8[i15]) + iArr6[i15] + i16;
                    i16 = i17 / 10000;
                    iArr8[i15] = i17 - (i16 * 10000);
                    i15++;
                }
                if (i16 == 0) {
                    i10 = i7 - 1;
                    i9 = i2;
                    i3 = 1;
                    i4 = 2;
                } else {
                    boolean z2 = z;
                    int i18 = ((iArr8[iArr3.length] * 10000) + iArr8[iArr3.length - 1]) / (dfp.mant[iArr3.length - 1] + 1);
                    i4 = 2;
                    if (i18 >= 2) {
                        i9 = i7 + i18;
                        i3 = 1;
                        z = z2;
                    } else {
                        boolean z3 = false;
                        for (int length2 = iArr3.length - 1; length2 >= 0; length2--) {
                            int i19 = dfp.mant[length2];
                            int i20 = iArr8[length2];
                            if (i19 > i20) {
                                z3 = true;
                            }
                            if (i19 < i20) {
                                break;
                            }
                        }
                        z = iArr8[this.mant.length] != 0 ? false : z3;
                        i9 = !z ? i7 + 1 : i2;
                        i3 = 1;
                    }
                }
            }
            iArr7[length] = i7;
            if (i7 != 0 || i6 != 0) {
                i6++;
            }
            if ((this.field.getRoundingMode() == DfpField.RoundingMode.ROUND_DOWN && i6 == this.mant.length) || i6 > this.mant.length) {
                break;
            }
            iArr6[0] = 0;
            int i21 = 0;
            while (i21 < this.mant.length) {
                int i22 = i21 + 1;
                iArr6[i22] = iArr8[i21];
                i21 = i22;
            }
            length--;
            i3 = 1;
        }
        int[] iArr12 = this.mant;
        int length3 = iArr12.length;
        int length4 = iArr12.length + 1;
        while (true) {
            if (length4 < 0) {
                break;
            } else if (iArr7[length4] != 0) {
                length3 = length4;
                break;
            } else {
                length4--;
            }
        }
        int i23 = 0;
        while (true) {
            iArr2 = this.mant;
            if (i23 >= iArr2.length) {
                break;
            }
            newInstance2.mant[(iArr2.length - i23) - 1] = iArr7[length3 - i23];
            i23++;
        }
        newInstance2.exp = ((this.exp - dfp.exp) + length3) - iArr2.length;
        newInstance2.sign = (byte) (this.sign == dfp.sign ? 1 : -1);
        if (newInstance2.mant[iArr2.length - 1] == 0) {
            i = 0;
            newInstance2.exp = 0;
        } else {
            i = 0;
        }
        if (length3 > iArr2.length - 1) {
            round = newInstance2.round(iArr7[length3 - iArr2.length]);
        } else {
            round = newInstance2.round(i);
        }
        return round != 0 ? dotrap(round, DIVIDE_TRAP, dfp, newInstance2) : newInstance2;
    }

    public Dfp divide(int i) {
        if (this.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (this.nans == 1) {
                return newInstance(this);
            }
        }
        if (i == 0) {
            this.field.setIEEEFlagsBits(2);
            Dfp newInstance = newInstance(getZero());
            newInstance.sign = this.sign;
            newInstance.nans = (byte) 1;
            return dotrap(2, DIVIDE_TRAP, getZero(), newInstance);
        } else if (i < 0 || i >= 10000) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance2 = newInstance(getZero());
            newInstance2.nans = (byte) 3;
            return dotrap(1, DIVIDE_TRAP, newInstance2, newInstance2);
        } else {
            Dfp newInstance3 = newInstance(this);
            int i2 = 0;
            for (int length = this.mant.length - 1; length >= 0; length--) {
                int[] iArr = newInstance3.mant;
                int i3 = (i2 * 10000) + iArr[length];
                int i4 = i3 / i;
                i2 = i3 - (i4 * i);
                iArr[length] = i4;
            }
            if (newInstance3.mant[this.mant.length - 1] == 0) {
                newInstance3.shiftLeft();
                int i5 = i2 * 10000;
                int i6 = i5 / i;
                i2 = i5 - (i6 * i);
                newInstance3.mant[0] = i6;
            }
            int round = newInstance3.round((i2 * 10000) / i);
            return round != 0 ? dotrap(round, DIVIDE_TRAP, newInstance3, newInstance3) : newInstance3;
        }
    }

    @Override // org.apache.commons.math3.RealFieldElement, org.apache.commons.math3.FieldElement
    public Dfp reciprocal() {
        return this.field.getOne().divide(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp sqrt() {
        byte b2 = this.nans;
        if (b2 == 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] == 0) {
                return newInstance(this);
            }
        }
        if (b2 != 0) {
            if (b2 == 1 && this.sign == 1) {
                return newInstance(this);
            }
            if (b2 == 3) {
                return newInstance(this);
            }
            if (b2 == 2) {
                this.field.setIEEEFlagsBits(1);
                return dotrap(1, SQRT_TRAP, null, newInstance(this));
            }
        }
        if (this.sign == -1) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(this);
            newInstance.nans = (byte) 3;
            return dotrap(1, SQRT_TRAP, null, newInstance);
        }
        Dfp newInstance2 = newInstance(this);
        int i = newInstance2.exp;
        if (i < -1 || i > 1) {
            newInstance2.exp = this.exp / 2;
        }
        int[] iArr2 = newInstance2.mant;
        int[] iArr3 = this.mant;
        int i2 = iArr2[iArr3.length - 1] / MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS;
        if (i2 == 0) {
            iArr2[iArr3.length - 1] = (iArr2[iArr3.length - 1] / 2) + 1;
        } else if (i2 == 2) {
            iArr2[iArr3.length - 1] = 1500;
        } else if (i2 == 3) {
            iArr2[iArr3.length - 1] = 2200;
        } else {
            iArr2[iArr3.length - 1] = 3000;
        }
        newInstance(newInstance2);
        Dfp zero = getZero();
        getZero();
        while (newInstance2.unequal(zero)) {
            Dfp newInstance3 = newInstance(newInstance2);
            newInstance3.sign = (byte) -1;
            Dfp divide = newInstance3.add(divide(newInstance2)).divide(2);
            Dfp add = newInstance2.add(divide);
            if (add.equals(zero) || divide.mant[this.mant.length - 1] == 0) {
                return add;
            }
            zero = newInstance2;
            newInstance2 = add;
        }
        return newInstance2;
    }

    public String toString() {
        byte b2 = this.nans;
        if (b2 != 0) {
            if (b2 == 1) {
                return this.sign < 0 ? NEG_INFINITY_STRING : POS_INFINITY_STRING;
            }
            return NAN_STRING;
        }
        int i = this.exp;
        if (i > this.mant.length || i < -1) {
            return dfp2sci();
        }
        return dfp2string();
    }

    protected String dfp2sci() {
        int i;
        int[] iArr = this.mant;
        int length = iArr.length * 4;
        char[] cArr = new char[length];
        char[] cArr2 = new char[(iArr.length * 4) + 20];
        int i2 = 0;
        for (int length2 = iArr.length - 1; length2 >= 0; length2--) {
            int i3 = this.mant[length2];
            cArr[i2] = (char) ((i3 / 1000) + 48);
            cArr[i2 + 1] = (char) (((i3 / 100) % 10) + 48);
            int i4 = i2 + 3;
            cArr[i2 + 2] = (char) (((i3 / 10) % 10) + 48);
            i2 += 4;
            cArr[i4] = (char) ((i3 % 10) + 48);
        }
        int i5 = 0;
        while (i5 < length && cArr[i5] == '0') {
            i5++;
        }
        if (this.sign == -1) {
            cArr2[0] = '-';
            i = 1;
        } else {
            i = 0;
        }
        if (i5 != length) {
            int i6 = i + 1;
            cArr2[i] = cArr[i5];
            int i7 = i + 2;
            cArr2[i6] = '.';
            for (int i8 = i5 + 1; i8 < length; i8++) {
                cArr2[i7] = cArr[i8];
                i7++;
            }
            int i9 = i7 + 1;
            cArr2[i7] = 'e';
            int i10 = ((this.exp * 4) - i5) - 1;
            int i11 = i10 < 0 ? -i10 : i10;
            int i12 = 1000000000;
            while (i12 > i11) {
                i12 /= 10;
            }
            if (i10 < 0) {
                cArr2[i9] = '-';
                i9 = i7 + 2;
            }
            while (i12 > 0) {
                cArr2[i9] = (char) ((i11 / i12) + 48);
                i11 %= i12;
                i12 /= 10;
                i9++;
            }
            return new String(cArr2, 0, i9);
        }
        cArr2[i] = '0';
        cArr2[i + 1] = '.';
        cArr2[i + 2] = '0';
        cArr2[i + 3] = 'e';
        cArr2[i + 4] = '0';
        return new String(cArr2, 0, 5);
    }

    protected String dfp2string() {
        boolean z;
        int i;
        char c2;
        char[] cArr = new char[(this.mant.length * 4) + 20];
        int i2 = this.exp;
        cArr[0] = ' ';
        int i3 = 1;
        if (i2 <= 0) {
            cArr[1] = '0';
            cArr[2] = '.';
            i = 3;
            z = true;
        } else {
            z = false;
            i = 1;
        }
        while (i2 < 0) {
            cArr[i] = '0';
            cArr[i + 1] = '0';
            int i4 = i + 3;
            cArr[i + 2] = '0';
            i += 4;
            cArr[i4] = '0';
            i2++;
        }
        for (int length = this.mant.length - 1; length >= 0; length--) {
            int i5 = this.mant[length];
            cArr[i] = (char) ((i5 / 1000) + 48);
            cArr[i + 1] = (char) (((i5 / 100) % 10) + 48);
            cArr[i + 2] = (char) (((i5 / 10) % 10) + 48);
            int i6 = i + 4;
            cArr[i + 3] = (char) ((i5 % 10) + 48);
            i2--;
            if (i2 == 0) {
                i += 5;
                cArr[i6] = '.';
                z = true;
            } else {
                i = i6;
            }
        }
        while (i2 > 0) {
            cArr[i] = '0';
            cArr[i + 1] = '0';
            int i7 = i + 3;
            cArr[i + 2] = '0';
            i += 4;
            cArr[i7] = '0';
            i2--;
        }
        if (!z) {
            cArr[i] = '.';
            i++;
        }
        while (true) {
            c2 = cArr[i3];
            if (c2 != '0') {
                break;
            }
            i3++;
        }
        if (c2 == '.') {
            i3--;
        }
        while (cArr[i - 1] == '0') {
            i--;
        }
        if (this.sign < 0) {
            i3--;
            cArr[i3] = '-';
        }
        return new String(cArr, i3, i - i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.dfp.Dfp dotrap(int r10, java.lang.String r11, org.apache.commons.math3.dfp.Dfp r12, org.apache.commons.math3.dfp.Dfp r13) {
        /*
            r9 = this;
            r0 = 3
            r1 = 1
            if (r10 == r1) goto La4
            r2 = 2
            if (r10 == r2) goto L4a
            r0 = 4
            if (r10 == r0) goto L33
            r0 = 8
            if (r10 == r0) goto L11
            r7 = r13
            goto Lb3
        L11:
            int r0 = r13.exp
            int[] r1 = r9.mant
            int r1 = r1.length
            int r0 = r0 + r1
            r1 = -32767(0xffffffffffff8001, float:NaN)
            if (r0 >= r1) goto L28
            org.apache.commons.math3.dfp.Dfp r0 = r9.getZero()
            org.apache.commons.math3.dfp.Dfp r0 = r9.newInstance(r0)
            byte r1 = r13.sign
            r0.sign = r1
            goto L2c
        L28:
            org.apache.commons.math3.dfp.Dfp r0 = r9.newInstance(r13)
        L2c:
            int r1 = r13.exp
            int r1 = r1 + 32760
            r13.exp = r1
            goto L47
        L33:
            int r0 = r13.exp
            int r0 = r0 + (-32760)
            r13.exp = r0
            org.apache.commons.math3.dfp.Dfp r0 = r9.getZero()
            org.apache.commons.math3.dfp.Dfp r0 = r9.newInstance(r0)
            byte r2 = r13.sign
            r0.sign = r2
            r0.nans = r1
        L47:
            r7 = r0
            goto Lb3
        L4a:
            byte r3 = r9.nans
            if (r3 != 0) goto L69
            int[] r3 = r9.mant
            int r4 = r3.length
            int r4 = r4 - r1
            r3 = r3[r4]
            if (r3 == 0) goto L69
            org.apache.commons.math3.dfp.Dfp r3 = r9.getZero()
            org.apache.commons.math3.dfp.Dfp r3 = r9.newInstance(r3)
            byte r4 = r9.sign
            byte r5 = r12.sign
            int r4 = r4 * r5
            byte r4 = (byte) r4
            r3.sign = r4
            r3.nans = r1
            goto L6a
        L69:
            r3 = r13
        L6a:
            byte r4 = r9.nans
            if (r4 != 0) goto L80
            int[] r4 = r9.mant
            int r5 = r4.length
            int r5 = r5 - r1
            r4 = r4[r5]
            if (r4 != 0) goto L80
            org.apache.commons.math3.dfp.Dfp r3 = r9.getZero()
            org.apache.commons.math3.dfp.Dfp r3 = r9.newInstance(r3)
            r3.nans = r0
        L80:
            byte r4 = r9.nans
            if (r4 == r1) goto L86
            if (r4 != r0) goto L90
        L86:
            org.apache.commons.math3.dfp.Dfp r3 = r9.getZero()
            org.apache.commons.math3.dfp.Dfp r3 = r9.newInstance(r3)
            r3.nans = r0
        L90:
            byte r4 = r9.nans
            if (r4 == r1) goto L99
            if (r4 != r2) goto L97
            goto L99
        L97:
            r7 = r3
            goto Lb3
        L99:
            org.apache.commons.math3.dfp.Dfp r1 = r9.getZero()
            org.apache.commons.math3.dfp.Dfp r1 = r9.newInstance(r1)
            r1.nans = r0
            goto Lb2
        La4:
            org.apache.commons.math3.dfp.Dfp r1 = r9.getZero()
            org.apache.commons.math3.dfp.Dfp r1 = r9.newInstance(r1)
            byte r2 = r13.sign
            r1.sign = r2
            r1.nans = r0
        Lb2:
            r7 = r1
        Lb3:
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r12
            r8 = r13
            org.apache.commons.math3.dfp.Dfp r10 = r3.trap(r4, r5, r6, r7, r8)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.dfp.Dfp.dotrap(int, java.lang.String, org.apache.commons.math3.dfp.Dfp, org.apache.commons.math3.dfp.Dfp):org.apache.commons.math3.dfp.Dfp");
    }

    public int classify() {
        return this.nans;
    }

    public static Dfp copysign(Dfp dfp, Dfp dfp2) {
        Dfp newInstance = dfp.newInstance(dfp);
        newInstance.sign = dfp2.sign;
        return newInstance;
    }

    public Dfp nextAfter(Dfp dfp) {
        Dfp subtract;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, NEXT_AFTER_TRAP, dfp, newInstance);
        }
        boolean lessThan = lessThan(dfp);
        if (compare(this, dfp) == 0) {
            return newInstance(dfp);
        }
        if (lessThan(getZero())) {
            lessThan = !lessThan;
        }
        if (lessThan) {
            Dfp newInstance2 = newInstance(getOne());
            newInstance2.exp = (this.exp - this.mant.length) + 1;
            newInstance2.sign = this.sign;
            if (equals(getZero())) {
                newInstance2.exp = (-32767) - this.mant.length;
            }
            subtract = add(newInstance2);
        } else {
            Dfp newInstance3 = newInstance(getOne());
            newInstance3.exp = this.exp;
            newInstance3.sign = this.sign;
            if (equals(newInstance3)) {
                newInstance3.exp = this.exp - this.mant.length;
            } else {
                newInstance3.exp = (this.exp - this.mant.length) + 1;
            }
            if (equals(getZero())) {
                newInstance3.exp = (-32767) - this.mant.length;
            }
            subtract = subtract(newInstance3);
        }
        if (subtract.classify() == 1 && classify() != 1) {
            this.field.setIEEEFlagsBits(16);
            subtract = dotrap(16, NEXT_AFTER_TRAP, dfp, subtract);
        }
        if (!subtract.equals(getZero()) || equals(getZero())) {
            return subtract;
        }
        this.field.setIEEEFlagsBits(16);
        return dotrap(16, NEXT_AFTER_TRAP, dfp, subtract);
    }

    public double toDouble() {
        Dfp dfp;
        boolean z;
        if (isInfinite()) {
            return lessThan(getZero()) ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        } else if (isNaN()) {
            return Double.NaN;
        } else {
            int compare = compare(this, getZero());
            if (compare == 0) {
                return this.sign < 0 ? -0.0d : 0.0d;
            }
            if (compare < 0) {
                dfp = negate();
                z = true;
            } else {
                dfp = this;
                z = false;
            }
            int intLog10 = (int) (dfp.intLog10() * 3.32d);
            if (intLog10 < 0) {
                intLog10--;
            }
            Dfp pow = DfpMath.pow(getTwo(), intLog10);
            while (true) {
                if (!pow.lessThan(dfp) && !pow.equals(dfp)) {
                    break;
                }
                pow = pow.multiply(2);
                intLog10++;
            }
            int i = intLog10 - 1;
            Dfp divide = dfp.divide(DfpMath.pow(getTwo(), i));
            if (i > -1023) {
                divide = divide.subtract(getOne());
            }
            if (i < -1074) {
                return 0.0d;
            }
            if (i > 1023) {
                return z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            String dfp2 = divide.multiply(newInstance(4503599627370496L)).rint().toString();
            long parseLong = Long.parseLong(dfp2.substring(0, dfp2.length() - 1));
            if (parseLong == 4503599627370496L) {
                parseLong = 0;
            } else {
                intLog10 = i;
            }
            if (intLog10 <= -1023) {
                intLog10--;
            }
            while (intLog10 < -1023) {
                intLog10++;
                parseLong >>>= 1;
            }
            double longBitsToDouble = Double.longBitsToDouble(((intLog10 + 1023) << 52) | parseLong);
            return z ? -longBitsToDouble : longBitsToDouble;
        }
    }

    public double[] toSplitDouble() {
        double longBitsToDouble = Double.longBitsToDouble(Double.doubleToLongBits(toDouble()) & (-1073741824));
        return new double[]{longBitsToDouble, subtract(newInstance(longBitsToDouble)).toDouble()};
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public double getReal() {
        return toDouble();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp add(double d) {
        return add(newInstance(d));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp subtract(double d) {
        return subtract(newInstance(d));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp multiply(double d) {
        return multiply(newInstance(d));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp divide(double d) {
        return divide(newInstance(d));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp remainder(double d) {
        return remainder(newInstance(d));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public long round() {
        return FastMath.round(toDouble());
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp signum() {
        if (isNaN() || isZero()) {
            return this;
        }
        return newInstance(this.sign > 0 ? 1 : -1);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp copySign(Dfp dfp) {
        byte b2 = this.sign;
        return ((b2 < 0 || dfp.sign < 0) && (b2 >= 0 || dfp.sign >= 0)) ? negate() : this;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp copySign(double d) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        byte b2 = this.sign;
        return ((b2 < 0 || doubleToLongBits < 0) && (b2 >= 0 || doubleToLongBits >= 0)) ? negate() : this;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp scalb(int i) {
        return multiply(DfpMath.pow(getTwo(), i));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp hypot(Dfp dfp) {
        return multiply(this).add(dfp.multiply(dfp)).sqrt();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp cbrt() {
        return rootN(3);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp rootN(int i) {
        return this.sign >= 0 ? DfpMath.pow(this, getOne().divide(i)) : DfpMath.pow(negate(), getOne().divide(i)).negate();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp pow(double d) {
        return DfpMath.pow(this, newInstance(d));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp pow(int i) {
        return DfpMath.pow(this, i);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp pow(Dfp dfp) {
        return DfpMath.pow(this, dfp);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp exp() {
        return DfpMath.exp(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp expm1() {
        return DfpMath.exp(this).subtract(getOne());
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp log() {
        return DfpMath.log(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp log1p() {
        return DfpMath.log(add(getOne()));
    }

    @Deprecated
    public int log10() {
        return intLog10();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp cos() {
        return DfpMath.cos(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp sin() {
        return DfpMath.sin(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp tan() {
        return DfpMath.tan(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp acos() {
        return DfpMath.acos(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp asin() {
        return DfpMath.asin(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp atan() {
        return DfpMath.atan(this);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp atan2(Dfp dfp) throws DimensionMismatchException {
        Dfp sqrt = dfp.multiply(dfp).add(multiply(this)).sqrt();
        if (dfp.sign >= 0) {
            return getTwo().multiply(divide(sqrt.add(dfp)).atan());
        }
        Dfp multiply = getTwo().multiply(divide(sqrt.subtract(dfp)).atan());
        return newInstance(multiply.sign <= 0 ? -3.141592653589793d : 3.141592653589793d).subtract(multiply);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp cosh() {
        return DfpMath.exp(this).add(DfpMath.exp(negate())).divide(2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp sinh() {
        return DfpMath.exp(this).subtract(DfpMath.exp(negate())).divide(2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp tanh() {
        Dfp exp = DfpMath.exp(this);
        Dfp exp2 = DfpMath.exp(negate());
        return exp.subtract(exp2).divide(exp.add(exp2));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp acosh() {
        return multiply(this).subtract(getOne()).sqrt().add(this).log();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp asinh() {
        return multiply(this).add(getOne()).sqrt().add(this).log();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp atanh() {
        return getOne().add(this).divide(getOne().subtract(this)).log().divide(2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(Dfp[] dfpArr, Dfp[] dfpArr2) throws DimensionMismatchException {
        if (dfpArr.length != dfpArr2.length) {
            throw new DimensionMismatchException(dfpArr.length, dfpArr2.length);
        }
        Dfp zero = getZero();
        for (int i = 0; i < dfpArr.length; i++) {
            zero = zero.add(dfpArr[i].multiply(dfpArr2[i]));
        }
        return zero;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(double[] dArr, Dfp[] dfpArr) throws DimensionMismatchException {
        if (dArr.length != dfpArr.length) {
            throw new DimensionMismatchException(dArr.length, dfpArr.length);
        }
        Dfp zero = getZero();
        for (int i = 0; i < dArr.length; i++) {
            zero = zero.add(dfpArr[i].multiply(dArr[i]));
        }
        return zero;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(double d, Dfp dfp, double d2, Dfp dfp2) {
        return dfp.multiply(d).add(dfp2.multiply(d2));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4, Dfp dfp5, Dfp dfp6) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4)).add(dfp5.multiply(dfp6));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(double d, Dfp dfp, double d2, Dfp dfp2, double d3, Dfp dfp3) {
        return dfp.multiply(d).add(dfp2.multiply(d2)).add(dfp3.multiply(d3));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4, Dfp dfp5, Dfp dfp6, Dfp dfp7, Dfp dfp8) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4)).add(dfp5.multiply(dfp6)).add(dfp7.multiply(dfp8));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public Dfp linearCombination(double d, Dfp dfp, double d2, Dfp dfp2, double d3, Dfp dfp3, double d4, Dfp dfp4) {
        return dfp.multiply(d).add(dfp2.multiply(d2)).add(dfp3.multiply(d3)).add(dfp4.multiply(d4));
    }
}
