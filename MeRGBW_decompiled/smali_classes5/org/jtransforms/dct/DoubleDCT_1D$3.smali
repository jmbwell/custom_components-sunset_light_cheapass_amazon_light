.class Lorg/jtransforms/dct/DoubleDCT_1D$3;
.super Ljava/lang/Object;
.source "DoubleDCT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I

.field final synthetic val$t:[D


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/DoubleDCT_1D;II[DI[D)V
    .locals 0

    .line 404
    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    iput p2, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$firstIdx:I

    iput p3, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$lastIdx:I

    iput-object p4, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$a:[D

    iput p5, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$offa:I

    iput-object p6, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$t:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 407
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 409
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$a:[D

    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$offa:I

    add-int/2addr v3, v0

    aget-wide v3, v2, v3

    .line 410
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$t:[D

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_1D;->access$000(Lorg/jtransforms/dct/DoubleDCT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v1

    mul-double/2addr v6, v3

    aput-wide v6, v2, v1

    .line 411
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->val$t:[D

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_1D$3;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-static {v5}, Lorg/jtransforms/dct/DoubleDCT_1D;->access$000(Lorg/jtransforms/dct/DoubleDCT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v1

    neg-double v5, v6

    mul-double/2addr v5, v3

    aput-wide v5, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
