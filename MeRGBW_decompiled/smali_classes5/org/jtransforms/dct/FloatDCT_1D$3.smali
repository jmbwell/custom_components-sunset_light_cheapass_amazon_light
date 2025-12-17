.class Lorg/jtransforms/dct/FloatDCT_1D$3;
.super Ljava/lang/Object;
.source "FloatDCT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V
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
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_1D;II[FI[F)V
    .locals 0

    .line 419
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    iput p2, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$firstIdx:I

    iput p3, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$lastIdx:I

    iput-object p4, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$a:[F

    iput p5, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$offa:I

    iput-object p6, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$t:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 422
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 424
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$a:[F

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$offa:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 425
    iget-object v3, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$t:[F

    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_1D;->access$000(Lorg/jtransforms/dct/FloatDCT_1D;)[F

    move-result-object v4

    aget v4, v4, v1

    mul-float/2addr v4, v2

    aput v4, v3, v1

    .line 426
    iget-object v3, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->val$t:[F

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_1D$3;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_1D;->access$000(Lorg/jtransforms/dct/FloatDCT_1D;)[F

    move-result-object v4

    aget v4, v4, v1

    neg-float v4, v4

    mul-float/2addr v4, v2

    aput v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
