.class Lorg/jtransforms/dst/DoubleDST_1D$1;
.super Ljava/lang/Object;
.source "DoubleDST_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/DoubleDST_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/DoubleDST_1D;III[D)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->this$0:Lorg/jtransforms/dst/DoubleDST_1D;

    iput p2, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$offa:I

    iput p3, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$firstIdx:I

    iput p4, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$lastIdx:I

    iput-object p5, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 125
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$offa:I

    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->this$0:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_1D;->access$000(Lorg/jtransforms/dst/DoubleDST_1D;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 128
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$firstIdx:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$lastIdx:I

    if-ge v1, v2, :cond_0

    .line 129
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$offa:I

    add-int/2addr v2, v1

    .line 130
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_1D$1;->val$a:[D

    aget-wide v4, v3, v2

    sub-int v6, v0, v1

    .line 132
    aget-wide v7, v3, v6

    aput-wide v7, v3, v2

    .line 133
    aput-wide v4, v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
