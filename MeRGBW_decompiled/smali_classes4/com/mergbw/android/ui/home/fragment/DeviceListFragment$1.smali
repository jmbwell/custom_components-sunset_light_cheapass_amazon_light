.class Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$1;
.super Ljava/lang/Object;
.source "DeviceListFragment.java"

# interfaces
.implements Lcom/mergbw/android/ui/home/adapter/IDeviceListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->initListType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$1;->this$0:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickDeviceItem(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$1;->this$0:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->access$000(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/jump/JumpManager;->jumpToDeviceDetail(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    :cond_0
    return-void
.end method

.method public clickPower(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 96
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    .line 97
    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpen(Z)V

    .line 98
    iget-object p2, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$1;->this$0:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    invoke-static {p2}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->access$100(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;)Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    move-result-object p2

    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->sendData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method
