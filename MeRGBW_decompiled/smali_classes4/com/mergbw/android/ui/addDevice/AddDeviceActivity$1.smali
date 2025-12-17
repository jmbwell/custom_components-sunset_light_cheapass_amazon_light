.class Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;
.super Ljava/lang/Object;
.source "AddDeviceActivity.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->showAliasPop(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;

.field final synthetic val$deviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;

    iput-object p2, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;->val$deviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;->val$deviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setAliasName(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;)Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;->val$deviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->addDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public onSkip()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;)Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;->val$deviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->addDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method
