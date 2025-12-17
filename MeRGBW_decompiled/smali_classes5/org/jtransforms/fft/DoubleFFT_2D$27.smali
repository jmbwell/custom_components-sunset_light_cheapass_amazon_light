.class Lorg/jtransforms/fft/DoubleFFT_2D$27;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealInverseFull([[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$n2d2:I

.field final synthetic val$temp:[[D


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[[D[[D)V
    .locals 0

    .line 2014
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$lastRow:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$n2d2:I

    iput-object p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$a:[[D

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$temp:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2017
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$firstRow:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$lastRow:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    .line 2019
    :goto_1
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$n2d2:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 2021
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$a:[[D

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$27;->val$temp:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v1

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v1, 0x1

    .line 2022
    aget-wide v6, v5, v6

    aput-wide v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
