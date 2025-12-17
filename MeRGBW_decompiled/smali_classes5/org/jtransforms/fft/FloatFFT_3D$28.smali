.class Lorg/jtransforms/fft/FloatFFT_3D$28;
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


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;II[F[[[F)V
    .locals 0

    .line 2337
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$lastSlice:I

    iput-object p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$a:[F

    iput-object p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$temp2:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2340
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    .line 2341
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    .line 2342
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2343
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$a:[F

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$temp2:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2344
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v4

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$28;->val$temp2:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
