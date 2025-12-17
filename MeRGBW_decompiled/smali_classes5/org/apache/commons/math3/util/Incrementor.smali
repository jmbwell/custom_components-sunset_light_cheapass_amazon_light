.class public Lorg/apache/commons/math3/util/Incrementor;
.super Ljava/lang/Object;
.source "Incrementor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;
    }
.end annotation


# instance fields
.field private count:I

.field private final maxCountCallback:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

.field private maximalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor$1;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    if-eqz p2, :cond_0

    .line 83
    iput p1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    .line 84
    iput-object p2, p0, Lorg/apache/commons/math3/util/Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    return-void

    .line 81
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public canIncrement()Z
    .locals 2

    .line 124
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    return v0
.end method

.method public getMaximalCount()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    return v0
.end method

.method public incrementCount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 154
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    if-le v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/util/Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;->trigger(I)V

    :cond_0
    return-void
.end method

.method public incrementCount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->count:I

    return-void
.end method

.method public setMaximalCount(I)V
    .locals 0

    .line 95
    iput p1, p0, Lorg/apache/commons/math3/util/Incrementor;->maximalCount:I

    return-void
.end method
