.class public Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;
.super Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
.source "DeviceDetailViewModel7.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 19
    const-string v0, "DeviceDetailViewModel7"

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColdAndWarmBrightness()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSupportCold()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSupportWarm()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getColdBrightness()I

    move-result v0

    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSupportCold()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSupportWarm()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getColdBrightness()I

    move-result v0

    return v0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSupportCold()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSupportWarm()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getWarmBrightness()I

    move-result v0

    return v0

    .line 64
    :cond_2
    invoke-super {p0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getColdAndWarmBrightness()I

    move-result v0

    return v0
.end method

.method protected onBleResponse(B[B)V
    .locals 2

    .line 24
    invoke-super {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->onBleResponse(B[B)V

    if-nez p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {v0, p2}, Lcom/mergbw/core/utils/ViewDataUtils;->analyseSyncData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    .line 27
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mDetailViewData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    .line 31
    aget-byte p1, p2, p1

    if-nez p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    :cond_1
    return-void
.end method

.method public setBrightness(I)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setBrightness(I)V

    const/4 v0, 0x5

    add-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 51
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 52
    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->sendData([B)V

    return-void
.end method

.method public setColdAndWarm(Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;)V
    .locals 7

    .line 102
    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->getColor()I

    move-result p1

    invoke-static {p1}, Lcom/mergbw/core/utils/ColorUtils;->getLastHexToInt(I)I

    move-result p1

    add-int/lit16 p1, p1, -0x9a

    const/4 v0, 0x0

    .line 103
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    rsub-int/lit8 v1, p1, 0x64

    .line 106
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getColdBrightness()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 107
    iget-object v3, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getWarmBrightness()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x4

    .line 109
    new-array v6, v6, [B

    aput-byte v2, v6, v0

    const/4 v0, 0x1

    aput-byte v3, v6, v0

    const/4 v0, 0x2

    aput-byte v4, v6, v0

    const/4 v0, 0x3

    aput-byte v5, v6, v0

    const/16 v0, 0x12

    .line 110
    invoke-static {v0, v6}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->sendData([B)V

    .line 111
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setColdPercent(I)V

    .line 112
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setWarmPercent(I)V

    return-void
.end method

.method public setColdAndWarmBrightness(I)V
    .locals 5

    .line 69
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColdAndWarmBrightness(I)V

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 73
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getColdPercent()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 74
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getWarmPercent()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v4, 0x1

    aput-byte v0, v3, v4

    const/4 v0, 0x2

    aput-byte v1, v3, v0

    const/4 v0, 0x3

    aput-byte v2, v3, v0

    const/16 v0, 0x12

    .line 75
    invoke-static {v0, v3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->sendData([B)V

    .line 76
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setColdBrightness(I)V

    .line 77
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setWarmBrightness(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 5

    .line 39
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColor(I)V

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 43
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte p1, v3, v0

    .line 44
    invoke-static {v2, v3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->sendData([B)V

    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 7

    .line 82
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 83
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v1, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRValue()I

    move-result v0

    int-to-byte v0, v0

    .line 87
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getGValue()I

    move-result v1

    int-to-byte v1, v1

    .line 88
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getBValue()I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    new-array v6, v5, [B

    aput-byte v0, v6, v3

    aput-byte v1, v6, v2

    const/4 v0, 0x2

    aput-byte v4, v6, v0

    .line 89
    invoke-static {v5, v6}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->sendData([B)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v1, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-ne v0, v1, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    new-array v0, v2, [B

    aput-byte p1, v0, v3

    const/4 p1, 0x6

    .line 96
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;->sendData([B)V

    :cond_1
    return-void
.end method
