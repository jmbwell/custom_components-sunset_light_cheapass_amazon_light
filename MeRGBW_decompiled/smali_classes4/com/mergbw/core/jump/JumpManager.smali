.class public Lcom/mergbw/core/jump/JumpManager;
.super Ljava/lang/Object;
.source "JumpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/jump/JumpManager$JumpManagerFactory;,
        Lcom/mergbw/core/jump/JumpManager$Builder;,
        Lcom/mergbw/core/jump/JumpManager$NoTargetClassException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mergbw/core/jump/JumpManager$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mergbw/core/jump/JumpManager;-><init>()V

    return-void
.end method

.method private build()Lcom/mergbw/core/jump/JumpManager$Builder;
    .locals 2

    .line 45
    new-instance v0, Lcom/mergbw/core/jump/JumpManager$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mergbw/core/jump/JumpManager$Builder;-><init>(Lcom/mergbw/core/jump/JumpManager$1;)V

    return-object v0
.end method

.method public static getInstance()Lcom/mergbw/core/jump/JumpManager;
    .locals 1

    .line 21
    invoke-static {}, Lcom/mergbw/core/jump/JumpManager$JumpManagerFactory;->access$000()Lcom/mergbw/core/jump/JumpManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public jumpToDIYSetting(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/core/database/bean/DIYInfoBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "device",
            "diyInfo",
            "from"
        }
    .end annotation

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 39
    const-string p1, "diyInfo"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    const-string p1, "from"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-direct {p0}, Lcom/mergbw/core/jump/JumpManager;->build()Lcom/mergbw/core/jump/JumpManager$Builder;

    move-result-object p1

    const-string p2, "/core/device_diy"

    invoke-virtual {p1, p2}, Lcom/mergbw/core/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/core/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/core/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/core/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToSubSetting(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/core/database/bean/SubColorBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "device",
            "subColor",
            "from"
        }
    .end annotation

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 31
    const-string p1, "subColor"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 32
    const-string p1, "from"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    invoke-direct {p0}, Lcom/mergbw/core/jump/JumpManager;->build()Lcom/mergbw/core/jump/JumpManager$Builder;

    move-result-object p1

    const-string p2, "/core/sub_setting"

    invoke-virtual {p1, p2}, Lcom/mergbw/core/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/core/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/core/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/core/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/jump/JumpManager$Builder;->jump()V

    return-void
.end method
