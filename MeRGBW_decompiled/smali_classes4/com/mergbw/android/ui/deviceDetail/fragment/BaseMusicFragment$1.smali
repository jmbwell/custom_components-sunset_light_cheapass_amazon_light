.class Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$1;
.super Ljava/lang/Object;
.source "BaseMusicFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 79
    const-string p1, "BindServiceSuccess"

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;

    check-cast p2, Lcom/mergbw/android/task/AudioService$MessageBinder;

    invoke-virtual {p2}, Lcom/mergbw/android/task/AudioService$MessageBinder;->getService()Lcom/mergbw/android/task/AudioService;

    move-result-object p2

    iput-object p2, p1, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->bindServiceSuccess()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 86
    const-string p1, "onServiceDisconnected"

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->mAudioService:Lcom/mergbw/android/task/AudioService;

    return-void
.end method
