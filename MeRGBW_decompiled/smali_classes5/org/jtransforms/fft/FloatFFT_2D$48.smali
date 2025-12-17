.class Lorg/jtransforms/fft/FloatFFT_2D$48;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->fillSymmetric([[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$l1offa:I

.field final synthetic val$l1stopa:I

.field final synthetic val$l2offa:I

.field final synthetic val$l2stopa:I

.field final synthetic val$newn2:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[FIII)V
    .locals 0

    .line 4114
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l1offa:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l1stopa:I

    iput-object p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$a:[[F

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$newn2:I

    iput p6, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l2offa:I

    iput p7, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l2stopa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 4118
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l1offa:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l1stopa:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 4119
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 4120
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$a:[[F

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$a:[[F

    aget-object v7, v6, v1

    aget v7, v7, v3

    aput v7, v4, v5

    .line 4121
    aget-object v4, v6, v0

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$a:[[F

    aget-object v1, v3, v1

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4123
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l1offa:I

    :goto_1
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l1stopa:I

    if-ge v0, v1, :cond_2

    .line 4124
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 4125
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    :goto_2
    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$newn2:I

    if-ge v4, v5, :cond_1

    sub-int/2addr v5, v4

    .line 4127
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$a:[[F

    aget-object v7, v6, v0

    aget-object v6, v6, v1

    aget v8, v6, v5

    aput v8, v7, v4

    add-int/lit8 v8, v4, 0x1

    add-int/2addr v5, v3

    .line 4128
    aget v5, v6, v5

    neg-float v5, v5

    aput v5, v7, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4132
    :cond_2
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l2offa:I

    :goto_3
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$l2stopa:I

    if-ge v0, v1, :cond_4

    .line 4133
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    rem-int/2addr v1, v4

    move v4, v2

    .line 4134
    :goto_4
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$newn2:I

    if-ge v4, v5, :cond_3

    sub-int v6, v5, v4

    .line 4135
    rem-int/2addr v6, v5

    .line 4136
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$48;->val$a:[[F

    aget-object v7, v5, v1

    aget-object v5, v5, v0

    aget v8, v5, v4

    aput v8, v7, v6

    add-int/2addr v6, v3

    add-int/lit8 v8, v4, 0x1

    .line 4137
    aget v5, v5, v8

    neg-float v5, v5

    aput v5, v7, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
