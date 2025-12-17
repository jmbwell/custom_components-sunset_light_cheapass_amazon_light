.class Lorg/jtransforms/dht/DoubleDHT_3D$17;
.super Ljava/lang/Object;
.source "DoubleDHT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/DoubleDHT_3D;->inverse([[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[[[DZ)V
    .locals 0

    .line 960
    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    iput p2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$lastSlice:I

    iput-object p4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$a:[[[D

    iput-boolean p5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 963
    iget-object v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v0}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v0

    new-array v0, v0, [D

    .line 964
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$firstSlice:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$lastSlice:I

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 965
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 966
    :goto_2
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 967
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$a:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    aget-wide v6, v5, v3

    aput-wide v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 969
    :cond_0
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v4

    iget-boolean v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$scale:Z

    invoke-virtual {v4, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v4, v2

    .line 970
    :goto_3
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 971
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$17;->val$a:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    aget-wide v6, v0, v4

    aput-wide v6, v5, v3

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
