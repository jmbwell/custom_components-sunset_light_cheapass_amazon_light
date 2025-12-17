.class final Lorg/jtransforms/utils/CommonUtils$1;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/utils/CommonUtils;->cftrec4_th(I[DII[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$mf:I

.field final synthetic val$n:I

.field final synthetic val$nw:I

.field final synthetic val$w:[D


# direct methods
.method constructor <init>(III[D[DI)V
    .locals 0

    .line 3740
    iput p1, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$firstIdx:I

    iput p2, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$mf:I

    iput p3, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$n:I

    iput-object p4, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$a:[D

    iput-object p5, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$w:[D

    iput p6, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$nw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 3744
    iget v0, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$firstIdx:I

    iget v1, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$mf:I

    add-int/2addr v0, v1

    .line 3745
    iget v1, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$n:I

    :goto_0
    const/16 v2, 0x200

    if-le v1, v2, :cond_0

    shr-int/lit8 v2, v1, 0x2

    .line 3748
    iget-object v3, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$a:[D

    sub-int v4, v0, v2

    iget-object v5, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$w:[D

    iget v6, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$nw:I

    shr-int/lit8 v1, v1, 0x3

    sub-int/2addr v6, v1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/jtransforms/utils/CommonUtils;->cftmdl1(I[DI[DI)V

    move v1, v2

    goto :goto_0

    .line 3750
    :cond_0
    iget-object v4, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$a:[D

    sub-int v5, v0, v1

    iget v6, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$nw:I

    iget-object v7, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$w:[D

    const/4 v3, 0x1

    move v2, v1

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftleaf(II[DII[D)V

    .line 3752
    iget v0, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$firstIdx:I

    sub-int/2addr v0, v1

    .line 3753
    iget v2, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$mf:I

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    move v9, v2

    :goto_1
    if-lez v9, :cond_1

    add-int/lit8 v10, v3, 0x1

    .line 3755
    iget-object v5, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$a:[D

    iget v6, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$firstIdx:I

    iget v7, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$nw:I

    iget-object v8, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$w:[D

    move v2, v1

    move v3, v9

    move v4, v10

    invoke-static/range {v2 .. v8}, Lorg/jtransforms/utils/CommonUtils;->cfttree(III[DII[D)I

    move-result v3

    .line 3756
    iget-object v4, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$a:[D

    add-int v5, v0, v9

    iget v6, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$nw:I

    iget-object v7, p0, Lorg/jtransforms/utils/CommonUtils$1;->val$w:[D

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftleaf(II[DII[D)V

    sub-int/2addr v9, v1

    move v3, v10

    goto :goto_1

    :cond_1
    return-void
.end method
