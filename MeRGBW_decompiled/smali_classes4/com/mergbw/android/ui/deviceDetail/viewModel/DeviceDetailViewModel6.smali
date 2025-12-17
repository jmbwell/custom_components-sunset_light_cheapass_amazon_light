.class public Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;
.super Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
.source "DeviceDetailViewModel6.java"


# instance fields
.field private mCurrentMode:Lcom/mergbw/core/RGBMode;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 20
    const-string v0, "DeviceDetailViewModel6"

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method private changeBrightness(II)V
    .locals 0

    .line 131
    invoke-direct {p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->setWhiteBrightness(I)V

    .line 134
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->setRGBBrightness(I)V

    return-void
.end method

.method private setRGBBrightness(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 139
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x5

    .line 140
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->sendData([B)V

    return-void
.end method

.method private setWhiteBrightness(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 145
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0x11

    .line 146
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->sendData([B)V

    return-void
.end method


# virtual methods
.method public getColdAndWarmBrightness()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getWhiteBrightness()I

    move-result v0

    return v0
.end method

.method protected onBleResponse(B[B)V
    .locals 2

    .line 25
    invoke-super {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->onBleResponse(B[B)V

    if-nez p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {v0, p2}, Lcom/mergbw/core/utils/ViewDataUtils;->analyseSyncData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    .line 28
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mDetailViewData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    .line 32
    aget-byte p1, p2, p1

    if-nez p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    :cond_1
    return-void
.end method

.method public setBrightness(I)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setBrightness(I)V

    const/4 v0, 0x5

    add-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 57
    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->sendData([B)V

    return-void
.end method

.method public setColdAndWarm(Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;)V
    .locals 6

    .line 114
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColdAndWarm(Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;)V

    .line 115
    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->getColor()I

    move-result p1

    .line 117
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 118
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/lit16 p1, p1, -0x96

    int-to-double v2, p1

    const-wide v4, 0x405a400000000000L    # 105.0

    div-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x3

    .line 121
    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte p1, v3, v0

    .line 122
    invoke-static {v2, v3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->sendData([B)V

    .line 124
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v0, Lcom/mergbw/core/RGBMode;->WARM_MODE:Lcom/mergbw/core/RGBMode;

    if-eq p1, v0, :cond_0

    .line 125
    sget-object p1, Lcom/mergbw/core/RGBMode;->WARM_MODE:Lcom/mergbw/core/RGBMode;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    :cond_0
    return-void
.end method

.method public setColdAndWarmBrightness(I)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColdAndWarmBrightness(I)V

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 69
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0x11

    .line 70
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->sendData([B)V

    return-void
.end method

.method public setColor(I)V
    .locals 5

    .line 40
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColor(I)V

    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 43
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 44
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

    .line 45
    invoke-static {v2, v3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->sendData([B)V

    .line 47
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v0, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    if-eq p1, v0, :cond_0

    .line 48
    sget-object p1, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    :cond_0
    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 7

    .line 85
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 86
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v1, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRValue()I

    move-result v0

    int-to-byte v0, v0

    .line 90
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getGValue()I

    move-result v1

    int-to-byte v1, v1

    .line 91
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getBValue()I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    new-array v6, v5, [B

    aput-byte v0, v6, v3

    aput-byte v1, v6, v2

    const/4 v0, 0x2

    aput-byte v4, v6, v0

    .line 92
    invoke-static {v5, v6}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->sendData([B)V

    .line 93
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRGBPercent()I

    move-result v0

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getWhitePercent()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->changeBrightness(II)V

    .line 94
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRGBPercent()I

    move-result v4

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getWhitePercent()I

    move-result v5

    invoke-direct {v1, v2, v4, v5}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v1, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-ne v0, v1, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    new-array v0, v2, [B

    aput-byte p1, v0, v3

    const/4 p1, 0x6

    .line 102
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->sendData([B)V

    .line 104
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v0, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-eq p1, v0, :cond_1

    .line 105
    invoke-direct {p0, v3}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->setWhiteBrightness(I)V

    .line 106
    sget-object p1, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 107
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    const/16 v1, 0x32

    invoke-direct {v0, v3, v1, v3}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public startVoiceData(II)V
    .locals 3

    .line 75
    invoke-super {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->startVoiceData(II)V

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object p2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-eq p1, p2, :cond_0

    const/16 p1, 0x64

    const/4 p2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->changeBrightness(II)V

    .line 78
    sget-object v0, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 79
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
