.class Lorg/jtransforms/dst/DoubleDST_2D$12;
.super Ljava/lang/Object;
.source "DoubleDST_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/DoubleDST_2D;->inverse([[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/DoubleDST_2D;

.field final synthetic val$a:[[D

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/DoubleDST_2D;II[[DZ)V
    .locals 0

    .line 584
    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    iput p2, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$firstColumn:I

    iput p3, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$lastColumn:I

    iput-object p4, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$a:[[D

    iput-boolean p5, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 587
    iget-object v0, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v0}, Lorg/jtransforms/dst/DoubleDST_2D;->access$200(Lorg/jtransforms/dst/DoubleDST_2D;)I

    move-result v0

    new-array v0, v0, [D

    .line 588
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$firstColumn:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$lastColumn:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 589
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_2D;->access$200(Lorg/jtransforms/dst/DoubleDST_2D;)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 590
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$a:[[D

    aget-object v4, v4, v3

    aget-wide v5, v4, v1

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 592
    :cond_0
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_2D;->access$300(Lorg/jtransforms/dst/DoubleDST_2D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-boolean v4, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$scale:Z

    invoke-virtual {v3, v0, v4}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    .line 593
    :goto_2
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_2D;->access$200(Lorg/jtransforms/dst/DoubleDST_2D;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 594
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_2D$12;->val$a:[[D

    aget-object v3, v3, v2

    aget-wide v4, v0, v2

    aput-wide v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
