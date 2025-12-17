.class public Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "FactoryAreaFragment.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

.field private mCurrentSiteCode:Ljava/lang/String;

.field private mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

.field private mItemAdapter:Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public static synthetic $r8$lambda$Jw2cOsO79pu_tsX3iTL6K_q5EXg(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->updateFactoryProductList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VrDoRFohgCBtAwHFhofDLR9pZtE(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->updateFactoryActivityList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method private safeOpenUrl(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    const-string p1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 143
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFactoryActivityList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->hideWaitDialog()V

    .line 105
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->viewBanner:Lcom/youth/banner/Banner;

    invoke-virtual {v0, p0}, Lcom/youth/banner/Banner;->addBannerLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)Lcom/youth/banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;Ljava/util/List;)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    move-result-object p1

    new-instance v0, Lcom/youth/banner/indicator/CircleIndicator;

    .line 116
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youth/banner/indicator/CircleIndicator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->setIndicator(Lcom/youth/banner/indicator/Indicator;)Lcom/youth/banner/Banner;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;)V

    .line 117
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    return-void
.end method

.method private updateFactoryInfo(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 2

    .line 92
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->tvFactoryName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getSiteCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mCurrentSiteCode:Ljava/lang/String;

    .line 96
    sget-object p1, Lcom/mergbw/android/ui/factoryArea/FactoryDataUtils;->COUNTRY_FLAG:Ljava/util/Map;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mCurrentSiteCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget-object v0, Lcom/mergbw/android/ui/factoryArea/FactoryDataUtils;->COUNTRY_FLAG:Ljava/util/Map;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mCurrentSiteCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->ivSite:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mCurrentSiteCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->loadDataFactoryAreaData(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateFactoryProductList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->hideWaitDialog()V

    .line 131
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mItemAdapter:Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->setData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-FactoryAreaFragment(Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;)V
    .locals 3

    .line 0
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->getGoodsLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->getGoodsLink()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->safeOpenUrl(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 70
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-mergbw-android-ui-deviceDetail-fragment-FactoryAreaFragment(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;)V
    .locals 3

    .line 77
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mCurrentSiteCode:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/mergbw/android/FactoryInfoManage;->getInstance()Lcom/mergbw/android/FactoryInfoManage;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mergbw/android/FactoryInfoManage;->setHistorySiteCode(ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget-object v1, Lcom/mergbw/android/ui/factoryArea/FactoryDataUtils;->COUNTRY_FLAG:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->ivSite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 80
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->showWaitDialog()V

    .line 81
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->loadDataFactoryAreaData(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-mergbw-android-ui-deviceDetail-fragment-FactoryAreaFragment(Landroid/view/View;)V
    .locals 4

    .line 75
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mCurrentSiteCode:Ljava/lang/String;

    new-instance v3, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;)V

    .line 83
    invoke-virtual {p1}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$updateFactoryActivityList$3$com-mergbw-android-ui-deviceDetail-fragment-FactoryAreaFragment(Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;I)V
    .locals 3

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "OnBannerClick:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getFactoryFileAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/mergbw/android/jump/JumpManager;->jumpToWebViewPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityLink()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->safeOpenUrl(Ljava/lang/String;)V

    .line 124
    :goto_0
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 p2, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 125
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    .line 55
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->viewBanner:Lcom/youth/banner/Banner;

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->setBannerRound(F)Lcom/youth/banner/Banner;

    .line 63
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 64
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->listNewProduct:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    new-instance p1, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mItemAdapter:Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

    .line 66
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->setClickListener(Lcom/mergbw/android/ui/factoryArea/adapter/IFactoryProductClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->listNewProduct:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mItemAdapter:Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentFactoryAreaBinding;->layoutSiteList:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setFactoryActivityListObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 87
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setFactoryProductListObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 88
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getFactoryInfo()Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->updateFactoryInfo(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V

    return-void
.end method
