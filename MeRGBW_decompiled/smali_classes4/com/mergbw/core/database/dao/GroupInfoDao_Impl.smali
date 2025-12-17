.class public final Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;
.super Ljava/lang/Object;
.source "GroupInfoDao_Impl.java"

# interfaces
.implements Lcom/mergbw/core/database/dao/GroupInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfGroupItemBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertAdapterOfGroupItemBean:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfGroupItemBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
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
    iput-object p1, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 35
    new-instance p1, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$1;-><init>(Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__insertAdapterOfGroupItemBean:Landroidx/room/EntityInsertAdapter;

    .line 58
    new-instance p1, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$2;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$2;-><init>(Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__deleteAdapterOfGroupItemBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 70
    new-instance p1, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$3;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$3;-><init>(Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__updateAdapterOfGroupItemBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

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

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queryGroupInfo$5(ILandroidx/sqlite/SQLiteConnection;)Lcom/mergbw/core/database/bean/GroupItemBean;
    .locals 7

    .line 210
    const-string v0, "select * from t_device_group where groupId = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    int-to-long v1, p0

    .line 213
    :try_start_0
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 214
    const-string p0, "groupId"

    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p0

    .line 215
    const-string v0, "groupName"

    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 216
    const-string v1, "devices"

    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 217
    const-string v2, "deviceType"

    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 219
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 220
    new-instance v3, Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-direct {v3}, Lcom/mergbw/core/database/bean/GroupItemBean;-><init>()V

    .line 222
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int p0, v5

    .line 223
    invoke-virtual {v3, p0}, Lcom/mergbw/core/database/bean/GroupItemBean;->setGroupId(I)V

    .line 225
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p0, v4

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 230
    :goto_0
    invoke-virtual {v3, p0}, Lcom/mergbw/core/database/bean/GroupItemBean;->setGroupName(Ljava/lang/String;)V

    .line 232
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 235
    :cond_1
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    :goto_1
    invoke-virtual {v3, v4}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDevices(Ljava/lang/String;)V

    .line 239
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 240
    invoke-virtual {v3, p0}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDeviceType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 246
    :cond_2
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v4

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 247
    throw p0
.end method

.method static synthetic lambda$queryGroupList$4(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 8

    .line 167
    const-string v0, "select * from t_device_group"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 169
    :try_start_0
    const-string v0, "groupId"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 170
    const-string v1, "groupName"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 171
    const-string v2, "devices"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 172
    const-string v3, "deviceType"

    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    new-instance v5, Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-direct {v5}, Lcom/mergbw/core/database/bean/GroupItemBean;-><init>()V

    .line 178
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    .line 179
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/GroupItemBean;->setGroupId(I)V

    .line 181
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_1

    .line 184
    :cond_0
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    :goto_1
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/GroupItemBean;->setGroupName(Ljava/lang/String;)V

    .line 188
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 191
    :cond_1
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 193
    :goto_2
    invoke-virtual {v5, v7}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDevices(Ljava/lang/String;)V

    .line 195
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    .line 196
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDeviceType(I)V

    .line 197
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    :cond_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 202
    throw v0
.end method

.method static synthetic lambda$queryGroupListWithFlowable$3(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 8

    .line 124
    const-string v0, "select * from t_device_group"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 126
    :try_start_0
    const-string v0, "groupId"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 127
    const-string v1, "groupName"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 128
    const-string v2, "devices"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 129
    const-string v3, "deviceType"

    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    new-instance v5, Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-direct {v5}, Lcom/mergbw/core/database/bean/GroupItemBean;-><init>()V

    .line 135
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    .line 136
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/GroupItemBean;->setGroupId(I)V

    .line 138
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_1

    .line 141
    :cond_0
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 143
    :goto_1
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/GroupItemBean;->setGroupName(Ljava/lang/String;)V

    .line 145
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 148
    :cond_1
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 150
    :goto_2
    invoke-virtual {v5, v7}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDevices(Ljava/lang/String;)V

    .line 152
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    .line 153
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDeviceType(I)V

    .line 154
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :cond_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 159
    throw v0
.end method


# virtual methods
.method public deleteGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "group"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;Lcom/mergbw/core/database/bean/GroupItemBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public insertGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "group"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;Lcom/mergbw/core/database/bean/GroupItemBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$deleteGroup$1$com-mergbw-core-database-dao-GroupInfoDao_Impl(Lcom/mergbw/core/database/bean/GroupItemBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__deleteAdapterOfGroupItemBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 108
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$insertGroup$0$com-mergbw-core-database-dao-GroupInfoDao_Impl(Lcom/mergbw/core/database/bean/GroupItemBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__insertAdapterOfGroupItemBean:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 100
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$updateGroup$2$com-mergbw-core-database-dao-GroupInfoDao_Impl(Lcom/mergbw/core/database/bean/GroupItemBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__updateAdapterOfGroupItemBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 116
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public queryGroupInfo(I)Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_device_group"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda3;-><init>(I)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public queryGroupList()Lio/reactivex/Maybe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public queryGroupListWithFlowable()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_device_group"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda5;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public updateGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "group"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;Lcom/mergbw/core/database/bean/GroupItemBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
