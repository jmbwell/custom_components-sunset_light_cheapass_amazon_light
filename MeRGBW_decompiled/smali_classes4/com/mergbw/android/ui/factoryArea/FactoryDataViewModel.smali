.class public Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "FactoryDataViewModel.java"


# instance fields
.field private final mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

.field private final mFactoryActivityListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

.field private final mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactoryProductListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryActivityListData:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryProductListData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance p1, Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    new-instance v0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel$1;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;-><init>(Lcom/mergbw/core/network/factory/FactoryDataCallback;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryActivityListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryProductListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getSiteCode()Ljava/lang/String;
    .locals 4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSiteCode IP Site: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    .line 99
    iget-object v2, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v2}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_1
    invoke-static {}, Lcom/mergbw/android/FactoryInfoManage;->getInstance()Lcom/mergbw/android/FactoryInfoManage;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/android/FactoryInfoManage;->getHistorySiteCode(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    .line 108
    invoke-virtual {v2}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {v2}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_4
    const-string v0, "US"

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 1

    .line 68
    const-string v0, "factoryInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->getSiteCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->loadData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->getFactoryActivityInfo(ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->getFactoryProductInfo(ILjava/lang/String;)V

    return-void
.end method

.method public setFactoryActivityListObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryActivityListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setFactoryInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setFactoryProductListObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->mFactoryProductListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
