.class Lcom/mergbw/android/task/SortDeviceDataTask$1;
.super Ljava/lang/Object;
.source "SortDeviceDataTask.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/task/SortDeviceDataTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/task/SortDeviceDataTask;


# direct methods
.method constructor <init>(Lcom/mergbw/android/task/SortDeviceDataTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/mergbw/android/task/SortDeviceDataTask$1;->this$0:Lcom/mergbw/android/task/SortDeviceDataTask;

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

.method public onGetDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    return-void
.end method

.method public onGetDeviceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/mergbw/android/task/SortDeviceDataTask$1;->this$0:Lcom/mergbw/android/task/SortDeviceDataTask;

    invoke-static {v0, p1}, Lcom/mergbw/android/task/SortDeviceDataTask;->access$000(Lcom/mergbw/android/task/SortDeviceDataTask;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
