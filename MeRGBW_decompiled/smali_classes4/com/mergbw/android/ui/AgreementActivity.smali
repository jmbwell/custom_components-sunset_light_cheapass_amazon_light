.class public Lcom/mergbw/android/ui/AgreementActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "AgreementActivity.java"


# static fields
.field public static final PRIVACY_AGREEMENT:I = 0x1

.field public static final USER_AGREEMENT:I = 0x2


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityAgreementBinding;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 41
    iget-object p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAgreementBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAgreementBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/AgreementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/AgreementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/AgreementActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAgreementBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAgreementBinding;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 44
    iget p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mType:I

    const/4 v0, 0x1

    const-string v1, "zh"

    const-string v2, "file:android_asset/privacy/privacyAgreementCN.html"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAgreementBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAgreementBinding;->tvTitle:Landroid/widget/TextView;

    sget v0, Lcom/mergbw/android/R$string;->user_agreement:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 56
    invoke-virtual {p0}, Lcom/mergbw/android/ui/AgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    const-string v2, "file:android_asset/privacy/userAgreementCN.html"

    goto :goto_0

    .line 56
    :cond_1
    const-string v2, "file:android_asset/privacy/userAgreementEN.html"

    goto :goto_0

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAgreementBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAgreementBinding;->tvTitle:Landroid/widget/TextView;

    sget v0, Lcom/mergbw/android/R$string;->privacy_agreement:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 48
    invoke-virtual {p0}, Lcom/mergbw/android/ui/AgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "file:android_asset/privacy/privacyAgreementEN.html"

    .line 61
    :goto_0
    iget-object p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAgreementBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAgreementBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-AgreementActivity(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/mergbw/android/ui/AgreementActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/mergbw/android/ui/AgreementActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityAgreementBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityAgreementBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAgreementBinding;

    .line 33
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityAgreementBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/AgreementActivity;->setContentView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/mergbw/android/ui/AgreementActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mType:I

    .line 35
    iget-object p1, p0, Lcom/mergbw/android/ui/AgreementActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAgreementBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityAgreementBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/AgreementActivity;->initViews(Landroid/view/View;)V

    return-void
.end method
