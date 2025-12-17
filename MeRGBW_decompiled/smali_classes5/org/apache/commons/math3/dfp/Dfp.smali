.class public Lorg/apache/commons/math3/dfp/Dfp;
.super Ljava/lang/Object;
.source "Dfp.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD_TRAP:Ljava/lang/String; = "add"

.field private static final ALIGN_TRAP:Ljava/lang/String; = "align"

.field private static final DIVIDE_TRAP:Ljava/lang/String; = "divide"

.field public static final ERR_SCALE:I = 0x7ff8

.field public static final FINITE:B = 0x0t

.field private static final GREATER_THAN_TRAP:Ljava/lang/String; = "greaterThan"

.field public static final INFINITE:B = 0x1t

.field private static final LESS_THAN_TRAP:Ljava/lang/String; = "lessThan"

.field public static final MAX_EXP:I = 0x8000

.field public static final MIN_EXP:I = -0x7fff

.field private static final MULTIPLY_TRAP:Ljava/lang/String; = "multiply"

.field private static final NAN_STRING:Ljava/lang/String; = "NaN"

.field private static final NEG_INFINITY_STRING:Ljava/lang/String; = "-Infinity"

.field private static final NEW_INSTANCE_TRAP:Ljava/lang/String; = "newInstance"

.field private static final NEXT_AFTER_TRAP:Ljava/lang/String; = "nextAfter"

.field private static final POS_INFINITY_STRING:Ljava/lang/String; = "Infinity"

.field public static final QNAN:B = 0x3t

.field public static final RADIX:I = 0x2710

.field public static final SNAN:B = 0x2t

.field private static final SQRT_TRAP:Ljava/lang/String; = "sqrt"

.field private static final TRUNC_TRAP:Ljava/lang/String; = "trunc"


# instance fields
.field protected exp:I

.field private final field:Lorg/apache/commons/math3/dfp/DfpField;

.field protected mant:[I

.field protected nans:B

.field protected sign:B


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 325
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 326
    iget v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 327
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 328
    iget-object p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v0, 0x1

    .line 184
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 186
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 187
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 2

    int-to-long v0, p2

    .line 195
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 544
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 545
    iput-byte p2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 p1, 0x0

    .line 546
    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 547
    iput-byte p3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v2, 0x1

    .line 261
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v3, 0x0

    .line 262
    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 263
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 264
    iput-object v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 266
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide v6, 0xfffffffffffffL

    and-long v8, v4, v6

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v10, v4

    const/16 v12, 0x34

    shr-long/2addr v10, v12

    long-to-int v10, v10

    add-int/lit16 v11, v10, -0x3ff

    const/16 v12, -0x3ff

    const-wide/high16 v13, -0x8000000000000000L

    const-wide/high16 v6, 0x10000000000000L

    const-wide/16 v16, 0x0

    const/4 v15, -0x1

    const-wide/16 v20, 0x0

    if-ne v11, v12, :cond_3

    cmpl-double v11, p2, v16

    if-nez v11, :cond_1

    and-long v1, v4, v13

    cmp-long v1, v1, v20

    if-eqz v1, :cond_0

    .line 275
    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_0
    return-void

    :cond_1
    add-int/lit16 v10, v10, -0x3fe

    move v11, v10

    :goto_0
    and-long v22, v8, v6

    cmp-long v10, v22, v20

    if-nez v10, :cond_2

    add-int/lit8 v11, v11, -0x1

    shl-long/2addr v8, v2

    goto :goto_0

    :cond_2
    const-wide v18, 0xfffffffffffffL

    and-long v8, v8, v18

    :cond_3
    const/16 v10, 0x400

    if-ne v11, v10, :cond_6

    cmpl-double v1, p2, p2

    if-eqz v1, :cond_4

    .line 293
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, 0x3

    .line 294
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_1

    :cond_4
    cmpg-double v1, p2, v16

    if-gez v1, :cond_5

    .line 296
    iput-byte v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 297
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_1

    .line 299
    :cond_5
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 300
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :goto_1
    return-void

    .line 305
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v1, v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 306
    new-instance v8, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v8, v1, v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 307
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1, v11}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    and-long/2addr v4, v13

    cmp-long v2, v4, v20

    if-eqz v2, :cond_7

    .line 310
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 313
    :cond_7
    iget-object v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 315
    iget v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 316
    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 2

    int-to-long v0, p2

    .line 203
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 10

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v0, 0x0

    .line 214
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 215
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long p1, p2, v1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    .line 227
    iput-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-long p2, p2

    goto :goto_1

    .line 230
    :cond_1
    iput-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 233
    :goto_1
    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    :goto_2
    cmp-long v4, p2, v2

    if-eqz v4, :cond_2

    .line 235
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v5, v6

    array-length v7, v4

    sub-int/2addr v7, v1

    sub-int/2addr v7, v6

    invoke-static {v4, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, v1

    const-wide/16 v6, 0x2710

    rem-long v8, p2, v6

    long-to-int v8, v8

    aput v8, v4, v5

    .line 237
    div-long/2addr p2, v6

    .line 238
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    .line 244
    :goto_3
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length p2, p1

    sub-int/2addr p2, v1

    if-ge v0, p2, :cond_4

    .line 245
    aget p2, p1, v0

    if-eqz p2, :cond_3

    add-int/2addr p2, v1

    .line 246
    aput p2, p1, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 335
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v2, 0x1

    .line 339
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v3, 0x0

    .line 340
    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 341
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move-object/from16 v4, p1

    .line 342
    iput-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 347
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result v4

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    new-array v6, v4, [C

    .line 350
    const-string v7, "Infinity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 351
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 352
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    .line 356
    :cond_0
    const-string v7, "-Infinity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_1

    .line 357
    iput-byte v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 358
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    .line 362
    :cond_1
    const-string v7, "NaN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x3

    if-eqz v7, :cond_2

    .line 363
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 364
    iput-byte v9, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    .line 369
    :cond_2
    const-string v7, "e"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 371
    const-string v7, "E"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :cond_3
    const/16 v10, 0x39

    const/16 v11, 0x30

    if-eq v7, v8, :cond_8

    .line 378
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v7, v2

    .line 379
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v7, v3

    move v13, v7

    move v14, v13

    .line 382
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_6

    .line 384
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v5, 0x2d

    if-ne v15, v5, :cond_4

    move v13, v2

    goto :goto_1

    .line 389
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v11, :cond_5

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v10, :cond_5

    mul-int/lit8 v14, v14, 0xa

    .line 390
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v14, v5

    sub-int/2addr v14, v11

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x4

    goto :goto_0

    :cond_6
    if-eqz v13, :cond_7

    neg-int v14, v14

    :cond_7
    move-object v1, v12

    goto :goto_2

    :cond_8
    move v14, v3

    .line 403
    :goto_2
    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_9

    .line 404
    iput-byte v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_9
    move v5, v3

    move v7, v5

    move v12, v7

    .line 413
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x31

    const/16 v8, 0x2e

    if-lt v13, v15, :cond_a

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-gt v13, v10, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v7, :cond_b

    .line 417
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_b

    add-int/lit8 v12, v12, -0x1

    .line 421
    :cond_b
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_c

    move v7, v2

    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 427
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v5, v13, :cond_1c

    .line 434
    :goto_4
    aput-char v11, v6, v3

    .line 435
    aput-char v11, v6, v2

    const/4 v13, 0x2

    .line 436
    aput-char v11, v6, v13

    .line 437
    aput-char v11, v6, v9

    move v9, v12

    const/4 v13, 0x4

    move v12, v3

    .line 440
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v5, v15, :cond_d

    const/4 v3, 0x4

    goto :goto_6

    .line 445
    :cond_d
    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    const/4 v3, 0x4

    mul-int/2addr v15, v3

    add-int/lit8 v15, v15, 0x5

    if-ne v13, v15, :cond_18

    :goto_6
    if-eqz v7, :cond_f

    if-eq v13, v3, :cond_f

    const/4 v15, -0x1

    :goto_7
    add-int/2addr v13, v15

    if-ne v13, v3, :cond_e

    goto :goto_8

    .line 475
    :cond_e
    aget-char v1, v6, v13

    if-ne v1, v11, :cond_f

    add-int/lit8 v12, v12, -0x1

    const/4 v3, 0x4

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v7, :cond_10

    if-nez v12, :cond_10

    const/4 v9, 0x0

    :cond_10
    const/4 v1, 0x4

    if-nez v7, :cond_11

    add-int/lit8 v9, v13, -0x4

    :cond_11
    add-int/lit8 v12, v12, 0x3

    :goto_9
    if-le v12, v1, :cond_13

    .line 498
    aget-char v1, v6, v12

    if-eq v1, v11, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v12, v12, -0x1

    const/4 v1, 0x4

    goto :goto_9

    :cond_13
    :goto_a
    rsub-int v1, v9, 0x190

    .line 505
    rem-int/lit8 v3, v14, 0x4

    sub-int/2addr v1, v3

    const/4 v3, 0x4

    rem-int/2addr v1, v3

    rsub-int/lit8 v5, v1, 0x4

    add-int/2addr v9, v1

    :cond_14
    sub-int v1, v12, v5

    .line 510
    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v7

    mul-int/2addr v8, v3

    if-ge v1, v8, :cond_15

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_14

    add-int/lit8 v12, v12, 0x1

    .line 512
    aput-char v11, v6, v12

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    goto :goto_b

    .line 518
    :cond_15
    array-length v1, v7

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_16

    .line 519
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget-char v3, v6, v5

    sub-int/2addr v3, v11

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v7, v5, 0x1

    aget-char v7, v6, v7

    sub-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v3, v7

    add-int/lit8 v7, v5, 0x2

    aget-char v7, v6, v7

    sub-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v3, v7

    add-int/lit8 v7, v5, 0x3

    aget-char v7, v6, v7

    sub-int/2addr v7, v11

    add-int/2addr v3, v7

    aput v3, v2, v1

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_16
    add-int/2addr v9, v14

    const/4 v3, 0x4

    .line 527
    div-int/2addr v9, v3

    iput v9, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v5, v4, :cond_17

    .line 531
    aget-char v1, v6, v5

    sub-int/2addr v1, v11

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    :cond_17
    return-void

    :cond_18
    const/4 v15, -0x1

    .line 449
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_19

    add-int/lit8 v5, v5, 0x1

    move v9, v12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 456
    :cond_19
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v11, :cond_1b

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le v2, v10, :cond_1a

    goto :goto_d

    .line 461
    :cond_1a
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v6, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_1b
    :goto_d
    add-int/lit8 v5, v5, 0x1

    :goto_e
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_1c
    const/4 v8, -0x1

    goto/16 :goto_3
.end method

.method private static compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I
    .locals 7

    .line 948
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, v0, v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v1

    sub-int/2addr v4, v2

    aget v1, v1, v4

    if-nez v1, :cond_0

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_0

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_0

    return v3

    .line 953
    :cond_0
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v1, v4, :cond_2

    const/4 p0, -0x1

    if-ne v1, p0, :cond_1

    return p0

    :cond_1
    return v2

    .line 962
    :cond_2
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v2, :cond_3

    iget-byte v6, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v6, :cond_3

    return v1

    :cond_3
    if-nez v5, :cond_4

    .line 966
    iget-byte v6, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v6, v2, :cond_4

    neg-int p0, v4

    return p0

    :cond_4
    if-ne v5, v2, :cond_5

    .line 970
    iget-byte v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v4, v2, :cond_5

    return v3

    .line 975
    :cond_5
    iget-object v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, v2

    aget v5, v4, v5

    if-eqz v5, :cond_7

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v4, v0, v4

    if-eqz v4, :cond_7

    .line 976
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v4, v5, :cond_6

    neg-int p0, v1

    return p0

    :cond_6
    if-le v4, v5, :cond_7

    return v1

    .line 986
    :cond_7
    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_a

    .line 987
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v1, v1, v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_8

    .line 988
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return p0

    :cond_8
    if-ge v1, v2, :cond_9

    .line 992
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int p0, p0

    return p0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_a
    return v3
.end method

.method public static copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2332
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 2333
    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object p0
.end method

.method private multiplyFast(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    .line 1623
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1626
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v2, 0x3

    const-string v3, "multiply"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 1627
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 1631
    :cond_0
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_1

    if-eqz p1, :cond_1

    .line 1632
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    .line 1637
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1638
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1639
    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1640
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v3, v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_2
    if-ltz p1, :cond_8

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    move v5, v2

    .line 1655
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 1656
    aget v6, v6, v2

    mul-int/2addr v6, p1

    add-int/2addr v6, v5

    .line 1657
    div-int/lit16 v5, v6, 0x2710

    .line 1658
    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v8, v5, 0x2710

    sub-int/2addr v6, v8

    aput v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 1663
    iget-object p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget p1, p1, v1

    .line 1664
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1665
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    aput v5, v2, v6

    goto :goto_1

    :cond_5
    move p1, v1

    .line 1668
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v2, v2, v5

    if-nez v2, :cond_6

    .line 1669
    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1672
    :cond_6
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result p1

    if-eqz p1, :cond_7

    .line 1674
    invoke-virtual {p0, p1, v3, v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_7
    return-object v0

    .line 1647
    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1648
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1649
    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1650
    invoke-virtual {p0, v4, v3, p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 865
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x1

    .line 866
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2718
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->acos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2787
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2525
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1261
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "add"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_0

    .line 1262
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1264
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1265
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1269
    :cond_0
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v2, :cond_1

    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v2, :cond_7

    .line 1270
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 1274
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 1278
    :cond_3
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_4

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_4

    return-object v0

    .line 1282
    :cond_4
    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v3, v6, :cond_5

    if-nez v2, :cond_5

    return-object v1

    :cond_5
    if-ne v3, v6, :cond_6

    if-ne v2, v6, :cond_6

    .line 1286
    iget-byte v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v8, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v7, v8, :cond_6

    return-object v1

    :cond_6
    if-ne v3, v6, :cond_7

    if-ne v2, v6, :cond_7

    .line 1290
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v2, v3, :cond_7

    .line 1291
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1293
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1294
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1300
    :cond_7
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1301
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1304
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1307
    iget-byte v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1308
    iget-byte v8, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1310
    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1311
    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1315
    invoke-static {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v9

    if-lez v9, :cond_8

    move v9, v7

    goto :goto_0

    :cond_8
    move v9, v8

    .line 1322
    :goto_0
    iget-object v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v11

    sub-int/2addr v12, v6

    aget v10, v10, v12

    if-nez v10, :cond_9

    .line 1323
    iget v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1326
    :cond_9
    iget-object v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    aget v10, v10, v11

    if-nez v10, :cond_a

    .line 1327
    iget v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1333
    :cond_a
    iget v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v11, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v10, v11, :cond_b

    .line 1334
    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v10

    const/4 v11, 0x0

    goto :goto_1

    .line 1336
    :cond_b
    invoke-virtual {v3, v10}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v10

    move v11, v10

    const/4 v10, 0x0

    :goto_1
    if-eq v7, v8, :cond_d

    if-ne v7, v9, :cond_c

    .line 1342
    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v11

    goto :goto_2

    .line 1344
    :cond_c
    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v10

    :cond_d
    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1350
    :goto_3
    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    if-ge v13, v15, :cond_e

    .line 1351
    iget-object v15, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v15, v15, v13

    iget-object v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v13

    add-int/2addr v15, v6

    add-int/2addr v15, v14

    .line 1352
    div-int/lit16 v14, v15, 0x2710

    .line 1353
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v12, v14, 0x2710

    sub-int/2addr v15, v12

    aput v15, v6, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 1355
    :cond_e
    iget v2, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1356
    iput-byte v9, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eqz v14, :cond_f

    if-ne v7, v8, :cond_f

    .line 1362
    iget-object v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1363
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1364
    iget-object v3, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    aput v14, v3, v6

    .line 1365
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1367
    invoke-virtual {v0, v2, v5, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    :cond_f
    const/4 v3, 0x0

    .line 1372
    :goto_4
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v2

    if-ge v3, v6, :cond_12

    .line 1373
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v2

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    aget v6, v6, v9

    if-eqz v6, :cond_10

    goto :goto_5

    .line 1376
    :cond_10
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    if-nez v3, :cond_11

    .line 1378
    iget-object v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/2addr v10, v11

    const/4 v6, 0x0

    aput v10, v2, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1385
    :cond_12
    :goto_5
    iget-object v3, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    aget v2, v3, v2

    if-nez v2, :cond_13

    const/4 v2, 0x0

    .line 1386
    iput v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-eq v7, v8, :cond_13

    .line 1390
    iput-byte v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_13
    add-int/2addr v10, v11

    .line 1395
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v2

    if-eqz v2, :cond_14

    .line 1397
    invoke-virtual {v0, v2, v5, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    :cond_14
    return-object v4
.end method

.method protected align(I)I
    .locals 8

    .line 701
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    neg-int v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 712
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const-string v6, "align"

    const/16 v7, 0x10

    if-le v1, v4, :cond_2

    .line 714
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 715
    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 717
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 718
    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v2

    :cond_2
    move p1, v2

    move v3, p1

    move v4, v3

    :goto_1
    if-ge p1, v1, :cond_5

    if-gez v0, :cond_4

    if-eqz v4, :cond_3

    move v3, v5

    .line 733
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v4, v4, v2

    .line 735
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    goto :goto_2

    .line 737
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 742
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 743
    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    :cond_6
    return v4
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2725
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->asin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2794
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2732
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2742
    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2744
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v1, :cond_0

    .line 2747
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 2752
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 2753
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v0, :cond_1

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_0

    :cond_1
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2754
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2801
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cbrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    const/4 v0, 0x3

    .line 2613
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->ceil()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1025
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public classify()I
    .locals 1

    .line 2322
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return v0
.end method

.method protected complement(I)I
    .locals 5

    rsub-int p1, p1, 0x2710

    const/4 v0, 0x0

    move v1, v0

    .line 1239
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1240
    aget v3, v2, v1

    rsub-int v3, v3, 0x270f

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    div-int/lit16 v1, p1, 0x2710

    mul-int/lit16 v2, v1, 0x2710

    sub-int/2addr p1, v2

    .line 1245
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1246
    aget v3, v2, v0

    add-int/2addr v3, v1

    .line 1247
    div-int/lit16 v1, v3, 0x2710

    mul-int/lit16 v4, v1, 0x2710

    sub-int/2addr v3, v4

    .line 1248
    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public copySign(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4

    .line 2588
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 2589
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    :cond_0
    if-gez v0, :cond_2

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    :cond_1
    return-object p0

    .line 2592
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2578
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v1, :cond_1

    :cond_0
    if-gez v0, :cond_2

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez p1, :cond_2

    :cond_1
    return-object p0

    .line 2581
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2697
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2764
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method protected dfp2sci()Ljava/lang/String;
    .locals 14

    .line 2087
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    new-array v2, v1, [C

    .line 2088
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x14

    new-array v3, v3, [C

    .line 2097
    array-length v0, v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x30

    if-ltz v0, :cond_0

    add-int/lit8 v8, v6, 0x1

    .line 2098
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v0

    div-int/lit16 v10, v9, 0x3e8

    add-int/2addr v10, v7

    int-to-char v10, v10

    aput-char v10, v2, v6

    add-int/lit8 v10, v6, 0x2

    .line 2099
    div-int/lit8 v11, v9, 0x64

    rem-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v7

    int-to-char v11, v11

    aput-char v11, v2, v8

    add-int/lit8 v8, v6, 0x3

    .line 2100
    div-int/lit8 v11, v9, 0xa

    rem-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v7

    int-to-char v11, v11

    aput-char v11, v2, v10

    add-int/lit8 v6, v6, 0x4

    .line 2101
    rem-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v7

    int-to-char v7, v9

    aput-char v7, v2, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_1
    if-ge v0, v1, :cond_2

    .line 2106
    aget-char v6, v2, v0

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2114
    :cond_2
    :goto_2
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/16 v8, 0x2d

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 2115
    aput-char v8, v3, v5

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    const/16 v9, 0x65

    const/16 v10, 0x2e

    if-eq v0, v1, :cond_9

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v0, 0x1

    .line 2120
    aget-char v13, v2, v0

    aput-char v13, v3, v6

    add-int/lit8 v6, v6, 0x2

    .line 2121
    aput-char v10, v3, v11

    :goto_4
    if-ge v12, v1, :cond_4

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v11, v12, 0x1

    .line 2124
    aget-char v12, v2, v12

    aput-char v12, v3, v6

    move v6, v10

    move v12, v11

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v6, 0x1

    .line 2135
    aput-char v9, v3, v6

    .line 2139
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    if-gez v2, :cond_5

    neg-int v0, v2

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    const v4, 0x3b9aca00

    :goto_6
    if-le v4, v0, :cond_6

    .line 2146
    div-int/lit8 v4, v4, 0xa

    goto :goto_6

    :cond_6
    if-gez v2, :cond_7

    add-int/lit8 v6, v6, 0x2

    .line 2151
    aput-char v8, v3, v1

    move v1, v6

    :cond_7
    :goto_7
    if-lez v4, :cond_8

    add-int/lit8 v2, v1, 0x1

    .line 2155
    div-int v6, v0, v4

    add-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v3, v1

    .line 2156
    rem-int/2addr v0, v4

    .line 2157
    div-int/lit8 v4, v4, 0xa

    move v1, v2

    goto :goto_7

    .line 2160
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_9
    add-int/lit8 v0, v6, 0x1

    .line 2127
    aput-char v7, v3, v6

    add-int/lit8 v1, v6, 0x2

    .line 2128
    aput-char v10, v3, v0

    add-int/lit8 v0, v6, 0x3

    .line 2129
    aput-char v7, v3, v1

    add-int/lit8 v6, v6, 0x4

    .line 2130
    aput-char v9, v3, v0

    .line 2131
    aput-char v7, v3, v6

    .line 2132
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected dfp2string()Ljava/lang/String;
    .locals 12

    .line 2168
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [C

    .line 2171
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    .line 2174
    aput-char v2, v0, v3

    const/16 v2, 0x2e

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-gtz v1, :cond_0

    .line 2177
    aput-char v4, v0, v5

    const/4 v3, 0x2

    .line 2178
    aput-char v2, v0, v3

    const/4 v3, 0x3

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    move v3, v5

    :goto_0
    if-gez v1, :cond_1

    add-int/lit8 v7, v3, 0x1

    .line 2183
    aput-char v4, v0, v3

    add-int/lit8 v8, v3, 0x2

    .line 2184
    aput-char v4, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 2185
    aput-char v4, v0, v8

    add-int/lit8 v3, v3, 0x4

    .line 2186
    aput-char v4, v0, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2190
    :cond_1
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v5

    :goto_1
    if-ltz v7, :cond_3

    add-int/lit8 v8, v3, 0x1

    .line 2191
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v7

    div-int/lit16 v10, v9, 0x3e8

    add-int/2addr v10, v4

    int-to-char v10, v10

    aput-char v10, v0, v3

    add-int/lit8 v10, v3, 0x2

    .line 2192
    div-int/lit8 v11, v9, 0x64

    rem-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v4

    int-to-char v11, v11

    aput-char v11, v0, v8

    add-int/lit8 v8, v3, 0x3

    .line 2193
    div-int/lit8 v11, v9, 0xa

    rem-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v4

    int-to-char v11, v11

    aput-char v11, v0, v10

    add-int/lit8 v10, v3, 0x4

    .line 2194
    rem-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v4

    int-to-char v9, v9

    aput-char v9, v0, v8

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    add-int/lit8 v3, v3, 0x5

    .line 2196
    aput-char v2, v0, v10

    move v6, v5

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v1, :cond_4

    add-int/lit8 v7, v3, 0x1

    .line 2202
    aput-char v4, v0, v3

    add-int/lit8 v8, v3, 0x2

    .line 2203
    aput-char v4, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 2204
    aput-char v4, v0, v8

    add-int/lit8 v3, v3, 0x4

    .line 2205
    aput-char v4, v0, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    add-int/lit8 v1, v3, 0x1

    .line 2211
    aput-char v2, v0, v3

    move v3, v1

    .line 2216
    :cond_5
    :goto_4
    aget-char v1, v0, v5

    if-ne v1, v4, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    if-ne v1, v2, :cond_7

    add-int/lit8 v5, v5, -0x1

    :cond_7
    :goto_5
    add-int/lit8 v1, v3, -0x1

    .line 2224
    aget-char v1, v0, v1

    if-ne v1, v4, :cond_8

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 2229
    :cond_8
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v1, :cond_9

    add-int/lit8 v5, v5, -0x1

    const/16 v1, 0x2d

    .line 2230
    aput-char v1, v0, v5

    .line 2233
    :cond_9
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v3, v5

    invoke-direct {v1, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public divide(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2546
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public divide(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 10

    .line 1902
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1903
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1907
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v1, :cond_1

    .line 1908
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1913
    :cond_1
    const-string v0, "divide"

    if-nez p1, :cond_2

    .line 1914
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1915
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1916
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1917
    iput-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1918
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_2
    if-ltz p1, :cond_7

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_3

    goto :goto_1

    .line 1931
    :cond_3
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1934
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ltz v4, :cond_4

    mul-int/lit16 v6, v6, 0x2710

    .line 1935
    iget-object v7, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v7, v4

    add-int/2addr v6, v8

    .line 1936
    div-int v8, v6, p1

    mul-int v9, v8, p1

    sub-int/2addr v6, v9

    .line 1938
    aput v8, v7, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1941
    :cond_4
    iget-object v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v1

    aget v1, v4, v7

    if-nez v1, :cond_5

    .line 1943
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    mul-int/lit16 v6, v6, 0x2710

    .line 1945
    div-int v1, v6, p1

    mul-int v4, v1, p1

    sub-int/2addr v6, v4

    .line 1947
    iget-object v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aput v1, v4, v5

    :cond_5
    mul-int/2addr v6, v2

    .line 1950
    div-int/2addr v6, p1

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result p1

    if-eqz p1, :cond_6

    .line 1952
    invoke-virtual {p0, p1, v0, v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    :cond_6
    return-object v3

    .line 1924
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1925
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    const/4 v2, 0x3

    .line 1926
    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1927
    invoke-virtual {p0, v1, v0, p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1697
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "divide"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_0

    .line 1698
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1699
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1700
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1701
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1704
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1707
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_1

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v3, :cond_6

    .line 1708
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 1712
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    .line 1716
    :cond_3
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v3, v6, :cond_4

    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v7, :cond_4

    .line 1717
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1718
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v3, v1

    int-to-byte v1, v3

    iput-byte v1, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v2

    .line 1722
    :cond_4
    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v7, v6, :cond_5

    if-nez v3, :cond_5

    .line 1723
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1724
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v3, v1

    int-to-byte v1, v3

    iput-byte v1, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v2

    :cond_5
    if-ne v7, v6, :cond_6

    if-ne v3, v6, :cond_6

    .line 1729
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1730
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1731
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1732
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1738
    :cond_6
    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v4

    sub-int/2addr v7, v6

    aget v3, v3, v7

    const/4 v7, 0x2

    if-nez v3, :cond_7

    .line 1739
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1741
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1742
    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1743
    invoke-virtual {v0, v7, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1747
    :cond_7
    array-length v3, v4

    add-int/2addr v3, v6

    new-array v3, v3, [I

    .line 1748
    array-length v8, v4

    add-int/2addr v8, v7

    new-array v8, v8, [I

    .line 1749
    array-length v9, v4

    add-int/2addr v9, v6

    new-array v9, v9, [I

    .line 1753
    array-length v10, v4

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 1754
    array-length v10, v4

    aput v11, v8, v10

    .line 1755
    array-length v10, v4

    add-int/2addr v10, v6

    aput v11, v8, v10

    .line 1756
    array-length v4, v4

    aput v11, v9, v4

    move v4, v11

    .line 1761
    :goto_0
    iget-object v10, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v10

    if-ge v4, v12, :cond_8

    .line 1762
    aget v10, v10, v4

    aput v10, v3, v4

    .line 1763
    aput v11, v8, v4

    .line 1764
    aput v11, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1769
    :cond_8
    array-length v4, v10

    add-int/2addr v4, v6

    move v10, v11

    move v12, v10

    :goto_1
    if-ltz v4, :cond_19

    .line 1773
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v13

    aget v14, v3, v14

    mul-int/lit16 v14, v14, 0x2710

    array-length v15, v13

    sub-int/2addr v15, v6

    aget v15, v3, v15

    add-int/2addr v14, v15

    .line 1774
    iget-object v15, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v13

    sub-int/2addr v11, v6

    aget v11, v15, v11

    add-int/2addr v11, v6

    div-int v11, v14, v11

    add-int/2addr v14, v6

    .line 1775
    array-length v13, v13

    sub-int/2addr v13, v6

    aget v13, v15, v13

    div-int/2addr v14, v13

    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_13

    add-int v12, v11, v14

    .line 1780
    div-int/2addr v12, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1784
    :goto_3
    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move/from16 v17, v11

    array-length v11, v7

    add-int/2addr v11, v6

    if-ge v15, v11, :cond_a

    .line 1785
    array-length v7, v7

    if-ge v15, v7, :cond_9

    iget-object v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v15

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    mul-int/2addr v7, v12

    add-int v7, v7, v16

    .line 1787
    div-int/lit16 v11, v7, 0x2710

    mul-int/lit16 v6, v11, 0x2710

    sub-int/2addr v7, v6

    .line 1788
    aput v7, v9, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v11

    move/from16 v11, v17

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1793
    :goto_5
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v11

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    if-ge v6, v15, :cond_b

    .line 1794
    aget v11, v9, v6

    rsub-int v11, v11, 0x270f

    aget v15, v3, v6

    add-int/2addr v11, v15

    add-int/2addr v11, v7

    .line 1795
    div-int/lit16 v7, v11, 0x2710

    mul-int/lit16 v15, v7, 0x2710

    sub-int/2addr v11, v15

    .line 1796
    aput v11, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    if-nez v7, :cond_c

    add-int/lit8 v14, v12, -0x1

    move/from16 v11, v17

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto :goto_2

    .line 1807
    :cond_c
    array-length v6, v11

    aget v6, v9, v6

    mul-int/lit16 v6, v6, 0x2710

    array-length v7, v11

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    aget v7, v9, v7

    add-int/2addr v6, v7

    .line 1808
    iget-object v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move/from16 v16, v13

    array-length v13, v11

    sub-int/2addr v13, v15

    aget v7, v7, v13

    add-int/2addr v7, v15

    div-int/2addr v6, v7

    const/4 v7, 0x2

    if-lt v6, v7, :cond_d

    add-int v11, v12, v6

    move v6, v15

    move/from16 v13, v16

    goto :goto_2

    .line 1818
    :cond_d
    array-length v6, v11

    sub-int/2addr v6, v15

    const/4 v11, 0x0

    :goto_6
    if-ltz v6, :cond_10

    .line 1819
    iget-object v13, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v13, v13, v6

    aget v15, v9, v6

    if-le v13, v15, :cond_e

    const/4 v11, 0x1

    :cond_e
    if-ge v13, v15, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 1827
    :cond_10
    :goto_7
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    aget v6, v9, v6

    if-eqz v6, :cond_11

    const/4 v13, 0x0

    goto :goto_8

    :cond_11
    move v13, v11

    :goto_8
    if-nez v13, :cond_12

    add-int/lit8 v6, v12, 0x1

    move v11, v6

    goto :goto_9

    :cond_12
    move/from16 v11, v17

    :goto_9
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1837
    :cond_13
    aput v12, v8, v4

    if-nez v12, :cond_14

    if-eqz v10, :cond_15

    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 1842
    :cond_15
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v6

    sget-object v11, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    if-ne v6, v11, :cond_16

    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    if-ne v10, v6, :cond_16

    goto :goto_b

    .line 1847
    :cond_16
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    if-le v10, v6, :cond_17

    goto :goto_b

    :cond_17
    const/4 v6, 0x0

    .line 1853
    aput v6, v3, v6

    const/4 v6, 0x0

    .line 1854
    :goto_a
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    if-ge v6, v11, :cond_18

    add-int/lit8 v11, v6, 0x1

    .line 1855
    aget v6, v9, v6

    aput v6, v3, v11

    move v6, v11

    goto :goto_a

    :cond_18
    add-int/lit8 v4, v4, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1860
    :cond_19
    :goto_b
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    .line 1861
    array-length v3, v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    :goto_c
    if-ltz v3, :cond_1b

    .line 1862
    aget v6, v8, v3

    if-eqz v6, :cond_1a

    move v4, v3

    goto :goto_d

    :cond_1a
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_1b
    :goto_d
    const/4 v6, 0x0

    .line 1869
    :goto_e
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v3

    if-ge v6, v7, :cond_1c

    .line 1870
    iget-object v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v6

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    sub-int v9, v4, v6

    aget v9, v8, v9

    aput v9, v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 1874
    :cond_1c
    iget v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v4

    array-length v7, v3

    sub-int/2addr v6, v7

    iput v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1875
    iget-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v7, :cond_1d

    const/4 v6, 0x1

    goto :goto_f

    :cond_1d
    const/4 v6, -0x1

    :goto_f
    int-to-byte v6, v6

    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1877
    iget-object v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v3

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    aget v6, v6, v7

    if-nez v6, :cond_1e

    const/4 v6, 0x0

    .line 1878
    iput v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_10

    :cond_1e
    const/4 v6, 0x0

    .line 1881
    :goto_10
    array-length v7, v3

    sub-int/2addr v7, v9

    if-le v4, v7, :cond_1f

    .line 1882
    array-length v3, v3

    sub-int/2addr v4, v3

    aget v3, v8, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v3

    goto :goto_11

    .line 1884
    :cond_1f
    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v3

    :goto_11
    if-eqz v3, :cond_20

    .line 1888
    invoke-virtual {v0, v3, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    :cond_20
    return-object v2
.end method

.method public dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    move-object v7, p4

    goto/16 :goto_5

    .line 2280
    :cond_0
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/2addr v0, v1

    const/16 v1, -0x7fff

    if-ge v0, v1, :cond_1

    .line 2281
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2282
    iget-byte v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    goto :goto_0

    .line 2284
    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2286
    :goto_0
    iget v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v1, v1, 0x7ff8

    iput v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_1

    .line 2290
    :cond_2
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v0, v0, -0x7ff8

    iput v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2291
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2292
    iget-byte v2, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2293
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :goto_1
    move-object v7, v0

    goto/16 :goto_5

    .line 2255
    :cond_3
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    sub-int/2addr v4, v1

    aget v3, v3, v4

    if-eqz v3, :cond_4

    .line 2257
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2258
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v5, p3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2259
    iput-byte v1, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_2

    :cond_4
    move-object v3, p4

    .line 2262
    :goto_2
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, v1

    aget v4, v4, v5

    if-nez v4, :cond_5

    .line 2264
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2265
    iput-byte v0, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2268
    :cond_5
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v4, v1, :cond_6

    if-ne v4, v0, :cond_7

    .line 2269
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2270
    iput-byte v0, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2273
    :cond_7
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v4, v1, :cond_9

    if-ne v4, v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, v3

    goto :goto_5

    .line 2274
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2275
    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_4

    .line 2249
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2250
    iget-byte v2, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2251
    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :goto_4
    move-object v7, v1

    :goto_5
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    .line 2299
    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/dfp/Dfp;->trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 906
    instance-of v0, p1, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 907
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .line 908
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->exp()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2650
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->expm1()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2657
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->floor()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1016
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/dfp/DfpField;
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getRadixDigits()I
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    return v0
.end method

.method public getReal()D
    .locals 2

    .line 2518
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTwo()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5

    .line 782
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "greaterThan"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 783
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 784
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    .line 785
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 786
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3

    .line 791
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 797
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p1

    if-lez p1, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 792
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 793
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3
.end method

.method public hashCode()I
    .locals 2

    .line 925
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x11

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2606
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public intLog10()I
    .locals 3

    .line 1189
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 1190
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1192
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 1193
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 1195
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1196
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3

    return v0

    .line 1198
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public intValue()I
    .locals 5

    .line 1144
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const v1, 0x7fffffff

    .line 1146
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/high16 v1, -0x80000000

    .line 1150
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 1154
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    iget v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_2

    mul-int/lit16 v2, v2, 0x2710

    .line 1155
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1158
    :cond_2
    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    neg-int v2, v2

    :cond_3
    return v2
.end method

.method public isInfinite()Z
    .locals 2

    .line 874
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNaN()Z
    .locals 2

    .line 881
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isZero()Z
    .locals 4

    .line 889
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 891
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 895
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5

    .line 757
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "lessThan"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 759
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    .line 760
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 761
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3

    .line 766
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 772
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p1

    if-gez p1, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 767
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 768
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p9, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p9}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p9, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p12, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p5, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p5, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p7, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p8, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, [Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2845
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2863
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2879
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p12, p10, p11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2838
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2854
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2871
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2824
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 2827
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x0

    .line 2828
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2829
    aget-object v2, p2, v1

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 2825
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2809
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 2812
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x0

    .line 2813
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2814
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 2810
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2664
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log10()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2682
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v0

    return v0
.end method

.method public log10K()I
    .locals 1

    .line 1171
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log1p()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2671
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2539
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 1611
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiplyFast(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1613
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11

    .line 1506
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "multiply"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 1507
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1508
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1509
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1510
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1513
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1516
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_1

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v1, :cond_9

    .line 1517
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 1521
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    .line 1525
    :cond_3
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_4

    iget-byte v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v5, :cond_4

    iget-object v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    aget v5, v5, v6

    if-eqz v5, :cond_4

    .line 1526
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1527
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v1, p1

    int-to-byte p1, v1

    iput-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    .line 1531
    :cond_4
    iget-byte v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v4, :cond_5

    if-nez v1, :cond_5

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    sub-int/2addr v7, v4

    aget v6, v6, v7

    if-eqz v6, :cond_5

    .line 1532
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1533
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v1, p1

    int-to-byte p1, v1

    iput-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    :cond_5
    if-ne v5, v4, :cond_6

    if-ne v1, v4, :cond_6

    .line 1538
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1539
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v1, p1

    int-to-byte p1, v1

    iput-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    :cond_6
    if-ne v5, v4, :cond_7

    if-nez v1, :cond_7

    .line 1543
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    sub-int/2addr v7, v4

    aget v6, v6, v7

    if-eqz v6, :cond_8

    :cond_7
    if-ne v1, v4, :cond_9

    if-nez v5, :cond_9

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v1, v1, v5

    if-nez v1, :cond_9

    .line 1545
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1546
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1547
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1548
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1553
    :cond_9
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v5, v2

    .line 1555
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    if-ge v5, v7, :cond_b

    move v6, v2

    move v7, v6

    .line 1557
    :goto_1
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v8

    if-ge v6, v9, :cond_a

    .line 1558
    aget v8, v8, v5

    iget-object v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v6

    mul-int/2addr v8, v9

    add-int v9, v5, v6

    .line 1559
    aget v10, v1, v9

    add-int/2addr v10, v7

    add-int/2addr v8, v10

    .line 1561
    div-int/lit16 v7, v8, 0x2710

    mul-int/lit16 v10, v7, 0x2710

    sub-int/2addr v8, v10

    .line 1562
    aput v8, v1, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1564
    :cond_a
    array-length v6, v8

    add-int/2addr v6, v5

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1568
    :cond_b
    array-length v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    .line 1569
    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v4

    :goto_2
    if-ltz v6, :cond_d

    .line 1570
    aget v7, v1, v6

    if-eqz v7, :cond_c

    move v5, v6

    goto :goto_3

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_d
    :goto_3
    move v6, v2

    .line 1577
    :goto_4
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v7

    if-ge v6, v8, :cond_e

    .line 1578
    iget-object v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v4

    sub-int v9, v5, v6

    aget v9, v1, v9

    aput v9, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1582
    :cond_e
    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v8, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v6, v8

    add-int/2addr v6, v5

    array-length v8, v7

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int/2addr v6, v4

    iput v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1583
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v8, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v8, :cond_f

    move v6, v4

    goto :goto_5

    :cond_f
    const/4 v6, -0x1

    :goto_5
    int-to-byte v6, v6

    iput-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1585
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v7

    sub-int/2addr v8, v4

    aget v6, v6, v8

    if-nez v6, :cond_10

    .line 1587
    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1591
    :cond_10
    array-length v6, v7

    sub-int/2addr v6, v4

    if-le v5, v6, :cond_11

    .line 1592
    array-length v2, v7

    sub-int/2addr v5, v2

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v1

    goto :goto_6

    .line 1594
    :cond_11
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v1

    :goto_6
    if-eqz v1, :cond_12

    .line 1598
    invoke-virtual {p0, v1, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 1407
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1408
    iget-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0
.end method

.method public negativeOrNull()Z
    .locals 4

    .line 805
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 807
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 811
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 555
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 563
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 625
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 587
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 571
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 579
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 615
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 598
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 599
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x3

    .line 601
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 602
    const-string v2, "newInstance"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 605
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object v0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    .line 2345
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "nextAfter"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 2346
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2347
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    .line 2348
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2349
    invoke-virtual {p0, v3, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 2354
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    .line 2358
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2359
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 2362
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    .line 2369
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2370
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2371
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2373
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2374
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    rsub-int v1, v1, -0x7fff

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2377
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    .line 2379
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2380
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2381
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2383
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2384
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    .line 2386
    :cond_5
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2389
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2390
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    rsub-int v1, v1, -0x7fff

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2393
    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2396
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 2397
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2398
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2401
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2402
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2403
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public positiveOrNull()Z
    .locals 4

    .line 835
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 837
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 841
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->pow(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2629
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2636
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2643
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public power10(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 1206
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 1209
    div-int/lit8 v2, p1, 0x4

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 1211
    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1214
    :goto_0
    rem-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/16 p1, 0x3e8

    .line 1224
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 p1, 0x64

    .line 1221
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 p1, 0xa

    .line 1218
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public power10K(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1179
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1180
    iput p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->reciprocal()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1961
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public remainder(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2553
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 1035
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1038
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 1039
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_0
    return-object p1
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1007
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public rootN(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2620
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected round(I)I
    .locals 7

    .line 1426
    sget-object v0, Lorg/apache/commons/math3/dfp/Dfp$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x1388

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1457
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :pswitch_0
    if-gt p1, v2, :cond_0

    if-ne p1, v2, :cond_2

    .line 1448
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v0, v0, v1

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    goto :goto_0

    :pswitch_1
    if-le p1, v2, :cond_2

    goto :goto_0

    :pswitch_2
    if-lt p1, v2, :cond_2

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_2

    goto :goto_0

    :pswitch_4
    if-gt p1, v2, :cond_0

    if-ne p1, v2, :cond_2

    .line 1444
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v0, v0, v1

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 1452
    :pswitch_5
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    :cond_0
    :goto_0
    move v0, v1

    move v2, v3

    .line 1464
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 1465
    aget v5, v4, v0

    add-int/2addr v5, v2

    .line 1466
    div-int/lit16 v2, v5, 0x2710

    mul-int/lit16 v6, v2, 0x2710

    sub-int/2addr v5, v6

    .line 1467
    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 1471
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1472
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v0

    sub-int/2addr v4, v3

    aput v2, v0, v4

    .line 1477
    :cond_2
    :pswitch_6
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v2, -0x7fff

    if-ge v0, v2, :cond_3

    .line 1479
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v0

    :cond_3
    const v2, 0x8000

    if-le v0, v2, :cond_4

    .line 1485
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v0

    :cond_4
    if-eqz p1, :cond_5

    .line 1491
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public round()J
    .locals 2

    .line 2560
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->scalb(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public scalb(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2599
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method protected shiftLeft()V
    .locals 3

    .line 670
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 671
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 674
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-void
.end method

.method protected shiftRight()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 682
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 683
    aget v4, v2, v3

    aput v4, v2, v1

    move v1, v3

    goto :goto_0

    .line 685
    :cond_0
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aput v0, v2, v1

    .line 686
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-void
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->signum()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2567
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2570
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2704
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2771
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8

    .line 1971
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    sub-int/2addr v3, v1

    aget v2, v2, v3

    if-nez v2, :cond_0

    .line 1973
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 1976
    const-string v3, "sqrt"

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_1

    .line 1977
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v1, :cond_1

    .line 1979
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    :cond_1
    if-ne v0, v4, :cond_2

    .line 1983
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    :cond_2
    if-ne v0, v5, :cond_3

    .line 1989
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1990
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1991
    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 1996
    :cond_3
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 2000
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2001
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2002
    iput-byte v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2003
    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 2007
    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2010
    iget v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lt v2, v6, :cond_5

    if-le v2, v1, :cond_6

    .line 2011
    :cond_5
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    div-int/2addr v2, v5

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2015
    :cond_6
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v3

    sub-int/2addr v7, v1

    aget v7, v2, v7

    div-int/lit16 v7, v7, 0x7d0

    if-eqz v7, :cond_9

    if-eq v7, v5, :cond_8

    if-eq v7, v4, :cond_7

    .line 2026
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0xbb8

    aput v4, v2, v3

    goto :goto_0

    .line 2023
    :cond_7
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x898

    aput v4, v2, v3

    goto :goto_0

    .line 2020
    :cond_8
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x5dc

    aput v4, v2, v3

    goto :goto_0

    .line 2017
    :cond_9
    array-length v4, v3

    sub-int/2addr v4, v1

    array-length v3, v3

    sub-int/2addr v3, v1

    aget v3, v2, v3

    div-int/2addr v3, v5

    add-int/2addr v3, v1

    aput v3, v2, v4

    .line 2029
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 2034
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2035
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    .line 2036
    :goto_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2037
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2038
    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2039
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2040
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2043
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2045
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    .line 2052
    :cond_a
    iget-object v2, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    aget v2, v2, v3

    if-nez v2, :cond_b

    :goto_2
    move-object v0, v4

    goto :goto_3

    :cond_b
    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_c
    :goto_3
    return-object v0
.end method

.method public strictlyNegative()Z
    .locals 4

    .line 820
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 822
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 826
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public strictlyPositive()Z
    .locals 4

    .line 850
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 852
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 856
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public subtract(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2532
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 1417
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2711
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->tan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 2778
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2779
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2780
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public toDouble()D
    .locals 14

    .line 2416
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v0, :cond_1

    .line 2417
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    return-wide v3

    .line 2424
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 2430
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v0

    const-wide/16 v5, 0x0

    if-nez v0, :cond_4

    .line 2432
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_3

    const-wide/high16 v5, -0x8000000000000000L

    :cond_3
    return-wide v5

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v0, :cond_5

    .line 2434
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    move v9, v8

    goto :goto_0

    :cond_5
    move-object v0, p0

    move v9, v7

    .line 2440
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x400a8f5c28f5c28fL    # 3.32

    mul-double/2addr v10, v12

    double-to-int v10, v10

    if-gez v10, :cond_6

    add-int/lit8 v10, v10, -0x1

    .line 2445
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-static {v11, v10}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 2446
    :goto_1
    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v11, v10, -0x1

    .line 2454
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    invoke-static {v12, v11}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/16 v12, -0x3ff

    if-le v11, v12, :cond_8

    .line 2456
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_8
    const/16 v13, -0x432

    if-ge v11, v13, :cond_9

    return-wide v5

    :cond_9
    const/16 v5, 0x3ff

    if-le v11, v5, :cond_b

    if-eqz v9, :cond_a

    goto :goto_2

    :cond_a
    move-wide v1, v3

    :goto_2
    return-wide v1

    :cond_b
    const-wide/high16 v1, 0x10000000000000L

    .line 2468
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2469
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2470
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2471
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_c

    const-wide/16 v3, 0x0

    goto :goto_3

    :cond_c
    move v10, v11

    :goto_3
    if-gt v10, v12, :cond_d

    add-int/lit8 v10, v10, -0x1

    :cond_d
    :goto_4
    if-ge v10, v12, :cond_e

    add-int/lit8 v10, v10, 0x1

    ushr-long/2addr v3, v8

    goto :goto_4

    :cond_e
    int-to-long v0, v10

    const-wide/16 v5, 0x3ff

    add-long/2addr v0, v5

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    .line 2490
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    if-eqz v9, :cond_f

    neg-double v0, v0

    :cond_f
    return-wide v0

    :cond_10
    :goto_5
    const/4 v12, 0x2

    .line 2447
    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public toSplitDouble()[D
    .locals 5

    const/4 v0, 0x2

    .line 2505
    new-array v0, v0, [D

    .line 2508
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/32 v3, -0x40000000

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 2509
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2066
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2069
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_0

    const-string v0, "-Infinity"

    goto :goto_0

    :cond_0
    const-string v0, "Infinity"

    :goto_0
    return-object v0

    .line 2071
    :cond_1
    const-string v0, "NaN"

    return-object v0

    .line 2075
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    if-gt v0, v1, :cond_4

    const/4 v1, -0x1

    if-ge v0, v1, :cond_3

    goto :goto_1

    .line 2079
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2string()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2076
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2sci()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    return-object p4
.end method

.method protected trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    .line 1053
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1057
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1058
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1061
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v2, v0, v2

    if-nez v2, :cond_2

    .line 1063
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1068
    :cond_2
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const-string v3, "trunc"

    const/16 v4, 0x10

    if-gez v2, :cond_3

    .line 1069
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1070
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1071
    invoke-virtual {p0, v4, v3, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1079
    :cond_3
    array-length v0, v0

    if-lt v2, v0, :cond_4

    .line 1080
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1086
    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x0

    move v5, v2

    move v6, v5

    .line 1087
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    iget v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v7, v8

    if-ge v5, v7, :cond_6

    .line 1088
    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v7, v5

    if-eqz v8, :cond_5

    move v8, v1

    goto :goto_1

    :cond_5
    move v8, v2

    :goto_1
    or-int/2addr v6, v8

    .line 1089
    aput v2, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_b

    .line 1093
    sget-object v2, Lorg/apache/commons/math3/dfp/Dfp$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    .line 1110
    const-string p1, "0.5"

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1111
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1112
    iput-byte v1, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1113
    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1114
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1115
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v5, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1116
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1120
    :cond_7
    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lez p1, :cond_a

    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, p1

    aget p1, v2, v5

    and-int/2addr p1, v1

    if-eqz p1, :cond_a

    .line 1121
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1122
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1123
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_2

    .line 1102
    :cond_8
    iget-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne p1, v1, :cond_a

    .line 1104
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_2

    .line 1095
    :cond_9
    iget-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    .line 1097
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1128
    :cond_a
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1129
    invoke-virtual {p0, v4, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v0
.end method

.method public unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 3

    .line 933
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
