.class public Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CheckerboardDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;
    }
.end annotation


# instance fields
.field private colorEven:I

.field private colorOdd:I

.field private paint:Landroid/graphics/Paint;

.field private size:I


# direct methods
.method private constructor <init>(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->paint:Landroid/graphics/Paint;

    .line 26
    invoke-static {p1}, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->access$000(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)I

    move-result v0

    iput v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->size:I

    .line 27
    invoke-static {p1}, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->access$100(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)I

    move-result v0

    iput v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->colorOdd:I

    .line 28
    invoke-static {p1}, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->access$200(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)I

    move-result p1

    iput p1, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->colorEven:I

    .line 29
    invoke-direct {p0}, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->configurePaint()V

    return-void
.end method

.method synthetic constructor <init>(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;-><init>(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)V

    return-void
.end method

.method private configurePaint()V
    .locals 6

    .line 33
    iget v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->size:I

    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->size:I

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    iget v4, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->colorOdd:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 44
    iget v4, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->size:I

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 45
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 47
    iget v4, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->colorEven:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget v4, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->size:I

    neg-int v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 49
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 51
    iget v4, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->size:I

    neg-int v5, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 52
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    iget-object v1, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public static create()Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;
    .locals 2

    .line 22
    new-instance v0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;

    new-instance v1, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;

    invoke-direct {v1}, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;-><init>()V

    invoke-direct {v0, v1}, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;-><init>(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 59
    iget-object v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 69
    iget-object v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
