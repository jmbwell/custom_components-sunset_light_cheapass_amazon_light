package org.apache.commons.math3.optimization.linear;
@Deprecated
/* loaded from: classes5.dex */
public enum Relationship {
    EQ("="),
    LEQ("<="),
    GEQ(">=");
    
    private final String stringValue;

    Relationship(String str) {
        this.stringValue = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.stringValue;
    }

    /* renamed from: org.apache.commons.math3.optimization.linear.Relationship$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$optimization$linear$Relationship;

        static {
            int[] iArr = new int[Relationship.values().length];
            $SwitchMap$org$apache$commons$math3$optimization$linear$Relationship = iArr;
            try {
                iArr[Relationship.LEQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$optimization$linear$Relationship[Relationship.GEQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public Relationship oppositeRelationship() {
        int i = AnonymousClass1.$SwitchMap$org$apache$commons$math3$optimization$linear$Relationship[ordinal()];
        if (i != 1) {
            if (i == 2) {
                return LEQ;
            }
            return EQ;
        }
        return GEQ;
    }
}
