.class Lcom/mergbw/android/google/GoogleOpenAdManager$2;
.super Ljava/lang/Object;
.source "GoogleOpenAdManager.java"

# interfaces
.implements Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/google/GoogleOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;


# direct methods
.method constructor <init>(Lcom/mergbw/android/google/GoogleOpenAdManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$2;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAdComplete()V
    .locals 0

    return-void
.end method

.method public onShowAdFailed()V
    .locals 0

    return-void
.end method

.method public onShowAdSuccess()V
    .locals 0

    return-void
.end method
