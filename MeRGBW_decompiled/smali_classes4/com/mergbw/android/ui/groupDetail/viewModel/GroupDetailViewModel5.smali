.class public Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel5;
.super Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;
.source "GroupDetailViewModel5.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public setBrightness(I)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setBrightness(I)V

    const/4 v0, 0x5

    add-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 34
    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel5;->sendData([B)V

    return-void
.end method

.method public setRGBColor(I)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setRGBColor(I)V

    const/4 v0, 0x4

    .line 40
    new-array v0, v0, [B

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 43
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    .line 44
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel5;->sendData([B)V

    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 6

    .line 48
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v1, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    new-array v0, v3, [B

    aput-byte p1, v0, v2

    const/4 p1, 0x6

    .line 52
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel5;->sendData([B)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v1, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    if-ne v0, v1, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRValue()I

    move-result v0

    int-to-byte v0, v0

    .line 57
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getGValue()I

    move-result v1

    int-to-byte v1, v1

    .line 58
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getBValue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v4, 0x3

    new-array v5, v4, [B

    aput-byte v0, v5, v2

    aput-byte v1, v5, v3

    const/4 v0, 0x2

    aput-byte p1, v5, v0

    .line 59
    invoke-static {v4, v5}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel5;->sendData([B)V

    :cond_1
    :goto_0
    return-void
.end method
