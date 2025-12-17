.class Lorg/jtransforms/dct/DoubleDCT_2D$5;
.super Ljava/lang/Object;
.source "DoubleDCT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/DoubleDCT_2D;->forward([[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/DoubleDCT_2D;II[[DZ)V
    .locals 0

    .line 300
    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    iput p2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->val$lastRow:I

    iput-object p4, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->val$a:[[D

    iput-boolean p5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 303
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->val$firstRow:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->val$lastRow:I

    if-ge v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$100(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->val$a:[[D

    aget-object v2, v2, v0

    iget-boolean v3, p0, Lorg/jtransforms/dct/DoubleDCT_2D$5;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
