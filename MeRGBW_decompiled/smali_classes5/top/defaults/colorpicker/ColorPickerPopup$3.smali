.class Ltop/defaults/colorpicker/ColorPickerPopup$3;
.super Ljava/lang/Object;
.source "ColorPickerPopup.java"

# interfaces
.implements Ltop/defaults/colorpicker/ColorObserver;


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

.field final synthetic val$colorHex:Landroid/widget/TextView;

.field final synthetic val$colorIndicator:Landroid/view/View;


# direct methods
.method constructor <init>(Ltop/defaults/colorpicker/ColorPickerPopup;Landroid/view/View;Landroid/widget/TextView;)V
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

    .line 96
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$3;->this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

    iput-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup$3;->val$colorIndicator:Landroid/view/View;

    iput-object p3, p0, Ltop/defaults/colorpicker/ColorPickerPopup$3;->val$colorHex:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColor(IZZ)V
    .locals 0

    .line 99
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup$3;->this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

    invoke-static {p2}, Ltop/defaults/colorpicker/ColorPickerPopup;->access$1000(Ltop/defaults/colorpicker/ColorPickerPopup;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup$3;->val$colorIndicator:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    :cond_0
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup$3;->this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

    invoke-static {p2}, Ltop/defaults/colorpicker/ColorPickerPopup;->access$1100(Ltop/defaults/colorpicker/ColorPickerPopup;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 103
    iget-object p2, p0, Ltop/defaults/colorpicker/ColorPickerPopup$3;->val$colorHex:Landroid/widget/TextView;

    iget-object p3, p0, Ltop/defaults/colorpicker/ColorPickerPopup$3;->this$0:Ltop/defaults/colorpicker/ColorPickerPopup;

    invoke-static {p3, p1}, Ltop/defaults/colorpicker/ColorPickerPopup;->access$1200(Ltop/defaults/colorpicker/ColorPickerPopup;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
