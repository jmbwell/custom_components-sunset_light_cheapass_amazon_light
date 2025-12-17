.class abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "RungeKuttaStepInterpolator.java"


# instance fields
.field protected integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

.field protected previousState:[D

.field protected yDotK:[[D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 61
    move-object v1, v0

    check-cast v1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 62
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V
    .locals 4

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 86
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 90
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    array-length v0, v0

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 92
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v0

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 97
    move-object p1, v1

    check-cast p1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 102
    :cond_1
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v0

    .line 181
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    array-length v2, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-gez v2, :cond_1

    .line 183
    iput-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    goto :goto_2

    .line 185
    :cond_1
    new-array v5, v2, [D

    iput-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_2

    .line 187
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 191
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    if-gez v5, :cond_3

    .line 192
    move-object v6, v4

    check-cast v6, [[D

    move-object v6, v4

    goto :goto_3

    :cond_3
    new-array v6, v5, [[D

    :goto_3
    iput-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    move v6, v3

    :goto_4
    if-ge v6, v5, :cond_6

    .line 194
    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    if-gez v2, :cond_4

    move-object v8, v4

    goto :goto_5

    :cond_4
    new-array v8, v2, [D

    :goto_5
    aput-object v8, v7, v6

    move v7, v3

    :goto_6
    if-ge v7, v2, :cond_5

    .line 196
    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v8, v8, v6

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v9

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 200
    :cond_6
    iput-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    .line 202
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    if-eqz p1, :cond_7

    .line 204
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->setInterpolatedTime(D)V

    goto :goto_7

    .line 206
    :cond_7
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->interpolatedTime:D

    :goto_7
    return-void
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 0

    .line 133
    invoke-virtual {p0, p2, p4, p5, p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    const/4 p2, 0x0

    .line 134
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 135
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    .line 136
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    return-void
.end method

.method public shift()V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    .line 143
    invoke-super {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->currentState:[D

    array-length v0, v0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    .line 157
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v5, v4, v3

    invoke-interface {p1, v5, v6}, Ljava/io/ObjectOutput;->writeDouble(D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    array-length v1, v3

    .line 161
    :goto_2
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    move v4, v2

    :goto_4
    if-ge v4, v0, :cond_3

    .line 164
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    invoke-interface {p1, v6, v7}, Ljava/io/ObjectOutput;->writeDouble(D)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
