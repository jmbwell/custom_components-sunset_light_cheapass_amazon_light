.class Lorg/jtransforms/dht/FloatDHT_3D$8;
.super Ljava/lang/Object;
.source "FloatDHT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/FloatDHT_3D;->forward([[[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/FloatDHT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/FloatDHT_3D;II[[[F)V
    .locals 0

    .line 498
    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    iput p2, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->val$lastSlice:I

    iput-object p4, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 501
    iget-object v0, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v0}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v0

    new-array v0, v0, [F

    .line 502
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->val$firstSlice:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->val$lastSlice:I

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 503
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/FloatDHT_3D;->access$400(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 504
    :goto_2
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 505
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    aget v5, v5, v3

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 507
    :cond_0
    iget-object v4, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([F)V

    move v4, v2

    .line 508
    :goto_3
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 509
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$8;->val$a:[[[F

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
