.class public final Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;
.super Ljava/lang/Object;
.source "DeviceInfoDao_Impl.java"

# interfaces
.implements Lcom/mergbw/core/database/dao/DeviceInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfDeviceInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertAdapterOfDeviceInfoBean:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfDeviceInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 35
    new-instance p1, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$1;-><init>(Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__insertAdapterOfDeviceInfoBean:Landroidx/room/EntityInsertAdapter;

    .line 70
    new-instance p1, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$2;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$2;-><init>(Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__deleteAdapterOfDeviceInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 86
    new-instance p1, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$3;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$3;-><init>(Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__updateAdapterOfDeviceInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queryDeviceInfo$5(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 10

    .line 290
    const-string v0, "select * from t_device_list where deviceMac = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 294
    :try_start_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 298
    :goto_0
    const-string p0, "deviceMac"

    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p0

    .line 299
    const-string v0, "deviceName"

    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 300
    const-string v1, "deviceType"

    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 301
    const-string v2, "deviceModel"

    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 302
    const-string v3, "aliasName"

    invoke-static {p1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 303
    const-string v4, "factoryID"

    invoke-static {p1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 304
    const-string v5, "supportCold"

    invoke-static {p1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 305
    const-string v6, "supportWarm"

    invoke-static {p1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 307
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    .line 308
    new-instance v7, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-direct {v7}, Lcom/mergbw/core/database/bean/DeviceInfoBean;-><init>()V

    .line 310
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object p0, v8

    goto :goto_1

    .line 313
    :cond_1
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 315
    :goto_1
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceMac(Ljava/lang/String;)V

    .line 317
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, v8

    goto :goto_2

    .line 320
    :cond_2
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 322
    :goto_2
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceName(Ljava/lang/String;)V

    .line 324
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 325
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceType(I)V

    .line 327
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v8

    goto :goto_3

    .line 330
    :cond_3
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 332
    :goto_3
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceModel(Ljava/lang/String;)V

    .line 334
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    .line 337
    :cond_4
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 339
    :goto_4
    invoke-virtual {v7, v8}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setAliasName(Ljava/lang/String;)V

    .line 341
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 342
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setFactoryID(I)V

    .line 344
    invoke-interface {p1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 345
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSupportCold(I)V

    .line 347
    invoke-interface {p1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 348
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSupportWarm(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    .line 354
    :cond_5
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v8

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 355
    throw p0
.end method

.method static synthetic lambda$queryDeviceListFlowable$3(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 14

    .line 156
    const-string v0, "select * from t_device_list"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 158
    :try_start_0
    const-string v0, "deviceMac"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 159
    const-string v1, "deviceName"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 160
    const-string v2, "deviceType"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 161
    const-string v3, "deviceModel"

    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 162
    const-string v4, "aliasName"

    invoke-static {p0, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 163
    const-string v5, "factoryID"

    invoke-static {p0, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 164
    const-string v6, "supportCold"

    invoke-static {p0, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 165
    const-string v7, "supportWarm"

    invoke-static {p0, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 166
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 167
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 169
    new-instance v9, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-direct {v9}, Lcom/mergbw/core/database/bean/DeviceInfoBean;-><init>()V

    .line 171
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v10, v11

    goto :goto_1

    .line 174
    :cond_0
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 176
    :goto_1
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceMac(Ljava/lang/String;)V

    .line 178
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v11

    goto :goto_2

    .line 181
    :cond_1
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 183
    :goto_2
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceName(Ljava/lang/String;)V

    .line 185
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v10, v12

    .line 186
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceType(I)V

    .line 188
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v11

    goto :goto_3

    .line 191
    :cond_2
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 193
    :goto_3
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceModel(Ljava/lang/String;)V

    .line 195
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    .line 198
    :cond_3
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    .line 200
    :goto_4
    invoke-virtual {v9, v11}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setAliasName(Ljava/lang/String;)V

    .line 202
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 203
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setFactoryID(I)V

    .line 205
    invoke-interface {p0, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 206
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSupportCold(I)V

    .line 208
    invoke-interface {p0, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 209
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSupportWarm(I)V

    .line 210
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    :cond_4
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v8

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 215
    throw v0
.end method

.method static synthetic lambda$queryDeviceListMaybe$4(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 14

    .line 223
    const-string v0, "select * from t_device_list"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 225
    :try_start_0
    const-string v0, "deviceMac"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 226
    const-string v1, "deviceName"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 227
    const-string v2, "deviceType"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 228
    const-string v3, "deviceModel"

    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 229
    const-string v4, "aliasName"

    invoke-static {p0, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 230
    const-string v5, "factoryID"

    invoke-static {p0, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 231
    const-string v6, "supportCold"

    invoke-static {p0, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 232
    const-string v7, "supportWarm"

    invoke-static {p0, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 233
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 234
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 236
    new-instance v9, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-direct {v9}, Lcom/mergbw/core/database/bean/DeviceInfoBean;-><init>()V

    .line 238
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v10, v11

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 243
    :goto_1
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceMac(Ljava/lang/String;)V

    .line 245
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v11

    goto :goto_2

    .line 248
    :cond_1
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 250
    :goto_2
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceName(Ljava/lang/String;)V

    .line 252
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v10, v12

    .line 253
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceType(I)V

    .line 255
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v11

    goto :goto_3

    .line 258
    :cond_2
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 260
    :goto_3
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceModel(Ljava/lang/String;)V

    .line 262
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    .line 265
    :cond_3
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    .line 267
    :goto_4
    invoke-virtual {v9, v11}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setAliasName(Ljava/lang/String;)V

    .line 269
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 270
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setFactoryID(I)V

    .line 272
    invoke-interface {p0, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 273
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSupportCold(I)V

    .line 275
    invoke-interface {p0, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 276
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSupportWarm(I)V

    .line 277
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 281
    :cond_4
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v8

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 282
    throw v0
.end method


# virtual methods
.method public deleteDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "device"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public insertDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "device"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$deleteDevice$1$com-mergbw-core-database-dao-DeviceInfoDao_Impl(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__deleteAdapterOfDeviceInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 140
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$insertDevice$0$com-mergbw-core-database-dao-DeviceInfoDao_Impl(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__insertAdapterOfDeviceInfoBean:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 132
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$updateDevice$2$com-mergbw-core-database-dao-DeviceInfoDao_Impl(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__updateAdapterOfDeviceInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 148
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public queryDeviceInfo(Ljava/lang/String;)Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mac"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public queryDeviceListFlowable()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_device_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public queryDeviceListMaybe()Lio/reactivex/Maybe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public updateDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "device"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
