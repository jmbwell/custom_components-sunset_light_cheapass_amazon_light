.class public Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "DIYSettingViewModel.java"


# static fields
.field public static final FROM_FACTORY:I = 0x2

.field public static final FROM_USER:I = 0x1


# instance fields
.field private DIYEffect:I

.field private DIYSpeed:I

.field private from:I

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

.field private mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

.field private mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

.field private final mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

.field private final mDIYInfoData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
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

.field private final mSaveResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
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


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 54
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDIYInfoData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    .line 62
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mSaveResultData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x1

    .line 64
    iput p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYEffect:I

    const/16 v0, 0x14

    .line 65
    iput v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYSpeed:I

    .line 67
    iput p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->from:I

    .line 71
    new-instance p1, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$1;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    .line 105
    new-instance p1, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$2;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IColorDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)Lcom/mergbw/core/database/bean/DIYInfoBean;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mSaveResultData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private sendDIYColor(BBLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "style",
            "time",
            "subColorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0x3c

    add-int/lit8 p3, p3, 0x4

    new-array v1, p3, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 255
    aput-byte v3, v1, v2

    .line 256
    aput-byte p1, v1, v3

    const/4 p1, 0x2

    .line 257
    aput-byte p2, v1, p1

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v1, p2

    move p1, v2

    .line 259
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 260
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mergbw/core/utils/ColorUtils;->getSubColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    move v3, v2

    .line 261
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 262
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v4}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v4

    mul-int/lit8 v5, p1, 0x3c

    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x4

    .line 263
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x5

    .line 264
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x6

    .line 265
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 269
    :cond_1
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getMtu()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    const/4 p2, -0x1

    const/16 v0, 0x9

    if-le p3, p1, :cond_3

    int-to-double v3, p3

    int-to-double v5, p1

    div-double/2addr v3, v5

    .line 271
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_4

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_2

    mul-int v5, v4, p1

    sub-int v6, p3, v5

    .line 275
    new-array v7, v6, [B

    .line 276
    invoke-static {v1, v5, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    invoke-static {v0, v7, p2, v6}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object v5

    .line 278
    invoke-virtual {p0, v5}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->sendData([B)V

    goto :goto_3

    .line 280
    :cond_2
    new-array v5, p1, [B

    mul-int v6, v4, p1

    .line 281
    invoke-static {v1, v6, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v4, 0x1

    int-to-byte v6, v6

    .line 282
    invoke-static {v0, v5, v6, p1}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object v5

    .line 283
    invoke-virtual {p0, v5}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->sendData([B)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 287
    :cond_3
    invoke-static {v0, v1, p2, p3}, Lcom/mergbw/core/ble/CommandUtils;->getSeqCommand(B[BBI)[B

    move-result-object p1

    .line 288
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->sendData([B)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getCurrentDIYInfo()Lcom/mergbw/core/database/bean/DIYInfoBean;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    return-object v0
.end method

.method public getDIYEffect()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYEffect:I

    return v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 146
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iput-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 147
    const-string v0, "diyInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/DIYInfoBean;

    iput-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    .line 148
    const-string v0, "from"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->from:I

    .line 149
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v0, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v0}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 152
    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/SubColorBean;->setType(I)V

    .line 153
    iget-object v2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    if-nez v2, :cond_0

    .line 154
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v0}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 157
    invoke-virtual {p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->initSubData()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 158
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDIYInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getSubColorList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 162
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getSubColorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/mergbw/core/Constants;->MAX_DIY_SUB_NUM:I

    if-ge v1, v2, :cond_2

    .line 165
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getSubColorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getStyle()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYEffect:I

    .line 170
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getTime()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYSpeed:I

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public initSubData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 198
    new-instance v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-direct {v2}, Lcom/mergbw/core/bean/SubItemBean;-><init>()V

    .line 199
    const-string v3, "#FF000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mergbw/core/bean/SubItemBean;->setColor(I)V

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public saveDIYSetting(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "subColorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/SubColorBean;

    .line 209
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    :cond_1
    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    if-nez p2, :cond_2

    .line 215
    new-instance p2, Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-direct {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;-><init>()V

    iput-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    .line 216
    invoke-virtual {p2, v2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setType(I)V

    .line 218
    :cond_2
    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setColorValue(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {p2, p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setName(Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    iget p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYEffect:I

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setStyle(I)V

    .line 221
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    iget p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYSpeed:I

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setTime(I)V

    .line 222
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    iget p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->from:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    move p2, v2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDiyType(I)V

    .line 223
    iget p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->from:I

    if-ne p1, v2, :cond_4

    .line 225
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceType(I)V

    .line 227
    :cond_4
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->addDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    .line 228
    iget p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->from:I

    if-eq p1, v2, :cond_5

    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    if-eqz p1, :cond_6

    .line 229
    :cond_5
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getStyle()I

    move-result p1

    int-to-byte p1, p1

    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getTime()I

    move-result p2

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->sendDIYColor(BBLjava/util/List;)V

    .line 231
    :cond_6
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, v1}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

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

    .line 293
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

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

    .line 141
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 142
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->getColorList()V

    return-void
.end method

.method public setDIYEffect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYEffect"
        }
    .end annotation

    .line 188
    iput p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYEffect:I

    return-void
.end method

.method public setDIYInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "diyInfoDataObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDIYInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setDIYSpeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 192
    iput p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYSpeed:I

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

    .line 129
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setSaveResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "saveResultObserver"
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

    .line 176
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mSaveResultData:Landroidx/lifecycle/MutableLiveData;

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

    .line 137
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public updateDIYSetting(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subColorList"
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

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/SubColorBean;

    .line 237
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setColorValue(Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    iget v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYEffect:I

    invoke-virtual {p1, v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setStyle(I)V

    .line 244
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    iget v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->DIYSpeed:I

    invoke-virtual {p1, v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setTime(I)V

    .line 245
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mDIYDatabasePresenter:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {p1, v1}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->updateDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    .line 246
    iget p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->from:I

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    if-eqz p1, :cond_3

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getStyle()I

    move-result p1

    int-to-byte p1, p1

    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->mCurrentDIYInfo:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getTime()I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->sendDIYColor(BBLjava/util/List;)V

    :cond_3
    return-void
.end method
