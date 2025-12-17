.class public Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;
.super Ljava/lang/Object;
.source "MedianOf3PivotingStrategy.java"

# interfaces
.implements Lorg/apache/commons/math3/util/PivotingStrategyInterface;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x13352a9L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pivotIndex([DII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    sub-int v0, p3, p2

    .line 41
    invoke-static {p1, p2, v0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    add-int/lit8 p3, p3, -0x1

    sub-int v0, p3, p2

    .line 43
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 44
    aget-wide v1, p1, p2

    .line 45
    aget-wide v3, p1, v0

    .line 46
    aget-wide v5, p1, p3

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2

    cmpg-double p1, v3, v5

    if-gez p1, :cond_0

    return v0

    :cond_0
    cmpg-double p1, v1, v5

    if-gez p1, :cond_1

    move p2, p3

    :cond_1
    return p2

    :cond_2
    cmpg-double p1, v1, v5

    if-gez p1, :cond_3

    return p2

    :cond_3
    cmpg-double p1, v3, v5

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    move p3, v0

    :goto_0
    return p3
.end method
