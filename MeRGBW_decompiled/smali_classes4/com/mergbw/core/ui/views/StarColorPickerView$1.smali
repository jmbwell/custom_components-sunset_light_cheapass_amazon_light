.class Lcom/mergbw/core/ui/views/StarColorPickerView$1;
.super Ljava/lang/Object;
.source "StarColorPickerView.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ui/views/StarColorPickerView;->initViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ui/views/StarColorPickerView;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ui/views/StarColorPickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/mergbw/core/ui/views/StarColorPickerView$1;->this$0:Lcom/mergbw/core/ui/views/StarColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/mergbw/core/ui/views/StarColorPickerView$1;->this$0:Lcom/mergbw/core/ui/views/StarColorPickerView;

    invoke-static {v0}, Lcom/mergbw/core/ui/views/StarColorPickerView;->access$000(Lcom/mergbw/core/ui/views/StarColorPickerView;)Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;->tvRPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgressEnd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/mergbw/core/ui/views/StarColorPickerView$1;->this$0:Lcom/mergbw/core/ui/views/StarColorPickerView;

    invoke-static {p1}, Lcom/mergbw/core/ui/views/StarColorPickerView;->access$100(Lcom/mergbw/core/ui/views/StarColorPickerView;)V

    return-void
.end method
