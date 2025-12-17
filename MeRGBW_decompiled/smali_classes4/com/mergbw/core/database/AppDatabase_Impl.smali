.class public final Lcom/mergbw/core/database/AppDatabase_Impl;
.super Lcom/mergbw/core/database/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _colorInfoDao:Lcom/mergbw/core/database/dao/ColorInfoDao;

.field private volatile _configInfoDao:Lcom/mergbw/core/database/dao/ConfigInfoDao;

.field private volatile _dIYColorDao:Lcom/mergbw/core/database/dao/DIYColorDao;

.field private volatile _deviceInfoDao:Lcom/mergbw/core/database/dao/DeviceInfoDao;

.field private volatile _groupInfoDao:Lcom/mergbw/core/database/dao/GroupInfoDao;

.field private volatile _subColorDao:Lcom/mergbw/core/database/dao/SubColorDao;

.field private volatile _upgradeErrorRecordDao:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/mergbw/core/database/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/database/AppDatabase_Impl;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/mergbw/core/database/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method


# virtual methods
.method public clearAllTables()V
    .locals 7

    .line 245
    const-string v5, "t_factory_config"

    const-string v6, "t_upgrade_error_record"

    const-string v0, "t_device_list"

    const-string v1, "t_color_list"

    const-string v2, "t_sub_color_list"

    const-string v3, "t_device_group"

    const-string v4, "t_diy_color_list"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v1, v0}, Lcom/mergbw/core/database/AppDatabase;->performClear(Z[Ljava/lang/String;)V

    return-void
.end method

.method public colorInfoDao()Lcom/mergbw/core/database/dao/ColorInfoDao;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_colorInfoDao:Lcom/mergbw/core/database/dao/ColorInfoDao;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_colorInfoDao:Lcom/mergbw/core/database/dao/ColorInfoDao;

    return-object v0

    .line 296
    :cond_0
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_colorInfoDao:Lcom/mergbw/core/database/dao/ColorInfoDao;

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_colorInfoDao:Lcom/mergbw/core/database/dao/ColorInfoDao;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_colorInfoDao:Lcom/mergbw/core/database/dao/ColorInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 301
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public configInfoDao()Lcom/mergbw/core/database/dao/ConfigInfoDao;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_configInfoDao:Lcom/mergbw/core/database/dao/ConfigInfoDao;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_configInfoDao:Lcom/mergbw/core/database/dao/ConfigInfoDao;

    return-object v0

    .line 352
    :cond_0
    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_configInfoDao:Lcom/mergbw/core/database/dao/ConfigInfoDao;

    if-nez v0, :cond_1

    .line 354
    new-instance v0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_configInfoDao:Lcom/mergbw/core/database/dao/ConfigInfoDao;

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_configInfoDao:Lcom/mergbw/core/database/dao/ConfigInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 357
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 10

    .line 238
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 240
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v8, "t_factory_config"

    const-string v9, "t_upgrade_error_record"

    const-string v3, "t_device_list"

    const-string v4, "t_color_list"

    const-string v5, "t_sub_color_list"

    const-string v6, "t_device_group"

    const-string v7, "t_diy_color_list"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 4

    .line 56
    new-instance v0, Lcom/mergbw/core/database/AppDatabase_Impl$1;

    const-string v1, "6350d2fe22194b08458bc75c124a6f6c"

    const-string v2, "06acc3279862bb88dd3d025c65a8c13d"

    const/4 v3, 0x6

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/mergbw/core/database/AppDatabase_Impl$1;-><init>(Lcom/mergbw/core/database/AppDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic createOpenDelegate()Landroidx/room/RoomOpenDelegateMarker;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/mergbw/core/database/AppDatabase_Impl;->createOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    return-object v0
.end method

.method public deviceInfoDao()Lcom/mergbw/core/database/dao/DeviceInfoDao;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_deviceInfoDao:Lcom/mergbw/core/database/dao/DeviceInfoDao;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_deviceInfoDao:Lcom/mergbw/core/database/dao/DeviceInfoDao;

    return-object v0

    .line 282
    :cond_0
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_deviceInfoDao:Lcom/mergbw/core/database/dao/DeviceInfoDao;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_deviceInfoDao:Lcom/mergbw/core/database/dao/DeviceInfoDao;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_deviceInfoDao:Lcom/mergbw/core/database/dao/DeviceInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 287
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_dIYColorDao:Lcom/mergbw/core/database/dao/DIYColorDao;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_dIYColorDao:Lcom/mergbw/core/database/dao/DIYColorDao;

    return-object v0

    .line 324
    :cond_0
    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_dIYColorDao:Lcom/mergbw/core/database/dao/DIYColorDao;

    if-nez v0, :cond_1

    .line 326
    new-instance v0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_dIYColorDao:Lcom/mergbw/core/database/dao/DIYColorDao;

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_dIYColorDao:Lcom/mergbw/core/database/dao/DIYColorDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 329
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autoMigrationSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    const-class v1, Lcom/mergbw/core/database/dao/DeviceInfoDao;

    invoke-static {}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-class v1, Lcom/mergbw/core/database/dao/ColorInfoDao;

    invoke-static {}, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-class v1, Lcom/mergbw/core/database/dao/SubColorDao;

    invoke-static {}, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-class v1, Lcom/mergbw/core/database/dao/DIYColorDao;

    invoke-static {}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-class v1, Lcom/mergbw/core/database/dao/GroupInfoDao;

    invoke-static {}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-class v1, Lcom/mergbw/core/database/dao/ConfigInfoDao;

    invoke-static {}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-class v1, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    invoke-static {}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public groupInfoDao()Lcom/mergbw/core/database/dao/GroupInfoDao;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_groupInfoDao:Lcom/mergbw/core/database/dao/GroupInfoDao;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_groupInfoDao:Lcom/mergbw/core/database/dao/GroupInfoDao;

    return-object v0

    .line 338
    :cond_0
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_groupInfoDao:Lcom/mergbw/core/database/dao/GroupInfoDao;

    if-nez v0, :cond_1

    .line 340
    new-instance v0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_groupInfoDao:Lcom/mergbw/core/database/dao/GroupInfoDao;

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_groupInfoDao:Lcom/mergbw/core/database/dao/GroupInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 343
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_subColorDao:Lcom/mergbw/core/database/dao/SubColorDao;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_subColorDao:Lcom/mergbw/core/database/dao/SubColorDao;

    return-object v0

    .line 310
    :cond_0
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_subColorDao:Lcom/mergbw/core/database/dao/SubColorDao;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/dao/SubColorDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_subColorDao:Lcom/mergbw/core/database/dao/SubColorDao;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_subColorDao:Lcom/mergbw/core/database/dao/SubColorDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 315
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public upgradeErrorRecordDao()Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_upgradeErrorRecordDao:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_upgradeErrorRecordDao:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    return-object v0

    .line 366
    :cond_0
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_upgradeErrorRecordDao:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    if-nez v0, :cond_1

    .line 368
    new-instance v0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_upgradeErrorRecordDao:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/database/AppDatabase_Impl;->_upgradeErrorRecordDao:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
