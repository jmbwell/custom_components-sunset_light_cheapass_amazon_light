.class Lorg/jtransforms/fft/DoubleFFT_3D$9;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[D)V
    .locals 0

    .line 630
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->val$lastRow:I

    iput-object p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->val$a:[[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 633
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v0}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    .line 634
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->val$firstRow:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->val$lastRow:I

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 635
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_2

    mul-int/lit8 v4, v3, 0x2

    move v5, v2

    .line 637
    :goto_2
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_0

    mul-int/lit8 v6, v5, 0x2

    .line 639
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->val$a:[[[D

    aget-object v7, v7, v5

    aget-object v7, v7, v1

    aget-wide v8, v7, v4

    aput-wide v8, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 640
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 642
    :cond_0
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v5, v2

    .line 643
    :goto_3
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_1

    mul-int/lit8 v6, v5, 0x2

    .line 645
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$9;->val$a:[[[D

    aget-object v7, v7, v5

    aget-object v7, v7, v1

    aget-wide v8, v0, v6

    aput-wide v8, v7, v4

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 646
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v5, v5, 0x1

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
