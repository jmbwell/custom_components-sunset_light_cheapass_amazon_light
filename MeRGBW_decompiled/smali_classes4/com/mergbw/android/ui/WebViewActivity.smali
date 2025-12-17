.class public Lcom/mergbw/android/ui/WebViewActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "WebViewActivity.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

.field private final mHandler:Landroid/os/Handler;

.field private mTitle:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mergbw/android/ui/WebViewActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/WebViewActivity;)Lcom/mergbw/android/databinding/ActivityWebviewBinding;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    return-object p0
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 47
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/WebViewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/WebViewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 49
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->webView:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mergbw/android/ui/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/WebViewActivity$1;-><init>(Lcom/mergbw/android/ui/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mergbw/android/ui/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/WebViewActivity$2;-><init>(Lcom/mergbw/android/ui/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mergbw/android/ui/WebViewActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mergbw/android/ui/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-WebViewActivity(Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WebViewActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WebViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    .line 37
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mTitle:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->url:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/WebViewActivity;->initViews(Landroid/view/View;)V

    return-void
.end method
