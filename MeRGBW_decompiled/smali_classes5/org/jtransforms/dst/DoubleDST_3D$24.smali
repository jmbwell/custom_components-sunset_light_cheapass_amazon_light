.class Lorg/jtransforms/dst/DoubleDST_3D$24;
.super Ljava/lang/Object;
.source "DoubleDST_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_subth(I[[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/DoubleDST_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/DoubleDST_3D;IIII[[[DZ)V
    .locals 0

    .line 2197
    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    iput p2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$n0:I

    iput p5, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    iput-boolean p7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 2202
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$ntf:I

    new-array v0, v0, [D

    .line 2203
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_6

    .line 2204
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_3D;->access$400(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-le v1, v3, :cond_3

    .line 2205
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$100(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v5

    .line 2206
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$400(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v4

    if-ge v2, v4, :cond_2

    move v4, v5

    .line 2207
    :goto_2
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 2208
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v6, v4

    .line 2209
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    aget-wide v8, v7, v2

    aput-wide v8, v0, v4

    add-int/lit8 v8, v2, 0x1

    .line 2210
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    .line 2211
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v7

    add-int/2addr v7, v6

    iget-object v8, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v8, v8, v4

    aget-object v8, v8, v1

    add-int/lit8 v9, v2, 0x2

    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    .line 2212
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    add-int/lit8 v8, v2, 0x3

    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2214
    :cond_0
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v4

    iget-boolean v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v4, v0, v5, v6}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 2215
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v4

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    iget-boolean v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v4, v0, v6, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 2216
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v4

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/2addr v6, v3

    iget-boolean v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v4, v0, v6, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 2217
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v4

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    iget-boolean v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v4, v0, v6, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v4, v5

    .line 2218
    :goto_3
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 2219
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v6, v4

    .line 2220
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    aget-wide v8, v0, v4

    aput-wide v8, v7, v2

    add-int/lit8 v8, v2, 0x1

    .line 2221
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v8, v2, 0x2

    .line 2222
    iget-object v9, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v9}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v9

    add-int/2addr v9, v6

    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    .line 2223
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    add-int/lit8 v8, v2, 0x3

    iget-object v9, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v9}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v6, v9

    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    .line 2205
    :cond_2
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 2227
    :cond_3
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_3D;->access$400(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 2228
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$n0:I

    :goto_4
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$100(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v5

    .line 2229
    :goto_5
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2230
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    aget-wide v6, v3, v5

    aput-wide v6, v0, v2

    .line 2231
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v6, v6, v2

    aget-object v6, v6, v1

    aget-wide v7, v6, v4

    aput-wide v7, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2233
    :cond_4
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-boolean v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v2, v0, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 2234
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    iget-boolean v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v2, v0, v3, v6}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v2, v5

    .line 2235
    :goto_6
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2236
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    aget-wide v6, v0, v2

    aput-wide v6, v3, v5

    .line 2237
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v6, v2

    aget-wide v6, v0, v6

    aput-wide v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2228
    :cond_5
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_4

    .line 2241
    :cond_6
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_3D;->access$400(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-le v1, v3, :cond_a

    .line 2242
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$n0:I

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$100(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v5

    .line 2243
    :goto_8
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$400(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v4

    if-ge v2, v4, :cond_9

    move v4, v5

    .line 2244
    :goto_9
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 2245
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v6, v4

    .line 2246
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    aget-wide v8, v7, v2

    aput-wide v8, v0, v4

    add-int/lit8 v8, v2, 0x1

    .line 2247
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    .line 2248
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v7

    add-int/2addr v7, v6

    iget-object v8, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v8, v8, v4

    aget-object v8, v8, v1

    add-int/lit8 v9, v2, 0x2

    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    .line 2249
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    add-int/lit8 v8, v2, 0x3

    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2251
    :cond_7
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v4

    iget-boolean v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v4, v0, v5, v6}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 2252
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v4

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    iget-boolean v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v4, v0, v6, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 2253
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v4

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/2addr v6, v3

    iget-boolean v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v4, v0, v6, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 2254
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v4

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    iget-boolean v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v4, v0, v6, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v4, v5

    .line 2255
    :goto_a
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 2256
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v6, v4

    .line 2257
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    aget-wide v8, v0, v4

    aput-wide v8, v7, v2

    add-int/lit8 v8, v2, 0x1

    .line 2258
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v8, v2, 0x2

    .line 2259
    iget-object v9, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v9}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v9

    add-int/2addr v9, v6

    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    .line 2260
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v7, v7, v4

    aget-object v7, v7, v1

    add-int/lit8 v8, v2, 0x3

    iget-object v9, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v9}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v6, v9

    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_8

    .line 2242
    :cond_9
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_7

    .line 2264
    :cond_a
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_3D;->access$400(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 2265
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$n0:I

    :goto_b
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$100(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v5

    .line 2266
    :goto_c
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 2267
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    aget-wide v6, v3, v5

    aput-wide v6, v0, v2

    .line 2268
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v6, v6, v2

    aget-object v6, v6, v1

    aget-wide v7, v6, v4

    aput-wide v7, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2270
    :cond_b
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-boolean v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v2, v0, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 2271
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    iget-boolean v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$scale:Z

    invoke-virtual {v2, v0, v3, v6}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v2, v5

    .line 2273
    :goto_d
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 2274
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$a:[[[D

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    aget-wide v6, v0, v2

    aput-wide v6, v3, v5

    .line 2275
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v6, v2

    aget-wide v6, v0, v6

    aput-wide v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2265
    :cond_c
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$24;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_b

    :cond_d
    return-void
.end method
