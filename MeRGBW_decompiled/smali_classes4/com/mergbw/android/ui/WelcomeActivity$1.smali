.class Lcom/mergbw/android/ui/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/WelcomeActivity;->checkAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/WelcomeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/mergbw/android/ui/WelcomeActivity$1;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAdComplete()V
    .locals 1

    .line 84
    const-string v0, "checkAd onShowAdComplete"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity$1;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/WelcomeActivity;->access$300(Lcom/mergbw/android/ui/WelcomeActivity;)V

    return-void
.end method

.method public onShowAdFailed()V
    .locals 2

    .line 71
    const-string v0, "checkAd onShowAdFailed"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity$1;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mergbw/android/ui/WelcomeActivity;->access$002(Lcom/mergbw/android/ui/WelcomeActivity;Z)Z

    return-void
.end method

.method public onShowAdSuccess()V
    .locals 2

    .line 77
    const-string v0, "checkAd onShowAdSuccess"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity$1;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mergbw/android/ui/WelcomeActivity;->access$002(Lcom/mergbw/android/ui/WelcomeActivity;Z)Z

    .line 79
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity$1;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/WelcomeActivity;->access$200(Lcom/mergbw/android/ui/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/WelcomeActivity$1;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-static {v1}, Lcom/mergbw/android/ui/WelcomeActivity;->access$100(Lcom/mergbw/android/ui/WelcomeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
