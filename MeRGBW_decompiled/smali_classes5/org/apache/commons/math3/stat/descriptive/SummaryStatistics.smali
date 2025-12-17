.class public Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
.super Ljava/lang/Object;
.source "SummaryStatistics.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1c0d2d74a39b871fL


# instance fields
.field private geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

.field private geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

.field private maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

.field private meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

.field private minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private n:J

.field private secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

.field private sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

.field private sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

.field private sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

.field private sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

.field private varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    .line 69
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 72
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    .line 75
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    .line 78
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    .line 81
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    .line 87
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 96
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 99
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 102
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 105
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 108
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 111
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 114
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 117
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    .line 69
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 72
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    .line 75
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    .line 78
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    .line 81
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    .line 87
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    .line 90
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 96
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 99
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 102
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 105
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 108
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 111
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 114
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 117
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 132
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    return-void
.end method

.method private checkEmpty()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 667
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 668
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VALUES_ADDED_BEFORE_CONFIGURING_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 695
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 696
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 698
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 699
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 700
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 701
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 702
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 703
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    .line 706
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    goto :goto_0

    .line 709
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 711
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    instance-of v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    if-eqz v1, :cond_1

    .line 712
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    goto :goto_1

    .line 714
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 716
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeoMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    if-eqz v0, :cond_2

    .line 717
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    goto :goto_2

    .line 719
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 724
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_3

    .line 725
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    goto :goto_3

    .line 727
    :cond_3
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V

    .line 729
    :goto_3
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_4

    .line 730
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    goto :goto_4

    .line 732
    :cond_4
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Max;Lorg/apache/commons/math3/stat/descriptive/rank/Max;)V

    .line 734
    :goto_4
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_5

    .line 735
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    goto :goto_5

    .line 737
    :cond_5
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V

    .line 739
    :goto_5
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_6

    .line 740
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    goto :goto_6

    .line 742
    :cond_6
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Min;Lorg/apache/commons/math3/stat/descriptive/rank/Min;)V

    .line 744
    :goto_6
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_7

    .line 745
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    goto :goto_7

    .line 747
    :cond_7
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V

    .line 749
    :goto_7
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_8

    .line 750
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    goto :goto_8

    .line 752
    :cond_8
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    .line 754
    :goto_8
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_9

    .line 755
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    goto :goto_9

    .line 757
    :cond_9
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    .line 759
    :goto_9
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, p0, :cond_a

    .line 760
    iget-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    goto :goto_a

    .line 762
    :cond_a
    iget-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-static {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V

    :goto_a
    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 152
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 153
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 154
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->increment(D)V

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    if-eq v0, v1, :cond_0

    .line 159
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    if-eq v0, v1, :cond_1

    .line 162
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    if-eq v0, v1, :cond_2

    .line 165
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    .line 167
    :cond_2
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    return-void
.end method

.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 360
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    .line 361
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 362
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 363
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 364
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 365
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 366
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 367
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->clear()V

    .line 368
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    if-eq v0, v1, :cond_0

    .line 369
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    if-eq v0, v1, :cond_1

    .line 372
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    :cond_1
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 1

    .line 679
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 681
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 388
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 391
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 392
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v3

    long-to-float v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getGeoMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 578
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getGeometricMean()D
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()D
    .locals 2

    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getMean()D
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 608
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getMin()D
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getN()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    return-wide v0
.end method

.method public getPopulationVariance()D
    .locals 2

    .line 263
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->setBiasCorrected(Z)V

    .line 265
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getQuadraticMean()D
    .locals 4

    .line 235
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public getSecondMoment()D
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 4

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public getSum()D
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSumImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getSumLogImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getSumOfLogs()D
    .locals 2

    .line 310
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSummary()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 14

    .line 141
    new-instance v13, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v9

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    return-object v13
.end method

.method public getSumsq()D
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSumsqImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 457
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public getVariance()D
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 410
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 411
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 412
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 413
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 414
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 416
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setGeoMeanImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 598
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    .line 599
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setMaxImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 537
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    .line 538
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setMeanImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    .line 629
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setMinImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    .line 508
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setSumImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    .line 448
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setSumLogImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 567
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    .line 568
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 569
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->setSumLogImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public setSumsqImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    .line 478
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setVarianceImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 658
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    .line 659
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SummaryStatistics:\nn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nmax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nsum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nmean: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\ngeometric mean: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nvariance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\npopulation variance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getPopulationVariance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nsecond moment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSecondMoment()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nsum of squares: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nstandard deviation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\nsum of logs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumOfLogs()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
