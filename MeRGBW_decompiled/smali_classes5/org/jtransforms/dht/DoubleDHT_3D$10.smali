.class Lorg/jtransforms/dht/DoubleDHT_3D$10;
.super Ljava/lang/Object;
.source "DoubleDHT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/DoubleDHT_3D;->inverse([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

.field final synthetic val$a:[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[DZ)V
    .locals 0

    .line 621
    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    iput p2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->val$lastSlice:I

    iput-object p4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->val$a:[D

    iput-boolean p5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 624
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    .line 625
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x0

    .line 626
    :goto_1
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 627
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$300(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->val$a:[D

    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    iget-boolean v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$10;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
