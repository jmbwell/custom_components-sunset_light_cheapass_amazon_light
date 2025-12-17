.class Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;
.super Ljava/lang/Object;
.source "WhiteNoiseFragment.java"

# interfaces
.implements Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    invoke-virtual {v0}, Lcom/mergbw/android/task/AudioService;->pausePlay()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    invoke-virtual {v0}, Lcom/mergbw/android/task/AudioService;->resumePlay()V

    :cond_0
    return-void
.end method

.method public startPlay(Lcom/mergbw/core/bean/SceneData;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/android/task/AudioService;->startPlay(Landroid/content/Context;I)V

    .line 57
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 58
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    :cond_0
    return-void
.end method
