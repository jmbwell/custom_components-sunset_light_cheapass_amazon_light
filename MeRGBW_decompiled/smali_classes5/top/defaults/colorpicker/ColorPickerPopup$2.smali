.class Ltop/defaults/colorpicker/ColorPickerPopup$2;
.super Ljava/lang/Object;
.source "ColorPickerPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/defaults/colorpicker/ColorPickerPopup;->show(Landroid/view/View;Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

.field final synthetic val$colorPickerView:Ltop/defaults/colorpicker/ColorPickerView;

.field final synthetic val$observer:Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;


# direct methods
.method constructor <init>(Ltop/defaults/colorpicker/ColorPickerPopup;Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;Ltop/defaults/colorpicker/ColorPickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$2;->this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

    iput-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup$2;->val$observer:Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;

    iput-object p3, p0, Ltop/defaults/colorpicker/ColorPickerPopup$2;->val$colorPickerView:Ltop/defaults/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$2;->this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup;->access$900(Ltop/defaults/colorpicker/ColorPickerPopup;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 78
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$2;->val$observer:Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$2;->val$colorPickerView:Ltop/defaults/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Ltop/defaults/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;->onColorPicked(I)V

    :cond_0
    return-void
.end method
