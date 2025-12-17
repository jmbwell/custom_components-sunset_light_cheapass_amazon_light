.class public Lorg/apache/commons/math3/genetics/FixedElapsedTime;
.super Ljava/lang/Object;
.source "FixedElapsedTime.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/StoppingCondition;


# instance fields
.field private endTime:J

.field private final maxTimePeriod:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/genetics/FixedElapsedTime;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->endTime:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 60
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->maxTimePeriod:J

    return-void

    .line 58
    :cond_0
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method


# virtual methods
.method public isSatisfied(Lorg/apache/commons/math3/genetics/Population;)Z
    .locals 4

    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->maxTimePeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->endTime:J

    .line 75
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/genetics/FixedElapsedTime;->endTime:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
