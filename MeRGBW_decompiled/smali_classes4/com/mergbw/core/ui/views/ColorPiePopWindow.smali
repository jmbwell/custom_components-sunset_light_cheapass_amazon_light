.class public Lcom/mergbw/core/ui/views/ColorPiePopWindow;
.super Landroid/widget/PopupWindow;
.source "ColorPiePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/ColorPiePopWindow$OnColorPickListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/mergbw/core/ui/views/ColorPiePopWindow$OnColorPickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mergbw/core/ui/views/ColorPiePopWindow$OnColorPickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->mListener:Lcom/mergbw/core/ui/views/ColorPiePopWindow$OnColorPickListener;

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/PopColorPieBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/PopColorPieBinding;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/PopColorPieBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, -0x1

    .line 23
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->setWidth(I)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->setHeight(I)V

    const/4 p2, 0x1

    .line 25
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->setFocusable(Z)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->setOutsideTouchable(Z)V

    .line 28
    sget p2, Lcom/mergbw/core/R$style;->pop_anim:I

    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->setAnimationStyle(I)V

    .line 30
    iget-object p2, p1, Lcom/mergbw/core/databinding/PopColorPieBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/core/ui/views/ColorPiePopWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/ColorPiePopWindow$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/views/ColorPiePopWindow;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p1, Lcom/mergbw/core/databinding/PopColorPieBinding;->viewColorPie:Ltop/defaults/colorpicker/ColorPickerView;

    new-instance p2, Lcom/mergbw/core/ui/views/ColorPiePopWindow$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/core/ui/views/ColorPiePopWindow$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/views/ColorPiePopWindow;)V

    invoke-virtual {p1, p2}, Ltop/defaults/colorpicker/ColorPickerView;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-mergbw-core-ui-views-ColorPiePopWindow(Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$1$com-mergbw-core-ui-views-ColorPiePopWindow(IZZ)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 32
    iget-object p2, p0, Lcom/mergbw/core/ui/views/ColorPiePopWindow;->mListener:Lcom/mergbw/core/ui/views/ColorPiePopWindow$OnColorPickListener;

    if-eqz p2, :cond_0

    .line 33
    invoke-interface {p2, p1}, Lcom/mergbw/core/ui/views/ColorPiePopWindow$OnColorPickListener;->onColorValue(I)V

    :cond_0
    return-void
.end method
