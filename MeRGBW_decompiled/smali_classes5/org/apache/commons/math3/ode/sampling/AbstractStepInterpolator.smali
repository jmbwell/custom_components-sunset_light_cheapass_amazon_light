.class public abstract Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.super Ljava/lang/Object;
.source "AbstractStepInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepInterpolator;


# instance fields
.field protected currentState:[D

.field private dirtyState:Z

.field private finalized:Z

.field private forward:Z

.field private globalCurrentTime:D

.field private globalPreviousTime:D

.field protected h:D

.field protected interpolatedDerivatives:[D

.field protected interpolatedPrimaryDerivatives:[D

.field protected interpolatedPrimaryState:[D

.field protected interpolatedSecondaryDerivatives:[[D

.field protected interpolatedSecondaryState:[[D

.field protected interpolatedState:[D

.field protected interpolatedTime:D

.field private primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

.field private secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

.field private softCurrentTime:D

.field private softPreviousTime:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 112
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 113
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 114
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 115
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 116
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 117
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 121
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 122
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 123
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v0, -0x1

    .line 124
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V
    .locals 4

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 174
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 175
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 176
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 177
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 178
    iget-wide v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 180
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 181
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 182
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 183
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v0, -0x1

    .line 184
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    goto :goto_1

    .line 186
    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 187
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 188
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 189
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 190
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    .line 191
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    array-length v0, v0

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 192
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    array-length v0, v0

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 194
    iget-object v3, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v3, v3, v0

    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aput-object v3, v2, v0

    .line 195
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    iget-object v3, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object v3, v3, v0

    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    :goto_1
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 200
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 201
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 202
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 203
    iget-object p1, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lorg/apache/commons/math3/ode/EquationsMapper;

    :goto_2
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    return-void
.end method

.method protected constructor <init>([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 138
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 139
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 140
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 141
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 142
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 143
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 144
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 146
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    const/4 p2, 0x1

    .line 147
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 148
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p4}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/ode/EquationsMapper;

    :goto_0
    iput-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 150
    array-length p1, p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    return-void
.end method

.method private allocateInterpolatedArrays(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 213
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 214
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 215
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 216
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    .line 217
    move-object p1, v0

    check-cast p1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 218
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    goto :goto_1

    .line 220
    :cond_0
    new-array v1, p1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    .line 221
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    .line 222
    iget-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    .line 223
    iget-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    .line 224
    iget-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    if-nez p1, :cond_1

    .line 225
    move-object p1, v0

    check-cast p1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 226
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    goto :goto_1

    .line 228
    :cond_1
    array-length v0, p1

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    .line 229
    array-length p1, p1

    new-array p1, p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    const/4 p1, 0x0

    .line 230
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 231
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v0

    new-array v0, v0, [D

    aput-object v0, v1, p1

    .line 232
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v1

    new-array v1, v1, [D

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private evaluateCompleteInterpolatedState()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 406
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    if-eqz v0, :cond_1

    .line 407
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    sub-double/2addr v0, v2

    .line 408
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-double v4, v2, v0

    div-double/2addr v4, v2

    .line 409
    :goto_0
    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->computeInterpolatedStateAndDerivatives(DD)V

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract computeInterpolatedStateAndDerivatives(DD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V

    .line 271
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
.end method

.method protected doFinalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    return-void
.end method

.method public final finalizeStep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 488
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->doFinalize()V

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    :cond_0
    return-void
.end method

.method public getCurrentTime()D
    .locals 2

    .line 368
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    return-wide v0
.end method

.method public getGlobalCurrentTime()D
    .locals 2

    .line 350
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    return-wide v0
.end method

.method public getGlobalPreviousTime()D
    .locals 2

    .line 342
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    return-wide v0
.end method

.method public getInterpolatedDerivatives()[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 425
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 427
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryDerivatives:[D

    return-object v0
.end method

.method public getInterpolatedSecondaryDerivatives(I)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 440
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 441
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 443
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryDerivatives:[[D

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getInterpolatedSecondaryState(I)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 432
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 433
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 435
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedSecondaryState:[[D

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getInterpolatedState()[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->evaluateCompleteInterpolatedState()V

    .line 417
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 419
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedPrimaryState:[D

    return-object v0
.end method

.method public getInterpolatedTime()D
    .locals 2

    .line 373
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    return-wide v0
.end method

.method public getPreviousTime()D
    .locals 2

    .line 359
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    return-wide v0
.end method

.method public isForward()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    return v0
.end method

.method protected readBaseExternal(Ljava/io/ObjectInput;)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 572
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 573
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 574
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 575
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 576
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 577
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 578
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    .line 579
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 580
    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v1, 0x0

    move v2, v1

    .line 581
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 582
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/EquationsMapper;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 584
    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    if-gez v0, :cond_1

    const/4 v1, 0x0

    .line 587
    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    goto :goto_2

    .line 589
    :cond_1
    new-array v3, v0, [D

    iput-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    .line 590
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 591
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 596
    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 597
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    .line 599
    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 601
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract readExternal(Ljava/io/ObjectInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method protected reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 248
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 249
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 250
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 251
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 252
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 253
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    .line 254
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    .line 256
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    const/4 p2, 0x1

    .line 257
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    .line 258
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 259
    invoke-virtual {p4}, [Lorg/apache/commons/math3/ode/EquationsMapper;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/ode/EquationsMapper;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 260
    array-length p1, p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->allocateInterpolatedArrays(I)V

    return-void
.end method

.method public setInterpolatedTime(D)V
    .locals 0

    .line 378
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    const/4 p1, 0x1

    .line 379
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->dirtyState:Z

    return-void
.end method

.method public setSoftCurrentTime(D)V
    .locals 0

    .line 334
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    return-void
.end method

.method public setSoftPreviousTime(D)V
    .locals 0

    .line 320
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    return-void
.end method

.method public shift()V
    .locals 2

    .line 289
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    .line 290
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    .line 291
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    return-void
.end method

.method public storeTime(D)V
    .locals 2

    .line 299
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    .line 300
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    .line 301
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    sub-double v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    .line 302
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalized:Z

    return-void
.end method

.method protected writeBaseExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 520
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    .line 522
    :cond_0
    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 524
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalPreviousTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 525
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->globalCurrentTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 526
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softPreviousTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 527
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->softCurrentTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 528
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 529
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->forward:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 530
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 532
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->secondaryMappers:[Lorg/apache/commons/math3/ode/EquationsMapper;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 533
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 536
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-eqz v0, :cond_2

    .line 537
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 538
    aget-wide v3, v0, v2

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeDouble(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 542
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedTime:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 551
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 553
    throw v0
.end method

.method public abstract writeExternal(Ljava/io/ObjectOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
