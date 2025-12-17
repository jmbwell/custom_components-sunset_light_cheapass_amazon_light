.class Lcom/mergbw/android/ui/WelcomeActivity$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/WelcomeActivity;->goToMain()V
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

    .line 111
    iput-object p1, p0, Lcom/mergbw/android/ui/WelcomeActivity$2;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAdComplete()V
    .locals 1

    .line 128
    const-string v0, "goToMain onShowAdComplete"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToHomePage()V

    .line 130
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity$2;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/WelcomeActivity;->finish()V

    return-void
.end method

.method public onShowAdFailed()V
    .locals 1

    .line 114
    const-string v0, "goToMain onShowAdFailed"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToHomePage()V

    .line 116
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity$2;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/WelcomeActivity;->finish()V

    return-void
.end method

.method public onShowAdSuccess()V
    .locals 1

    .line 121
    const-string v0, "goToMain onShowAdSuccess"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToHomePage()V

    .line 123
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity$2;->this$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/WelcomeActivity;->finish()V

    return-void
.end method
