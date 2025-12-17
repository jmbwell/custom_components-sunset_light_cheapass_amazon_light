.class public Ltop/defaults/colorpicker/ColorWheelPalette;
.super Landroid/view/View;
.source "ColorWheelPalette.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field private huePaint:Landroid/graphics/Paint;

.field private radius:F

.field private saturationPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Ltop/defaults/colorpicker/ColorWheelPalette;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Ltop/defaults/colorpicker/ColorWheelPalette;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->huePaint:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->saturationPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 59
    iget v0, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerX:F

    iget v1, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerY:F

    iget v2, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->radius:F

    iget-object v3, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->huePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    iget v0, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerX:F

    iget v1, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerY:F

    iget v2, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->radius:F

    iget-object v3, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->saturationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .line 40
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorWheelPalette;->getPaddingLeft()I

    move-result p3

    sub-int p3, p1, p3

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorWheelPalette;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 41
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorWheelPalette;->getPaddingTop()I

    move-result p4

    sub-int p4, p2, p4

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorWheelPalette;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, v0

    .line 42
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p3, p4

    iput p3, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->radius:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, p4

    .line 44
    iput p1, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerX:F

    int-to-float p1, p2

    mul-float/2addr p1, p4

    .line 45
    iput p1, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerY:F

    .line 47
    new-instance p1, Landroid/graphics/SweepGradient;

    iget p2, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerX:F

    iget p3, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerY:F

    const/4 p4, 0x7

    new-array p4, p4, [I

    fill-array-data p4, :array_0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 50
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->huePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    new-instance p1, Landroid/graphics/RadialGradient;

    iget v1, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerX:F

    iget v2, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->centerY:F

    iget v3, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->radius:F

    const v5, 0xffffff

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 54
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorWheelPalette;->saturationPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method
