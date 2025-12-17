.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
.super Ljava/lang/Object;
.source "AVLTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field private element:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;)V"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 250
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 251
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 252
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;
    .locals 0

    .line 226
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0

    .line 226
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0

    .line 226
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p0
.end method

.method private rebalanceLeftGrown()Z
    .locals 5

    .line 418
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 448
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    .line 445
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 420
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_2

    .line 421
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 422
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 423
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 425
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v4, v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 426
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 427
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 428
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    .line 438
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 439
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 434
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 435
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 430
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 431
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 441
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_1
    return v1
.end method

.method private rebalanceLeftShrunk()Z
    .locals 5

    .line 496
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 532
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_1

    .line 502
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 503
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 504
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 506
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_2

    .line 507
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 508
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 509
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    .line 512
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 513
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 514
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 515
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_3

    .line 525
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 526
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 521
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 522
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 517
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 518
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 528
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 498
    :cond_5
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1
.end method

.method private rebalanceRightGrown()Z
    .locals 5

    .line 457
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 487
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_1

    .line 463
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 464
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 465
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v4, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v4, v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 468
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 469
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 470
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    .line 480
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 481
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 477
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 473
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 483
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_1
    return v1

    .line 459
    :cond_4
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1
.end method

.method private rebalanceRightShrunk()Z
    .locals 5

    .line 541
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 577
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 543
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    .line 546
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_2

    .line 547
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 548
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 549
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    .line 551
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v0, v4, :cond_3

    .line 552
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 553
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 554
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v1

    .line 557
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 558
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    .line 559
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    .line 560
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 570
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 571
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 566
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 567
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    .line 562
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 563
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    .line 573
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3
.end method

.method private rotateCCW()V
    .locals 3

    .line 613
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 614
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 615
    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 618
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 619
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 620
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 621
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 623
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    .line 624
    iput-object p0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 626
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_1

    .line 627
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_1
    return-void
.end method

.method private rotateCW()V
    .locals 3

    .line 588
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 589
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 590
    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 593
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 594
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 595
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 596
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 598
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    .line 599
    iput-object p0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 601
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_1

    .line 602
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    .line 372
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_0

    .line 374
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 375
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->access$302(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto/16 :goto_8

    .line 381
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v5, :cond_2

    .line 383
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 384
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne p0, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    move-object v2, v1

    move v1, v0

    move-object v0, p0

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    .line 387
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    .line 388
    :goto_1
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    .line 389
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v0, v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v4

    .line 390
    :goto_2
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 393
    :goto_3
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_6

    .line 395
    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_4

    .line 397
    :cond_6
    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :goto_4
    if-eqz v2, :cond_7

    .line 400
    iput-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    .line 403
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftShrunk()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_8
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightShrunk()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 404
    :goto_6
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v1, :cond_9

    return-void

    .line 407
    :cond_9
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v0, v2, :cond_a

    move v0, v3

    goto :goto_7

    :cond_a
    move v0, v4

    :goto_7
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_5

    :cond_b
    :goto_8
    return-void
.end method

.method public getElement()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    return-object v0
.end method

.method getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    move-object v0, p0

    .line 291
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNext()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, p0

    .line 336
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_2

    .line 337
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevious()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, p0

    .line 311
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_2

    .line 312
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    move-object v0, p0

    .line 277
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method insert(Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 353
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 355
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftGrown()Z

    move-result p1

    return p1

    .line 357
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftGrown()Z

    move-result v1

    :cond_1
    return v1

    .line 361
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_3

    .line 362
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    .line 363
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightGrown()Z

    move-result p1

    return p1

    .line 365
    :cond_3
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightGrown()Z

    move-result v1

    :cond_4
    return v1
.end method

.method size()I
    .locals 3

    .line 266
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
