.class Lorg/jtransforms/fft/DoubleFFT_2D$46;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->fillSymmetric([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[D

.field final synthetic val$l1offa:I

.field final synthetic val$l1stopa:I

.field final synthetic val$l2offa:I

.field final synthetic val$l2stopa:I

.field final synthetic val$newn2:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[DII)V
    .locals 0

    .line 3913
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l1offa:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l1stopa:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$newn2:I

    iput-object p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$a:[D

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l2offa:I

    iput p7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l2stopa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 3918
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l1offa:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l1stopa:I

    if-ge v0, v1, :cond_0

    .line 3919
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$newn2:I

    mul-int/2addr v1, v0

    .line 3920
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$newn2:I

    mul-int/2addr v2, v3

    .line 3921
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3922
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$a:[D

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3923
    aget-wide v4, v3, v2

    neg-double v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3925
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l1offa:I

    :goto_1
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l1stopa:I

    if-ge v0, v1, :cond_2

    .line 3926
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$newn2:I

    mul-int/2addr v1, v0

    .line 3927
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$newn2:I

    mul-int/2addr v2, v3

    .line 3928
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    :goto_2
    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$newn2:I

    if-ge v3, v4, :cond_1

    sub-int v4, v2, v3

    add-int v5, v1, v3

    .line 3931
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$a:[D

    aget-wide v7, v6, v4

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 3932
    aget-wide v7, v6, v4

    neg-double v7, v7

    aput-wide v7, v6, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3936
    :cond_2
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l2offa:I

    :goto_3
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$l2stopa:I

    if-ge v0, v1, :cond_4

    .line 3937
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    rem-int/2addr v1, v2

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$newn2:I

    mul-int/2addr v1, v2

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    .line 3939
    :goto_4
    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$newn2:I

    if-ge v3, v4, :cond_3

    sub-int v5, v4, v3

    .line 3940
    rem-int/2addr v5, v4

    add-int/2addr v5, v1

    add-int v4, v2, v3

    .line 3942
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$46;->val$a:[D

    aget-wide v7, v6, v4

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 3943
    aget-wide v7, v6, v4

    neg-double v7, v7

    aput-wide v7, v6, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
