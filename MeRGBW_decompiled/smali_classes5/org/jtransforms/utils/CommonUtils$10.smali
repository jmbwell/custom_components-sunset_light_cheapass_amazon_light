.class final Lorg/jtransforms/utils/CommonUtils$10;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$m:D


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;D)V
    .locals 0

    .line 11162
    iput-wide p1, p0, Lorg/jtransforms/utils/CommonUtils$10;->val$firstIdx:J

    iput-wide p3, p0, Lorg/jtransforms/utils/CommonUtils$10;->val$lastIdx:J

    iput-object p5, p0, Lorg/jtransforms/utils/CommonUtils$10;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p6, p0, Lorg/jtransforms/utils/CommonUtils$10;->val$m:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 11166
    iget-wide v0, p0, Lorg/jtransforms/utils/CommonUtils$10;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/utils/CommonUtils$10;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 11167
    iget-object v2, p0, Lorg/jtransforms/utils/CommonUtils$10;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/jtransforms/utils/CommonUtils$10;->val$m:D

    mul-double/2addr v3, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
