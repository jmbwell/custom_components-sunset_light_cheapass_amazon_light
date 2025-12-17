.class public Lorg/apache/commons/math3/dfp/DfpMath;
.super Ljava/lang/Object;
.source "DfpMath.java"


# static fields
.field private static final POW_TRAP:Ljava/lang/String; = "pow"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 952
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    .line 956
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 958
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 964
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public static asin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 941
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public static atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11

    .line 876
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 877
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 878
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getSqr2Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 879
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    const/4 v4, 0x0

    .line 884
    aget-object v5, v2, v4

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v7, v2, v6

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 886
    new-instance v7, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v7, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 887
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v4

    .line 892
    :goto_0
    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 894
    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v4

    .line 897
    :goto_1
    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    const/4 v9, 0x2

    if-eqz v5, :cond_2

    .line 898
    new-array v5, v9, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 901
    aget-object v10, v2, v4

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    aput-object v10, v5, v4

    .line 902
    aget-object v2, v2, v6

    aput-object v2, v5, v6

    .line 904
    invoke-static {v7}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 906
    invoke-static {v2, v5}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 907
    aget-object v10, v7, v4

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v7, v4

    .line 909
    aget-object v1, v2, v4

    aget-object v10, v5, v4

    invoke-virtual {v1, v10}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v2, v4

    .line 910
    aget-object v1, v2, v6

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v2, v6

    .line 912
    invoke-static {v2, v7}, Lorg/apache/commons/math3/dfp/DfpMath;->splitDiv([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 913
    aget-object v2, v1, v4

    aget-object v1, v1, v6

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    move v1, v6

    goto :goto_2

    :cond_2
    move v1, v4

    .line 918
    :goto_2
    invoke-static {v7}, Lorg/apache/commons/math3/dfp/DfpMath;->atanInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 921
    aget-object v1, v3, v4

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aget-object v2, v3, v6

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    :cond_3
    if-eqz v8, :cond_4

    .line 925
    aget-object v1, v3, v4

    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aget-object v2, v3, v6

    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    :cond_4
    if-eqz v0, :cond_5

    .line 929
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 932
    :cond_5
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method protected static atanInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    .line 843
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 844
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 845
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    const/4 v3, 0x3

    :goto_0
    const/16 v4, 0x5a

    if-ge v3, v4, :cond_1

    .line 848
    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 849
    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 850
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 851
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 852
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 855
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8

    .line 784
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 785
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    const/4 v2, 0x2

    .line 789
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 793
    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 794
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 801
    :cond_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 802
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    const/4 v7, 0x4

    .line 807
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 808
    new-array v0, v2, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 809
    aput-object v3, v0, v6

    .line 810
    aput-object v1, v0, v5

    .line 812
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    .line 814
    :cond_2
    new-array v0, v2, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 815
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 816
    aget-object v7, v1, v6

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aput-object v3, v0, v6

    .line 817
    aget-object v1, v1, v5

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v5

    .line 818
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :goto_1
    if-eqz v4, :cond_3

    .line 822
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 825
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method protected static cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6

    const/4 v0, 0x0

    .line 700
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 705
    aget-object v0, p0, v0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 706
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 709
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    const/4 v2, 0x2

    move-object v3, v1

    move v4, v2

    move-object v2, v3

    :goto_0
    const/16 v5, 0x5a

    if-ge v4, v5, :cond_1

    .line 712
    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v5, v4

    .line 715
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 717
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 718
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 721
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public static exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 265
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 266
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v0

    const v2, 0x7ffffffe

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_0
    const v2, -0x7ffffffe

    if-ge v0, v2, :cond_1

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getESplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 280
    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->expInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 282
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method protected static expInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6

    .line 291
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 293
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 294
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0x5a

    if-ge v4, v5, :cond_1

    .line 297
    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 298
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    .line 323
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 329
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v0

    if-ne v0, v1, :cond_1

    return-object p0

    .line 333
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 334
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log10K()I

    move-result v2

    const/16 v3, 0x2710

    .line 336
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->floor()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x2

    if-le v3, v6, :cond_2

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 345
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 346
    new-array v3, v6, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 347
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-static {v7, v5}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v4

    .line 348
    aget-object v8, v0, v4

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v0, v4

    .line 349
    aget-object v7, v0, v1

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v0, v1

    .line 351
    const-string v7, "1.33333"

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v4

    .line 352
    :goto_1
    aget-object v7, v0, v4

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 353
    aget-object v7, v0, v4

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v0, v4

    .line 354
    aget-object v7, v0, v1

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 359
    :cond_3
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->logInternal([Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v5, v2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aput-object v5, v0, v4

    .line 362
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aput-object v5, v0, v1

    .line 363
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 365
    aget-object v6, v3, v4

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    aput-object v6, v3, v4

    .line 366
    aget-object v6, v3, v1

    aget-object v5, v5, v1

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aput-object v5, v3, v1

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v0, v4

    .line 369
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v0, v1

    .line 370
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getLn5Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 372
    aget-object v2, v3, v4

    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v3, v4

    .line 373
    aget-object v2, v3, v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    aput-object v0, v3, v1

    .line 375
    aget-object v1, v3, v4

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 325
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    const/4 v0, 0x3

    .line 326
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v2, "ln"

    invoke-virtual {p0, v1, v2, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method protected static logInternal([Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8

    const/4 v0, 0x0

    .line 439
    aget-object v1, p0, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v4, p0, v3

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 440
    aget-object v2, p0, v0

    const-string v4, "-0.25"

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aget-object v4, p0, v0

    const-string v5, "0.25"

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 442
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 443
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 444
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    move v6, v0

    :goto_0
    const/16 v7, 0x2710

    if-ge v6, v7, :cond_1

    .line 447
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 448
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    add-int/lit8 v3, v3, 0x2

    .line 450
    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 451
    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 452
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v5, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 458
    :cond_1
    :goto_1
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 460
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public static pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7

    .line 214
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-gez p1, :cond_1

    neg-int p1, p1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 228
    :cond_2
    :goto_0
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    move v4, v1

    .line 234
    :goto_1
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v5, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 236
    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    mul-int/lit8 v6, v4, 0x2

    if-gt p1, v6, :cond_4

    sub-int/2addr p1, v4

    .line 244
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    if-ge p1, v1, :cond_2

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 252
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_4
    move v4, v6

    goto :goto_1
.end method

.method public static pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    .line 507
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "pow"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 509
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 510
    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 511
    invoke-virtual {p0, v4, v3, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 514
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 516
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 521
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 522
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 525
    :cond_1
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 526
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 528
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 529
    invoke-virtual {p0, v4, v3, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    :cond_2
    return-object p0

    .line 534
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 541
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_a

    .line 542
    invoke-static {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 544
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 545
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 547
    :cond_5
    invoke-virtual {p0, v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 551
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 553
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 554
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 556
    :cond_7
    invoke-virtual {p0, v7, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 560
    :cond_8
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 561
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 563
    :cond_9
    invoke-virtual {p0, v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 569
    :cond_a
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    move v6, v4

    goto :goto_0

    :cond_b
    const/4 v6, 0x0

    .line 575
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v8

    if-ne v8, v4, :cond_d

    .line 576
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object p1

    .line 579
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 583
    :cond_d
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v8

    if-ne v8, v4, :cond_f

    .line 584
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 585
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 587
    :cond_e
    invoke-static {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 591
    :cond_f
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-ne v1, v4, :cond_10

    .line 592
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 593
    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, v4, v3, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 596
    :cond_10
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-ne v1, v4, :cond_16

    if-eqz v6, :cond_14

    .line 600
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 602
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 603
    invoke-virtual {p0, v7, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 605
    :cond_11
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 609
    :cond_12
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 610
    invoke-virtual {p0, v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 612
    :cond_13
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 617
    :cond_14
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-object p0

    .line 620
    :cond_15
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_16
    if-eqz v6, :cond_17

    .line 625
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 626
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 627
    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, v4, v3, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_17
    const v1, 0x5f5e100

    .line 633
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v1, -0x5f5e100

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 634
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 635
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v2

    .line 637
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 639
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 640
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 641
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 643
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 644
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 645
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v3

    invoke-static {v5, v3}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 646
    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_1

    .line 648
    :cond_18
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_1

    .line 652
    :cond_19
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    :goto_1
    if-eqz v6, :cond_1a

    .line 655
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 657
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 660
    :cond_1a
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 536
    :cond_1b
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 537
    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, v4, v3, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public static sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8

    .line 733
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 734
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    const/4 v2, 0x2

    .line 738
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 742
    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 743
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    .line 751
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 752
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    :cond_1
    const/4 v6, 0x4

    .line 756
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    new-array v0, v2, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 762
    invoke-static {v3}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    .line 764
    :cond_2
    new-array v0, v2, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 765
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 766
    aget-object v7, v6, v5

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aput-object v3, v0, v5

    .line 767
    aget-object v3, v6, v4

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v0, v4

    .line 768
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_3

    .line 772
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 775
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method protected static sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6

    const/4 v0, 0x0

    .line 671
    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 673
    invoke-virtual {v1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 675
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 676
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    const/4 v3, 0x3

    move v4, v3

    move-object v3, v1

    :goto_0
    const/16 v5, 0x5a

    if-ge v4, v5, :cond_1

    .line 679
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 680
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v5, v4

    .line 682
    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 683
    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 684
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method protected static split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    const/4 v0, 0x2

    .line 94
    new-array v1, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result v2

    div-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    aput-object p0, v1, v2

    return-object v1
.end method

.method protected static split(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 13

    const/4 v0, 0x2

    .line 45
    new-array v1, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v2, [C

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v8, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v9, 0x30

    const/16 v10, 0x39

    if-ge v6, v2, :cond_4

    .line 54
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aput-char v11, v3, v6

    const/16 v12, 0x31

    if-lt v11, v12, :cond_0

    if-gt v11, v10, :cond_0

    move v8, v5

    :cond_0
    const/16 v12, 0x2e

    if-ne v11, v12, :cond_1

    rsub-int v8, v7, 0x190

    .line 61
    rem-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    move v8, v5

    .line 65
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v11

    div-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0x4

    if-ne v7, v11, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    aget-char v11, v3, v6

    if-lt v11, v9, :cond_3

    if-gt v11, v10, :cond_3

    if-nez v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v6, v5

    .line 75
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    aput-object v0, v1, v5

    :goto_2
    if-ge v5, v2, :cond_6

    .line 78
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v3, v5

    if-lt v0, v9, :cond_5

    if-gt v0, v10, :cond_5

    if-ge v5, v6, :cond_5

    .line 80
    aput-char v9, v3, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 84
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    aput-object p0, v1, v4

    return-object v1
.end method

.method protected static splitDiv([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x0

    .line 140
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 141
    aget-object v3, p0, v2

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aget-object p0, p0, v1

    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    aput-object p0, v0, v2

    .line 142
    aget-object v3, p1, v1

    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aget-object v1, p1, v1

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    aput-object p0, v0, v2

    return-object v0
.end method

.method protected static splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    const/4 v0, 0x2

    .line 110
    new-array v0, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x0

    .line 112
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 113
    aget-object v2, p0, v1

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v2

    if-eq v2, v3, :cond_1

    aget-object v2, v0, v1

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    aget-object v2, p0, v1

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aget-object v4, p0, v3

    aget-object v1, p1, v1

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aget-object p0, p0, v3

    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    aput-object p0, v0, v3

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected static splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7

    const/4 v0, 0x2

    .line 155
    new-array v1, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 157
    new-array v0, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v2, 0x0

    .line 158
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aput-object v3, v0, v2

    .line 159
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    if-nez p1, :cond_0

    .line 163
    aget-object p0, v0, v2

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    neg-int p1, p1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    .line 174
    :cond_2
    :goto_0
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    aget-object v6, p0, v2

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    aput-object v5, v1, v2

    .line 175
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    aget-object v6, p0, v4

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    aput-object v5, v1, v4

    move v5, v4

    :goto_1
    mul-int/lit8 v6, v5, 0x2

    if-le v6, p1, :cond_4

    sub-int/2addr p1, v5

    .line 191
    invoke-static {v0, v1}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    if-ge p1, v4, :cond_2

    .line 195
    aget-object p1, v0, v2

    aget-object v1, v0, v4

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    aput-object p1, v0, v2

    if-eqz v3, :cond_3

    .line 198
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    aget-object p1, v0, v2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    aput-object p0, v0, v2

    .line 201
    :cond_3
    aget-object p0, v0, v2

    return-object p0

    .line 185
    :cond_4
    invoke-static {v1, v1}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    move v5, v6

    goto :goto_1
.end method

.method public static tan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 834
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method
