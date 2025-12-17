.class Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$3;
.super Lcom/mergbw/core/network/factory/FactoryDataCallback;
.source "BaseDeviceDetailViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;-><init>(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$3;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/network/factory/FactoryDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFactoryActivityResult(ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/network/factory/FactoryDataCallback;->onFactoryActivityResult(ZLjava/lang/String;Ljava/util/List;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 164
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$3;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->access$200(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFactoryInfoResult(ZLjava/lang/String;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/network/factory/FactoryDataCallback;->onFactoryInfoResult(ZLjava/lang/String;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 156
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$3;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-static {p1, p3}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->access$002(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    .line 157
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$3;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->access$100(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFactoryProductResult(ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/network/factory/FactoryDataCallback;->onFactoryProductResult(ZLjava/lang/String;Ljava/util/List;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 172
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$3;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->access$300(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
