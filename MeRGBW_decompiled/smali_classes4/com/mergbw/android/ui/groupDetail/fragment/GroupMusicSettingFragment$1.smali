.class Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment$1;
.super Ljava/lang/Object;
.source "GroupMusicSettingFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->access$000(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;)Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    move-result-object p1

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

    .line 71
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->access$100(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;)Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->setMusicSens(I)V

    return-void
.end method
