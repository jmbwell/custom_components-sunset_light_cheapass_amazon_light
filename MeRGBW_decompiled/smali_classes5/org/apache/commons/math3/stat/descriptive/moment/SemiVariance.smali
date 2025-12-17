.class public Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "SemiVariance.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    }
.end annotation


# static fields
.field public static final DOWNSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

.field public static final UPSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

.field private static final serialVersionUID:J = -0x24d2e0dc3679d722L


# instance fields
.field private biasCorrected:Z

.field private varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->UPSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->UPSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 66
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->DOWNSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 110
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 139
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 98
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 80
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 127
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->setData([D)V

    .line 168
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 169
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
    .locals 1

    .line 148
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;-><init>()V

    .line 150
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V

    return-object v0
.end method

.method public evaluate([DD)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 224
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v6, 0x0

    array-length v7, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 242
    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v6, 0x0

    array-length v7, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1, p6, p7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->test([DII)Z

    .line 267
    array-length v0, p1

    if-nez v0, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    .line 270
    :cond_0
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return-wide v1

    .line 273
    :cond_1
    invoke-virtual {p4}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->getDirection()Z

    move-result p4

    :goto_0
    if-ge p6, p7, :cond_4

    .line 278
    aget-wide v4, p1, p6

    cmpl-double v0, v4, p2

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ne v0, p4, :cond_3

    sub-double/2addr v4, p2

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    :cond_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_5

    int-to-double p1, p7

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p3

    :goto_2
    div-double/2addr v1, p1

    return-wide v1

    :cond_5
    int-to-double p1, p7

    goto :goto_2
.end method

.method public evaluate([DII)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v3

    .line 190
    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iget-boolean v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v7, 0x0

    array-length v8, p1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 206
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([D)D

    move-result-wide v3

    .line 207
    iget-boolean v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v7, 0x0

    array-length v8, p1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide p1

    return-wide p1
.end method

.method public getVarianceDirection()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-object v0
.end method

.method public isBiasCorrected()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    return v0
.end method

.method public setBiasCorrected(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    return-void
.end method

.method public setVarianceDirection(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method
