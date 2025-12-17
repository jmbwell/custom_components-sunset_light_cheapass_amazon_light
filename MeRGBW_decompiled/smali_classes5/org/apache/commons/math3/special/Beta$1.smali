.class final Lorg/apache/commons/math3/special/Beta$1;
.super Lorg/apache/commons/math3/util/ContinuedFraction;
.source "Beta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:D

.field final synthetic val$b:D


# direct methods
.method constructor <init>(DD)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    iput-wide p3, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    invoke-direct {p0}, Lorg/apache/commons/math3/util/ContinuedFraction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getA(ID)D
    .locals 0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1
.end method

.method protected getB(ID)D
    .locals 13

    move-object v0, p0

    move v1, p1

    .line 204
    rem-int/lit8 v2, v1, 0x2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-nez v2, :cond_0

    int-to-double v1, v1

    div-double/2addr v1, v5

    .line 206
    iget-wide v7, v0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    sub-double/2addr v7, v1

    mul-double/2addr v7, v1

    mul-double/2addr v7, p2

    iget-wide v9, v0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    mul-double/2addr v1, v5

    add-double v5, v9, v1

    sub-double/2addr v5, v3

    add-double/2addr v9, v1

    mul-double/2addr v5, v9

    div-double/2addr v7, v5

    goto :goto_0

    :cond_0
    int-to-double v1, v1

    sub-double/2addr v1, v3

    div-double/2addr v1, v5

    .line 210
    iget-wide v7, v0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    add-double v9, v7, v1

    iget-wide v11, v0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    add-double/2addr v11, v7

    add-double/2addr v11, v1

    mul-double/2addr v9, v11

    mul-double/2addr v9, p2

    neg-double v9, v9

    mul-double/2addr v1, v5

    add-double v5, v7, v1

    add-double/2addr v7, v1

    add-double/2addr v7, v3

    mul-double/2addr v5, v7

    div-double v7, v9, v5

    :goto_0
    return-wide v7
.end method
