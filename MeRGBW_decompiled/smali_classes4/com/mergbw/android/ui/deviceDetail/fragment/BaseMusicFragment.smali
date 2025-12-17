.class public Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;
.super Lcom/mergbw/core/ui/BaseSelectFragment;
.source "BaseMusicFragment.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# static fields
.field private static final REQUEST_AUDIO_PERMISSION:I = 0x64


# instance fields
.field public mAudioService:Lcom/mergbw/android/task/AudioService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;-><init>()V

    .line 76
    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;)V

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .line 92
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/mergbw/android/task/AudioService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected bindServiceSuccess()V
    .locals 0

    return-void
.end method

.method public checkAudioPermission()V
    .locals 9

    .line 36
    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v3, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/mergbw/android/R$string;->need_audio_title:I

    .line 39
    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v2, Lcom/mergbw/android/R$string;->need_audio_content:I

    .line 40
    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v2, 0x1040000

    .line 41
    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x104000a

    .line 42
    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;[Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 49
    invoke-virtual {v1}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onAudioReady()V

    :goto_0
    return-void
.end method

.method synthetic lambda$checkAudioPermission$0$com-mergbw-android-ui-deviceDetail-fragment-BaseMusicFragment([Ljava/lang/String;Z)V
    .locals 1

    .line 0
    if-eqz p2, :cond_0

    .line 45
    sget p2, Lcom/mergbw/android/R$string;->need_audio_title:I

    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x64

    invoke-static {p0, p2, v0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroidx/fragment/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 46
    const-string p1, "requestPermissions REQUEST_AUDIO_PERMISSION"

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAudioReady()V
    .locals 0

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onAudioReady()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/ui/BaseSelectFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestPermissionsResult requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallback(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/mergbw/android/task/AudioService;->removeCallBack(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCallback(Ljava/lang/String;Lcom/mergbw/android/task/IAudioCallback;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/mergbw/android/task/AudioService;->addCallBack(Ljava/lang/String;Lcom/mergbw/android/task/IAudioCallback;)V

    :cond_0
    return-void
.end method

.method public unBindService()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
