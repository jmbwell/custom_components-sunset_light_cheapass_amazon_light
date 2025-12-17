package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;
/* compiled from: UByte.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 s2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u0017\u0010\fJ\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u0018\u0010\u000fJ\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0019\u0010\u0012J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001d\u0010\fJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u001e\u0010\u000fJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u001f\u0010\u0012J\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b \u0010\u001bJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\"\u0010\fJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b#\u0010\u000fJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b$\u0010\u0012J\u0018\u0010!\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b%\u0010\u001bJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b'\u0010\fJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b(\u0010\u000fJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b)\u0010\u0012J\u0018\u0010&\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b*\u0010\u001bJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b,\u0010\fJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b-\u0010\u000fJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b.\u0010\u0012J\u0018\u0010+\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b/\u0010\u001bJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b1\u0010\fJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\b¢\u0006\u0004\b2\u0010\u000fJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b3\u0010\u0012J\u0018\u00100\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b4\u0010\u001bJ\u0018\u00105\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b6\u00107J\u0018\u00105\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\rH\u0087\b¢\u0006\u0004\b8\u00109J\u0018\u00105\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b:\u0010\u0012J\u0018\u00105\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b;\u0010\u001bJ\u0010\u0010<\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b=\u0010\u0005J\u0010\u0010>\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b?\u0010\u0005J\u0018\u0010@\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bB\u0010CJ\u0018\u0010D\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bE\u0010CJ\u0018\u0010F\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bG\u00107J\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bI\u00107J\u0018\u0010J\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bK\u00107J\u0010\u0010L\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bM\u0010\u0005J\u0010\u0010N\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bO\u0010\u0005J\u0010\u0010P\u001a\u00020QH\u0087\b¢\u0006\u0004\bR\u0010SJ\u0010\u0010T\u001a\u00020\tH\u0087\b¢\u0006\u0004\bU\u0010VJ\u0010\u0010W\u001a\u00020XH\u0087\b¢\u0006\u0004\bY\u0010ZJ\u0010\u0010[\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b\\\u0010\u0005J\u0010\u0010]\u001a\u00020\rH\u0087\b¢\u0006\u0004\b^\u0010SJ\u0010\u0010_\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b`\u0010VJ\u0010\u0010a\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\bb\u0010ZJ\u0010\u0010c\u001a\u00020dH\u0087\b¢\u0006\u0004\be\u0010fJ\u0010\u0010g\u001a\u00020hH\u0087\b¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020lH\u0016¢\u0006\u0004\bm\u0010nJ\u0013\u0010o\u001a\u00020p2\b\u0010\n\u001a\u0004\u0018\u00010qHÖ\u0003J\t\u0010r\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006t"}, d2 = {"Lkotlin/UByte;", "", "data", "", "constructor-impl", "(B)B", "getData$annotations", "()V", "compareTo", "", "other", "compareTo-7apg3OU", "(BB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(BS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(BI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(BJ)I", "plus", "plus-7apg3OU", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(BJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(BB)B", "mod-xj2QHRw", "(BS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-w2LRezQ", "dec", "dec-w2LRezQ", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-7apg3OU", "(BB)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-7apg3OU", "and", "and-7apg3OU", "or", "or-7apg3OU", "xor", "xor-7apg3OU", "inv", "inv-w2LRezQ", "toByte", "toByte-impl", "toShort", "", "toShort-impl", "(B)S", "toInt", "toInt-impl", "(B)I", "toLong", "", "toLong-impl", "(B)J", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", "", "toFloat-impl", "(B)F", "toDouble", "", "toDouble-impl", "(B)D", "toString", "", "toString-impl", "(B)Ljava/lang/String;", "equals", "", "", "hashCode", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmInline
/* loaded from: classes4.dex */
public final class UByte implements Comparable<UByte> {
    public static final Companion Companion = new Companion(null);
    public static final byte MAX_VALUE = -1;
    public static final byte MIN_VALUE = 0;
    public static final int SIZE_BITS = 8;
    public static final int SIZE_BYTES = 1;
    private final byte data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UByte m1051boximpl(byte b2) {
        return new UByte(b2);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte m1057constructorimpl(byte b2) {
        return b2;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1063equalsimpl(byte b2, Object obj) {
        return (obj instanceof UByte) && b2 == ((UByte) obj).m1107unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1064equalsimpl0(byte b2, byte b3) {
        return b2 == b3;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1069hashCodeimpl(byte b2) {
        return b2;
    }

    /* renamed from: toByte-impl  reason: not valid java name */
    private static final byte m1095toByteimpl(byte b2) {
        return b2;
    }

    /* renamed from: toInt-impl  reason: not valid java name */
    private static final int m1098toIntimpl(byte b2) {
        return b2 & 255;
    }

    /* renamed from: toLong-impl  reason: not valid java name */
    private static final long m1099toLongimpl(byte b2) {
        return b2 & 255;
    }

    /* renamed from: toShort-impl  reason: not valid java name */
    private static final short m1100toShortimpl(byte b2) {
        return (short) (b2 & 255);
    }

    /* renamed from: toUByte-w2LRezQ  reason: not valid java name */
    private static final byte m1102toUBytew2LRezQ(byte b2) {
        return b2;
    }

    public boolean equals(Object obj) {
        return m1063equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1069hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ byte m1107unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return Intrinsics.compare(m1107unboximpl() & 255, uByte.m1107unboximpl() & 255);
    }

    private /* synthetic */ UByte(byte b2) {
        this.data = b2;
    }

    /* compiled from: UByte.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0010\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lkotlin/UByte$Companion;", "", "<init>", "()V", "MIN_VALUE", "Lkotlin/UByte;", "B", "MAX_VALUE", "SIZE_BYTES", "", "SIZE_BITS", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private int m1052compareTo7apg3OU(byte b2) {
        return Intrinsics.compare(m1107unboximpl() & 255, b2 & 255);
    }

    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private static int m1053compareTo7apg3OU(byte b2, byte b3) {
        return Intrinsics.compare(b2 & 255, b3 & 255);
    }

    /* renamed from: compareTo-xj2QHRw  reason: not valid java name */
    private static final int m1056compareToxj2QHRw(byte b2, short s) {
        return Intrinsics.compare(b2 & 255, s & UShort.MAX_VALUE);
    }

    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private static final int m1055compareToWZ4Q5Ns(byte b2, int i) {
        int compare;
        compare = Integer.compare(UInt.m1138constructorimpl(b2 & 255) ^ Integer.MIN_VALUE, i ^ Integer.MIN_VALUE);
        return compare;
    }

    /* renamed from: compareTo-VKZWuLQ  reason: not valid java name */
    private static final int m1054compareToVKZWuLQ(byte b2, long j) {
        int compare;
        compare = Long.compare(ULong.m1217constructorimpl(b2 & 255) ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
        return compare;
    }

    /* renamed from: plus-7apg3OU  reason: not valid java name */
    private static final int m1081plus7apg3OU(byte b2, byte b3) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) + UInt.m1138constructorimpl(b3 & 255));
    }

    /* renamed from: plus-xj2QHRw  reason: not valid java name */
    private static final int m1084plusxj2QHRw(byte b2, short s) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) + UInt.m1138constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: plus-WZ4Q5Ns  reason: not valid java name */
    private static final int m1083plusWZ4Q5Ns(byte b2, int i) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) + i);
    }

    /* renamed from: plus-VKZWuLQ  reason: not valid java name */
    private static final long m1082plusVKZWuLQ(byte b2, long j) {
        return ULong.m1217constructorimpl(ULong.m1217constructorimpl(b2 & 255) + j);
    }

    /* renamed from: minus-7apg3OU  reason: not valid java name */
    private static final int m1072minus7apg3OU(byte b2, byte b3) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) - UInt.m1138constructorimpl(b3 & 255));
    }

    /* renamed from: minus-xj2QHRw  reason: not valid java name */
    private static final int m1075minusxj2QHRw(byte b2, short s) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) - UInt.m1138constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: minus-WZ4Q5Ns  reason: not valid java name */
    private static final int m1074minusWZ4Q5Ns(byte b2, int i) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) - i);
    }

    /* renamed from: minus-VKZWuLQ  reason: not valid java name */
    private static final long m1073minusVKZWuLQ(byte b2, long j) {
        return ULong.m1217constructorimpl(ULong.m1217constructorimpl(b2 & 255) - j);
    }

    /* renamed from: times-7apg3OU  reason: not valid java name */
    private static final int m1091times7apg3OU(byte b2, byte b3) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) * UInt.m1138constructorimpl(b3 & 255));
    }

    /* renamed from: times-xj2QHRw  reason: not valid java name */
    private static final int m1094timesxj2QHRw(byte b2, short s) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) * UInt.m1138constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: times-WZ4Q5Ns  reason: not valid java name */
    private static final int m1093timesWZ4Q5Ns(byte b2, int i) {
        return UInt.m1138constructorimpl(UInt.m1138constructorimpl(b2 & 255) * i);
    }

    /* renamed from: times-VKZWuLQ  reason: not valid java name */
    private static final long m1092timesVKZWuLQ(byte b2, long j) {
        return ULong.m1217constructorimpl(ULong.m1217constructorimpl(b2 & 255) * j);
    }

    /* renamed from: div-7apg3OU  reason: not valid java name */
    private static final int m1059div7apg3OU(byte b2, byte b3) {
        return UByte$$ExternalSyntheticBackport0.m(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(b3 & 255));
    }

    /* renamed from: div-xj2QHRw  reason: not valid java name */
    private static final int m1062divxj2QHRw(byte b2, short s) {
        return UByte$$ExternalSyntheticBackport0.m(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: div-WZ4Q5Ns  reason: not valid java name */
    private static final int m1061divWZ4Q5Ns(byte b2, int i) {
        return UByte$$ExternalSyntheticBackport0.m(UInt.m1138constructorimpl(b2 & 255), i);
    }

    /* renamed from: div-VKZWuLQ  reason: not valid java name */
    private static final long m1060divVKZWuLQ(byte b2, long j) {
        return UByte$$ExternalSyntheticBackport0.m$1(ULong.m1217constructorimpl(b2 & 255), j);
    }

    /* renamed from: rem-7apg3OU  reason: not valid java name */
    private static final int m1087rem7apg3OU(byte b2, byte b3) {
        return UByte$$ExternalSyntheticBackport0.m$1(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(b3 & 255));
    }

    /* renamed from: rem-xj2QHRw  reason: not valid java name */
    private static final int m1090remxj2QHRw(byte b2, short s) {
        return UByte$$ExternalSyntheticBackport0.m$1(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: rem-WZ4Q5Ns  reason: not valid java name */
    private static final int m1089remWZ4Q5Ns(byte b2, int i) {
        return UByte$$ExternalSyntheticBackport0.m$1(UInt.m1138constructorimpl(b2 & 255), i);
    }

    /* renamed from: rem-VKZWuLQ  reason: not valid java name */
    private static final long m1088remVKZWuLQ(byte b2, long j) {
        return UByte$$ExternalSyntheticBackport0.m1108m(ULong.m1217constructorimpl(b2 & 255), j);
    }

    /* renamed from: floorDiv-7apg3OU  reason: not valid java name */
    private static final int m1065floorDiv7apg3OU(byte b2, byte b3) {
        return UByte$$ExternalSyntheticBackport0.m(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(b3 & 255));
    }

    /* renamed from: floorDiv-xj2QHRw  reason: not valid java name */
    private static final int m1068floorDivxj2QHRw(byte b2, short s) {
        return UByte$$ExternalSyntheticBackport0.m(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(s & UShort.MAX_VALUE));
    }

    /* renamed from: floorDiv-WZ4Q5Ns  reason: not valid java name */
    private static final int m1067floorDivWZ4Q5Ns(byte b2, int i) {
        return UByte$$ExternalSyntheticBackport0.m(UInt.m1138constructorimpl(b2 & 255), i);
    }

    /* renamed from: floorDiv-VKZWuLQ  reason: not valid java name */
    private static final long m1066floorDivVKZWuLQ(byte b2, long j) {
        return UByte$$ExternalSyntheticBackport0.m$1(ULong.m1217constructorimpl(b2 & 255), j);
    }

    /* renamed from: mod-7apg3OU  reason: not valid java name */
    private static final byte m1076mod7apg3OU(byte b2, byte b3) {
        return m1057constructorimpl((byte) UByte$$ExternalSyntheticBackport0.m$1(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(b3 & 255)));
    }

    /* renamed from: mod-xj2QHRw  reason: not valid java name */
    private static final short m1079modxj2QHRw(byte b2, short s) {
        return UShort.m1324constructorimpl((short) UByte$$ExternalSyntheticBackport0.m$1(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(s & UShort.MAX_VALUE)));
    }

    /* renamed from: mod-WZ4Q5Ns  reason: not valid java name */
    private static final int m1078modWZ4Q5Ns(byte b2, int i) {
        return UByte$$ExternalSyntheticBackport0.m$1(UInt.m1138constructorimpl(b2 & 255), i);
    }

    /* renamed from: mod-VKZWuLQ  reason: not valid java name */
    private static final long m1077modVKZWuLQ(byte b2, long j) {
        return UByte$$ExternalSyntheticBackport0.m1108m(ULong.m1217constructorimpl(b2 & 255), j);
    }

    /* renamed from: inc-w2LRezQ  reason: not valid java name */
    private static final byte m1070incw2LRezQ(byte b2) {
        return m1057constructorimpl((byte) (b2 + 1));
    }

    /* renamed from: dec-w2LRezQ  reason: not valid java name */
    private static final byte m1058decw2LRezQ(byte b2) {
        return m1057constructorimpl((byte) (b2 - 1));
    }

    /* renamed from: rangeTo-7apg3OU  reason: not valid java name */
    private static final UIntRange m1085rangeTo7apg3OU(byte b2, byte b3) {
        return new UIntRange(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(b3 & 255), null);
    }

    /* renamed from: rangeUntil-7apg3OU  reason: not valid java name */
    private static final UIntRange m1086rangeUntil7apg3OU(byte b2, byte b3) {
        return URangesKt.m2364untilJ1ME1BU(UInt.m1138constructorimpl(b2 & 255), UInt.m1138constructorimpl(b3 & 255));
    }

    /* renamed from: and-7apg3OU  reason: not valid java name */
    private static final byte m1050and7apg3OU(byte b2, byte b3) {
        return m1057constructorimpl((byte) (b2 & b3));
    }

    /* renamed from: or-7apg3OU  reason: not valid java name */
    private static final byte m1080or7apg3OU(byte b2, byte b3) {
        return m1057constructorimpl((byte) (b2 | b3));
    }

    /* renamed from: xor-7apg3OU  reason: not valid java name */
    private static final byte m1106xor7apg3OU(byte b2, byte b3) {
        return m1057constructorimpl((byte) (b2 ^ b3));
    }

    /* renamed from: inv-w2LRezQ  reason: not valid java name */
    private static final byte m1071invw2LRezQ(byte b2) {
        return m1057constructorimpl((byte) (~b2));
    }

    /* renamed from: toUShort-Mh2AYeg  reason: not valid java name */
    private static final short m1105toUShortMh2AYeg(byte b2) {
        return UShort.m1324constructorimpl((short) (b2 & 255));
    }

    /* renamed from: toUInt-pVg5ArA  reason: not valid java name */
    private static final int m1103toUIntpVg5ArA(byte b2) {
        return UInt.m1138constructorimpl(b2 & 255);
    }

    /* renamed from: toULong-s-VKNKU  reason: not valid java name */
    private static final long m1104toULongsVKNKU(byte b2) {
        return ULong.m1217constructorimpl(b2 & 255);
    }

    /* renamed from: toFloat-impl  reason: not valid java name */
    private static final float m1097toFloatimpl(byte b2) {
        return (float) UnsignedKt.uintToDouble(b2 & 255);
    }

    /* renamed from: toDouble-impl  reason: not valid java name */
    private static final double m1096toDoubleimpl(byte b2) {
        return UnsignedKt.uintToDouble(b2 & 255);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1101toStringimpl(byte b2) {
        return String.valueOf(b2 & 255);
    }

    public String toString() {
        return m1101toStringimpl(this.data);
    }
}
