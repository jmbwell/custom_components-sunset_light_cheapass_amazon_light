.class public Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "Kurtosis.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x26a468dc400966b7L


# instance fields
.field protected incMoment:Z

.field protected moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 70
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    .line 80
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 91
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 219
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->setData([D)V

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    .line 223
    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    iput-boolean p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;
    .locals 1

    .line 203
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;-><init>()V

    .line 205
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 168
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->test([DII)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 171
    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 172
    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->incrementAll([DII)V

    .line 173
    iget-object v4, v3, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m1:D

    .line 174
    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    move v3, v1

    :goto_0
    add-int v10, v1, v2

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    if-ge v3, v10, :cond_0

    .line 180
    aget-wide v13, v0, v3

    sub-double/2addr v13, v4

    invoke-static {v13, v14, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v6, v7, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    div-double/2addr v8, v0

    int-to-double v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v4, v0, v2

    mul-double/2addr v4, v0

    sub-double v2, v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v10, v0, v6

    mul-double v12, v2, v10

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    sub-double/2addr v0, v14

    mul-double/2addr v12, v0

    div-double/2addr v4, v12

    .line 189
    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v14

    mul-double/2addr v10, v0

    div-double/2addr v2, v10

    mul-double/2addr v4, v8

    sub-double/2addr v4, v2

    goto :goto_1

    :cond_1
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    return-wide v4
.end method

.method public getN()J
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 14

    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v0, v4

    .line 115
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v4, v4, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    const-wide v2, 0x3bfd83c94fb6d2acL    # 1.0E-19

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v2, v2, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->n:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v2, v4

    mul-double/2addr v6, v2

    .line 119
    iget-object v8, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->getResult()D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v8, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v8, v8, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    iget-object v12, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    iget-wide v12, v12, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->m2:D

    mul-double/2addr v8, v12

    sub-double v4, v2, v4

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v8, v2, v8

    mul-double/2addr v4, v8

    sub-double/2addr v2, v10

    mul-double/2addr v4, v2

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    div-double/2addr v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_2
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    return-wide v6
.end method

.method public increment(D)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->incMoment:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/Kurtosis;->moment:Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FourthMoment;->increment(D)V

    :cond_0
    return-void
.end method
