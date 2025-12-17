.class public Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SubColorViewModel.java"


# static fields
.field public static final FROM_FACTORY:I = 0x2

.field public static final FROM_USER:I = 0x1


# instance fields
.field private from:I

.field private final mAddResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

.field private final mCommonColorListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

.field private final mDeleteResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceInfoData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSubColor:Lcom/mergbw/core/database/bean/SubColorBean;

.field private final mSubColorData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubColorListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSubColorPresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 42
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorData:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mAddResultData:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->from:I

    .line 65
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$1;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)V

    const-string v1, "SubColorViewModel"

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V

    .line 72
    new-instance p1, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    new-instance v0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$2;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorPresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    .line 104
    new-instance p1, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    new-instance v0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$3;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IColorDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mAddResultData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public addSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subColor"
        }
    .end annotation

    .line 167
    iget v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->from:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceType(I)V

    .line 171
    :cond_0
    iget v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->from:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/SubColorBean;->setSubType(I)V

    .line 172
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorPresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    .line 173
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    return-void
.end method

.method public deleteSubColor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorPresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->deleteColor(Ljava/util/List;)V

    return-void
.end method

.method public getSubColor()Lcom/mergbw/core/database/bean/SubColorBean;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColor:Lcom/mergbw/core/database/bean/SubColorBean;

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 141
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iput-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 142
    const-string v0, "subColor"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/SubColorBean;

    iput-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColor:Lcom/mergbw/core/database/bean/SubColorBean;

    .line 143
    const-string v0, "from"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->from:I

    .line 144
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColor:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 145
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 128
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 129
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const-string v1, "SubColorViewModel"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public sendData([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 192
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method

.method public setAddResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "addResultObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mAddResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setCommonColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "commonColorListObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;>;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 163
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->getColorList()V

    return-void
.end method

.method public setDeleteResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "deleteResultObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setDeviceInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "deviceInfoDataObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setSubColor(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3d

    .line 197
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 198
    aput-byte v3, v1, v2

    move v3, v2

    .line 199
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 200
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v4}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v6, v5, 0x1

    .line 201
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x2

    .line 202
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x3

    .line 203
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getMtu()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    const/4 v3, -0x1

    const/4 v4, 0x4

    if-le v0, p1, :cond_3

    int-to-double v5, v0

    int-to-double v7, p1

    div-double/2addr v5, v7

    .line 208
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_2

    mul-int v6, v5, p1

    rsub-int/lit8 v7, v6, 0x3d

    .line 212
    new-array v8, v7, [B

    .line 213
    invoke-static {v1, v6, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-static {v4, v8, v3, v7}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object v6

    .line 215
    invoke-virtual {p0, v6}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->sendData([B)V

    goto :goto_2

    .line 217
    :cond_2
    new-array v6, p1, [B

    mul-int v7, v5, p1

    .line 218
    invoke-static {v1, v7, v6, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v5, 0x1

    int-to-byte v7, v7

    .line 219
    invoke-static {v4, v6, v7, p1}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object v6

    .line 220
    invoke-virtual {p0, v6}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->sendData([B)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    :cond_3
    invoke-static {v4, v1, v3, v0}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->sendData([B)V

    :cond_4
    return-void
.end method

.method public setSubColorDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "subColorObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setSubColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "subColorListObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 154
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorPresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->getColorList()V

    return-void
.end method

.method public updateSubColor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorValue"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColor:Lcom/mergbw/core/database/bean/SubColorBean;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColorPresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->mSubColor:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->updateSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    :cond_0
    return-void
.end method
