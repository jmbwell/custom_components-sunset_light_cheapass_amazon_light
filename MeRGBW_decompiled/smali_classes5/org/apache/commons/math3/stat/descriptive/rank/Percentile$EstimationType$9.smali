.class final enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;
.super Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.source "Percentile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 928
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V

    return-void
.end method


# virtual methods
.method protected index(DI)D
    .locals 10

    int-to-double v0, p3

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v4, v0, v2

    const-wide v6, 0x3fe5555555555555L    # 0.6666666666666666

    div-double/2addr v6, v4

    sub-double v8, v0, v2

    div-double/2addr v8, v4

    .line 934
    invoke-static {p1, p2, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result p3

    if-gez p3, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result p3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    mul-double/2addr v4, p1

    add-double v0, v4, v2

    :goto_0
    return-wide v0
.end method
