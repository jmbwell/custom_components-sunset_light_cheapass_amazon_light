.class public Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "FactoryAreaActivity.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

.field private mCurrentSiteCode:Ljava/lang/String;

.field private mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

.field private mItemAdapter:Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;


# direct methods
.method public static synthetic $r8$lambda$3SIOjp8zsmZx6kL22fG-nUXMEZk(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->updateFactoryInfo(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3d_idvST8nU7KeFy-Ev9OhQ38sQ(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->updateFactoryActivityList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qyt2pZNuZJGctOqhiN3WhLQe__w(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->updateFactoryProductList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private subscribeUI()V
    .locals 2

    .line 89
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    iput-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mViewModel:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    .line 90
    new-instance v1, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->setFactoryInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 91
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mViewModel:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    new-instance v1, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->setFactoryActivityListObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 92
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mViewModel:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    new-instance v1, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->setFactoryProductListObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 93
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mViewModel:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->initData(Landroid/content/Intent;)V

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

    .line 109
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->hideWaitDialog()V

    .line 110
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->viewBanner:Lcom/youth/banner/Banner;

    invoke-virtual {v0, p0}, Lcom/youth/banner/Banner;->addBannerLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)Lcom/youth/banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$2;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;Ljava/util/List;)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    move-result-object p1

    new-instance v0, Lcom/youth/banner/indicator/CircleIndicator;

    invoke-direct {v0, p0}, Lcom/youth/banner/indicator/CircleIndicator;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->setIndicator(Lcom/youth/banner/indicator/Indicator;)Lcom/youth/banner/Banner;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$1;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V

    .line 121
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    return-void
.end method

.method private updateFactoryInfo(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 3

    .line 97
    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->tvFactoryName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getFactoryFileAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->ivFactoryLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 101
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mViewModel:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->getSiteCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mCurrentSiteCode:Ljava/lang/String;

    .line 102
    sget-object p1, Lcom/mergbw/android/ui/factoryArea/FactoryDataUtils;->COUNTRY_FLAG:Ljava/util/Map;

    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mCurrentSiteCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget-object v0, Lcom/mergbw/android/ui/factoryArea/FactoryDataUtils;->COUNTRY_FLAG:Ljava/util/Map;

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mCurrentSiteCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->ivSite:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
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

    .line 136
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->hideWaitDialog()V

    .line 137
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mItemAdapter:Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->setData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 62
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->viewBanner:Lcom/youth/banner/Banner;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->setBannerRound(F)Lcom/youth/banner/Banner;

    .line 65
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->listNewProduct:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance p1, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mItemAdapter:Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

    .line 68
    new-instance v0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->setClickListener(Lcom/mergbw/android/ui/factoryArea/adapter/IFactoryProductClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->listNewProduct:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mItemAdapter:Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->layoutSiteList:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-factoryArea-FactoryAreaActivity(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-factoryArea-FactoryAreaActivity(Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->getGoodsLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->getGoodsLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-factoryArea-FactoryAreaActivity(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;)V
    .locals 3

    .line 78
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mCurrentSiteCode:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/mergbw/android/FactoryInfoManage;->getInstance()Lcom/mergbw/android/FactoryInfoManage;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mergbw/android/FactoryInfoManage;->setHistorySiteCode(ILjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mContext:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->ivSite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 81
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->showWaitDialog()V

    .line 82
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mViewModel:Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryDataViewModel;->loadData(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-factoryArea-FactoryAreaActivity(Landroid/view/View;)V
    .locals 4

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;

    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mCurrentSiteCode:Ljava/lang/String;

    new-instance v3, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;)V

    .line 84
    invoke-virtual {p1}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    .line 54
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->setContentView(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->initViews(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->subscribeUI()V

    return-void
.end method
