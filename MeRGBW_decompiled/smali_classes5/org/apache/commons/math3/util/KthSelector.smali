.class public Lorg/apache/commons/math3/util/KthSelector;
.super Ljava/lang/Object;
.source "KthSelector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MIN_SELECT_SIZE:I = 0xf

.field private static final serialVersionUID:J = 0x13352a9L


# instance fields
.field private final pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/util/KthSelector;->pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/PivotingStrategyInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/math3/util/KthSelector;->pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    return-void
.end method

.method private partition([DIII)I
    .locals 8

    .line 130
    aget-wide v0, p1, p4

    .line 131
    aget-wide v2, p1, p2

    aput-wide v2, p1, p4

    add-int/lit8 p4, p2, 0x1

    add-int/lit8 v2, p3, -0x1

    :cond_0
    :goto_0
    if-ge p4, v2, :cond_3

    :goto_1
    if-ge p4, v2, :cond_1

    .line 136
    aget-wide v3, p1, v2

    cmpl-double v3, v3, v0

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p4, v2, :cond_2

    .line 139
    aget-wide v3, p1, p4

    cmpg-double v3, v3, v0

    if-gez v3, :cond_2

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_2
    if-ge p4, v2, :cond_0

    .line 144
    aget-wide v3, p1, p4

    add-int/lit8 v5, p4, 0x1

    .line 145
    aget-wide v6, p1, v2

    aput-wide v6, p1, p4

    add-int/lit8 p4, v2, -0x1

    .line 146
    aput-wide v3, p1, v2

    move v2, p4

    move p4, v5

    goto :goto_0

    :cond_3
    if-ge p4, p3, :cond_4

    .line 150
    aget-wide v2, p1, p4

    cmpl-double p3, v2, v0

    if-lez p3, :cond_5

    :cond_4
    add-int/lit8 p4, p4, -0x1

    .line 153
    :cond_5
    aget-wide v2, p1, p4

    aput-wide v2, p1, p2

    .line 154
    aput-wide v0, p1, p4

    return p4
.end method


# virtual methods
.method public getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/util/KthSelector;->pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    return-object v0
.end method

.method public select([D[II)D
    .locals 7

    .line 81
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v4, v2

    :goto_1
    sub-int v5, v0, v2

    const/16 v6, 0xf

    if-le v5, v6, :cond_7

    if-eqz v3, :cond_1

    .line 87
    array-length v5, p2

    if-ge v4, v5, :cond_1

    aget v5, p2, v4

    if-ltz v5, :cond_1

    goto :goto_2

    .line 94
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/util/KthSelector;->pivotingStrategy:Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    invoke-interface {v5, p1, v2, v0}, Lorg/apache/commons/math3/util/PivotingStrategyInterface;->pivotIndex([DII)I

    move-result v5

    invoke-direct {p0, p1, v2, v0, v5}, Lorg/apache/commons/math3/util/KthSelector;->partition([DIII)I

    move-result v5

    if-eqz v3, :cond_2

    .line 95
    array-length v6, p2

    if-ge v4, v6, :cond_2

    .line 96
    aput v5, p2, v4

    :cond_2
    :goto_2
    if-ne p3, v5, :cond_3

    .line 102
    aget-wide p2, p1, p3

    return-wide p2

    :cond_3
    if-ge p3, v5, :cond_5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    if-eqz v3, :cond_4

    .line 106
    array-length v0, p2

    goto :goto_3

    :cond_4
    move v0, v5

    :goto_3
    invoke-static {v4, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    move v4, v0

    move v0, v5

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    if-eqz v3, :cond_6

    .line 110
    array-length v2, p2

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    move v4, v2

    move v2, v5

    goto :goto_1

    .line 113
    :cond_7
    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->sort([DII)V

    .line 114
    aget-wide p2, p1, p3

    return-wide p2
.end method
