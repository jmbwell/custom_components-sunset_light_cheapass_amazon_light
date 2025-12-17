.class Lcom/mergbw/android/ui/WebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/WebViewActivity;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/WebViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity$1;->this$0:Lcom/mergbw/android/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 p1, 0x64

    if-ge p2, p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity$1;->this$0:Lcom/mergbw/android/ui/WebViewActivity;

    invoke-static {p1}, Lcom/mergbw/android/ui/WebViewActivity;->access$000(Lcom/mergbw/android/ui/WebViewActivity;)Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->webProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity$1;->this$0:Lcom/mergbw/android/ui/WebViewActivity;

    invoke-static {p1}, Lcom/mergbw/android/ui/WebViewActivity;->access$000(Lcom/mergbw/android/ui/WebViewActivity;)Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->webProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/WebViewActivity$1;->this$0:Lcom/mergbw/android/ui/WebViewActivity;

    invoke-static {p1}, Lcom/mergbw/android/ui/WebViewActivity;->access$000(Lcom/mergbw/android/ui/WebViewActivity;)Lcom/mergbw/android/databinding/ActivityWebviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityWebviewBinding;->webProgress:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
