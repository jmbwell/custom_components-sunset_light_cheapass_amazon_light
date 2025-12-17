.class public Lcom/ota66/sdk/OTASDKUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ota66/sdk/OTASDKUtils$b;
    }
.end annotation


# instance fields
.field private APP2OTA:I

.field private OTA_CONNECTING:I

.field private OTA_ING:I

.field private REBOOT:I

.field private RES_ING:I

.field private START_OTA:I

.field private START_RES:I

.field private STATUS:I

.field private address:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private firewareCallBack:Lcom/ota66/sdk/firware/UpdateFirewareCallBack;

.field private isQuick:Z

.field private otaCallBack:Lcom/ota66/sdk/ble/OTACallBack;

.field private otaType:La/b;

.field private otaUtils:Lcom/ota66/sdk/OTAUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ota66/sdk/firware/UpdateFirewareCallBack;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->STATUS:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->START_OTA:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->OTA_CONNECTING:I

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->OTA_ING:I

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->REBOOT:I

    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->START_RES:I

    const/4 v0, 0x6

    .line 8
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->RES_ING:I

    const/4 v0, 0x7

    .line 9
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->APP2OTA:I

    .line 26
    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->firewareCallBack:Lcom/ota66/sdk/firware/UpdateFirewareCallBack;

    .line 28
    new-instance p2, Lcom/ota66/sdk/OTASDKUtils$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/ota66/sdk/OTASDKUtils$b;-><init>(Lcom/ota66/sdk/OTASDKUtils;Lcom/ota66/sdk/OTASDKUtils$a;)V

    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->otaCallBack:Lcom/ota66/sdk/ble/OTACallBack;

    .line 29
    new-instance p2, Lcom/ota66/sdk/OTAUtils;

    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaCallBack:Lcom/ota66/sdk/ble/OTACallBack;

    invoke-direct {p2, p1, v0}, Lcom/ota66/sdk/OTAUtils;-><init>(Landroid/content/Context;Lcom/ota66/sdk/ble/OTACallBack;)V

    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    return-void
.end method

.method static synthetic access$100(Lcom/ota66/sdk/OTASDKUtils;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ota66/sdk/OTASDKUtils;->isQuick:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/ota66/sdk/OTASDKUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ota66/sdk/OTASDKUtils;->startOta()V

    return-void
.end method

.method static synthetic access$102(Lcom/ota66/sdk/OTASDKUtils;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ota66/sdk/OTASDKUtils;->isQuick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/ota66/sdk/OTASDKUtils;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ota66/sdk/OTASDKUtils;->error(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ota66/sdk/OTASDKUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ota66/sdk/OTASDKUtils;->REBOOT:I

    return p0
.end method

.method static synthetic access$1300(Lcom/ota66/sdk/OTASDKUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ota66/sdk/OTASDKUtils;->success()V

    return-void
.end method

.method static synthetic access$1400(Lcom/ota66/sdk/OTASDKUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ota66/sdk/OTASDKUtils;->OTA_ING:I

    return p0
.end method

.method static synthetic access$1500(Lcom/ota66/sdk/OTASDKUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ota66/sdk/OTASDKUtils;->address:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/firware/UpdateFirewareCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ota66/sdk/OTASDKUtils;->firewareCallBack:Lcom/ota66/sdk/firware/UpdateFirewareCallBack;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ota66/sdk/OTASDKUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ota66/sdk/OTASDKUtils;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ota66/sdk/OTASDKUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ota66/sdk/OTASDKUtils;->STATUS:I

    return p0
.end method

.method static synthetic access$202(Lcom/ota66/sdk/OTASDKUtils;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ota66/sdk/OTASDKUtils;->STATUS:I

    return p1
.end method

.method static synthetic access$300(Lcom/ota66/sdk/OTASDKUtils;)La/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaType:La/b;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ota66/sdk/OTASDKUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ota66/sdk/OTASDKUtils;->START_OTA:I

    return p0
.end method

.method static synthetic access$500(Lcom/ota66/sdk/OTASDKUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ota66/sdk/OTASDKUtils;->START_RES:I

    return p0
.end method

.method static synthetic access$600(Lcom/ota66/sdk/OTASDKUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ota66/sdk/OTASDKUtils;->RES_ING:I

    return p0
.end method

.method static synthetic access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ota66/sdk/OTASDKUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ota66/sdk/OTASDKUtils;->OTA_CONNECTING:I

    return p0
.end method

.method static synthetic access$900(Lcom/ota66/sdk/OTASDKUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ota66/sdk/OTASDKUtils;->APP2OTA:I

    return p0
.end method

.method private error(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ota66/sdk/OTASDKUtils;->initStatus()V

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->firewareCallBack:Lcom/ota66/sdk/firware/UpdateFirewareCallBack;

    invoke-interface {v0, p1}, Lcom/ota66/sdk/firware/UpdateFirewareCallBack;->onError(I)V

    .line 4
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {p1}, Lcom/ota66/sdk/OTAUtils;->close()V

    return-void
.end method

.method private initStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->STATUS:I

    return-void
.end method

.method private startOta()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaType:La/b;

    sget-object v1, La/b;->a:La/b;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils;->filePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ota66/sdk/OTASDKUtils;->isQuick:Z

    invoke-virtual {v0, v1, v2}, Lcom/ota66/sdk/OTAUtils;->updateFirmware(Ljava/lang/String;Z)V

    .line 3
    iget v0, p0, Lcom/ota66/sdk/OTASDKUtils;->OTA_ING:I

    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->STATUS:I

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, La/b;->b:La/b;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils;->filePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ota66/sdk/OTASDKUtils;->isQuick:Z

    invoke-virtual {v0, v1, v2}, Lcom/ota66/sdk/OTAUtils;->updateResource(Ljava/lang/String;Z)V

    .line 6
    iget v0, p0, Lcom/ota66/sdk/OTASDKUtils;->RES_ING:I

    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->STATUS:I

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, La/b;->c:La/b;

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {v0}, Lcom/ota66/sdk/OTAUtils;->startSecurity()V

    .line 9
    iget v0, p0, Lcom/ota66/sdk/OTASDKUtils;->RES_ING:I

    iput v0, p0, Lcom/ota66/sdk/OTASDKUtils;->STATUS:I

    :cond_2
    :goto_0
    return-void
.end method

.method private success()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ota66/sdk/OTASDKUtils;->initStatus()V

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->firewareCallBack:Lcom/ota66/sdk/firware/UpdateFirewareCallBack;

    invoke-interface {v0}, Lcom/ota66/sdk/firware/UpdateFirewareCallBack;->onUpdateComplete()V

    .line 4
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {v0}, Lcom/ota66/sdk/OTAUtils;->close()V

    return-void
.end method


# virtual methods
.method public cancleOTA()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {v0}, Lcom/ota66/sdk/OTAUtils;->cancleOTA()V

    .line 3
    invoke-direct {p0}, Lcom/ota66/sdk/OTASDKUtils;->initStatus()V

    return-void
.end method

.method public setOtaKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {v0, p1}, Lcom/ota66/sdk/OTAUtils;->setOtaKey(Ljava/lang/String;)V

    return-void
.end method

.method public setOtaKeyCmd0x74(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {v0, p1}, Lcom/ota66/sdk/OTAUtils;->setOtaKeyCmd0x74(Z)V

    return-void
.end method

.method public setRetryTimes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ota66/sdk/OTAUtils;->setRetryTimes(I)V

    :cond_0
    return-void
.end method

.method public updateFirware(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ota66/sdk/OTASDKUtils;->address:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->filePath:Ljava/lang/String;

    .line 3
    sget-object p2, La/b;->a:La/b;

    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->otaType:La/b;

    .line 5
    invoke-direct {p0}, Lcom/ota66/sdk/OTASDKUtils;->initStatus()V

    .line 7
    iget-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {p2, p1}, Lcom/ota66/sdk/OTAUtils;->connectDevice(Ljava/lang/String;)V

    return-void
.end method

.method public updateResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ota66/sdk/OTASDKUtils;->address:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->filePath:Ljava/lang/String;

    .line 3
    sget-object p2, La/b;->b:La/b;

    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->otaType:La/b;

    .line 5
    invoke-direct {p0}, Lcom/ota66/sdk/OTASDKUtils;->initStatus()V

    .line 7
    iget-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {p2, p1}, Lcom/ota66/sdk/OTAUtils;->connectDevice(Ljava/lang/String;)V

    return-void
.end method

.method public updateSecurityFirware(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ota66/sdk/OTASDKUtils;->address:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->filePath:Ljava/lang/String;

    .line 3
    sget-object p2, La/b;->c:La/b;

    iput-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->otaType:La/b;

    .line 5
    invoke-direct {p0}, Lcom/ota66/sdk/OTASDKUtils;->initStatus()V

    .line 7
    iget-object p2, p0, Lcom/ota66/sdk/OTASDKUtils;->otaUtils:Lcom/ota66/sdk/OTAUtils;

    invoke-virtual {p2, p1}, Lcom/ota66/sdk/OTAUtils;->connectDevice(Ljava/lang/String;)V

    return-void
.end method
