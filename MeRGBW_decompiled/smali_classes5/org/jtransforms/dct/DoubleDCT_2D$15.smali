.class Lorg/jtransforms/dct/DoubleDCT_2D$15;
.super Ljava/lang/Object;
.source "DoubleDCT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/DoubleDCT_2D;->ddxt2d_subth(I[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/DoubleDCT_2D;IIII[[DZ)V
    .locals 0

    .line 845
    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    iput p2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$n0:I

    iput p5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    iput-boolean p7, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 849
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$ntf:I

    new-array v0, v0, [D

    .line 850
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$000(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v1, v4, :cond_5

    .line 851
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$isgn:I

    if-ne v1, v2, :cond_2

    .line 852
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$n0:I

    mul-int/lit8 v1, v1, 0x4

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$000(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_8

    move v2, v3

    .line 853
    :goto_1
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 854
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    add-int/2addr v5, v2

    .line 855
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    aput-wide v7, v0, v2

    add-int/lit8 v7, v1, 0x1

    .line 856
    aget-wide v7, v6, v7

    aput-wide v7, v0, v5

    .line 857
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v6}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    .line 858
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v6}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v2

    add-int/lit8 v7, v1, 0x3

    aget-wide v7, v6, v7

    aput-wide v7, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 860
    :cond_0
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-boolean v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v2, v0, v3, v5}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 861
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    iget-boolean v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 862
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    mul-int/2addr v5, v4

    iget-boolean v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 863
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    iget-boolean v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v2, v3

    .line 864
    :goto_2
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 865
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    add-int/2addr v5, v2

    .line 866
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v2

    aget-wide v7, v0, v2

    aput-wide v7, v6, v1

    add-int/lit8 v7, v1, 0x1

    .line 867
    aget-wide v8, v0, v5

    aput-wide v8, v6, v7

    add-int/lit8 v7, v1, 0x2

    .line 868
    iget-object v8, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v8}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v8

    add-int/2addr v8, v5

    aget-wide v8, v0, v8

    aput-wide v8, v6, v7

    .line 869
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v8}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v8

    mul-int/2addr v8, v4

    add-int/2addr v5, v8

    aget-wide v8, v0, v5

    aput-wide v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 852
    :cond_1
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 873
    :cond_2
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$n0:I

    mul-int/lit8 v1, v1, 0x4

    :goto_3
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$000(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_8

    move v2, v3

    .line 874
    :goto_4
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 875
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    add-int/2addr v5, v2

    .line 876
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v1

    aput-wide v7, v0, v2

    add-int/lit8 v7, v1, 0x1

    .line 877
    aget-wide v7, v6, v7

    aput-wide v7, v0, v5

    .line 878
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v6}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    .line 879
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v6}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v2

    add-int/lit8 v7, v1, 0x3

    aget-wide v7, v6, v7

    aput-wide v7, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 881
    :cond_3
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-boolean v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v2, v0, v3, v5}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 882
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    iget-boolean v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 883
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    mul-int/2addr v5, v4

    iget-boolean v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 884
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    iget-boolean v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v2, v3

    .line 885
    :goto_5
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 886
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    add-int/2addr v5, v2

    .line 887
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v2

    aget-wide v7, v0, v2

    aput-wide v7, v6, v1

    add-int/lit8 v7, v1, 0x1

    .line 888
    aget-wide v8, v0, v5

    aput-wide v8, v6, v7

    add-int/lit8 v7, v1, 0x2

    .line 889
    iget-object v8, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v8}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v8

    add-int/2addr v8, v5

    aget-wide v8, v0, v8

    aput-wide v8, v6, v7

    .line 890
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v8}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v8

    mul-int/2addr v8, v4

    add-int/2addr v5, v8

    aget-wide v8, v0, v5

    aput-wide v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 873
    :cond_4
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    goto/16 :goto_3

    .line 894
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$000(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v1

    if-ne v1, v4, :cond_8

    move v1, v3

    .line 895
    :goto_6
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 897
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v5, v5, v1

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$n0:I

    mul-int/2addr v6, v4

    aget-wide v6, v5, v6

    aput-wide v6, v0, v1

    .line 898
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v6, v6, v1

    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$n0:I

    mul-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aget-wide v7, v6, v7

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 900
    :cond_6
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$isgn:I

    if-ne v1, v2, :cond_7

    .line 901
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 902
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v2

    iget-boolean v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v1, v0, v2, v5}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    goto :goto_7

    .line 904
    :cond_7
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 905
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$300(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v2

    iget-boolean v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$scale:Z

    invoke-virtual {v1, v0, v2, v5}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 907
    :goto_7
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 909
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$a:[[D

    aget-object v1, v1, v3

    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->val$n0:I

    mul-int/lit8 v5, v2, 0x2

    aget-wide v6, v0, v3

    aput-wide v6, v1, v5

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    .line 910
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$15;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$200(Lorg/jtransforms/dct/DoubleDCT_2D;)I

    move-result v5

    add-int/2addr v5, v3

    aget-wide v5, v0, v5

    aput-wide v5, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    return-void
.end method
