.class public Ltop/defaults/colorpicker/WarmWheelView;
.super Landroid/widget/FrameLayout;
.source "WarmWheelView.java"

# interfaces
.implements Ltop/defaults/colorpicker/ColorObservable;
.implements Ltop/defaults/colorpicker/Updatable;


# instance fields
.field private centerX:F

.field private centerY:F

.field private currentColor:I

.field private final currentPoint:Landroid/graphics/PointF;

.field private final emitter:Ltop/defaults/colorpicker/ColorObservableEmitter;

.field private final handler:Ltop/defaults/colorpicker/ThrottledTouchEventHandler;

.field private onlyUpdateOnTouchEventUp:Z

.field private radius:F

.field private final selector:Ltop/defaults/colorpicker/ColorWheelSelector;

.field private selectorRadiusPx:F

.field private final stroke:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Ltop/defaults/colorpicker/WarmWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Ltop/defaults/colorpicker/WarmWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x42280000    # 42.0f

    .line 28
    iput p2, p0, Ltop/defaults/colorpicker/WarmWheelView;->selectorRadiusPx:F

    .line 30
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Ltop/defaults/colorpicker/WarmWheelView;->currentPoint:Landroid/graphics/PointF;

    const/4 p2, -0x1

    .line 31
    iput p2, p0, Ltop/defaults/colorpicker/WarmWheelView;->currentColor:I

    .line 36
    new-instance p3, Ltop/defaults/colorpicker/ColorObservableEmitter;

    invoke-direct {p3}, Ltop/defaults/colorpicker/ColorObservableEmitter;-><init>()V

    iput-object p3, p0, Ltop/defaults/colorpicker/WarmWheelView;->emitter:Ltop/defaults/colorpicker/ColorObservableEmitter;

    .line 37
    new-instance p3, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;

    invoke-direct {p3, p0}, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;-><init>(Ltop/defaults/colorpicker/Updatable;)V

    iput-object p3, p0, Ltop/defaults/colorpicker/WarmWheelView;->handler:Ltop/defaults/colorpicker/ThrottledTouchEventHandler;

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v0, 0x1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    iput p3, p0, Ltop/defaults/colorpicker/WarmWheelView;->stroke:F

    .line 51
    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v0, v1

    iput v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->selectorRadiusPx:F

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    new-instance v1, Ltop/defaults/colorpicker/WarmWheelPalette;

    invoke-direct {v1, p1}, Ltop/defaults/colorpicker/WarmWheelPalette;-><init>(Landroid/content/Context;)V

    .line 56
    iget v2, p0, Ltop/defaults/colorpicker/WarmWheelView;->selectorRadiusPx:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p3, v3

    sub-float/2addr v2, p3

    float-to-int p3, v2

    .line 57
    invoke-virtual {v1, p3, p3, p3, p3}, Ltop/defaults/colorpicker/WarmWheelPalette;->setPadding(IIII)V

    .line 58
    invoke-virtual {p0, v1, v0}, Ltop/defaults/colorpicker/WarmWheelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    new-instance p2, Ltop/defaults/colorpicker/ColorWheelSelector;

    invoke-direct {p2, p1}, Ltop/defaults/colorpicker/ColorWheelSelector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltop/defaults/colorpicker/WarmWheelView;->selector:Ltop/defaults/colorpicker/ColorWheelSelector;

    .line 64
    iget p1, p0, Ltop/defaults/colorpicker/WarmWheelView;->selectorRadiusPx:F

    invoke-virtual {p2, p1}, Ltop/defaults/colorpicker/ColorWheelSelector;->setSelectorRadiusPx(F)V

    .line 65
    invoke-virtual {p0, p2, p3}, Ltop/defaults/colorpicker/WarmWheelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getColorAtPoint(FF)I
    .locals 8

    .line 119
    iget v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerX:F

    sub-float/2addr p1, v0

    .line 120
    iget v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerY:F

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const/4 v2, 0x3

    .line 122
    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v4

    const/high16 v4, 0x42700000    # 60.0f

    .line 123
    aput v4, v2, v3

    float-to-double v3, p2

    neg-float v6, p1

    float-to-double v6, v6

    .line 124
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v6

    add-double/2addr v3, v6

    double-to-float v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    aput v3, v2, v5

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getColorAtPoint x: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " y: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " r: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " S: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WarmWheelView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getColorAtPoint R: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " G: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private updateSelector(FFI)V
    .locals 7

    .line 148
    iget v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerX:F

    sub-float/2addr p1, v0

    .line 149
    iget v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerY:F

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 151
    iget v2, p0, Ltop/defaults/colorpicker/WarmWheelView;->radius:F

    float-to-double v3, v2

    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    float-to-double v3, p1

    float-to-double v5, v2

    div-double/2addr v5, v0

    mul-double/2addr v3, v5

    double-to-float p1, v3

    float-to-double v3, p2

    float-to-double v5, v2

    div-double/2addr v5, v0

    mul-double/2addr v3, v5

    double-to-float p2, v3

    .line 155
    :cond_0
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->currentPoint:Landroid/graphics/PointF;

    iget v1, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerX:F

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 156
    iget-object p1, p0, Ltop/defaults/colorpicker/WarmWheelView;->currentPoint:Landroid/graphics/PointF;

    iget v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerY:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 157
    iget-object p1, p0, Ltop/defaults/colorpicker/WarmWheelView;->selector:Ltop/defaults/colorpicker/ColorWheelSelector;

    iget-object p2, p0, Ltop/defaults/colorpicker/WarmWheelView;->currentPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2, p3}, Ltop/defaults/colorpicker/ColorWheelSelector;->setCurrentPoint(Landroid/graphics/PointF;I)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 172
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->emitter:Ltop/defaults/colorpicker/ColorObservableEmitter;

    invoke-virtual {v0}, Ltop/defaults/colorpicker/ColorObservableEmitter;->getColor()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 72
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 76
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 77
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 76
    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    .line 83
    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmWheelView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 84
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p3, p4

    iget v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->selectorRadiusPx:F

    sub-float/2addr p3, v0

    iput p3, p0, Ltop/defaults/colorpicker/WarmWheelView;->radius:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, p4

    .line 86
    iput p1, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerX:F

    int-to-float p1, p2

    mul-float/2addr p1, p4

    .line 87
    iput p1, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerY:F

    .line 88
    iget p1, p0, Ltop/defaults/colorpicker/WarmWheelView;->currentColor:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ltop/defaults/colorpicker/WarmWheelView;->setColor(IZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 104
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Ltop/defaults/colorpicker/WarmWheelView;->update(Landroid/view/MotionEvent;)V

    return v1

    .line 98
    :cond_1
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->handler:Ltop/defaults/colorpicker/ThrottledTouchEventHandler;

    invoke-virtual {v0, p1}, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public setColor(IZ)V
    .locals 9

    const/4 v0, 0x3

    .line 136
    new-array v0, v0, [F

    .line 137
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    .line 138
    aget v1, v0, v1

    iget v2, p0, Ltop/defaults/colorpicker/WarmWheelView;->radius:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    .line 139
    aget v0, v0, v2

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v0, v3

    float-to-double v3, v0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    double-to-float v0, v3

    float-to-double v3, v1

    float-to-double v5, v0

    .line 140
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    iget v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerX:F

    float-to-double v7, v0

    add-double/2addr v3, v7

    double-to-float v0, v3

    neg-float v1, v1

    float-to-double v3, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget v1, p0, Ltop/defaults/colorpicker/WarmWheelView;->centerY:F

    float-to-double v5, v1

    add-double/2addr v3, v5

    double-to-float v1, v3

    invoke-direct {p0, v0, v1, p1}, Ltop/defaults/colorpicker/WarmWheelView;->updateSelector(FFI)V

    .line 141
    iput p1, p0, Ltop/defaults/colorpicker/WarmWheelView;->currentColor:I

    .line 142
    iget-boolean v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->onlyUpdateOnTouchEventUp:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->emitter:Ltop/defaults/colorpicker/ColorObservableEmitter;

    invoke-virtual {v0, p1, v2, p2}, Ltop/defaults/colorpicker/ColorObservableEmitter;->onColor(IZZ)V

    :cond_0
    return-void
.end method

.method public setOnlyUpdateOnTouchEventUp(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Ltop/defaults/colorpicker/WarmWheelView;->onlyUpdateOnTouchEventUp:Z

    return-void
.end method

.method public subscribe(Ltop/defaults/colorpicker/ColorObserver;)V
    .locals 1

    .line 162
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->emitter:Ltop/defaults/colorpicker/ColorObservableEmitter;

    invoke-virtual {v0, p1}, Ltop/defaults/colorpicker/ColorObservableEmitter;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    return-void
.end method

.method public unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V
    .locals 1

    .line 167
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmWheelView;->emitter:Ltop/defaults/colorpicker/ColorObservableEmitter;

    invoke-virtual {v0, p1}, Ltop/defaults/colorpicker/ColorObservableEmitter;->unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    return-void
.end method

.method public update(Landroid/view/MotionEvent;)V
    .locals 5

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 112
    :goto_0
    iget-boolean v3, p0, Ltop/defaults/colorpicker/WarmWheelView;->onlyUpdateOnTouchEventUp:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    .line 113
    :cond_1
    iget-object v3, p0, Ltop/defaults/colorpicker/WarmWheelView;->emitter:Ltop/defaults/colorpicker/ColorObservableEmitter;

    invoke-direct {p0, v0, v1}, Ltop/defaults/colorpicker/WarmWheelView;->getColorAtPoint(FF)I

    move-result v4

    invoke-virtual {v3, v4, v2, p1}, Ltop/defaults/colorpicker/ColorObservableEmitter;->onColor(IZZ)V

    .line 115
    :cond_2
    invoke-direct {p0, v0, v1}, Ltop/defaults/colorpicker/WarmWheelView;->getColorAtPoint(FF)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Ltop/defaults/colorpicker/WarmWheelView;->updateSelector(FFI)V

    return-void
.end method
