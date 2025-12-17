.class public Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;
.super Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;
.source "GroupDetailViewModel1.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public setBrightness(I)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setBrightness(I)V

    const/4 v0, 0x5

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0xa

    .line 27
    invoke-static {p1}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setMusicModel(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 49
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x7

    .line 50
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setMusicSens(I)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 54
    sget p1, Lcom/mergbw/core/Constants;->MIN_SENSITIVE_VALUE:I

    rsub-int/lit8 p1, p1, 0x64

    int-to-double v2, p1

    mul-double/2addr v0, v2

    sget p1, Lcom/mergbw/core/Constants;->MIN_SENSITIVE_VALUE:I

    int-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0x8

    .line 57
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setRGBColor(I)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setRGBColor(I)V

    const/4 v0, 0x3

    .line 33
    invoke-static {p1}, Lcom/mergbw/core/utils/ColorUtils;->getHSVColorData(I)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result v0

    invoke-static {v0}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->sendData([B)V

    .line 43
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSpeed()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0xf

    .line 44
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->sendData([B)V

    return-void
.end method
