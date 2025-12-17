.class Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$2;
.super Ljava/lang/Object;
.source "DeviceDetailViewModel1.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddDiy(Ljava/lang/Long;)V
    .locals 0

    return-void
.end method

.method public onAddSuccess()V
    .locals 0

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 0

    return-void
.end method

.method public onGetDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 0

    return-void
.end method

.method public onGetDIYColorList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->access$002(Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;Ljava/util/List;)Ljava/util/List;

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/DIYInfoBean;

    .line 103
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getColorValue()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setSubColorList(Ljava/util/List;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYListData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->access$000(Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
