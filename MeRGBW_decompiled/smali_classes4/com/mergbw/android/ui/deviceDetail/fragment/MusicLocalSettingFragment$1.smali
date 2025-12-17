.class Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;
.super Ljava/lang/Object;
.source "MusicLocalSettingFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->tvSensitivePercent:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 75
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->access$002(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;I)I

    .line 76
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mergbw/android/UserinfoManage;->setAudioSensitive(I)V

    .line 77
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setAudioSensitive(I)V

    return-void
.end method
