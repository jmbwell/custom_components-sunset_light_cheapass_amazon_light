.class Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$1;
.super Ljava/lang/Object;
.source "StarColorSettingFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->tvSpeedPercent:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->setMotorSpeed(I)V

    return-void
.end method
