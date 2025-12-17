.class public Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;
.super Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;
.source "GroupDetailViewModel6.java"


# instance fields
.field private mCurrentMode:Lcom/mergbw/core/RGBMode;

.field private mCurrentScene:Lcom/mergbw/core/bean/SceneData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method private changeBrightness(II)V
    .locals 0

    .line 181
    invoke-direct {p0, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setWhiteBrightness(I)V

    .line 184
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setRGBBrightness(I)V

    return-void
.end method

.method private dismissLoading()V
    .locals 4

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setRGBBrightness(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 189
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x5

    .line 190
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    return-void
.end method

.method private setWhiteBrightness(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 195
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0x11

    .line 196
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    return-void
.end method


# virtual methods
.method synthetic lambda$dismissLoading$6$com-mergbw-android-ui-groupDetail-viewModel-GroupDetailViewModel6()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mShowLoading:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$setBrightness$1$com-mergbw-android-ui-groupDetail-viewModel-GroupDetailViewModel6(I)V
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mShowLoading:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v2, Lcom/mergbw/core/RGBMode;->WARM_MODE:Lcom/mergbw/core/RGBMode;

    const-wide v3, 0x3fe999999999999aL    # 0.8

    const/4 v5, 0x5

    if-ne v0, v2, :cond_0

    add-int/2addr p1, v5

    int-to-double v0, p1

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->changeBrightness(II)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v2, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    if-ne v0, v2, :cond_5

    .line 53
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentScene:Lcom/mergbw/core/bean/SceneData;

    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {v0}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p1, v5

    int-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->changeBrightness(II)V

    goto :goto_0

    :cond_2
    add-int/2addr p1, v5

    int-to-double v0, p1

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->changeBrightness(II)V

    goto :goto_0

    :cond_3
    add-int/2addr p1, v5

    .line 60
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setRGBBrightness(I)V

    goto :goto_0

    :cond_4
    add-int/2addr p1, v5

    .line 56
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setWhiteBrightness(I)V

    goto :goto_0

    :cond_5
    add-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 74
    new-array v0, v1, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 75
    invoke-static {v5, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    .line 77
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->dismissLoading()V

    return-void
.end method

.method synthetic lambda$setIlluminating$3$com-mergbw-android-ui-groupDetail-viewModel-GroupDetailViewModel6(Lcom/mergbw/core/bean/SceneData;)V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mShowLoading:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v2, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRValue()I

    move-result v0

    int-to-byte v0, v0

    .line 102
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getGValue()I

    move-result v2

    int-to-byte v2, v2

    .line 103
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getBValue()I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    new-array v6, v5, [B

    aput-byte v0, v6, v3

    aput-byte v2, v6, v1

    const/4 v0, 0x2

    aput-byte v4, v6, v0

    .line 104
    invoke-static {v5, v6}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    .line 105
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRGBPercent()I

    move-result v0

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getWhitePercent()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->changeBrightness(II)V

    .line 106
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRGBPercent()I

    move-result v4

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getWhitePercent()I

    move-result v5

    invoke-direct {v2, v1, v4, v5}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-ne v0, v2, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    new-array v0, v1, [B

    aput-byte p1, v0, v3

    const/4 p1, 0x6

    .line 114
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    .line 115
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v0, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-eq p1, v0, :cond_1

    .line 116
    invoke-direct {p0, v3}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setWhiteBrightness(I)V

    .line 117
    sget-object p1, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 118
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    const/16 v1, 0x32

    invoke-direct {v0, v3, v1, v3}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->dismissLoading()V

    return-void
.end method

.method synthetic lambda$setRGBColor$0$com-mergbw-android-ui-groupDetail-viewModel-GroupDetailViewModel6(I)V
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mShowLoading:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 33
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    aput-byte v2, v4, v1

    const/4 v0, 0x2

    aput-byte p1, v4, v0

    .line 35
    invoke-static {v3, v4}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    .line 37
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v0, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    if-eq p1, v0, :cond_0

    .line 38
    sget-object p1, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->dismissLoading()V

    return-void
.end method

.method synthetic lambda$setScene$4$com-mergbw-android-ui-groupDetail-viewModel-GroupDetailViewModel6(Lcom/mergbw/core/bean/SceneData;)V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mShowLoading:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v2, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRValue()I

    move-result v0

    int-to-byte v0, v0

    .line 135
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getGValue()I

    move-result v2

    int-to-byte v2, v2

    .line 136
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getBValue()I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    new-array v6, v5, [B

    aput-byte v0, v6, v3

    aput-byte v2, v6, v1

    const/4 v0, 0x2

    aput-byte v4, v6, v0

    .line 137
    invoke-static {v5, v6}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    .line 138
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRGBPercent()I

    move-result v0

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getWhitePercent()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->changeBrightness(II)V

    .line 139
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getRGBPercent()I

    move-result v4

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getWhitePercent()I

    move-result v5

    invoke-direct {v2, v1, v4, v5}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getMode()Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-ne v0, v2, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    new-array v0, v1, [B

    aput-byte p1, v0, v3

    const/4 p1, 0x6

    .line 147
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    .line 148
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v0, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-eq p1, v0, :cond_1

    .line 149
    invoke-direct {p0, v3}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setWhiteBrightness(I)V

    .line 150
    sget-object p1, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 151
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    const/16 v1, 0x32

    invoke-direct {v0, v3, v1, v3}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->dismissLoading()V

    return-void
.end method

.method synthetic lambda$setWarmColor$5$com-mergbw-android-ui-groupDetail-viewModel-GroupDetailViewModel6(I)V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mShowLoading:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 162
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 163
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 164
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/lit16 p1, p1, -0x96

    int-to-double v3, p1

    const-wide v5, 0x405a400000000000L    # 105.0

    div-double/2addr v3, v5

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double/2addr v3, v5

    double-to-int p1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v3, 0x3

    .line 166
    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    aput-byte v2, v4, v1

    const/4 v0, 0x2

    aput-byte p1, v4, v0

    .line 167
    invoke-static {v3, v4}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->sendData([B)V

    .line 169
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object v0, Lcom/mergbw/core/RGBMode;->WARM_MODE:Lcom/mergbw/core/RGBMode;

    if-eq p1, v0, :cond_0

    const/16 p1, 0x64

    const/16 v0, 0x50

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->changeBrightness(II)V

    .line 171
    sget-object v2, Lcom/mergbw/core/RGBMode;->WARM_MODE:Lcom/mergbw/core/RGBMode;

    iput-object v2, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 172
    iget-object v2, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    invoke-direct {v3, v1, p1, v0}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->dismissLoading()V

    return-void
.end method

.method synthetic lambda$startVoiceData$2$com-mergbw-android-ui-groupDetail-viewModel-GroupDetailViewModel6()V
    .locals 5

    .line 0
    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->changeBrightness(II)V

    .line 88
    iget-object v2, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0, v1}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;-><init>(ZII)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setBrightness(I)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setBrightness(I)V

    .line 48
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;I)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIlluminating(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 95
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentScene:Lcom/mergbw/core/bean/SceneData;

    .line 96
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;Lcom/mergbw/core/bean/SceneData;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRGBColor(I)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setRGBColor(I)V

    .line 29
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;I)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentScene:Lcom/mergbw/core/bean/SceneData;

    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 128
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentScene:Lcom/mergbw/core/bean/SceneData;

    .line 129
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;Lcom/mergbw/core/bean/SceneData;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWarmColor(I)V
    .locals 2

    .line 159
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;I)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentScene:Lcom/mergbw/core/bean/SceneData;

    return-void
.end method

.method public startVoiceData(II)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->startVoiceData(II)V

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    sget-object p2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    if-eq p1, p2, :cond_0

    .line 85
    sget-object p1, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentMode:Lcom/mergbw/core/RGBMode;

    .line 86
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object p1

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->mCurrentScene:Lcom/mergbw/core/bean/SceneData;

    return-void
.end method
