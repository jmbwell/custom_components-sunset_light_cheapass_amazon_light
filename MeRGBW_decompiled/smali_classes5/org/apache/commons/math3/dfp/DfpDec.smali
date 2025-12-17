.class public Lorg/apache/commons/math3/dfp/DfpDec;
.super Lorg/apache/commons/math3/dfp/Dfp;
.source "DfpDec.java"


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    return-void
.end method


# virtual methods
.method protected getDecimalDigits()I
    .locals 1

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getRadixDigits()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 98
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 104
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 150
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    return-object v0
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 122
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 110
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 116
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 144
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x3

    .line 133
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 134
    const-string v2, "newInstance"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object v0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "nextAfter"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 299
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    .line 300
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 301
    invoke-virtual {p0, v3, v2, p1, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 309
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    .line 313
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 317
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v0, :cond_5

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->intLog10()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 323
    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v0, v0

    rsub-int v0, v0, -0x8000

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 329
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    .line 332
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    .line 335
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->intLog10()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 336
    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 344
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 345
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v0, v0

    rsub-int v0, v0, -0x8000

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 348
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 349
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/DfpDec;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    .line 351
    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 355
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v3, :cond_9

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->classify()I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 356
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 357
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 360
    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/DfpDec;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 361
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 362
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method protected round(I)I
    .locals 11

    .line 166
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v3, v3

    const/4 v4, 0x4

    mul-int/2addr v3, v4

    const/16 v5, 0x3e8

    move v6, v5

    :goto_0
    if-le v6, v0, :cond_1

    .line 175
    div-int/lit8 v6, v6, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v0

    sub-int/2addr v3, v0

    .line 182
    div-int/lit8 v6, v3, 0x4

    move v7, v1

    move v8, v2

    .line 185
    :goto_1
    rem-int/lit8 v9, v3, 0x4

    if-ge v7, v9, :cond_2

    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 189
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v3, v3, v6

    if-gt v8, v2, :cond_3

    .line 191
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v7, v7

    mul-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x3

    if-ne v0, v7, :cond_3

    .line 192
    invoke-super {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result p1

    return p1

    :cond_3
    if-ne v8, v2, :cond_4

    .line 199
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    add-int/lit8 v7, v6, -0x1

    aget v0, v0, v7

    div-int/2addr v0, v5

    rem-int/lit8 v0, v0, 0xa

    .line 200
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v10, v9, v7

    rem-int/2addr v10, v5

    aput v10, v9, v7

    .line 201
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v5, v5, v7

    goto :goto_2

    :cond_4
    mul-int/lit8 v0, v3, 0xa

    .line 203
    div-int/2addr v0, v8

    rem-int/lit8 v0, v0, 0xa

    .line 204
    div-int/lit8 v5, v8, 0xa

    rem-int v5, v3, v5

    :goto_2
    or-int/2addr p1, v5

    move v5, v1

    :goto_3
    if-ge v5, v6, :cond_5

    .line 208
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v7, v7, v5

    or-int/2addr p1, v7

    .line 209
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aput v1, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 212
    :cond_5
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    div-int/2addr v3, v8

    mul-int v7, v3, v8

    aput v7, v5, v6

    .line 215
    sget-object v5, Lorg/apache/commons/math3/dfp/DfpDec$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/4 v7, 0x5

    packed-switch v5, :pswitch_data_0

    .line 250
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/DfpDec;->sign:B

    const/4 v5, -0x1

    if-ne v3, v5, :cond_a

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    goto :goto_4

    .line 245
    :pswitch_0
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/DfpDec;->sign:B

    if-ne v3, v2, :cond_a

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    goto :goto_4

    :pswitch_1
    if-gt v0, v7, :cond_8

    if-ne v0, v7, :cond_6

    if-nez p1, :cond_8

    :cond_6
    if-ne v0, v7, :cond_a

    if-nez p1, :cond_a

    and-int/2addr v3, v2

    if-nez v3, :cond_a

    goto :goto_4

    :pswitch_2
    if-gt v0, v7, :cond_8

    if-ne v0, v7, :cond_7

    if-nez p1, :cond_8

    :cond_7
    if-ne v0, v7, :cond_a

    if-nez p1, :cond_a

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_a

    goto :goto_4

    :pswitch_3
    if-le v0, v7, :cond_a

    goto :goto_4

    :pswitch_4
    if-lt v0, v7, :cond_a

    goto :goto_4

    :pswitch_5
    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    .line 257
    :cond_8
    :goto_4
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v3, v3

    if-ge v6, v3, :cond_9

    .line 258
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    aget v3, v3, v6

    add-int/2addr v3, v8

    .line 259
    div-int/lit16 v8, v3, 0x2710

    .line 260
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    rem-int/lit16 v3, v3, 0x2710

    aput v3, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    if-eqz v8, :cond_a

    .line 264
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->shiftRight()V

    .line 265
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/DfpDec;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v2

    aput v8, v3, v5

    .line 270
    :cond_a
    :pswitch_6
    iget v2, p0, Lorg/apache/commons/math3/dfp/DfpDec;->exp:I

    const/16 v3, -0x7fff

    if-ge v2, v3, :cond_b

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v0

    .line 276
    :cond_b
    iget v2, p0, Lorg/apache/commons/math3/dfp/DfpDec;->exp:I

    const v3, 0x8000

    if-le v2, v3, :cond_c

    .line 278
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v4

    :cond_c
    if-nez v0, :cond_e

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    return v1

    .line 284
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
