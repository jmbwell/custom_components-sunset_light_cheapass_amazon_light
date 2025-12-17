.class public Ltop/defaults/colorpicker/ColorWheelSelector;
.super Landroid/view/View;
.source "ColorWheelSelector.java"


# instance fields
.field private currentColor:I

.field private currentPoint:Landroid/graphics/PointF;

.field private final selectorPaint:Landroid/graphics/Paint;

.field private selectorRadiusPx:F

.field private final strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Ltop/defaults/colorpicker/ColorWheelSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Ltop/defaults/colorpicker/ColorWheelSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, 0x42200000    # 40.0f

    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorRadiusPx:F

    .line 24
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->currentPoint:Landroid/graphics/PointF;

    .line 28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->strokeWidth:F

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 47
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorPaint:Landroid/graphics/Paint;

    iget v1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorPaint:Landroid/graphics/Paint;

    const-string v1, "#FFF1F1F1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->currentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->currentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorRadiusPx:F

    iget v3, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->strokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 53
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorPaint:Landroid/graphics/Paint;

    iget v1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->currentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->currentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->currentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorRadiusPx:F

    iget v3, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->strokeWidth:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCurrentPoint(Landroid/graphics/PointF;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->currentPoint:Landroid/graphics/PointF;

    .line 64
    iput p2, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->currentColor:I

    .line 65
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorWheelSelector;->invalidate()V

    return-void
.end method

.method public setSelectorRadiusPx(F)V
    .locals 0

    .line 59
    iput p1, p0, Ltop/defaults/colorpicker/ColorWheelSelector;->selectorRadiusPx:F

    return-void
.end method
