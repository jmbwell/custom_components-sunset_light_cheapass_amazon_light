.class public Lcom/mergbw/android/ui/AboutActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/android/ui/AboutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/mergbw/android/ui/AboutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 3

    .line 37
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToAgreementPage(I)V

    .line 38
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/mergbw/core/track/TrackManager;->homeClickTrack(III)V

    .line 39
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->homeClickTrack(III)V

    return-void
.end method

.method static synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 3

    .line 42
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToAgreementPage(I)V

    .line 43
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/mergbw/core/track/TrackManager;->homeClickTrack(III)V

    .line 44
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->homeClickTrack(III)V

    return-void
.end method

.method static synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToDeviceResume(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    return-void
.end method


# virtual methods
.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/mergbw/android/ui/AboutActivity;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$onCreate$0$com-mergbw-android-ui-AboutActivity(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/mergbw/android/ui/AboutActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/mergbw/android/ui/AboutActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityAboutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityAboutBinding;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityAboutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/AboutActivity;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityAboutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/AboutActivity;->initViews(Landroid/view/View;)V

    .line 34
    iget-object v0, p1, Lcom/mergbw/android/databinding/ActivityAboutBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/mergbw/android/ui/AboutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/AboutActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p1, Lcom/mergbw/android/databinding/ActivityAboutBinding;->layoutPrivacy:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/mergbw/android/ui/AboutActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/mergbw/android/ui/AboutActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p1, Lcom/mergbw/android/databinding/ActivityAboutBinding;->layoutAgreement:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/mergbw/android/ui/AboutActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/mergbw/android/ui/AboutActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAboutBinding;->layoutResume:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/mergbw/android/ui/AboutActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/mergbw/android/ui/AboutActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
