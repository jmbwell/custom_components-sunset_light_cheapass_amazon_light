.class Lorg/jtransforms/dht/DoubleDHT_3D$22;
.super Ljava/lang/Object;
.source "DoubleDHT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_subth(I[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

.field final synthetic val$a:[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/DoubleDHT_3D;IIII[DZ)V
    .locals 0

    .line 1984
    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    iput p2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$n0:I

    iput p5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    iput-boolean p7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1989
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$ntf:I

    new-array v0, v0, [D

    .line 1990
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_6

    .line 1991
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-le v1, v4, :cond_3

    .line 1992
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 1993
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v5, v3

    .line 1994
    :goto_1
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_2

    move v6, v3

    .line 1995
    :goto_2
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1996
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 1997
    iget-object v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1998
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    aget-wide v10, v9, v7

    aput-wide v10, v0, v6

    add-int/lit8 v10, v7, 0x1

    .line 1999
    aget-wide v10, v9, v10

    aput-wide v10, v0, v8

    .line 2000
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v9

    add-int/2addr v9, v8

    iget-object v10, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    add-int/lit8 v11, v7, 0x2

    aget-wide v11, v10, v11

    aput-wide v11, v0, v9

    .line 2001
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    add-int/lit8 v7, v7, 0x3

    aget-wide v10, v9, v7

    aput-wide v10, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2003
    :cond_0
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 2004
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 2005
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v4

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 2006
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v6, v3

    .line 2007
    :goto_3
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2008
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 2009
    iget-object v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 2010
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    aget-wide v10, v0, v6

    aput-wide v10, v9, v7

    add-int/lit8 v10, v7, 0x1

    .line 2011
    aget-wide v11, v0, v8

    aput-wide v11, v9, v10

    add-int/lit8 v10, v7, 0x2

    .line 2012
    iget-object v11, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v11}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v11

    add-int/2addr v11, v8

    aget-wide v11, v0, v11

    aput-wide v11, v9, v10

    .line 2013
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    add-int/lit8 v7, v7, 0x3

    iget-object v10, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    mul-int/2addr v10, v4

    add-int/2addr v8, v10

    aget-wide v10, v0, v8

    aput-wide v10, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_1

    .line 1992
    :cond_2
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 2017
    :cond_3
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 2018
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$n0:I

    :goto_4
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 2019
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v4, v3

    .line 2020
    :goto_5
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2021
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 2022
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    aget-wide v7, v6, v5

    aput-wide v7, v0, v4

    .line 2023
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v8, v7, v5

    aput-wide v8, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2025
    :cond_4
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 2026
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v4

    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v4, v3

    .line 2027
    :goto_6
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 2028
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 2029
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    aget-wide v7, v0, v4

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    .line 2030
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v7, v4

    aget-wide v7, v0, v7

    aput-wide v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2018
    :cond_5
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_4

    .line 2034
    :cond_6
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-le v1, v4, :cond_a

    .line 2035
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$n0:I

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 2036
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v5, v3

    .line 2037
    :goto_8
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_9

    move v6, v3

    .line 2038
    :goto_9
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 2039
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 2040
    iget-object v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 2041
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    aget-wide v10, v9, v7

    aput-wide v10, v0, v6

    add-int/lit8 v10, v7, 0x1

    .line 2042
    aget-wide v10, v9, v10

    aput-wide v10, v0, v8

    .line 2043
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v9

    add-int/2addr v9, v8

    iget-object v10, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    add-int/lit8 v11, v7, 0x2

    aget-wide v11, v10, v11

    aput-wide v11, v0, v9

    .line 2044
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    add-int/lit8 v7, v7, 0x3

    aget-wide v10, v9, v7

    aput-wide v10, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 2046
    :cond_7
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v3, v7}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 2047
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    iget-boolean v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 2048
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v4

    iget-boolean v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 2049
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    iget-boolean v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v6, v3

    .line 2050
    :goto_a
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 2051
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 2052
    iget-object v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 2053
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    aget-wide v10, v0, v6

    aput-wide v10, v9, v7

    add-int/lit8 v10, v7, 0x1

    .line 2054
    aget-wide v11, v0, v8

    aput-wide v11, v9, v10

    add-int/lit8 v10, v7, 0x2

    .line 2055
    iget-object v11, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v11}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v11

    add-int/2addr v11, v8

    aget-wide v11, v0, v11

    aput-wide v11, v9, v10

    .line 2056
    iget-object v9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    add-int/lit8 v7, v7, 0x3

    iget-object v10, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    mul-int/2addr v10, v4

    add-int/2addr v8, v10

    aget-wide v10, v0, v8

    aput-wide v10, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_8

    .line 2035
    :cond_9
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_7

    .line 2060
    :cond_a
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 2061
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$n0:I

    :goto_b
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 2062
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v4, v3

    .line 2063
    :goto_c
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 2064
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 2065
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    aget-wide v7, v6, v5

    aput-wide v7, v0, v4

    .line 2066
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v8, v7, v5

    aput-wide v8, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2068
    :cond_b
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v4

    iget-boolean v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$scale:Z

    invoke-virtual {v4, v0, v3, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 2069
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v4

    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    iget-boolean v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$scale:Z

    invoke-virtual {v4, v0, v5, v6}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v4, v3

    .line 2070
    :goto_d
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 2071
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 2072
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$a:[D

    aget-wide v7, v0, v4

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    .line 2073
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v7, v4

    aget-wide v7, v0, v7

    aput-wide v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2061
    :cond_c
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$22;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_b

    :cond_d
    return-void
.end method
