.class Lorg/jtransforms/dht/DoubleDHT_3D$12;
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

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[DZ)V
    .locals 0

    .line 679
    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    iput p2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$lastRow:I

    iput-object p4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$a:[D

    iput-boolean p5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 682
    iget-object v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v0}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v0

    new-array v0, v0, [D

    .line 683
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$firstRow:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$lastRow:I

    if-ge v1, v2, :cond_3

    .line 684
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v3, 0x0

    move v4, v3

    .line 685
    :goto_1
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_2

    move v5, v3

    .line 686
    :goto_2
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 687
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    .line 688
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$a:[D

    aget-wide v6, v7, v6

    aput-wide v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 690
    :cond_0
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v5

    iget-boolean v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$scale:Z

    invoke-virtual {v5, v0, v6}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v5, v3

    .line 691
    :goto_3
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 692
    iget-object v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    .line 693
    iget-object v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$12;->val$a:[D

    aget-wide v8, v0, v5

    aput-wide v8, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
