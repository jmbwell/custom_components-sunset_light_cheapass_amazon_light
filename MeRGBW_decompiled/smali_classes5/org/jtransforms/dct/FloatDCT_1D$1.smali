.class Lorg/jtransforms/dct/FloatDCT_1D$1;
.super Ljava/lang/Object;
.source "FloatDCT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/FloatDCT_1D;

.field final synthetic val$a:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I

.field final synthetic val$t:[F


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_1D;III[F[F)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    iput p2, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$firstIdx:I

    iput p3, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$lastIdx:I

    iput p4, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$offa:I

    iput-object p5, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$a:[F

    iput-object p6, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$t:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 222
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 224
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$offa:I

    add-int/2addr v2, v0

    .line 225
    iget-object v3, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$a:[F

    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_1D;->access$000(Lorg/jtransforms/dct/FloatDCT_1D;)[F

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$t:[F

    aget v5, v5, v1

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_1D;->access$000(Lorg/jtransforms/dct/FloatDCT_1D;)[F

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    aget v5, v5, v1

    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_1D$1;->val$t:[F

    aget v1, v6, v1

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
