.class Lorg/jtransforms/dht/FloatDHT_1D$1;
.super Ljava/lang/Object;
.source "FloatDHT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/FloatDHT_1D;

.field final synthetic val$a:[F

.field final synthetic val$b:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/FloatDHT_1D;II[FI[F)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->this$0:Lorg/jtransforms/dht/FloatDHT_1D;

    iput p2, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$firstIdx:I

    iput p3, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$lastIdx:I

    iput-object p4, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$a:[F

    iput p5, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$offa:I

    iput-object p6, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 124
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 127
    iget-object v3, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$a:[F

    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$offa:I

    add-int v5, v4, v0

    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$b:[F

    aget v7, v6, v1

    aget v6, v6, v2

    sub-float/2addr v7, v6

    aput v7, v3, v5

    .line 128
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->this$0:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_1D;->access$000(Lorg/jtransforms/dht/FloatDHT_1D;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_1D$1;->val$b:[F

    aget v1, v5, v1

    aget v2, v5, v2

    add-float/2addr v1, v2

    aput v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
