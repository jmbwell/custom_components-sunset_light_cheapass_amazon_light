.class Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2;
.super Ljava/lang/Object;
.source "GroupDetailActivity2.java"

# interfaces
.implements Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;


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

    .line 121
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2;->this$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$clickConnect$0(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1

    .line 140
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method


# virtual methods
.method public checkItem(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2;->this$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->access$000(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->changeChecked(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V

    .line 125
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2;->this$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->access$100(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    return-void
.end method

.method public clickConnect(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2

    .line 140
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clickItem(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1

    .line 130
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/jump/JumpManager;->jumpToDeviceDetail(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public clickPower(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2;->this$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->access$000(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setPowerSingle(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V

    return-void
.end method
