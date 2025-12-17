.class public Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "PSquarePercentile.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;,
        Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;,
        Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;,
        Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;
    }
.end annotation


# static fields
.field private static final DECIMAL_FORMAT:Ljava/text/DecimalFormat;

.field private static final DEFAULT_QUANTILE_DESIRED:D = 50.0

.field private static final PSQUARE_CONSTANT:I = 0x5

.field private static final serialVersionUID:J = 0x1fb215f05fe93297L


# instance fields
.field private countOfObservations:J

.field private final initialFive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private transient lastObservation:D

.field private markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

.field private pValue:D

.field private final quantile:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 136
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 4

    .line 123
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 85
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 110
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_0

    div-double/2addr p1, v0

    .line 128
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->quantile:D

    return-void

    .line 125
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method private maximum()D
    .locals 2

    .line 291
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 292
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;->height(I)D

    move-result-wide v0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method private minimum()D
    .locals 2

    .line 304
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 305
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;->height(I)D

    move-result-wide v0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public static newMarkers(Ljava/util/List;D)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;D)",
            "Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;"
        }
    .end annotation

    .line 945
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Markers;-><init>(Ljava/util/List;DLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 269
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->countOfObservations:J

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 270
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 5

    .line 240
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-wide v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->quantile:D

    mul-double/2addr v3, v1

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;-><init>(D)V

    .line 242
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    iput-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    .line 245
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->countOfObservations:J

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->countOfObservations:J

    .line 246
    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    .line 247
    iget-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 248
    iget-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 165
    instance-of v2, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;

    if-eqz v2, :cond_4

    .line 166
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;

    .line 167
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    if-eqz v2, :cond_1

    iget-object v3, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v2, :cond_2

    .line 168
    iget-object v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v3, :cond_3

    .line 169
    iget-object v3, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :cond_3
    if-eqz v4, :cond_4

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->getN()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->getN()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0
.end method

.method public getN()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->countOfObservations:J

    return-wide v0
.end method

.method public getResult()D
    .locals 4

    .line 278
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->quantile:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->maximum()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    goto :goto_0

    .line 280
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->quantile:D

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->minimum()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    .line 283
    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->getResult()D

    move-result-wide v0

    .line 145
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v0, 0x4042800000000000L    # 37.0

    .line 146
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-double v2, v2

    .line 147
    :goto_0
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->quantile:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->countOfObservations:J

    long-to-double v6, v6

    const/4 v8, 0x4

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v0, v8, v9

    const/4 v0, 0x1

    aput-wide v4, v8, v0

    const/4 v0, 0x2

    aput-wide v2, v8, v0

    const/4 v0, 0x3

    aput-wide v6, v8, v0

    .line 148
    invoke-static {v8}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public increment(D)V
    .locals 4

    .line 187
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->countOfObservations:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->countOfObservations:J

    .line 190
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->lastObservation:D

    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    iget-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->quantile:D

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->initialFive:Ljava/util/List;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->quantile:D

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->newMarkers(Ljava/util/List;D)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;->processDataPoint(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    return-void
.end method

.method public quantile()D
    .locals 2

    .line 258
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->quantile:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->lastObservation:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->pValue:D

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    const-string v0, "obs=%s pValue=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->lastObservation:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;->markers:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$PSquareMarkers;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    const-string v0, "obs=%s markers=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
