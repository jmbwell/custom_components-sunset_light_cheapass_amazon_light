.class final Lorg/jtransforms/utils/CommonUtils$11;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$m:F


# direct methods
.method constructor <init>(II[FF)V
    .locals 0

    .line 11204
    iput p1, p0, Lorg/jtransforms/utils/CommonUtils$11;->val$firstIdx:I

    iput p2, p0, Lorg/jtransforms/utils/CommonUtils$11;->val$lastIdx:I

    iput-object p3, p0, Lorg/jtransforms/utils/CommonUtils$11;->val$a:[F

    iput p4, p0, Lorg/jtransforms/utils/CommonUtils$11;->val$m:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 11207
    iget v0, p0, Lorg/jtransforms/utils/CommonUtils$11;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/utils/CommonUtils$11;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    .line 11208
    iget-object v1, p0, Lorg/jtransforms/utils/CommonUtils$11;->val$a:[F

    aget v2, v1, v0

    iget v3, p0, Lorg/jtransforms/utils/CommonUtils$11;->val$m:F

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
