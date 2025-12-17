.class Lcom/mergbw/core/ui/views/CommonColorPickerView$1;
.super Ljava/lang/Object;
.source "CommonColorPickerView.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ui/views/CommonColorPickerView;->initViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ui/views/CommonColorPickerView;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ui/views/CommonColorPickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView$1;->this$0:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(Lcom/mergbw/core/ui/views/LineColorPickerView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picker",
            "color"
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView$1;->this$0:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-static {p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->access$000(Lcom/mergbw/core/ui/views/CommonColorPickerView;)I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView$1;->this$0:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-static {p1, p2}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->access$002(Lcom/mergbw/core/ui/views/CommonColorPickerView;I)I

    .line 79
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView$1;->this$0:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    const/4 v0, 0x2

    invoke-static {p1, v0, p2}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->access$100(Lcom/mergbw/core/ui/views/CommonColorPickerView;II)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picker"
        }
    .end annotation

    return-void
.end method

.method public onStopTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picker"
        }
    .end annotation

    return-void
.end method
