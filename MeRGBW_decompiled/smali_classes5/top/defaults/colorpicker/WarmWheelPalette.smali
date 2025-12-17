.class public Ltop/defaults/colorpicker/WarmWheelPalette;
.super Landroid/view/View;
.source "WarmWheelPalette.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field private final huePaint:Landroid/graphics/Paint;

.field private radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Ltop/defaults/colorpicker/WarmWheelPalette;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Ltop/defaults/colorpicker/WarmWheelPalette;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->huePaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 51
    iget v0, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->centerX:F

    iget v1, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->centerY:F

    iget v2, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->radius:F

    iget-object v3, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->huePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelPalette;->getPaddingLeft()I

    move-result p3

    sub-int p3, p1, p3

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelPalette;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 39
    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelPalette;->getPaddingTop()I

    move-result p4

    sub-int p4, p2, p4

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelPalette;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, v0

    .line 40
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p3, p4

    iput p3, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->radius:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, p4

    .line 42
    iput p1, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->centerX:F

    int-to-float p1, p2

    mul-float/2addr p1, p4

    .line 43
    iput p1, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->centerY:F

    .line 45
    new-instance p1, Landroid/graphics/SweepGradient;

    iget p2, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->centerX:F

    iget p3, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->centerY:F

    const/16 p4, -0x100

    const/4 v0, -0x1

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 46
    iget-object p2, p0, Ltop/defaults/colorpicker/WarmWheelPalette;->huePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
