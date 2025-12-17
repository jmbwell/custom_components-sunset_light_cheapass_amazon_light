.class Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$1;
.super Ljava/lang/Object;
.source "GroupDetailActivity2.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$1;->this$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartTrackingTouch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$1;->this$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->access$000(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setBrightness(I)V

    return-void
.end method
