.class final Lorg/jtransforms/utils/CommonUtils$2;
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

    .line 3762
    iput p1, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$firstIdx:I

    iput p2, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$mf:I

    iput p3, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$n:I

    iput-object p4, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$a:[D

    iput-object p5, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$w:[D

    iput p6, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$nw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 3766
    iget v0, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$firstIdx:I

    iget v1, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$mf:I

    add-int/2addr v0, v1

    .line 3768
    iget v1, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$n:I

    const/4 v2, 0x1

    move v9, v2

    :goto_0
    const/16 v3, 0x200

    if-le v1, v3, :cond_0

    shr-int/lit8 v1, v1, 0x2

    shl-int/lit8 v9, v9, 0x2

    .line 3772
    iget-object v3, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$a:[D

    sub-int v4, v0, v1

    iget-object v5, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$w:[D

    iget v6, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$nw:I

    sub-int/2addr v6, v1

    invoke-static {v1, v3, v4, v5, v6}, Lorg/jtransforms/utils/CommonUtils;->cftmdl2(I[DI[DI)V

    goto :goto_0

    .line 3774
    :cond_0
    iget-object v5, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$a:[D

    sub-int v6, v0, v1

    iget v7, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$nw:I

    iget-object v8, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$w:[D

    const/4 v4, 0x0

    move v3, v1

    invoke-static/range {v3 .. v8}, Lorg/jtransforms/utils/CommonUtils;->cftleaf(II[DII[D)V

    shr-int/lit8 v0, v9, 0x1

    .line 3776
    iget v3, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$firstIdx:I

    sub-int v10, v3, v1

    .line 3777
    iget v3, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$mf:I

    sub-int/2addr v3, v1

    move v11, v3

    :goto_1
    if-lez v11, :cond_1

    add-int/2addr v0, v2

    .line 3779
    iget-object v6, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$a:[D

    iget v7, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$firstIdx:I

    iget v8, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$nw:I

    iget-object v9, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$w:[D

    move v3, v1

    move v4, v11

    move v5, v0

    invoke-static/range {v3 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cfttree(III[DII[D)I

    move-result v4

    .line 3780
    iget-object v5, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$a:[D

    add-int v6, v10, v11

    iget v7, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$nw:I

    iget-object v8, p0, Lorg/jtransforms/utils/CommonUtils$2;->val$w:[D

    invoke-static/range {v3 .. v8}, Lorg/jtransforms/utils/CommonUtils;->cftleaf(II[DII[D)V

    sub-int/2addr v11, v1

    goto :goto_1

    :cond_1
    return-void
.end method
