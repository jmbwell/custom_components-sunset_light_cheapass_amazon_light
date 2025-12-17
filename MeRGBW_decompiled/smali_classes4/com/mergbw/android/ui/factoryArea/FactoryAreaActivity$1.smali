.class Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$1;
.super Ljava/lang/Object;
.source "FactoryAreaActivity.java"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->updateFactoryActivityList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/youth/banner/listener/OnBannerListener<",
        "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$1;->this$0:Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBannerClick(Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;I)V
    .locals 3

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "OnBannerClick:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 126
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getFactoryFileAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/mergbw/android/jump/JumpManager;->jumpToWebViewPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$1;->this$0:Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic OnBannerClick(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 121
    check-cast p1, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$1;->OnBannerClick(Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;I)V

    return-void
.end method
