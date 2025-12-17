.class Lorg/jtransforms/fft/FloatFFT_2D$46;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->fillSymmetric([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[F

.field final synthetic val$l1offa:I

.field final synthetic val$l1stopa:I

.field final synthetic val$l2offa:I

.field final synthetic val$l2stopa:I

.field final synthetic val$newn2:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;III[FII)V
    .locals 0

    .line 3892
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l1offa:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l1stopa:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$newn2:I

    iput-object p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$a:[F

    iput p6, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l2offa:I

    iput p7, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l2stopa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3897
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l1offa:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l1stopa:I

    if-ge v0, v1, :cond_0

    .line 3898
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$newn2:I

    mul-int/2addr v1, v0

    .line 3899
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$newn2:I

    mul-int/2addr v2, v3

    .line 3900
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3901
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$a:[F

    add-int/lit8 v4, v2, 0x1

    aget v4, v3, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3902
    aget v2, v3, v2

    neg-float v2, v2

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3904
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l1offa:I

    :goto_1
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l1stopa:I

    if-ge v0, v1, :cond_2

    .line 3905
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$newn2:I

    mul-int/2addr v1, v0

    .line 3906
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$newn2:I

    mul-int/2addr v2, v3

    .line 3907
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    :goto_2
    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$newn2:I

    if-ge v3, v4, :cond_1

    sub-int v4, v2, v3

    add-int v5, v1, v3

    .line 3910
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$a:[F

    aget v7, v6, v4

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 3911
    aget v4, v6, v4

    neg-float v4, v4

    aput v4, v6, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3915
    :cond_2
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l2offa:I

    :goto_3
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$l2stopa:I

    if-ge v0, v1, :cond_4

    .line 3916
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    rem-int/2addr v1, v2

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$newn2:I

    mul-int/2addr v1, v2

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    .line 3918
    :goto_4
    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$newn2:I

    if-ge v3, v4, :cond_3

    sub-int v5, v4, v3

    .line 3919
    rem-int/2addr v5, v4

    add-int/2addr v5, v1

    add-int v4, v2, v3

    .line 3921
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$46;->val$a:[F

    aget v7, v6, v4

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 3922
    aget v4, v6, v4

    neg-float v4, v4

    aput v4, v6, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
