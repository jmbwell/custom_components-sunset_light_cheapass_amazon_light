.class public Ltop/defaults/colorpicker/ColorPickerPopup;
.super Ljava/lang/Object;
.source "ColorPickerPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/defaults/colorpicker/ColorPickerPopup$Builder;,
        Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;
    }
.end annotation


# instance fields
.field private cancelTitle:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private enableAlpha:Z

.field private enableBrightness:Z

.field private initialColor:I

.field private okTitle:Ljava/lang/String;

.field private onlyUpdateOnTouchEventUp:Z

.field private popupWindow:Landroid/widget/PopupWindow;

.field private showIndicator:Z

.field private showValue:Z


# direct methods
.method private constructor <init>(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$000(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->context:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$100(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)I

    move-result v0

    iput v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->initialColor:I

    .line 35
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$200(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->enableBrightness:Z

    .line 36
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$300(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->enableAlpha:Z

    .line 37
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$400(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->okTitle:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$500(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->cancelTitle:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$600(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->showIndicator:Z

    .line 40
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$700(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->showValue:Z

    .line 41
    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->access$800(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->onlyUpdateOnTouchEventUp:Z

    return-void
.end method

.method synthetic constructor <init>(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;Ltop/defaults/colorpicker/ColorPickerPopup$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Ltop/defaults/colorpicker/ColorPickerPopup;-><init>(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Ltop/defaults/colorpicker/ColorPickerPopup;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->showIndicator:Z

    return p0
.end method

.method static synthetic access$1100(Ltop/defaults/colorpicker/ColorPickerPopup;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->showValue:Z

    return p0
.end method

.method static synthetic access$1200(Ltop/defaults/colorpicker/ColorPickerPopup;I)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Ltop/defaults/colorpicker/ColorPickerPopup;->colorHex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ltop/defaults/colorpicker/ColorPickerPopup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 19
    iget-object p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private colorHex(I)Ljava/lang/String;
    .locals 6

    .line 186
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 187
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 188
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 189
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const-string p1, "0x%02X%02X%02X%02X"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 118
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;)V
    .locals 6

    .line 49
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    sget v1, Ltop/defaults/colorpicker/R$layout;->top_defaults_view_color_picker_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    sget v1, Ltop/defaults/colorpicker/R$id;->colorPickerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltop/defaults/colorpicker/ColorPickerView;

    .line 55
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->popupWindow:Landroid/widget/PopupWindow;

    .line 57
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 59
    iget v2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->initialColor:I

    invoke-virtual {v1, v2}, Ltop/defaults/colorpicker/ColorPickerView;->setInitialColor(I)V

    .line 60
    iget-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->enableBrightness:Z

    invoke-virtual {v1, v2}, Ltop/defaults/colorpicker/ColorPickerView;->setEnabledBrightness(Z)V

    .line 61
    iget-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->enableAlpha:Z

    invoke-virtual {v1, v2}, Ltop/defaults/colorpicker/ColorPickerView;->setEnabledAlpha(Z)V

    .line 62
    iget-boolean v2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->onlyUpdateOnTouchEventUp:Z

    invoke-virtual {v1, v2}, Ltop/defaults/colorpicker/ColorPickerView;->setOnlyUpdateOnTouchEventUp(Z)V

    .line 63
    invoke-virtual {v1, p2}, Ltop/defaults/colorpicker/ColorPickerView;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 64
    sget v2, Ltop/defaults/colorpicker/R$id;->cancel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    iget-object v3, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->cancelTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v3, Ltop/defaults/colorpicker/ColorPickerPopup$1;

    invoke-direct {v3, p0}, Ltop/defaults/colorpicker/ColorPickerPopup$1;-><init>(Ltop/defaults/colorpicker/ColorPickerPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v2, Ltop/defaults/colorpicker/R$id;->ok:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    iget-object v3, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->okTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v3, Ltop/defaults/colorpicker/ColorPickerPopup$2;

    invoke-direct {v3, p0, p2, v1}, Ltop/defaults/colorpicker/ColorPickerPopup$2;-><init>(Ltop/defaults/colorpicker/ColorPickerPopup;Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;Ltop/defaults/colorpicker/ColorPickerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget p2, Ltop/defaults/colorpicker/R$id;->colorIndicator:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 85
    sget v2, Ltop/defaults/colorpicker/R$id;->colorHex:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 87
    iget-boolean v3, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->showIndicator:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-boolean v3, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->showValue:Z

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-boolean v3, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->showIndicator:Z

    if-eqz v3, :cond_3

    .line 91
    iget v3, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->initialColor:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    :cond_3
    iget-boolean v3, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->showValue:Z

    if-eqz v3, :cond_4

    .line 94
    iget v3, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->initialColor:I

    invoke-direct {p0, v3}, Ltop/defaults/colorpicker/ColorPickerPopup;->colorHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_4
    new-instance v3, Ltop/defaults/colorpicker/ColorPickerPopup$3;

    invoke-direct {v3, p0, p2, v2}, Ltop/defaults/colorpicker/ColorPickerPopup$3;-><init>(Ltop/defaults/colorpicker/ColorPickerPopup;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Ltop/defaults/colorpicker/ColorPickerView;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 109
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->popupWindow:Landroid/widget/PopupWindow;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 112
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->popupWindow:Landroid/widget/PopupWindow;

    sget v1, Ltop/defaults/colorpicker/R$style;->TopDefaultsViewColorPickerPopupAnimation:I

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    if-nez p1, :cond_5

    move-object p1, v0

    .line 114
    :cond_5
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v0, 0x11

    invoke-virtual {p2, p1, v0, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public show(Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, p1}, Ltop/defaults/colorpicker/ColorPickerPopup;->show(Landroid/view/View;Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;)V

    return-void
.end method
