.class public Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;
.super Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
.source "DeviceDetailViewModel3.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 17
    const-string v0, "DeviceDetailViewModel3"

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBleResponse(B[B)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->onBleResponse(B[B)V

    if-nez p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {p1, p2}, Lcom/mergbw/core/utils/ViewDataUtils;->analyseSyncData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    .line 25
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 26
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->mDetailViewData:Landroidx/lifecycle/MutableLiveData;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setBrightness(I)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setBrightness(I)V

    const/4 v0, 0x5

    add-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 44
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 45
    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->sendData([B)V

    return-void
.end method

.method public setColor(I)V
    .locals 5

    .line 32
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColor(I)V

    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 36
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

    .line 37
    invoke-static {v2, v3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->sendData([B)V

    return-void
.end method

.method public setMotorSpeed(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 74
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0x11

    .line 75
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->sendData([B)V

    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 6

    .line 50
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 51
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v1, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    new-array v0, v3, [B

    aput-byte p1, v0, v2

    const/4 p1, 0x6

    .line 55
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->sendData([B)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v1, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    if-ne v0, v1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRValue()I

    move-result v0

    int-to-byte v0, v0

    .line 60
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getGValue()I

    move-result v1

    int-to-byte v1, v1

    .line 61
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getBValue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v4, 0x3

    new-array v5, v4, [B

    aput-byte v0, v5, v2

    aput-byte v1, v5, v3

    const/4 v0, 0x2

    aput-byte p1, v5, v0

    .line 62
    invoke-static {v4, v5}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->sendData([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStarBrightness(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0x10

    .line 69
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->sendData([B)V

    return-void
.end method
