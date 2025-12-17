.class public Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;
.super Lcom/mergbw/core/ui/BaseSelectFragment;
.source "BaseSceneListFragment.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# static fields
.field private static final REQUEST_AUDIO_PERMISSION:I = 0x64


# instance fields
.field public mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAudioPermission()V
    .locals 9

    .line 41
    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v3, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/mergbw/android/R$string;->need_audio_title:I

    .line 44
    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v2, Lcom/mergbw/android/R$string;->need_audio_content:I

    .line 45
    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v2, 0x1040000

    .line 46
    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x104000a

    .line 47
    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;[Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 53
    invoke-virtual {v1}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onAudioReady()V

    :goto_0
    return-void
.end method

.method synthetic lambda$checkAudioPermission$0$com-mergbw-android-ui-deviceDetail-fragment-BaseSceneListFragment([Ljava/lang/String;Z)V
    .locals 2

    .line 0
    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/mergbw/android/R$string;->need_audio_title:I

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p2, v0, v1, p1}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAudioReady()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    .line 35
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
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

    .line 69
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onAudioReady()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/ui/BaseSelectFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method
