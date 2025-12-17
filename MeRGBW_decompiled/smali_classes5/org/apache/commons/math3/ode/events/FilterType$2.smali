.class final enum Lorg/apache/commons/math3/ode/events/FilterType$2;
.super Lorg/apache/commons/math3/ode/events/FilterType;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/FilterType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/FilterType;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/FilterType$1;)V

    return-void
.end method


# virtual methods
.method protected getTriggeredIncreasing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz p4, :cond_b

    .line 271
    sget-object p4, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v7

    aget p4, p4, v7

    if-eq p4, v4, :cond_8

    if-eq p4, v3, :cond_6

    if-eq p4, v2, :cond_4

    if-eq p4, v1, :cond_2

    if-ne p4, v0, :cond_1

    cmpl-double p2, p2, v5

    if-ltz p2, :cond_0

    .line 316
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_0
    return-object p1

    .line 323
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    :cond_2
    cmpl-double p2, p2, v5

    if-ltz p2, :cond_3

    .line 307
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_3
    return-object p1

    :cond_4
    cmpg-double p2, p2, v5

    if-gtz p2, :cond_5

    .line 298
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_5
    return-object p1

    :cond_6
    cmpg-double p2, p2, v5

    if-gtz p2, :cond_7

    .line 289
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_7
    return-object p1

    :cond_8
    cmpl-double p1, p2, v5

    if-lez p1, :cond_9

    .line 276
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_9
    cmpg-double p1, p2, v5

    if-gez p1, :cond_a

    .line 279
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    .line 283
    :cond_a
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    .line 326
    :cond_b
    sget-object p4, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v7

    aget p4, p4, v7

    if-eq p4, v4, :cond_14

    if-eq p4, v3, :cond_12

    if-eq p4, v2, :cond_10

    if-eq p4, v1, :cond_e

    if-ne p4, v0, :cond_d

    cmpg-double p2, p2, v5

    if-gtz p2, :cond_c

    .line 371
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_c
    return-object p1

    .line 378
    :cond_d
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    :cond_e
    cmpg-double p2, p2, v5

    if-gtz p2, :cond_f

    .line 362
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_f
    return-object p1

    :cond_10
    cmpl-double p2, p2, v5

    if-ltz p2, :cond_11

    .line 353
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_11
    return-object p1

    :cond_12
    cmpl-double p2, p2, v5

    if-ltz p2, :cond_13

    .line 344
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_13
    return-object p1

    :cond_14
    cmpl-double p1, p2, v5

    if-lez p1, :cond_15

    .line 331
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_15
    cmpg-double p1, p2, v5

    if-gez p1, :cond_16

    .line 334
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    .line 338
    :cond_16
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1
.end method
