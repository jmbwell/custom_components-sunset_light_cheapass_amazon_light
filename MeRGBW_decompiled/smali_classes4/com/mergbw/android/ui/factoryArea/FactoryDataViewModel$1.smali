.class Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel$1;
.super Lcom/mergbw/core/network/factory/FactoryDataCallback;
.source "FactoryDataViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel$1;->this$0:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

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

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/network/factory/FactoryDataCallback;->onFactoryActivityResult(ZLjava/lang/String;Ljava/util/List;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 52
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel$1;->this$0:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->access$100(Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFactoryInfoResult(ZLjava/lang/String;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/network/factory/FactoryDataCallback;->onFactoryInfoResult(ZLjava/lang/String;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 45
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel$1;->this$0:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->access$000(Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;)Landroidx/lifecycle/MutableLiveData;

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

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/network/factory/FactoryDataCallback;->onFactoryProductResult(ZLjava/lang/String;Ljava/util/List;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 60
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel$1;->this$0:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->access$200(Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
