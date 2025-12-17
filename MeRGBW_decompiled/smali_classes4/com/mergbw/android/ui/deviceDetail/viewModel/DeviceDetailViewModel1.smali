.class public Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;
.super Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
.source "DeviceDetailViewModel1.java"


# instance fields
.field private mDIYColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

.field public final mDIYListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSendDIYResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mSendSubResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubColorListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSubDatabasePresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 55
    const-string v0, "DeviceDetailViewModel1"

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 40
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYListData:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSendSubResultData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSendDIYResultData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance p1, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSubDatabasePresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    .line 88
    new-instance p1, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$2;-><init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYColorList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYColorList:Ljava/util/List;

    return-object p1
.end method

.method private sendDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 10

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getSubColorList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 293
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 294
    aput-byte v4, v2, v3

    .line 295
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getStyle()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 296
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getTime()I

    move-result p1

    int-to-byte p1, p1

    const/4 v4, 0x2

    aput-byte p1, v2, v4

    .line 297
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-byte p1, p1

    const/4 v4, 0x3

    aput-byte p1, v2, v4

    move p1, v3

    .line 298
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 299
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {v4}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mergbw/core/utils/ColorUtils;->getSubColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move v5, v3

    .line 300
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 301
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v6}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v6

    mul-int/lit8 v7, p1, 0x3c

    mul-int/lit8 v8, v5, 0x3

    add-int/2addr v7, v8

    add-int/lit8 v8, v7, 0x4

    .line 302
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    add-int/lit8 v8, v7, 0x5

    .line 303
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    add-int/lit8 v7, v7, 0x6

    .line 304
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 308
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getMtu()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    const/4 v0, -0x1

    const/16 v4, 0x9

    if-le v1, p1, :cond_3

    int-to-double v5, v1

    int-to-double v7, p1

    div-double/2addr v5, v7

    .line 310
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_4

    add-int/lit8 v7, v5, -0x1

    if-ne v6, v7, :cond_2

    mul-int v7, v6, p1

    sub-int v8, v1, v7

    .line 314
    new-array v9, v8, [B

    .line 315
    invoke-static {v2, v7, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    invoke-static {v4, v9, v0, v8}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object v7

    .line 317
    invoke-virtual {p0, v7}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    goto :goto_3

    .line 319
    :cond_2
    new-array v7, p1, [B

    mul-int v8, v6, p1

    .line 320
    invoke-static {v2, v8, v7, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, 0x1

    int-to-byte v8, v8

    .line 321
    invoke-static {v4, v7, v8, p1}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object v7

    .line 322
    invoke-virtual {p0, v7}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 326
    :cond_3
    invoke-static {v4, v2, v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object p1

    .line 327
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    :cond_4
    return-void
.end method


# virtual methods
.method public deleteDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->deleteDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    :cond_0
    return-void
.end method

.method public deleteSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSubDatabasePresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->deleteSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    :cond_0
    return-void
.end method

.method protected onBleResponse(B[B)V
    .locals 7

    if-nez p1, :cond_0

    .line 129
    const-string v0, "DeviceDetailViewModel onNotifyData"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {v0, p2}, Lcom/mergbw/core/utils/ViewDataUtils;->analyseSyncData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    .line 131
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDetailViewData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne p1, v0, :cond_3

    .line 135
    aget-byte v0, p2, v4

    if-ne v0, v3, :cond_1

    .line 136
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 137
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mBindStatusData:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Lcom/mergbw/android/ui/addDevice/BindStatus;->BOUND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 141
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mBindStatusData:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Lcom/mergbw/android/ui/addDevice/BindStatus;->UNBIND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 144
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 145
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mBindStatusData:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Lcom/mergbw/android/ui/addDevice/BindStatus;->TIMEOUT:Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const/4 v0, -0x1

    if-ne p1, v4, :cond_5

    .line 150
    aget-byte v5, p2, v4

    if-nez v5, :cond_4

    .line 151
    aget-byte v5, p2, v1

    if-ne v5, v0, :cond_5

    .line 152
    iget-object v5, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSendSubResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_4
    iget-object v5, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSendSubResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    const/16 v5, 0x9

    if-ne p1, v5, :cond_7

    .line 160
    aget-byte p1, p2, v4

    if-nez p1, :cond_6

    .line 161
    aget-byte p1, p2, v1

    if-ne p1, v0, :cond_7

    .line 162
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSendDIYResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 165
    :cond_6
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSendDIYResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setBrightness(I)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setBrightness(I)V

    const/4 v0, 0x5

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0xa

    .line 191
    invoke-static {p1}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColor(I)V

    const/4 v0, 0x3

    .line 197
    invoke-static {p1}, Lcom/mergbw/core/utils/ColorUtils;->getHSVColorData(I)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    return-void
.end method

.method public setDIYListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 185
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->getDIYColorList(I)V

    return-void
.end method

.method public setMusicModel(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 215
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x7

    .line 216
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setMusicSens(I)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 220
    sget v2, Lcom/mergbw/core/Constants;->MIN_SENSITIVE_VALUE:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    mul-double/2addr v0, v2

    sget v2, Lcom/mergbw/core/Constants;->MIN_SENSITIVE_VALUE:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setMusicSens musicSens: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " senValue: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    double-to-int p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 223
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0x8

    .line 224
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 203
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 205
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result v0

    invoke-static {v0}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    .line 209
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSpeed()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/16 p1, 0xf

    .line 210
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    return-void
.end method

.method public setSendDIYResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSendDIYResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setSendSubResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSendSubResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 9

    .line 228
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/ColorUtils;->getSubColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x3d

    .line 229
    new-array v1, v0, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    aput-byte v2, v1, v3

    move v2, v3

    .line 231
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 232
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v4}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v4

    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v6, v5, 0x1

    .line 233
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x2

    .line 234
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x3

    .line 235
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getMtu()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    const/4 v2, -0x1

    const/4 v4, 0x4

    if-le v0, p1, :cond_2

    int-to-double v5, v0

    int-to-double v7, p1

    div-double/2addr v5, v7

    .line 240
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_3

    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_1

    mul-int v6, v5, p1

    rsub-int/lit8 v7, v6, 0x3d

    .line 244
    new-array v8, v7, [B

    .line 245
    invoke-static {v1, v6, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-static {v4, v8, v2, v7}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object v6

    .line 247
    invoke-virtual {p0, v6}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    goto :goto_2

    .line 249
    :cond_1
    new-array v6, p1, [B

    mul-int v7, v5, p1

    .line 250
    invoke-static {v1, v7, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v5, 0x1

    int-to-byte v7, v7

    .line 251
    invoke-static {v4, v6, v7, p1}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object v6

    .line 252
    invoke-virtual {p0, v6}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 256
    :cond_2
    invoke-static {v4, v1, v2, v0}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object p1

    .line 257
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->sendData([B)V

    :cond_3
    return-void
.end method

.method public setSubColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
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

    .line 171
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 172
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSubDatabasePresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->getColorList(I)V

    return-void
.end method

.method public updateDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->updateDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    :cond_0
    return-void
.end method

.method public updateSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSubDatabasePresenter:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->updateSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    :cond_0
    return-void
.end method
