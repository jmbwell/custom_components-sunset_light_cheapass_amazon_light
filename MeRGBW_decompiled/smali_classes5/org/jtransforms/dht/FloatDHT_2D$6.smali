.class Lorg/jtransforms/dht/FloatDHT_2D$6;
.super Ljava/lang/Object;
.source "FloatDHT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/FloatDHT_2D;->forward([[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/FloatDHT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/FloatDHT_2D;II[[F)V
    .locals 0

    .line 330
    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    iput p2, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->val$firstColumn:I

    iput p3, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->val$lastColumn:I

    iput-object p4, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->val$a:[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 333
    iget-object v0, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v0}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v0

    new-array v0, v0, [F

    .line 334
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->val$firstColumn:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->val$lastColumn:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 335
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v4}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 336
    iget-object v4, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->val$a:[[F

    aget-object v4, v4, v3

    aget v4, v4, v1

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 338
    :cond_0
    iget-object v3, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v3}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([F)V

    .line 339
    :goto_2
    iget-object v3, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v3}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 340
    iget-object v3, p0, Lorg/jtransforms/dht/FloatDHT_2D$6;->val$a:[[F

    aget-object v3, v3, v2

    aget v4, v0, v2

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
