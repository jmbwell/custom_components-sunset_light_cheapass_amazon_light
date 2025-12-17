.class Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$1;
.super Ljava/lang/Object;
.source "IlluminatingSettingFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColdAndWarmBrightness(I)V

    return-void
.end method
