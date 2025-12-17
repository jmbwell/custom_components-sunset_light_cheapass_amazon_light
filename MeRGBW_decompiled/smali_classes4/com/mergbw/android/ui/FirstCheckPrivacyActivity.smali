.class public Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "FirstCheckPrivacyActivity.java"


# instance fields
.field private isAccept:Z

.field private mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->isAccept:Z

    return-void
.end method

.method static synthetic lambda$initViews$3(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToAgreementPage(I)V

    return-void
.end method

.method static synthetic lambda$initViews$4(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToAgreementPage(I)V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 35
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->btnRefuse:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->ivAcceptPrivacy:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->btnAccept:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvPrivacyAgreement:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvPrivacyAgreement:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvPrivacyAgreement:Landroid/widget/TextView;

    new-instance v2, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvUserAgreement:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 65
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvUserAgreement:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 66
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvUserAgreement:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-FirstCheckPrivacyActivity(Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-FirstCheckPrivacyActivity(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-boolean p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->isAccept:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->isAccept:Z

    .line 40
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->ivAcceptPrivacy:Landroid/widget/ImageView;

    sget v0, Lcom/mergbw/core/R$mipmap;->icon_unchecked_02:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->isAccept:Z

    .line 43
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->ivAcceptPrivacy:Landroid/widget/ImageView;

    sget v0, Lcom/mergbw/core/R$mipmap;->icon_checked_02:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-FirstCheckPrivacyActivity(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-boolean p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->isAccept:Z

    if-nez p1, :cond_0

    .line 49
    sget p1, Lcom/mergbw/android/R$string;->accept_privacy_hint_2:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/UserinfoManage;->setIsReceive(Z)V

    .line 53
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager;->jumpToHomePage()V

    .line 54
    invoke-virtual {p0}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    .line 28
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->setContentView(Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/FirstCheckPrivacyActivity;->initViews(Landroid/view/View;)V

    return-void
.end method
