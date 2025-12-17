.class public Lcom/mergbw/android/ui/home/MainActivity;
.super Lcom/mergbw/core/ui/BaseBluetoothActivity;
.source "MainActivity.java"


# static fields
.field private static final AD_UNIT_ID:Ljava/lang/String; = "ca-app-pub-1990806801257609/1753227141"


# instance fields
.field private adView:Lcom/google/android/gms/ads/AdView;

.field private final initialLayoutComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBinding:Lcom/mergbw/android/databinding/ActivityMainBinding;

.field private mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

.field private mHomePage:Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

.field private mUserPage:Lcom/mergbw/android/ui/home/fragment/UserPageFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->initialLayoutComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private loadBanner()V
    .locals 2

    .line 147
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->adView:Lcom/google/android/gms/ads/AdView;

    .line 148
    const-string v1, "ca-app-pub-1990806801257609/1753227141"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/MainActivity;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 151
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityMainBinding;->adViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 152
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityMainBinding;->adViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mergbw/android/ui/home/MainActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 154
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/mergbw/android/ui/home/MainActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method


# virtual methods
.method protected bluetoothReady()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->mHomePage:Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->bluetoothReady()V

    :cond_0
    return-void
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 4

    .line 159
    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 160
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 162
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1}, Lcom/ota66/sdk/OTAUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lcom/ota66/sdk/OTAUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 167
    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 169
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->initViews(Landroid/view/View;)V

    .line 62
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityMainBinding;->rgBottomBar:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/mergbw/android/ui/home/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/home/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/home/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 76
    new-instance p1, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mHomePage:Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    .line 77
    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 79
    sget v0, Lcom/mergbw/android/R$id;->layout_content:I

    iget-object v1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mHomePage:Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mHomePage:Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    iput-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    .line 83
    invoke-static {}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getInstance()Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->isShowBannerAd()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityMainBinding;->adViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/home/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/home/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/home/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-home-MainActivity(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    sget v0, Lcom/mergbw/android/R$id;->rb_home_page:I

    if-ne p2, v0, :cond_1

    .line 64
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mHomePage:Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    if-nez p1, :cond_0

    .line 65
    new-instance p1, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mHomePage:Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mHomePage:Lcom/mergbw/android/ui/home/fragment/HomePageFragment;

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/home/MainActivity;->switchContent(Lcom/mergbw/core/ui/BaseFragment;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget p2, Lcom/mergbw/android/R$id;->rb_user_page:I

    if-ne p1, p2, :cond_3

    .line 69
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mUserPage:Lcom/mergbw/android/ui/home/fragment/UserPageFragment;

    if-nez p1, :cond_2

    .line 70
    new-instance p1, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mUserPage:Lcom/mergbw/android/ui/home/fragment/UserPageFragment;

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mUserPage:Lcom/mergbw/android/ui/home/fragment/UserPageFragment;

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/home/MainActivity;->switchContent(Lcom/mergbw/core/ui/BaseFragment;)V

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-home-MainActivity()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->initialLayoutComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->getInstance(Landroid/content/Context;)Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->canRequestAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/MainActivity;->loadBanner()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/home/MainActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityMainBinding;

    .line 54
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/home/MainActivity;->setContentView(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityMainBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/home/MainActivity;->initViews(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityMainBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/home/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/home/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/home/MainActivity;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    :cond_0
    return-void
.end method

.method public switchContent(Lcom/mergbw/core/ui/BaseFragment;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/mergbw/android/ui/home/MainActivity;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    if-eq v0, p1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/mergbw/core/ui/BaseFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/mergbw/android/R$id;->layout_content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 112
    :goto_0
    iput-object p1, p0, Lcom/mergbw/android/ui/home/MainActivity;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    :cond_1
    return-void
.end method
