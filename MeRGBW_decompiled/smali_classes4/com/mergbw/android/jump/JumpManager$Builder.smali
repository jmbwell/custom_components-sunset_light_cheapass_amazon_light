.class Lcom/mergbw/android/jump/JumpManager$Builder;
.super Ljava/lang/Object;
.source "JumpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/jump/JumpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private targetClass:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mergbw/android/jump/JumpManager$1;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public jump()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mergbw/android/jump/JumpManager$NoTargetClassException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/facade/Postcard;->with(Landroid/os/Bundle;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v0, Lcom/mergbw/android/jump/JumpManager$NoTargetClassException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mergbw/android/jump/JumpManager$NoTargetClassException;-><init>(Lcom/mergbw/android/jump/JumpManager$1;)V

    throw v0
.end method

.method public targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass:Ljava/lang/String;

    return-object p0
.end method
