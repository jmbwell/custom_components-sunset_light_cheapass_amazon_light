.class Lorg/jtransforms/dct/FloatDCT_3D$22;
.super Ljava/lang/Object;
.source "FloatDCT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_3D;->ddxt3db_subth(I[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/FloatDCT_3D;

.field final synthetic val$a:[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_3D;IIII[FZ)V
    .locals 0

    .line 1951
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    iput p2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$n0:I

    iput p5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    iput-boolean p7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1956
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$ntf:I

    new-array v0, v0, [F

    .line 1957
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_6

    .line 1958
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    if-le v1, v4, :cond_3

    .line 1959
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 1960
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$200(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v5, v3

    .line 1961
    :goto_1
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_2

    move v6, v3

    .line 1962
    :goto_2
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1963
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$000(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 1964
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1965
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    aget v10, v9, v7

    aput v10, v0, v6

    add-int/lit8 v10, v7, 0x1

    .line 1966
    aget v9, v9, v10

    aput v9, v0, v8

    .line 1967
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v9

    add-int/2addr v9, v8

    iget-object v10, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    aput v10, v0, v9

    .line 1968
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    add-int/lit8 v7, v7, 0x3

    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1970
    :cond_0
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v3, v7}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1971
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1972
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/2addr v7, v4

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1973
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v6, v3

    .line 1974
    :goto_3
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1975
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$000(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 1976
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1977
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    aget v10, v0, v6

    aput v10, v9, v7

    add-int/lit8 v10, v7, 0x1

    .line 1978
    aget v11, v0, v8

    aput v11, v9, v10

    add-int/lit8 v10, v7, 0x2

    .line 1979
    iget-object v11, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v11}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v11

    add-int/2addr v11, v8

    aget v11, v0, v11

    aput v11, v9, v10

    .line 1980
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    add-int/lit8 v7, v7, 0x3

    iget-object v10, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v10

    mul-int/2addr v10, v4

    add-int/2addr v8, v10

    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_1

    .line 1959
    :cond_2
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 1984
    :cond_3
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 1985
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$n0:I

    :goto_4
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 1986
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$200(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v4, v3

    .line 1987
    :goto_5
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1988
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$000(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 1989
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    aget v6, v6, v5

    aput v6, v0, v4

    .line 1990
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1992
    :cond_4
    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v4

    iget-boolean v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v4, v0, v3, v5}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1993
    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v4

    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    iget-boolean v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v4, v0, v5, v6}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v4, v3

    .line 1994
    :goto_6
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 1995
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$000(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 1996
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    aget v7, v0, v4

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    .line 1997
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v7, v4

    aget v7, v0, v7

    aput v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1985
    :cond_5
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_4

    .line 2001
    :cond_6
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    if-le v1, v4, :cond_a

    .line 2002
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$n0:I

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 2003
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$200(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v5, v3

    .line 2004
    :goto_8
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_9

    move v6, v3

    .line 2005
    :goto_9
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 2006
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$000(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 2007
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 2008
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    aget v10, v9, v7

    aput v10, v0, v6

    add-int/lit8 v10, v7, 0x1

    .line 2009
    aget v9, v9, v10

    aput v9, v0, v8

    .line 2010
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v9

    add-int/2addr v9, v8

    iget-object v10, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    aput v10, v0, v9

    .line 2011
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    add-int/lit8 v7, v7, 0x3

    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 2013
    :cond_7
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v3, v7}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 2014
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 2015
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/2addr v7, v4

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 2016
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    iget-boolean v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v6, v3

    .line 2017
    :goto_a
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 2018
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$000(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 2019
    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 2020
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    aget v10, v0, v6

    aput v10, v9, v7

    add-int/lit8 v10, v7, 0x1

    .line 2021
    aget v11, v0, v8

    aput v11, v9, v10

    add-int/lit8 v10, v7, 0x2

    .line 2022
    iget-object v11, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v11}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v11

    add-int/2addr v11, v8

    aget v11, v0, v11

    aput v11, v9, v10

    .line 2023
    iget-object v9, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    add-int/lit8 v7, v7, 0x3

    iget-object v10, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v10

    mul-int/2addr v10, v4

    add-int/2addr v8, v10

    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_8

    .line 2002
    :cond_9
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_7

    .line 2027
    :cond_a
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 2028
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$n0:I

    :goto_b
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 2029
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$200(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v4, v3

    .line 2030
    :goto_c
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 2031
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$000(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 2032
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    aget v6, v6, v5

    aput v6, v0, v4

    .line 2033
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2035
    :cond_b
    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v4

    iget-boolean v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v4, v0, v3, v5}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 2036
    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v4

    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    iget-boolean v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$scale:Z

    invoke-virtual {v4, v0, v5, v6}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v4, v3

    .line 2038
    :goto_d
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 2039
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$000(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 2040
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$a:[F

    aget v7, v0, v4

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    .line 2041
    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_3D;->access$600(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v7, v4

    aget v7, v0, v7

    aput v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2028
    :cond_c
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$22;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_b

    :cond_d
    return-void
.end method
