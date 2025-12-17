.class final Lorg/jtransforms/utils/CommonUtils$9;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$m:D


# direct methods
.method constructor <init>(II[DD)V
    .locals 0

    .line 11120
    iput p1, p0, Lorg/jtransforms/utils/CommonUtils$9;->val$firstIdx:I

    iput p2, p0, Lorg/jtransforms/utils/CommonUtils$9;->val$lastIdx:I

    iput-object p3, p0, Lorg/jtransforms/utils/CommonUtils$9;->val$a:[D

    iput-wide p4, p0, Lorg/jtransforms/utils/CommonUtils$9;->val$m:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 11123
    iget v0, p0, Lorg/jtransforms/utils/CommonUtils$9;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/utils/CommonUtils$9;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    .line 11124
    iget-object v1, p0, Lorg/jtransforms/utils/CommonUtils$9;->val$a:[D

    aget-wide v2, v1, v0

    iget-wide v4, p0, Lorg/jtransforms/utils/CommonUtils$9;->val$m:D

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
