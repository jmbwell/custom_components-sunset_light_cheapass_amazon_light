package org.apache.commons.math3.dfp;

import org.apache.commons.math3.dfp.DfpField;
/* loaded from: classes5.dex */
public class DfpDec extends Dfp {
    protected DfpDec(DfpField dfpField) {
        super(dfpField);
    }

    protected DfpDec(DfpField dfpField, byte b2) {
        super(dfpField, b2);
    }

    protected DfpDec(DfpField dfpField, int i) {
        super(dfpField, i);
    }

    protected DfpDec(DfpField dfpField, long j) {
        super(dfpField, j);
    }

    protected DfpDec(DfpField dfpField, double d) {
        super(dfpField, d);
        round(0);
    }

    public DfpDec(Dfp dfp) {
        super(dfp);
        round(0);
    }

    protected DfpDec(DfpField dfpField, String str) {
        super(dfpField, str);
        round(0);
    }

    protected DfpDec(DfpField dfpField, byte b2, byte b3) {
        super(dfpField, b2, b3);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance() {
        return new DfpDec(getField());
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(byte b2) {
        return new DfpDec(getField(), b2);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(int i) {
        return new DfpDec(getField(), i);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(long j) {
        return new DfpDec(getField(), j);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(double d) {
        return new DfpDec(getField(), d);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(Dfp dfp) {
        if (getField().getRadixDigits() != dfp.getField().getRadixDigits()) {
            getField().setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, "newInstance", dfp, newInstance);
        }
        return new DfpDec(dfp);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(String str) {
        return new DfpDec(getField(), str);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(byte b2, byte b3) {
        return new DfpDec(getField(), b2, b3);
    }

    protected int getDecimalDigits() {
        return (getRadixDigits() * 4) - 3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0093, code lost:
        if (r12 != 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009c, code lost:
        if (r12 != 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a3, code lost:
        if (r12 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00aa, code lost:
        if ((r3 & 1) != 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b1, code lost:
        if (r12 == 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b8, code lost:
        if ((r3 & 1) != 1) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bb, code lost:
        if (r0 > 5) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00be, code lost:
        if (r0 >= 5) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c3, code lost:
        if (r12 == 0) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ca A[LOOP:3: B:58:0x00c5->B:60:0x00ca, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00dc  */
    @Override // org.apache.commons.math3.dfp.Dfp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int round(int r12) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.dfp.DfpDec.round(int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.math3.dfp.DfpDec$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode;

        static {
            int[] iArr = new int[DfpField.RoundingMode.values().length];
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode = iArr;
            try {
                iArr[DfpField.RoundingMode.ROUND_DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_EVEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_ODD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_CEIL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_FLOOR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp nextAfter(Dfp dfp) {
        Dfp divide;
        Dfp subtract;
        if (getField().getRadixDigits() != dfp.getField().getRadixDigits()) {
            getField().setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, "nextAfter", dfp, newInstance);
        }
        boolean lessThan = lessThan(dfp);
        if (equals(dfp)) {
            return newInstance(dfp);
        }
        if (lessThan(getZero())) {
            lessThan = !lessThan;
        }
        if (lessThan) {
            Dfp copysign = copysign(power10((intLog10() - getDecimalDigits()) + 1), this);
            if (equals(getZero())) {
                copysign = power10K((-32768) - this.mant.length);
            }
            if (copysign.equals(getZero())) {
                subtract = copysign(newInstance(getZero()), this);
            } else {
                subtract = add(copysign);
            }
        } else {
            Dfp copysign2 = copysign(power10(intLog10()), this);
            if (equals(copysign2)) {
                divide = copysign2.divide(power10(getDecimalDigits()));
            } else {
                divide = copysign2.divide(power10(getDecimalDigits() - 1));
            }
            if (equals(getZero())) {
                divide = power10K((-32768) - this.mant.length);
            }
            if (divide.equals(getZero())) {
                subtract = copysign(newInstance(getZero()), this);
            } else {
                subtract = subtract(divide);
            }
        }
        if (subtract.classify() == 1 && classify() != 1) {
            getField().setIEEEFlagsBits(16);
            subtract = dotrap(16, "nextAfter", dfp, subtract);
        }
        if (!subtract.equals(getZero()) || equals(getZero())) {
            return subtract;
        }
        getField().setIEEEFlagsBits(16);
        return dotrap(16, "nextAfter", dfp, subtract);
    }
}
