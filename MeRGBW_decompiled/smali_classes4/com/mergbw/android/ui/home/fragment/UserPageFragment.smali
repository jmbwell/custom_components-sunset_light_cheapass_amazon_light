.class public Lcom/mergbw/android/ui/home/fragment/UserPageFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "UserPageFragment.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/home/fragment/UserPageFragment;)Lcom/mergbw/android/databinding/FragmentUserPageBinding;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    return-object p0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mContext:Landroid/content/Context;

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

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mergbw/android/jump/JumpManager;->jumpToAbout()V

    return-void
.end method

.method private refreshUserinfo(Lcom/mergbw/core/network/app/bean/UserResponse;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 109
    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/UserResponse;->getNickname()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/UserResponse;->getUsername()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/UserResponse;->getNickname()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :cond_1
    iget-object p1, v0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->tvUsername:Landroid/widget/TextView;

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/UserinfoManage;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private sendEmail()V
    .locals 10

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v1, "mailto:support@mergbw.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    sget v1, Lcom/mergbw/android/R$string;->support:I

    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    sget v2, Lcom/mergbw/android/R$string;->support_hint:I

    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    sget v3, Lcom/mergbw/android/R$string;->support_item_1:I

    invoke-virtual {p0, v3}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    sget v3, Lcom/mergbw/android/R$string;->support_item_2:I

    invoke-virtual {p0, v3}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    sget v3, Lcom/mergbw/android/R$string;->support_item_3:I

    invoke-virtual {p0, v3}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Android "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget v3, Lcom/mergbw/android/R$string;->support_item_4:I

    invoke-virtual {p0, v3}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    sget v3, Lcom/mergbw/android/R$string;->support_item_5:I

    invoke-virtual {p0, v3}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    sget v3, Lcom/mergbw/android/R$string;->support_item_6:I

    invoke-virtual {p0, v3}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    new-instance v0, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v4, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/mergbw/android/R$string;->email_error:I

    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/mergbw/android/R$string;->email_tip:I

    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    invoke-virtual {v0}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-home-fragment-UserPageFragment(Landroid/view/View;)V
    .locals 8

    .line 53
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/UserinfoManage;->IsLogin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v1, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->tvUsername:Landroid/widget/TextView;

    .line 57
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    .line 58
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x104000a

    .line 59
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$1;

    invoke-direct {v7, p0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$1;-><init>(Lcom/mergbw/android/ui/home/fragment/UserPageFragment;)V

    const-string v2, "\u8bbe\u7f6e\u7528\u6237\u540d"

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager;->jumpToLogin()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-mergbw-android-ui-home-fragment-UserPageFragment(Landroid/view/View;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->sendEmail()V

    .line 84
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/mergbw/core/track/TrackManager;->homeClickTrack(III)V

    .line 85
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v1}, Lcom/mergbw/android/google/GoogleTrackManager;->homeClickTrack(III)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 43
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 44
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    .line 45
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseFragment;->onDestroy()V

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/mergbw/core/event/EventMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 99
    const-string v0, "USER_REGISTER_SUCCESS"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USER_LOGIN_SUCCESS"

    .line 100
    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/network/app/bean/UserResponse;

    .line 102
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->refreshUserinfo(Lcom/mergbw/core/network/app/bean/UserResponse;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1, p2}, Lcom/mergbw/core/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->layoutLogin:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/home/fragment/UserPageFragment;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/UserinfoManage;->IsLogin()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->refreshUserinfo(Lcom/mergbw/core/network/app/bean/UserResponse;)V

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->layoutAbout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->layoutContactUs:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/home/fragment/UserPageFragment;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->tvVersion:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "V "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
