.class Lorg/jtransforms/dst/DoubleDST_3D$16;
.super Ljava/lang/Object;
.source "DoubleDST_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/DoubleDST_3D;->inverse([[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/DoubleDST_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/DoubleDST_3D;II[[[DZ)V
    .locals 0

    .line 910
    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    iput p2, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->val$lastSlice:I

    iput-object p4, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->val$a:[[[D

    iput-boolean p5, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 913
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 914
    :goto_1
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$100(Lorg/jtransforms/dst/DoubleDST_3D;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 915
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$300(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-boolean v4, p0, Lorg/jtransforms/dst/DoubleDST_3D$16;->val$scale:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
