.class Lorg/jtransforms/dct/FloatDCT_3D$21;
.super Ljava/lang/Object;
.source "FloatDCT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_3D;->ddxt3da_subth(I[[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/FloatDCT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_3D;IIII[[[FZ)V
    .locals 0

    .line 1842
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    iput p2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$n0:I

    iput p5, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    iput-boolean p7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1847
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$ntf:I

    new-array v0, v0, [F

    .line 1848
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_6

    .line 1849
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v5

    .line 1850
    :goto_1
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1851
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$300(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v7, v7, v1

    aget-object v7, v7, v2

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1853
    :cond_0
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-le v2, v3, :cond_3

    move v2, v5

    .line 1854
    :goto_2
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v2, v6, :cond_5

    move v6, v5

    .line 1855
    :goto_3
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1856
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v7, v6

    .line 1857
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v8, v8, v1

    aget-object v8, v8, v6

    aget v9, v8, v2

    aput v9, v0, v6

    add-int/lit8 v9, v2, 0x1

    .line 1858
    aget v8, v8, v9

    aput v8, v0, v7

    .line 1859
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v6

    add-int/lit8 v10, v2, 0x2

    aget v9, v9, v10

    aput v9, v0, v8

    .line 1860
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v8, v8, v1

    aget-object v8, v8, v6

    add-int/lit8 v9, v2, 0x3

    aget v8, v8, v9

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1862
    :cond_1
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v0, v5, v7}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1863
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1864
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/2addr v7, v3

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1865
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v6, v5

    .line 1866
    :goto_4
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1867
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v7, v6

    .line 1868
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v8, v8, v1

    aget-object v8, v8, v6

    aget v9, v0, v6

    aput v9, v8, v2

    add-int/lit8 v9, v2, 0x1

    .line 1869
    aget v10, v0, v7

    aput v10, v8, v9

    add-int/lit8 v9, v2, 0x2

    .line 1870
    iget-object v10, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v10

    add-int/2addr v10, v7

    aget v10, v0, v10

    aput v10, v8, v9

    .line 1871
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v8, v8, v1

    aget-object v8, v8, v6

    add-int/lit8 v9, v2, 0x3

    iget-object v10, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v7, v10

    aget v7, v0, v7

    aput v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_2

    .line 1874
    :cond_3
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v5

    .line 1875
    :goto_5
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 1876
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    aget v6, v6, v5

    aput v6, v0, v2

    .line 1877
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v7, v7, v1

    aget-object v7, v7, v2

    aget v7, v7, v4

    aput v7, v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1879
    :cond_4
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v2

    iget-boolean v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1880
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v2

    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    iget-boolean v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v2, v0, v6, v7}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v2, v5

    .line 1881
    :goto_6
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 1882
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    aget v7, v0, v2

    aput v7, v6, v5

    .line 1883
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v7, v2

    aget v7, v0, v7

    aput v7, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1849
    :cond_5
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 1888
    :cond_6
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$n0:I

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v5

    .line 1889
    :goto_8
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 1890
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$300(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v7, v7, v1

    aget-object v7, v7, v2

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1892
    :cond_7
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-le v2, v3, :cond_a

    move v2, v5

    .line 1893
    :goto_9
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v2, v6, :cond_c

    move v6, v5

    .line 1894
    :goto_a
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 1895
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v7, v6

    .line 1896
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v8, v8, v1

    aget-object v8, v8, v6

    aget v9, v8, v2

    aput v9, v0, v6

    add-int/lit8 v9, v2, 0x1

    .line 1897
    aget v8, v8, v9

    aput v8, v0, v7

    .line 1898
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v6

    add-int/lit8 v10, v2, 0x2

    aget v9, v9, v10

    aput v9, v0, v8

    .line 1899
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v8, v8, v1

    aget-object v8, v8, v6

    add-int/lit8 v9, v2, 0x3

    aget v8, v8, v9

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1901
    :cond_8
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v0, v5, v7}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1902
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1903
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/2addr v7, v3

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1904
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v6, v5

    .line 1905
    :goto_b
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1906
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v7, v6

    .line 1907
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v8, v8, v1

    aget-object v8, v8, v6

    aget v9, v0, v6

    aput v9, v8, v2

    add-int/lit8 v9, v2, 0x1

    .line 1908
    aget v10, v0, v7

    aput v10, v8, v9

    add-int/lit8 v9, v2, 0x2

    .line 1909
    iget-object v10, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v10

    add-int/2addr v10, v7

    aget v10, v0, v10

    aput v10, v8, v9

    .line 1910
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v8, v8, v1

    aget-object v8, v8, v6

    add-int/lit8 v9, v2, 0x3

    iget-object v10, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v7, v10

    aget v7, v0, v7

    aput v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_9

    .line 1913
    :cond_a
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-ne v2, v3, :cond_c

    move v2, v5

    .line 1914
    :goto_c
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v2, v6, :cond_b

    .line 1915
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    aget v6, v6, v5

    aput v6, v0, v2

    .line 1916
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v7, v7, v1

    aget-object v7, v7, v2

    aget v7, v7, v4

    aput v7, v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1918
    :cond_b
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v2

    iget-boolean v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1919
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v2

    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    iget-boolean v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$scale:Z

    invoke-virtual {v2, v0, v6, v7}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v2, v5

    .line 1920
    :goto_d
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 1921
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$a:[[[F

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    aget v7, v0, v2

    aput v7, v6, v5

    .line 1922
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v7, v2

    aget v7, v0, v7

    aput v7, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1888
    :cond_c
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$21;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_7

    :cond_d
    return-void
.end method
