.class Ltop/defaults/colorpicker/ColorPickerPopup$1;
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


# direct methods
.method constructor <init>(Ltop/defaults/colorpicker/ColorPickerPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$1;->this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$1;->this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

    invoke-static {p1}, Ltop/defaults/colorpicker/ColorPickerPopup;->access$900(Ltop/defaults/colorpicker/ColorPickerPopup;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
