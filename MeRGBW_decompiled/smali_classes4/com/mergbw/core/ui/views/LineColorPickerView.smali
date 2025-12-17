.class public Lcom/mergbw/core/ui/views/LineColorPickerView;
.super Landroid/view/View;
.source "LineColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;,
        Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;,
        Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;
    }
.end annotation


# static fields
.field private static final defaultSizeLong:I = 0x1a4

.field private static final defaultSizeShort:I = 0x46


# instance fields
.field private bitmapForColor:Landroid/graphics/Bitmap;

.field private bitmapForIndicator:Landroid/graphics/Bitmap;

.field private colorPickerChangeListener:Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;

.field private colors:[I

.field private curX:I

.field private curY:I

.field private currentColor:I

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private mBottom:I

.field private mIndicatorColor:I

.field private mIndicatorEnable:Z

.field private mLeft:I

.field private mRadius:I

.field private mRight:I

.field private mTop:I

.field private needReDrawColorTable:Z

.field private needReDrawIndicator:Z

.field private orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

.field private final paint:Landroid/graphics/Paint;

.field private final paintForIndicator:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private final rectForIndicator:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rectForIndicator:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawColorTable:Z

    .line 87
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colors:[I

    .line 115
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    .line 116
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paintForIndicator:Landroid/graphics/Paint;

    .line 125
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p1, 0x7fffffff

    .line 127
    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rectForIndicator:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawColorTable:Z

    .line 87
    iput-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colors:[I

    .line 115
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    .line 116
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 121
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paintForIndicator:Landroid/graphics/Paint;

    .line 125
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, 0x7fffffff

    .line 127
    iput v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    iput v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/mergbw/core/R$styleable;->ColorPickerView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    sget p2, Lcom/mergbw/core/R$styleable;->ColorPickerView_indicatorColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorColor:I

    .line 144
    sget p2, Lcom/mergbw/core/R$styleable;->ColorPickerView_orientation:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    if-nez p2, :cond_0

    .line 145
    sget-object p2, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->VERTICAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    :goto_0
    iput-object p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    .line 147
    sget p2, Lcom/mergbw/core/R$styleable;->ColorPickerView_indicatorEnable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorEnable:Z

    .line 149
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 603
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 604
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteArray"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 611
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private calcuColor()I
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v1, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 456
    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_0

    goto :goto_1

    .line 458
    :cond_0
    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v1, v3, :cond_1

    .line 459
    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    .line 461
    :cond_1
    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v1, v2

    goto :goto_1

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 465
    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_3

    :goto_0
    move v4, v2

    move v2, v0

    move v0, v4

    goto :goto_1

    .line 467
    :cond_3
    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v1, v3, :cond_4

    .line 468
    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 470
    :cond_4
    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, v2

    goto :goto_0

    .line 473
    :goto_1
    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 474
    invoke-direct {p0, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->pixelToColor(I)I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->currentColor:I

    return v0
.end method

.method private calculBounds()V
    .locals 6

    .line 254
    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mBottom:I

    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mTop:I

    sub-int/2addr v0, v1

    .line 255
    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRight:I

    iget v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mLeft:I

    sub-int/2addr v1, v2

    .line 256
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 258
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v4, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    if-ne v3, v4, :cond_0

    if-gt v1, v0, :cond_1

    .line 260
    div-int/lit8 v2, v1, 0x6

    goto :goto_0

    :cond_0
    if-lt v1, v0, :cond_1

    .line 264
    div-int/lit8 v2, v0, 0x6

    .line 268
    :cond_1
    :goto_0
    div-int/lit8 v2, v2, 0x9

    mul-int/lit8 v0, v2, 0x7

    .line 269
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRadius:I

    mul-int/lit8 v2, v2, 0x3

    .line 272
    div-int/lit8 v2, v2, 0x2

    .line 274
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v1, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    if-ne v0, v1, :cond_2

    .line 275
    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mLeft:I

    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRadius:I

    add-int/2addr v0, v1

    .line 276
    iget v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRight:I

    sub-int/2addr v3, v1

    .line 278
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    .line 279
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    goto :goto_1

    .line 281
    :cond_2
    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mTop:I

    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRadius:I

    add-int/2addr v0, v1

    .line 282
    iget v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mBottom:I

    sub-int v4, v3, v1

    .line 284
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    .line 285
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    move v5, v1

    move v1, v0

    move v0, v5

    .line 288
    :goto_1
    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private createBitmap()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 211
    iget v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRadius:I

    mul-int/lit8 v2, v2, 0x2

    .line 214
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    iput-object v4, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    iput-object v4, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    .line 228
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    .line 229
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    return-void
.end method

.method private createColorTableBitmap()V
    .locals 5

    .line 365
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 370
    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v3, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    if-ne v2, v3, :cond_0

    .line 371
    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 376
    :goto_0
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v2

    .line 377
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 379
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 380
    iget-object v3, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 381
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawColorTable:Z

    return-void
.end method

.method private createIndicatorBitmap()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paintForIndicator:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paintForIndicator:Landroid/graphics/Paint;

    const/4 v1, 0x3

    int-to-float v2, v1

    const/4 v3, 0x0

    const v4, -0x777778

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 357
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 358
    iget v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRadius:I

    int-to-float v3, v2

    int-to-float v4, v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paintForIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    return-void
.end method

.method private inBoundOfColorTable(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ex",
            "ey"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v1, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 441
    iget p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mLeft:I

    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRadius:I

    add-int/2addr p2, v0

    if-le p1, p2, :cond_0

    iget p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRight:I

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_2

    :cond_0
    return v2

    .line 445
    :cond_1
    iget p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mTop:I

    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRadius:I

    add-int/2addr p1, v0

    if-le p2, p1, :cond_3

    iget p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mBottom:I

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v2
.end method

.method private pixelToColor(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pixel"
        }
    .end annotation

    .line 480
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 481
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 482
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 483
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 485
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public createDefaultColorTable()[I
    .locals 9

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 320
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 321
    invoke-static {v0, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 322
    invoke-static {v1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 323
    invoke-static {v1, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 324
    invoke-static {v1, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 325
    invoke-static {v0, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    .line 326
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    filled-new-array/range {v2 .. v8}, [I

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 436
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->calcuColor()I

    move-result v0

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 636
    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 334
    iget-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawColorTable:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->createColorTableBitmap()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 340
    iget-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorEnable:Z

    if-eqz v0, :cond_2

    .line 341
    iget-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    if-eqz v0, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->createIndicatorBitmap()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rectForIndicator:Landroid/graphics/Rect;

    iget v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    iget v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRadius:I

    sub-int v4, v1, v2

    iget v5, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    sub-int v6, v5, v2

    add-int/2addr v1, v2

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v6, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rectForIndicator:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 182
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 183
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mTop:I

    .line 184
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mLeft:I

    .line 185
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mBottom:I

    .line 186
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mRight:I

    .line 188
    iget p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    iget p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    if-eq p1, p2, :cond_0

    const p1, 0x7fffffff

    if-ne p2, p1, :cond_1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    .line 190
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->calculBounds()V

    .line 194
    iget-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colors:[I

    if-nez p1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->createDefaultColorTable()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setColors([I)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setColors([I)V

    .line 199
    :goto_0
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->createBitmap()V

    .line 201
    iget-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorEnable:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 157
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 158
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v1, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    const/16 v2, 0x1a4

    const/16 v3, 0x46

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 175
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v1, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    if-ne v0, v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 537
    instance-of v0, p1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;

    if-nez v0, :cond_0

    .line 538
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 541
    :cond_0
    check-cast p1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;

    .line 542
    invoke-virtual {p1}, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 544
    iget v0, p1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->selX:I

    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    .line 545
    iget v0, p1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->selY:I

    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    .line 546
    iget-object v0, p1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->colors:[I

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colors:[I

    .line 549
    iget-object v0, p1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->colorBytes:[B

    invoke-direct {p0, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->byteArrayToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    .line 550
    iget-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 551
    iget-object p1, p1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->indicatorBytes:[B

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/LineColorPickerView;->byteArrayToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    .line 552
    iput-boolean v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    .line 554
    :cond_1
    iput-boolean v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawColorTable:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 522
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 523
    new-instance v1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;

    invoke-direct {v1, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 524
    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    iput v0, v1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->selX:I

    .line 525
    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    iput v0, v1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->selY:I

    .line 528
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForColor:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->colorBytes:[B

    .line 529
    iget-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorEnable:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapForIndicator:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->indicatorBytes:[B

    :cond_0
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 391
    invoke-direct {p0, v0, v1}, Lcom/mergbw/core/ui/views/LineColorPickerView;->inBoundOfColorTable(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 392
    iget-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colorPickerChangeListener:Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;

    if-eqz p1, :cond_0

    .line 393
    invoke-interface {p1, p0}, Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;->onStopTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V

    .line 394
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->calcuColor()I

    .line 395
    iget-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colorPickerChangeListener:Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;

    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->currentColor:I

    invoke-interface {p1, p0, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;->onColorChanged(Lcom/mergbw/core/ui/views/LineColorPickerView;I)V

    :cond_0
    return v3

    .line 400
    :cond_1
    iget-object v2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v4, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    const/4 v5, 0x2

    if-ne v2, v4, :cond_2

    .line 401
    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    .line 402
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getHeight()I

    move-result v0

    div-int/2addr v0, v5

    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->getWidth()I

    move-result v0

    div-int/2addr v0, v5

    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    .line 405
    iput v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    .line 407
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    .line 408
    iget-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colorPickerChangeListener:Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;

    if-eqz p1, :cond_3

    .line 409
    invoke-interface {p1, p0}, Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;->onStartTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V

    .line 411
    :cond_3
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->calcuColor()I

    .line 412
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->invalidate()V

    return v3

    .line 414
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 415
    iget-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colorPickerChangeListener:Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;

    if-eqz p1, :cond_5

    .line 416
    invoke-interface {p1, p0}, Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;->onStopTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V

    .line 417
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->calcuColor()I

    .line 418
    iget-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colorPickerChangeListener:Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;

    iget v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->currentColor:I

    invoke-interface {p1, p0, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;->onColorChanged(Lcom/mergbw/core/ui/views/LineColorPickerView;I)V

    .line 420
    :cond_5
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->invalidate()V

    return v3

    .line 422
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 423
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->calcuColor()I

    .line 424
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->invalidate()V

    return v3

    .line 427
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public varargs setColors([I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->linearGradient:Landroid/graphics/LinearGradient;

    .line 293
    iput-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colors:[I

    .line 295
    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    sget-object v2, Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;->HORIZONTAL:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    if-ne v1, v2, :cond_0

    .line 296
    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->linearGradient:Landroid/graphics/LinearGradient;

    goto :goto_0

    .line 304
    :cond_0
    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->linearGradient:Landroid/graphics/LinearGradient;

    :goto_0
    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawColorTable:Z

    .line 314
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 640
    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorColor:I

    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    .line 642
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorPickerChangeListener(Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 491
    iput-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->colorPickerChangeListener:Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;

    return-void
.end method

.method public setOrientation(Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->orientation:Lcom/mergbw/core/ui/views/LineColorPickerView$Orientation;

    const/4 p1, 0x1

    .line 647
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    .line 648
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawColorTable:Z

    .line 649
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->requestLayout()V

    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/mergbw/core/ui/views/LineColorPickerView;->inBoundOfColorTable(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iput p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curX:I

    .line 619
    iput p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->curY:I

    .line 620
    iget-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->mIndicatorEnable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 621
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView;->needReDrawIndicator:Z

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->invalidate()V

    :cond_1
    return-void
.end method

.method public showDefaultColorTable()V
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->createDefaultColorTable()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setColors([I)V

    return-void
.end method
