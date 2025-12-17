.class public final Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;
.super Ljava/lang/Object;
.source "ConfigInfoDao_Impl.java"

# interfaces
.implements Lcom/mergbw/core/database/dao/ConfigInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfConfigInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertAdapterOfConfigInfoBean:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfConfigInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    new-instance p1, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$1;-><init>(Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__insertAdapterOfConfigInfoBean:Landroidx/room/EntityInsertAdapter;

    .line 98
    new-instance p1, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$2;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$2;-><init>(Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__deleteAdapterOfConfigInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 110
    new-instance p1, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$3;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$3;-><init>(Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__updateAdapterOfConfigInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

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

    .line 325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queryConfigList$3(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 22

    .line 202
    const-string v0, "select * from t_factory_config"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 204
    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 205
    const-string v2, "type"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 206
    const-string v3, "name"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 207
    const-string v4, "factoryId"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 208
    const-string v5, "deviceType"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 209
    const-string v6, "deviceModel"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 210
    const-string v7, "ledNum"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 211
    const-string v8, "nameLength"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 212
    const-string v9, "bleName"

    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 213
    const-string v10, "extra"

    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 214
    const-string v11, "keyMode"

    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 215
    const-string v12, "RGBModel"

    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 216
    const-string v13, "enableLimit"

    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 217
    const-string v14, "maxMixLight"

    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 218
    const-string v15, "maxOtherLight"

    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    .line 219
    const-string v15, "remoteControl"

    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    .line 220
    const-string v15, "DIYMode"

    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    .line 221
    const-string v15, "SubMode"

    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    .line 222
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 223
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v19, v15

    .line 225
    new-instance v15, Lcom/mergbw/core/database/bean/ConfigInfoBean;

    invoke-direct {v15}, Lcom/mergbw/core/database/bean/ConfigInfoBean;-><init>()V

    move/from16 v20, v13

    move/from16 v21, v14

    .line 227
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    .line 228
    invoke-virtual {v15, v13}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setId(I)V

    .line 230
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    .line 231
    invoke-virtual {v15, v13}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setType(I)V

    .line 233
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    goto :goto_1

    .line 236
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v13

    .line 238
    :goto_1
    invoke-virtual {v15, v13}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setName(Ljava/lang/String;)V

    move-object v13, v15

    .line 240
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 241
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setFactoryId(I)V

    .line 243
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 244
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setDeviceType(I)V

    .line 246
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    goto :goto_2

    .line 249
    :cond_1
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    .line 251
    :goto_2
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setDeviceModel(Ljava/lang/String;)V

    .line 253
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 254
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setLedNum(I)V

    .line 256
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 257
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setNameLength(I)V

    .line 259
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    goto :goto_3

    .line 262
    :cond_2
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    .line 264
    :goto_3
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setBleName(Ljava/lang/String;)V

    .line 266
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    goto :goto_4

    .line 269
    :cond_3
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    .line 271
    :goto_4
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setExtra(Ljava/lang/String;)V

    .line 273
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    goto :goto_5

    .line 276
    :cond_4
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v14

    .line 278
    :goto_5
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setKeyMode(Ljava/lang/String;)V

    .line 280
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 281
    invoke-virtual {v13, v14}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setRGBModel(I)V

    move v15, v2

    move/from16 v14, v20

    move/from16 v20, v3

    .line 284
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 286
    :goto_6
    invoke-virtual {v13, v2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setEnableLimit(Z)V

    move/from16 v2, v21

    move/from16 v21, v4

    .line 288
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 289
    invoke-virtual {v13, v3}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setMaxMixLight(I)V

    move/from16 v3, p0

    move/from16 p0, v5

    .line 291
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 292
    invoke-virtual {v13, v4}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setMaxOtherLight(I)V

    move/from16 v4, v16

    .line 294
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_7

    .line 297
    :cond_6
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 299
    :goto_7
    invoke-virtual {v13, v5}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setRemoteControl(Ljava/lang/String;)V

    move/from16 v5, v17

    .line 301
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move/from16 v17, v0

    const/4 v0, 0x0

    goto :goto_8

    .line 304
    :cond_7
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v0, v16

    .line 306
    :goto_8
    invoke-virtual {v13, v0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setDIYMode(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 308
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_9

    .line 311
    :cond_8
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v18, v0

    move-object/from16 v0, v16

    .line 313
    :goto_9
    invoke-virtual {v13, v0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setSubMode(Ljava/lang/String;)V

    move-object/from16 v0, v19

    .line 314
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v4

    move v13, v14

    move/from16 v4, v21

    move v14, v2

    move v2, v15

    move-object v15, v0

    move/from16 v0, v17

    move/from16 v17, v5

    move/from16 v5, p0

    move/from16 p0, v3

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_9
    move-object v0, v15

    .line 318
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 319
    throw v0
.end method


# virtual methods
.method public deleteConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;Lcom/mergbw/core/database/bean/ConfigInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public insertConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;Lcom/mergbw/core/database/bean/ConfigInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$deleteConfig$1$com-mergbw-core-database-dao-ConfigInfoDao_Impl(Lcom/mergbw/core/database/bean/ConfigInfoBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__deleteAdapterOfConfigInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 186
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$insertConfig$0$com-mergbw-core-database-dao-ConfigInfoDao_Impl(Lcom/mergbw/core/database/bean/ConfigInfoBean;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__insertAdapterOfConfigInfoBean:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$updateConfig$2$com-mergbw-core-database-dao-ConfigInfoDao_Impl(Lcom/mergbw/core/database/bean/ConfigInfoBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__updateAdapterOfConfigInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 194
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public queryConfigList()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_factory_config"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public updateConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;Lcom/mergbw/core/database/bean/ConfigInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
