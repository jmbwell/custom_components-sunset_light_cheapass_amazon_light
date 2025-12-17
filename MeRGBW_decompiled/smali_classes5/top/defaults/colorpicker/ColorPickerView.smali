.class public Ltop/defaults/colorpicker/ColorPickerView;
.super Landroid/widget/LinearLayout;
.source "ColorPickerView.java"

# interfaces
.implements Ltop/defaults/colorpicker/ColorObservable;


# instance fields
.field private alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

.field private brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

.field private final colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

.field private initialColor:I

.field private observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

.field observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/defaults/colorpicker/ColorObserver;",
            ">;"
        }
    .end annotation
.end field

.field private onlyUpdateOnTouchEventUp:Z

.field private final sliderHeight:I

.field private final sliderMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Ltop/defaults/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Ltop/defaults/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 23
    iput p3, p0, Ltop/defaults/colorpicker/ColorPickerView;->initialColor:I

    .line 191
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ltop/defaults/colorpicker/ColorPickerView;->observers:Ljava/util/List;

    const/4 p3, 0x1

    .line 38
    invoke-virtual {p0, p3}, Ltop/defaults/colorpicker/ColorPickerView;->setOrientation(I)V

    .line 40
    sget-object p3, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 41
    sget p3, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView_enableAlpha:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 42
    sget v1, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView_enableBrightness:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 43
    sget v2, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView_onlyUpdateOnTouchEventUp:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->onlyUpdateOnTouchEventUp:Z

    .line 44
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    new-instance p2, Ltop/defaults/colorpicker/ColorWheelView;

    invoke-direct {p2, p1}, Ltop/defaults/colorpicker/ColorWheelView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltop/defaults/colorpicker/ColorPickerView;->colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

    .line 47
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 49
    iput v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderMargin:I

    .line 50
    iput v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderHeight:I

    .line 52
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    invoke-virtual {p0, p2, v0}, Ltop/defaults/colorpicker/ColorPickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0, v1}, Ltop/defaults/colorpicker/ColorPickerView;->setEnabledBrightness(Z)V

    .line 57
    invoke-virtual {p0, p3}, Ltop/defaults/colorpicker/ColorPickerView;->setEnabledAlpha(Z)V

    .line 59
    invoke-virtual {p0, p1, p1, p1, p1}, Ltop/defaults/colorpicker/ColorPickerView;->setPadding(IIII)V

    return-void
.end method

.method private updateObservableOnDuty()V
    .locals 5

    .line 152
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/defaults/colorpicker/ColorObserver;

    .line 154
    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v2, v1}, Ltop/defaults/colorpicker/ColorObservable;->unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltop/defaults/colorpicker/ColorWheelView;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 159
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0, v1}, Ltop/defaults/colorpicker/BrightnessSliderView;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 162
    :cond_1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0, v1}, Ltop/defaults/colorpicker/AlphaSliderView;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 166
    :cond_2
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    if-nez v0, :cond_3

    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    if-nez v2, :cond_3

    .line 167
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

    iput-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    .line 168
    iget-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->onlyUpdateOnTouchEventUp:Z

    invoke-virtual {v0, v2}, Ltop/defaults/colorpicker/ColorWheelView;->setOnlyUpdateOnTouchEventUp(Z)V

    goto :goto_1

    .line 170
    :cond_3
    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    if-eqz v2, :cond_4

    .line 171
    iput-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    .line 172
    iget-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->onlyUpdateOnTouchEventUp:Z

    invoke-virtual {v2, v0}, Ltop/defaults/colorpicker/AlphaSliderView;->setOnlyUpdateOnTouchEventUp(Z)V

    goto :goto_1

    .line 174
    :cond_4
    iput-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    .line 175
    iget-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->onlyUpdateOnTouchEventUp:Z

    invoke-virtual {v0, v2}, Ltop/defaults/colorpicker/BrightnessSliderView;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 179
    :goto_1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observers:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/defaults/colorpicker/ColorObserver;

    .line 181
    iget-object v3, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v3, v2}, Ltop/defaults/colorpicker/ColorObservable;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 182
    iget-object v3, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v3}, Ltop/defaults/colorpicker/ColorObservable;->getColor()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4}, Ltop/defaults/colorpicker/ColorObserver;->onColor(IZZ)V

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 207
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v0}, Ltop/defaults/colorpicker/ColorObservable;->getColor()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 72
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 73
    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    if-eqz v2, :cond_0

    .line 74
    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderMargin:I

    iget v3, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderHeight:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 76
    :cond_0
    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    if-eqz v2, :cond_1

    .line 77
    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderMargin:I

    iget v3, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderHeight:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 80
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 81
    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v1, v0, v1

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 82
    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    if-eqz v2, :cond_2

    .line 83
    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderMargin:I

    iget v3, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderHeight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 85
    :cond_2
    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    if-eqz v2, :cond_3

    .line 86
    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderMargin:I

    iget v3, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderHeight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 89
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 90
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 188
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->initialColor:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltop/defaults/colorpicker/ColorWheelView;->setColor(IZ)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 99
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ltop/defaults/colorpicker/ColorWheelView;->setColor(IZ)V

    return-void
.end method

.method public setEnabledAlpha(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    if-nez p1, :cond_0

    .line 129
    new-instance p1, Ltop/defaults/colorpicker/AlphaSliderView;

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ltop/defaults/colorpicker/AlphaSliderView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    .line 130
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    iget v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderMargin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 132
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    invoke-virtual {p0, v0, p1}, Ltop/defaults/colorpicker/ColorPickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_0
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    if-nez p1, :cond_1

    .line 137
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

    .line 139
    :cond_1
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    invoke-virtual {v0, p1}, Ltop/defaults/colorpicker/AlphaSliderView;->bind(Ltop/defaults/colorpicker/ColorObservable;)V

    .line 140
    invoke-direct {p0}, Ltop/defaults/colorpicker/ColorPickerView;->updateObservableOnDuty()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    if-eqz p1, :cond_3

    .line 143
    invoke-virtual {p1}, Ltop/defaults/colorpicker/AlphaSliderView;->unbind()V

    .line 144
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    invoke-virtual {p0, p1}, Ltop/defaults/colorpicker/ColorPickerView;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    .line 147
    :cond_3
    invoke-direct {p0}, Ltop/defaults/colorpicker/ColorPickerView;->updateObservableOnDuty()V

    :goto_0
    return-void
.end method

.method public setEnabledBrightness(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    if-nez p1, :cond_0

    .line 105
    new-instance p1, Ltop/defaults/colorpicker/BrightnessSliderView;

    invoke-virtual {p0}, Ltop/defaults/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Ltop/defaults/colorpicker/BrightnessSliderView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    .line 106
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderHeight:I

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    iget v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->sliderMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 108
    iget-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    invoke-virtual {p0, v1, v0, p1}, Ltop/defaults/colorpicker/ColorPickerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_0
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    iget-object v1, p0, Ltop/defaults/colorpicker/ColorPickerView;->colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

    invoke-virtual {p1, v1}, Ltop/defaults/colorpicker/BrightnessSliderView;->bind(Ltop/defaults/colorpicker/ColorObservable;)V

    .line 111
    invoke-direct {p0}, Ltop/defaults/colorpicker/ColorPickerView;->updateObservableOnDuty()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p1}, Ltop/defaults/colorpicker/BrightnessSliderView;->unbind()V

    .line 115
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    invoke-virtual {p0, p1}, Ltop/defaults/colorpicker/ColorPickerView;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->brightnessSliderView:Ltop/defaults/colorpicker/BrightnessSliderView;

    .line 118
    :cond_2
    invoke-direct {p0}, Ltop/defaults/colorpicker/ColorPickerView;->updateObservableOnDuty()V

    .line 121
    :goto_0
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->alphaSliderView:Ltop/defaults/colorpicker/AlphaSliderView;

    if-eqz p1, :cond_3

    .line 122
    invoke-virtual {p0, v0}, Ltop/defaults/colorpicker/ColorPickerView;->setEnabledAlpha(Z)V

    :cond_3
    return-void
.end method

.method public setInitialColor(I)V
    .locals 2

    .line 94
    iput p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->initialColor:I

    .line 95
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->colorWheelView:Ltop/defaults/colorpicker/ColorWheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ltop/defaults/colorpicker/ColorWheelView;->setColor(IZ)V

    return-void
.end method

.method public setOnlyUpdateOnTouchEventUp(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Ltop/defaults/colorpicker/ColorPickerView;->onlyUpdateOnTouchEventUp:Z

    .line 64
    invoke-direct {p0}, Ltop/defaults/colorpicker/ColorPickerView;->updateObservableOnDuty()V

    return-void
.end method

.method public subscribe(Ltop/defaults/colorpicker/ColorObserver;)V
    .locals 1

    .line 195
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v0, p1}, Ltop/defaults/colorpicker/ColorObservable;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 196
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V
    .locals 1

    .line 201
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v0, p1}, Ltop/defaults/colorpicker/ColorObservable;->unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 202
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerView;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
