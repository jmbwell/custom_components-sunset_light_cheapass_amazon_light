.class Lorg/jtransforms/dct/DoubleDCT_1D$1;
.super Ljava/lang/Object;
.source "DoubleDCT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V
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
.method constructor <init>(Lorg/jtransforms/dct/DoubleDCT_1D;III[D[D)V
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    iput p2, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$firstIdx:I

    iput p3, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$lastIdx:I

    iput p4, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$offa:I

    iput-object p5, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$a:[D

    iput-object p6, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$t:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 215
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 217
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$offa:I

    add-int/2addr v2, v0

    .line 218
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$a:[D

    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-static {v4}, Lorg/jtransforms/dct/DoubleDCT_1D;->access$000(Lorg/jtransforms/dct/DoubleDCT_1D;)[D

    move-result-object v4

    aget-wide v5, v4, v1

    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$t:[D

    aget-wide v7, v4, v1

    mul-double/2addr v5, v7

    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-static {v4}, Lorg/jtransforms/dct/DoubleDCT_1D;->access$000(Lorg/jtransforms/dct/DoubleDCT_1D;)[D

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    aget-wide v7, v4, v1

    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_1D$1;->val$t:[D

    aget-wide v9, v4, v1

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    aput-wide v5, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
