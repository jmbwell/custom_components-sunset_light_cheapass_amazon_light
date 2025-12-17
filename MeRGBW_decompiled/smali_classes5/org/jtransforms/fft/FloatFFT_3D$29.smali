.class Lorg/jtransforms/fft/FloatFFT_3D$29;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealForwardFull([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$temp2:[[[F

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I

.field final synthetic val$twon3:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;III[[[F[FII)V
    .locals 0

    .line 2362
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$twoSliceStride:I

    iput-object p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$temp2:[[[F

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$a:[F

    iput p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$twoRowStride:I

    iput p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$twon3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2365
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    .line 2366
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$twoSliceStride:I

    mul-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    .line 2367
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2368
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$temp2:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$a:[F

    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$twoRowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v1

    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$29;->val$twon3:I

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
