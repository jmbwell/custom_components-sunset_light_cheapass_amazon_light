.class public Ltop/defaults/colorpicker/WarmColorPickerView;
.super Landroid/widget/LinearLayout;
.source "WarmColorPickerView.java"

# interfaces
.implements Ltop/defaults/colorpicker/ColorObservable;


# instance fields
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

.field private final warmWheelView:Ltop/defaults/colorpicker/WarmWheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Ltop/defaults/colorpicker/WarmColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Ltop/defaults/colorpicker/WarmColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observers:Ljava/util/List;

    const/4 p3, 0x1

    .line 30
    invoke-virtual {p0, p3}, Ltop/defaults/colorpicker/WarmColorPickerView;->setOrientation(I)V

    .line 32
    sget-object p3, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 33
    sget p3, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView_onlyUpdateOnTouchEventUp:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->onlyUpdateOnTouchEventUp:Z

    .line 34
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    new-instance p2, Ltop/defaults/colorpicker/WarmWheelView;

    invoke-direct {p2, p1}, Ltop/defaults/colorpicker/WarmWheelView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->warmWheelView:Ltop/defaults/colorpicker/WarmWheelView;

    .line 37
    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 p3, 0x0

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 40
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {p0, p2, p3}, Ltop/defaults/colorpicker/WarmColorPickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-direct {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->updateObservableOnDuty()V

    .line 43
    invoke-virtual {p0, p1, p1, p1, p1}, Ltop/defaults/colorpicker/WarmColorPickerView;->setPadding(IIII)V

    return-void
.end method

.method private updateObservableOnDuty()V
    .locals 5

    .line 65
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/defaults/colorpicker/ColorObserver;

    .line 67
    iget-object v2, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v2, v1}, Ltop/defaults/colorpicker/ColorObservable;->unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->warmWheelView:Ltop/defaults/colorpicker/WarmWheelView;

    iput-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    .line 72
    iget-boolean v1, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->onlyUpdateOnTouchEventUp:Z

    invoke-virtual {v0, v1}, Ltop/defaults/colorpicker/WarmWheelView;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 74
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/defaults/colorpicker/ColorObserver;

    .line 76
    iget-object v2, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v2, v1}, Ltop/defaults/colorpicker/ColorObservable;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 77
    iget-object v2, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v2}, Ltop/defaults/colorpicker/ColorObservable;->getColor()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Ltop/defaults/colorpicker/ColorObserver;->onColor(IZZ)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 98
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v0}, Ltop/defaults/colorpicker/ColorObservable;->getColor()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 54
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 56
    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v1, v0, v1

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnlyUpdateOnTouchEventUp(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->onlyUpdateOnTouchEventUp:Z

    .line 48
    invoke-direct {p0}, Ltop/defaults/colorpicker/WarmColorPickerView;->updateObservableOnDuty()V

    return-void
.end method

.method public subscribe(Ltop/defaults/colorpicker/ColorObserver;)V
    .locals 1

    .line 86
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v0, p1}, Ltop/defaults/colorpicker/ColorObservable;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 87
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V
    .locals 1

    .line 92
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observableOnDuty:Ltop/defaults/colorpicker/ColorObservable;

    invoke-interface {v0, p1}, Ltop/defaults/colorpicker/ColorObservable;->unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 93
    iget-object v0, p0, Ltop/defaults/colorpicker/WarmColorPickerView;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
