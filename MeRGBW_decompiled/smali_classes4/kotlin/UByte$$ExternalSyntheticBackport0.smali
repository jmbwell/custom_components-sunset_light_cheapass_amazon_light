.class public final synthetic Lkotlin/UByte$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(D)I
    .locals 2

    .line 0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static synthetic m(II)I
    .locals 4

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic m(J)I
    .locals 2

    .line 0
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static synthetic m(JJ)I
    .locals 2

    .line 0
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic m(Z)I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    return p0
.end method

.method public static synthetic m(JJ)J
    .locals 7

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide/high16 v3, -0x8000000000000000L

    if-gez v2, :cond_1

    xor-long v0, p0, v3

    xor-long v2, p2, v3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    sub-long/2addr p0, p2

    return-wide p0

    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    rem-long/2addr p0, p2

    return-wide p0

    :cond_2
    const/4 v2, 0x1

    ushr-long v5, p0, v2

    div-long/2addr v5, p2

    shl-long/2addr v5, v2

    mul-long/2addr v5, p2

    sub-long/2addr p0, v5

    xor-long v5, p0, v3

    xor-long v2, p2, v3

    cmp-long v2, v5, v2

    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    move-wide p2, v0

    :goto_0
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static synthetic m(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(II)Ljava/lang/String;
    .locals 4

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(J)Ljava/lang/String;
    .locals 1

    .line 0
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(JI)Ljava/lang/String;
    .locals 10

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    if-lez v2, :cond_1

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x2

    if-lt p2, v2, :cond_2

    const/16 v2, 0x24

    if-le p2, v2, :cond_3

    :cond_2
    const/16 p2, 0xa

    :cond_3
    const/16 v2, 0x40

    new-array v3, v2, [C

    add-int/lit8 v4, p2, -0x1

    and-int v5, p2, v4

    if-nez v5, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    :cond_4
    add-int/lit8 v2, v2, -0x1

    long-to-int v6, p0

    and-int/2addr v6, v4

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v3, v2

    ushr-long/2addr p0, v5

    cmp-long v6, p0, v0

    if-nez v6, :cond_4

    goto :goto_2

    :cond_5
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_6

    const/4 v2, 0x1

    ushr-long v4, p0, v2

    ushr-int/lit8 v2, p2, 0x1

    int-to-long v6, v2

    div-long/2addr v4, v6

    goto :goto_0

    :cond_6
    int-to-long v4, p2

    invoke-static {p0, p1, v4, v5}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(JJ)J

    move-result-wide v4

    :goto_0
    int-to-long v6, p2

    mul-long v8, v4, v6

    sub-long/2addr p0, v8

    long-to-int p0, p0

    invoke-static {p0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/16 p1, 0x3f

    aput-char p0, v3, p1

    move v2, p1

    :goto_1
    cmp-long p0, v4, v0

    if-lez p0, :cond_7

    add-int/lit8 v2, v2, -0x1

    rem-long p0, v4, v6

    long-to-int p0, p0

    invoke-static {p0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    aput-char p0, v3, v2

    div-long/2addr v4, v6

    goto :goto_1

    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 p1, v2, 0x40

    invoke-direct {p0, v3, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 0
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic m(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    .line 0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m([Ljava/lang/Object;)Ljava/util/Set;
    .locals 5

    .line 0
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate element: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic m$1(II)I
    .locals 4

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    rem-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic m$1(JJ)J
    .locals 7

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide/high16 v3, -0x8000000000000000L

    if-gez v2, :cond_1

    xor-long/2addr p0, v3

    xor-long/2addr p2, v3

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_1
    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    div-long/2addr p0, p2

    return-wide p0

    :cond_2
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    div-long/2addr v1, p2

    shl-long/2addr v1, v0

    mul-long v5, v1, p2

    sub-long/2addr p0, v5

    xor-long/2addr p0, v3

    xor-long/2addr p2, v3

    cmp-long p0, p0, p2

    if-ltz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    int-to-long p0, v0

    add-long/2addr v1, p0

    return-wide v1
.end method

.method public static synthetic m$1(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m$1(J)Ljava/lang/String;
    .locals 1

    .line 0
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m$1(JI)Ljava/lang/String;
    .locals 10

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    if-lez v2, :cond_1

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x2

    if-lt p2, v2, :cond_2

    const/16 v2, 0x24

    if-le p2, v2, :cond_3

    :cond_2
    const/16 p2, 0xa

    :cond_3
    const/16 v2, 0x40

    new-array v3, v2, [C

    add-int/lit8 v4, p2, -0x1

    and-int v5, p2, v4

    if-nez v5, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    :cond_4
    add-int/lit8 v2, v2, -0x1

    long-to-int v6, p0

    and-int/2addr v6, v4

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v3, v2

    ushr-long/2addr p0, v5

    cmp-long v6, p0, v0

    if-nez v6, :cond_4

    goto :goto_2

    :cond_5
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_6

    const/4 v2, 0x1

    ushr-long v4, p0, v2

    ushr-int/lit8 v2, p2, 0x1

    int-to-long v6, v2

    div-long/2addr v4, v6

    goto :goto_0

    :cond_6
    int-to-long v4, p2

    invoke-static {p0, p1, v4, v5}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(JJ)J

    move-result-wide v4

    :goto_0
    int-to-long v6, p2

    mul-long v8, v4, v6

    sub-long/2addr p0, v8

    long-to-int p0, p0

    invoke-static {p0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/16 p1, 0x3f

    aput-char p0, v3, p1

    move v2, p1

    :goto_1
    cmp-long p0, v4, v0

    if-lez p0, :cond_7

    add-int/lit8 v2, v2, -0x1

    rem-long p0, v4, v6

    long-to-int p0, p0

    invoke-static {p0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    aput-char p0, v3, v2

    div-long/2addr v4, v6

    goto :goto_1

    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 p1, v2, 0x40

    invoke-direct {p0, v3, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static synthetic m$2(II)I
    .locals 1

    .line 0
    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic m$2(J)Ljava/lang/String;
    .locals 1

    .line 0
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$2(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m$2(JI)Ljava/lang/String;
    .locals 10

    .line 0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    if-lez v2, :cond_1

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x2

    if-lt p2, v2, :cond_2

    const/16 v2, 0x24

    if-le p2, v2, :cond_3

    :cond_2
    const/16 p2, 0xa

    :cond_3
    const/16 v2, 0x40

    new-array v3, v2, [C

    add-int/lit8 v4, p2, -0x1

    and-int v5, p2, v4

    if-nez v5, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    :cond_4
    add-int/lit8 v2, v2, -0x1

    long-to-int v6, p0

    and-int/2addr v6, v4

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v3, v2

    ushr-long/2addr p0, v5

    cmp-long v6, p0, v0

    if-nez v6, :cond_4

    goto :goto_2

    :cond_5
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_6

    const/4 v2, 0x1

    ushr-long v4, p0, v2

    ushr-int/lit8 v2, p2, 0x1

    int-to-long v6, v2

    div-long/2addr v4, v6

    goto :goto_0

    :cond_6
    int-to-long v4, p2

    invoke-static {p0, p1, v4, v5}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$1(JJ)J

    move-result-wide v4

    :goto_0
    int-to-long v6, p2

    mul-long v8, v4, v6

    sub-long/2addr p0, v8

    long-to-int p0, p0

    invoke-static {p0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/16 p1, 0x3f

    aput-char p0, v3, p1

    move v2, p1

    :goto_1
    cmp-long p0, v4, v0

    if-lez p0, :cond_7

    add-int/lit8 v2, v2, -0x1

    rem-long p0, v4, v6

    long-to-int p0, p0

    invoke-static {p0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    aput-char p0, v3, v2

    div-long/2addr v4, v6

    goto :goto_1

    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 p1, v2, 0x40

    invoke-direct {p0, v3, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static synthetic m$3(J)Ljava/lang/String;
    .locals 1

    .line 0
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m$2(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
