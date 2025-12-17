.class public Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
.super Ljava/lang/Object;
.source "OpenIntToFieldHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_SIZE:I = 0x10

.field protected static final FREE:B = 0x0t

.field protected static final FULL:B = 0x1t

.field private static final LOAD_FACTOR:F = 0.5f

.field private static final PERTURB_SHIFT:I = 0x5

.field protected static final REMOVED:B = 0x2t

.field private static final RESIZE_MULTIPLIER:I = 0x2

.field private static final serialVersionUID:J = -0x7f62a4e3566eb9d0L


# instance fields
.field private transient count:I

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private keys:[I

.field private mask:I

.field private final missingEntries:Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private size:I

.field private states:[B

.field private values:[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    const/16 v1, 0x10

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;ILorg/apache/commons/math3/FieldElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)V"
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;ILorg/apache/commons/math3/FieldElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;ILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;ITT;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->field:Lorg/apache/commons/math3/Field;

    .line 129
    invoke-static {p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->computeCapacity(I)I

    move-result p1

    .line 130
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    .line 131
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->buildArray(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    .line 132
    new-array p2, p1, [B

    iput-object p2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    .line 133
    iput-object p3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 p1, p1, -0x1

    .line 134
    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;TT;)V"
        }
    .end annotation

    const/16 v0, 0x10

    .line 108
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;ILorg/apache/commons/math3/FieldElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iget-object v0, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->field:Lorg/apache/commons/math3/Field;

    iput-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->field:Lorg/apache/commons/math3/Field;

    .line 143
    iget-object v0, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    array-length v0, v0

    .line 144
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    .line 145
    iget-object v2, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->buildArray(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    .line 147
    iget-object v2, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    .line 149
    iget-object v2, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget-object v0, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    .line 151
    iget v0, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    .line 152
    iget v0, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    .line 153
    iget p1, p1, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[I
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[Lorg/apache/commons/math3/FieldElement;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[B
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    return-object p0
.end method

.method private buildArray(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getRuntimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    return-object p1
.end method

.method private static changeIndexSign(I)I
    .locals 0

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static computeCapacity(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 165
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-ne v0, p0, :cond_1

    return p0

    .line 170
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->nextPowerOfTwo(I)I

    move-result p0

    return p0
.end method

.method private containsKey(II)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 394
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v1, v1, p2

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    aget p2, v1, p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doRemove(I)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 404
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    const/4 v1, 0x2

    aput-byte v1, v0, p1

    .line 405
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v0, p1

    .line 406
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v0, p1

    .line 407
    iget p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    .line 408
    iget p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    return-object v1
.end method

.method private findInsertionIndex(I)I
    .locals 3

    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    iget v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    invoke-static {v0, v1, p1, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->findInsertionIndex([I[BII)I

    move-result p1

    return p1
.end method

.method private static findInsertionIndex([I[BII)I
    .locals 7

    .line 281
    invoke-static {p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->hashOf(I)I

    move-result v0

    and-int v1, v0, p3

    .line 283
    aget-byte v2, p1, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 285
    aget v2, p0, v1

    if-ne v2, p2, :cond_1

    .line 286
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->changeIndexSign(I)I

    move-result p0

    return p0

    .line 289
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->perturb(I)I

    move-result v0

    .line 291
    aget-byte v2, p1, v1

    if-ne v2, v3, :cond_4

    .line 293
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v1

    and-int v2, v1, p3

    shr-int/lit8 v0, v0, 0x5

    .line 297
    aget-byte v4, p1, v2

    if-ne v4, v3, :cond_3

    aget v4, p0, v2

    if-ne v4, p2, :cond_2

    :cond_3
    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    :cond_4
    move v2, v1

    .line 303
    :goto_0
    aget-byte v4, p1, v1

    if-nez v4, :cond_5

    return v1

    :cond_5
    if-ne v4, v3, :cond_6

    .line 308
    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->changeIndexSign(I)I

    move-result p0

    return p0

    .line 313
    :cond_6
    :goto_1
    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v2

    and-int v4, v2, p3

    .line 316
    aget-byte v5, p1, v4

    if-nez v5, :cond_7

    return v1

    :cond_7
    if-ne v5, v3, :cond_8

    .line 318
    aget v5, p0, v4

    if-ne v5, p2, :cond_8

    .line 319
    invoke-static {v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->changeIndexSign(I)I

    move-result p0

    return p0

    :cond_8
    shr-int/lit8 v0, v0, 0x5

    goto :goto_1
.end method

.method private growTable()V
    .locals 12

    .line 446
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    array-length v1, v0

    .line 447
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    .line 448
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    mul-int/lit8 v4, v1, 0x2

    .line 452
    new-array v5, v4, [I

    .line 453
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->buildArray(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    .line 454
    new-array v7, v4, [B

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v1, :cond_1

    .line 457
    aget-byte v10, v0, v9

    if-ne v10, v8, :cond_0

    .line 458
    aget v10, v2, v9

    .line 459
    invoke-static {v5, v7, v10, v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->findInsertionIndex([I[BII)I

    move-result v11

    .line 460
    aput v10, v5, v11

    .line 461
    aget-object v10, v3, v9

    aput-object v10, v6, v11

    .line 462
    aput-byte v8, v7, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 466
    :cond_1
    iput v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    .line 467
    iput-object v5, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    .line 468
    iput-object v6, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    .line 469
    iput-object v7, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    return-void
.end method

.method private static hashOf(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private static nextPowerOfTwo(I)I
    .locals 0

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static perturb(I)I
    .locals 1

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static probe(II)I
    .locals 1

    shl-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 604
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x0

    .line 605
    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    return-void
.end method

.method private shouldGrowTable()Z
    .locals 4

    .line 478
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 6

    .line 219
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->hashOf(I)I

    move-result v0

    .line 220
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int/2addr v1, v0

    .line 221
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 225
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v2, v2, v1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    return v4

    .line 230
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->perturb(I)I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v1, v5, v1

    if-eqz v1, :cond_3

    .line 231
    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v2

    .line 232
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int/2addr v1, v2

    .line 233
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    shr-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_3
    return v4
.end method

.method public get(I)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->hashOf(I)I

    move-result v0

    .line 190
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int/2addr v1, v0

    .line 191
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aget-object p1, p1, v1

    return-object p1

    .line 195
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1

    .line 196
    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    return-object p1

    .line 200
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->perturb(I)I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v1, v3, v1

    if-eqz v1, :cond_3

    .line 201
    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v2

    .line 202
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int/2addr v1, v2

    .line 203
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aget-object p1, p1, v1

    return-object p1

    :cond_2
    shr-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 208
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    return-object p1
.end method

.method public iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<",
            "TT;>.Iterator;"
        }
    .end annotation

    .line 250
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$1;)V

    return-object v0
.end method

.method public put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->findInsertionIndex(I)I

    move-result v0

    .line 420
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 423
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->changeIndexSign(I)I

    move-result v0

    .line 424
    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 427
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->keys:[I

    aput p1, v4, v0

    .line 428
    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aput-byte v2, p1, v0

    .line 429
    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->values:[Lorg/apache/commons/math3/FieldElement;

    aput-object p2, p1, v0

    if-eqz v3, :cond_2

    .line 431
    iget p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    .line 432
    invoke-direct {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->shouldGrowTable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 433
    invoke-direct {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->growTable()V

    .line 435
    :cond_1
    iget p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->count:I

    :cond_2
    return-object v1
.end method

.method public remove(I)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 363
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->hashOf(I)I

    move-result v0

    .line 364
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int/2addr v1, v0

    .line 365
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->doRemove(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_1

    .line 370
    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    return-object p1

    .line 374
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->perturb(I)I

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->states:[B

    aget-byte v1, v3, v1

    if-eqz v1, :cond_3

    .line 375
    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->probe(II)I

    move-result v2

    .line 376
    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->mask:I

    and-int/2addr v1, v2

    .line 377
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->doRemove(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1

    :cond_2
    shr-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 382
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->missingEntries:Lorg/apache/commons/math3/FieldElement;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 352
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->size:I

    return v0
.end method
