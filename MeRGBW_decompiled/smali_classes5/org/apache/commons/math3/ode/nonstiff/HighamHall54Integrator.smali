.class public Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "HighamHall54Integrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Higham-Hall 5(4)"

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D

.field private static final STATIC_E:[D


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x6

    .line 42
    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_C:[D

    const/4 v1, 0x2

    .line 47
    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x3

    new-array v4, v3, [D

    fill-array-data v4, :array_2

    const/4 v5, 0x4

    new-array v6, v5, [D

    fill-array-data v6, :array_3

    const/4 v7, 0x5

    new-array v8, v7, [D

    fill-array-data v8, :array_4

    new-array v9, v0, [D

    fill-array-data v9, :array_5

    new-array v0, v0, [[D

    const/4 v10, 0x1

    new-array v11, v10, [D

    const/4 v12, 0x0

    const-wide v13, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    aput-wide v13, v11, v12

    aput-object v11, v0, v12

    aput-object v2, v0, v10

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    aput-object v9, v0, v7

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_A:[[D

    const/4 v0, 0x7

    .line 57
    new-array v1, v0, [D

    fill-array-data v1, :array_6

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_B:[D

    .line 62
    new-array v0, v0, [D

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_E:[D

    return-void

    :array_0
    .array-data 8
        0x3fcc71c71c71c71cL    # 0.2222222222222222
        0x3fd5555555555555L    # 0.3333333333333333
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x3fd0000000000000L    # 0.25
    .end array-data

    :array_2
    .array-data 8
        0x3fc0000000000000L    # 0.125
        0x0
        0x3fd8000000000000L    # 0.375
    .end array-data

    :array_3
    .array-data 8
        0x3fc74bc6a7ef9db2L    # 0.182
        -0x402eb851eb851eb8L    # -0.27
        0x3fe3f7ced916872bL    # 0.624
        0x3fb0624dd2f1a9fcL    # 0.064
    .end array-data

    :array_4
    .array-data 8
        -0x401e666666666666L    # -0.55
        0x3ff599999999999aL    # 1.35
        0x4003333333333333L    # 2.4
        -0x3fe3333333333333L    # -7.2
        0x4014000000000000L    # 5.0
    .end array-data

    :array_5
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x0
        0x3feb000000000000L    # 0.84375
        -0x400aaaaaaaaaaaabL    # -1.3333333333333333
        0x3ff4d55555555555L    # 1.3020833333333333
        0x3fbaaaaaaaaaaaabL    # 0.10416666666666667
    .end array-data

    :array_6
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x0
        0x3feb000000000000L    # 0.84375
        -0x400aaaaaaaaaaaabL    # -1.3333333333333333
        0x3ff4d55555555555L    # 1.3020833333333333
        0x3fbaaaaaaaaaaaabL    # 0.10416666666666667
        0x0
    .end array-data

    :array_7
    .array-data 8
        -0x4056666666666666L    # -0.05
        0x0
        0x3fe0333333333333L    # 0.50625
        -0x400ccccccccccccdL    # -1.2
        0x3fe9000000000000L    # 0.78125
        0x3fb0000000000000L    # 0.0625
        -0x4046666666666666L    # -0.1
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    .line 80
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_C:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_A:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_B:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>()V

    const-string v1, "Higham-Hall 5(4)"

    const/4 v2, 0x0

    move-object v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 13

    .line 98
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_C:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_A:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_B:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>()V

    const-string v1, "Higham-Hall 5(4)"

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    return-void
.end method


# virtual methods
.method protected estimateError([[D[D[DD)D
    .locals 14

    move-object v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    .line 116
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->mainSetDimension:I

    if-ge v4, v5, :cond_2

    .line 117
    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_E:[D

    aget-wide v6, v5, v3

    aget-object v5, p1, v3

    aget-wide v8, v5, v4

    mul-double/2addr v6, v8

    const/4 v5, 0x1

    .line 118
    :goto_1
    sget-object v8, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_E:[D

    array-length v9, v8

    if-ge v5, v9, :cond_0

    .line 119
    aget-wide v9, v8, v5

    aget-object v8, p1, v5

    aget-wide v11, v8, v4

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 122
    :cond_0
    aget-wide v8, p2, v4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    aget-wide v10, p3, v4

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    .line 123
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_1

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->scalAbsoluteTolerance:D

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->scalRelativeTolerance:D

    goto :goto_2

    :cond_1
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->vecAbsoluteTolerance:[D

    aget-wide v10, v5, v4

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->vecRelativeTolerance:[D

    aget-wide v12, v5, v4

    :goto_2
    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    mul-double v5, p4, v6

    div-double/2addr v5, v10

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iget v3, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->mainSetDimension:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    return-wide v1
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
