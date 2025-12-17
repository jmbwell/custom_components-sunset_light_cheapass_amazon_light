.class Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$2;
.super Ljava/lang/Object;
.source "DeviceUpgradeViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddSuccess()V
    .locals 0

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 0

    return-void
.end method

.method public onGetRecordList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->access$200(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
