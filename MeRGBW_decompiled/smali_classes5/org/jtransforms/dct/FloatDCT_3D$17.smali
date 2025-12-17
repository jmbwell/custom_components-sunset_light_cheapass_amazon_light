.class Lorg/jtransforms/dct/FloatDCT_3D$17;
.super Ljava/lang/Object;
.source "FloatDCT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_3D;->inverse([[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/FloatDCT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_3D;II[[[FZ)V
    .locals 0

    .line 932
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    iput p2, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$lastSlice:I

    iput-object p4, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$a:[[[F

    iput-boolean p5, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 935
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v0}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v0

    new-array v0, v0, [F

    .line 936
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$firstSlice:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$lastSlice:I

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 937
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_3D;->access$400(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 938
    :goto_2
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 939
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    aget v5, v5, v3

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 941
    :cond_0
    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_3D;->access$500(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v4

    iget-boolean v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$scale:Z

    invoke-virtual {v4, v0, v5}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    move v4, v2

    .line 942
    :goto_3
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Lorg/jtransforms/dct/FloatDCT_3D;->access$100(Lorg/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 943
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_3D$17;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    aget v6, v0, v4

    aput v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
