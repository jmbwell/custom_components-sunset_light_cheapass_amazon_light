.class public final Lorg/apache/commons/math3/complex/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final I:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final IDENTITY:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final J:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final K:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final ZERO:Lorg/apache/commons/math3/complex/Quaternion;

.field private static final serialVersionUID:J = 0x132946cL


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 38
    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v9, Lorg/apache/commons/math3/complex/Quaternion;->IDENTITY:Lorg/apache/commons/math3/complex/Quaternion;

    .line 40
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->ZERO:Lorg/apache/commons/math3/complex/Quaternion;

    .line 42
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->I:Lorg/apache/commons/math3/complex/Quaternion;

    .line 44
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->J:Lorg/apache/commons/math3/complex/Quaternion;

    .line 46
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->K:Lorg/apache/commons/math3/complex/Quaternion;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    .line 73
    iput-wide p3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    .line 74
    iput-wide p5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    .line 75
    iput-wide p7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-void
.end method

.method public constructor <init>(D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 92
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    const/4 p1, 0x0

    .line 93
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    const/4 p1, 0x1

    .line 94
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    const/4 p1, 0x2

    .line 95
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-void

    .line 90
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p3

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method public constructor <init>([D)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 105
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(D[D)V

    return-void
.end method

.method public static add(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .line 165
    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    add-double v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    add-double/2addr v7, p0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public static dotProduct(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)D
    .locals 6

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static multiply(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 29

    .line 126
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    .line 128
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v4

    .line 129
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v6

    .line 132
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v8

    .line 133
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v10

    .line 134
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v12

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v14

    mul-double v16, v0, v8

    mul-double v18, v2, v10

    sub-double v16, v16, v18

    mul-double v18, v4, v12

    sub-double v16, v16, v18

    mul-double v18, v6, v14

    sub-double v21, v16, v18

    mul-double v16, v0, v10

    mul-double v18, v2, v8

    add-double v16, v16, v18

    mul-double v18, v4, v14

    add-double v16, v16, v18

    mul-double v18, v6, v12

    sub-double v23, v16, v18

    mul-double v16, v0, v12

    mul-double v18, v2, v14

    sub-double v16, v16, v18

    mul-double v18, v4, v8

    add-double v16, v16, v18

    mul-double v18, v6, v10

    add-double v25, v16, v18

    mul-double/2addr v0, v14

    mul-double/2addr v2, v12

    add-double/2addr v0, v2

    mul-double/2addr v4, v10

    sub-double/2addr v0, v4

    mul-double/2addr v6, v8

    add-double v27, v0, v6

    .line 143
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v28}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v0
.end method

.method public static subtract(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .line 190
    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    sub-double v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    sub-double/2addr v7, p0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->add(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public dotProduct(Lorg/apache/commons/math3/complex/Quaternion;)D
    .locals 2

    .line 228
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->dotProduct(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 271
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/complex/Quaternion;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 272
    check-cast p1, Lorg/apache/commons/math3/complex/Quaternion;

    .line 273
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public equals(Lorg/apache/commons/math3/complex/Quaternion;D)Z
    .locals 7

    .line 307
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getConjugate()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .line 114
    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    neg-double v3, v3

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    neg-double v5, v5

    iget-wide v7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    neg-double v7, v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public getInverse()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 12

    .line 363
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    .line 364
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 368
    new-instance v2, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    div-double v4, v3, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    neg-double v6, v6

    div-double/2addr v6, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    neg-double v8, v8

    div-double/2addr v8, v0

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    neg-double v10, v10

    div-double/2addr v10, v0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v2

    .line 365
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public getNorm()D
    .locals 4

    .line 237
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPositivePolarForm()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 11

    .line 342
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->normalize()Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v0

    .line 346
    new-instance v10, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v1

    neg-double v2, v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v0

    neg-double v8, v0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v10

    .line 351
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->normalize()Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getQ0()D
    .locals 2

    .line 380
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    .line 390
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    .line 400
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    .line 410
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-wide v0
.end method

.method public getScalarPart()D
    .locals 2

    .line 420
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVectorPart()[D
    .locals 8

    .line 432
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v4

    const/4 v6, 0x3

    new-array v6, v6, [D

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    return-object v6
.end method

.method public hashCode()I
    .locals 11

    .line 289
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    const/4 v8, 0x4

    new-array v9, v8, [D

    const/4 v10, 0x0

    aput-wide v0, v9, v10

    const/4 v0, 0x1

    aput-wide v2, v9, v0

    const/4 v0, 0x2

    aput-wide v4, v9, v0

    const/4 v0, 0x3

    aput-wide v6, v9, v0

    const/16 v0, 0x11

    :goto_0
    if-ge v10, v8, :cond_0

    aget-wide v1, v9, v10

    .line 290
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isPureQuaternion(D)Z
    .locals 2

    .line 333
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUnitQuaternion(D)Z
    .locals 6

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getNorm()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p1

    return p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .line 442
    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double v1, p1, v0

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double/2addr v5, p1

    iget-wide v7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double/2addr v7, p1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public multiply(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 153
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->multiply(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public normalize()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 12

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getNorm()D

    move-result-wide v0

    .line 253
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 257
    new-instance v2, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    div-double v4, v3, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    div-double/2addr v6, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    div-double/2addr v8, v0

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    div-double/2addr v10, v0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v2

    .line 254
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public subtract(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 203
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->subtract(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
