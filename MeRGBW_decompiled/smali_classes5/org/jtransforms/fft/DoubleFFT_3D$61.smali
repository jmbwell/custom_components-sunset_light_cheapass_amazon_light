.class Lorg/jtransforms/fft/DoubleFFT_3D$61;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([[[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$n2d2:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;III[[[D)V
    .locals 0

    .line 7270
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$n2d2:I

    iput-object p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$a:[[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 7273
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    .line 7274
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    const/4 v2, 0x1

    move v3, v2

    .line 7275
    :goto_1
    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$n2d2:I

    if-ge v3, v4, :cond_0

    .line 7276
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    sub-int/2addr v4, v3

    .line 7277
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$a:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    aget-wide v8, v7, v2

    aput-wide v8, v5, v6

    .line 7278
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$a:[[[D

    aget-object v8, v6, v0

    aget-object v8, v8, v4

    aget-wide v9, v8, v2

    aput-wide v9, v7, v5

    .line 7279
    aget-object v5, v6, v1

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    const/4 v8, 0x0

    aget-wide v9, v7, v8

    neg-double v9, v9

    aput-wide v9, v5, v6

    .line 7280
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$61;->val$a:[[[D

    aget-object v6, v6, v0

    aget-object v4, v6, v4

    aget-wide v8, v4, v8

    aput-wide v8, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
