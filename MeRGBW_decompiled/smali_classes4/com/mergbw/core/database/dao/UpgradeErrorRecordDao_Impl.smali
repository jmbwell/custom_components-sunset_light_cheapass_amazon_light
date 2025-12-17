.class public final Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;
.super Ljava/lang/Object;
.source "UpgradeErrorRecordDao_Impl.java"

# interfaces
.implements Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfUpgradeErrorRecordBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertAdapterOfUpgradeErrorRecordBean:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    new-instance p1, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$1;-><init>(Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->__insertAdapterOfUpgradeErrorRecordBean:Landroidx/room/EntityInsertAdapter;

    .line 72
    new-instance p1, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$2;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$2;-><init>(Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->__deleteAdapterOfUpgradeErrorRecordBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

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

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queryRecordList$2(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 14

    .line 111
    const-string v0, "select * from t_upgrade_error_record"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 113
    :try_start_0
    const-string v0, "deviceMac"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 114
    const-string v1, "deviceName"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 115
    const-string v2, "deviceType"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 116
    const-string v3, "deviceModel"

    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 117
    const-string v4, "aliasName"

    invoke-static {p0, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 118
    const-string v5, "factoryID"

    invoke-static {p0, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 119
    const-string v6, "errorCode"

    invoke-static {p0, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 120
    const-string v7, "recordTime"

    invoke-static {p0, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 121
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 124
    new-instance v9, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-direct {v9}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;-><init>()V

    .line 126
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v10, v11

    goto :goto_1

    .line 129
    :cond_0
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 131
    :goto_1
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setDeviceMac(Ljava/lang/String;)V

    .line 133
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v11

    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 138
    :goto_2
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setDeviceName(Ljava/lang/String;)V

    .line 140
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v10, v12

    .line 141
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setDeviceType(I)V

    .line 143
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v11

    goto :goto_3

    .line 146
    :cond_2
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 148
    :goto_3
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setDeviceModel(Ljava/lang/String;)V

    .line 150
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v11

    goto :goto_4

    .line 153
    :cond_3
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 155
    :goto_4
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setAliasName(Ljava/lang/String;)V

    .line 157
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v10, v12

    .line 158
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setFactoryID(I)V

    .line 160
    invoke-interface {p0, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v10, v12

    .line 161
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setErrorCode(I)V

    .line 163
    invoke-interface {p0, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    .line 166
    :cond_4
    invoke-interface {p0, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    .line 168
    :goto_5
    invoke-virtual {v9, v11}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setRecordTime(Ljava/lang/String;)V

    .line 169
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    :cond_5
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v8

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 174
    throw v0
.end method


# virtual methods
.method public deleteRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "record"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public insertRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "record"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$deleteRecord$1$com-mergbw-core-database-dao-UpgradeErrorRecordDao_Impl(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->__deleteAdapterOfUpgradeErrorRecordBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 103
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$insertRecord$0$com-mergbw-core-database-dao-UpgradeErrorRecordDao_Impl(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->__insertAdapterOfUpgradeErrorRecordBean:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 95
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public queryRecordList()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_upgrade_error_record"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method
