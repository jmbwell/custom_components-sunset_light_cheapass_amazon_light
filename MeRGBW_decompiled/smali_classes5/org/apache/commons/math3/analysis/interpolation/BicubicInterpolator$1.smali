.class Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;
.super Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.source "BicubicInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;

.field final synthetic val$xval:[D

.field final synthetic val$yval:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;[D[D[[D[[D[[D[[D[D[D)V
    .locals 8

    move-object v7, p0

    move-object v0, p1

    .line 98
    iput-object v0, v7, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;

    move-object/from16 v0, p8

    iput-object v0, v7, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    move-object/from16 v0, p9

    iput-object v0, v7, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;-><init>([D[D[[D[[D[[D[[D)V

    return-void
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 4

    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v0, v2

    cmpl-double p1, p1, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    aget-wide v2, p1, v1

    cmpg-double p2, p3, v2

    if-ltz p2, :cond_1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x2

    aget-wide v2, p1, p2

    cmpl-double p1, p3, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
