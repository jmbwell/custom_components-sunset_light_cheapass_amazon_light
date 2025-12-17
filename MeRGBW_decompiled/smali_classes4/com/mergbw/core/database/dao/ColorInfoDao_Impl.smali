.class public final Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;
.super Ljava/lang/Object;
.source "ColorInfoDao_Impl.java"

# interfaces
.implements Lcom/mergbw/core/database/dao/ColorInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfColorBean:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    new-instance p1, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$1;-><init>(Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;->__insertAdapterOfColorBean:Landroidx/room/EntityInsertAdapter;

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

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queryColorList$1(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 8

    .line 66
    const-string v0, "select * from t_color_list order by addTime desc"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 68
    :try_start_0
    const-string v0, "colorValue"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 69
    const-string v1, "alias"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 70
    const-string v2, "deviceMac"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 71
    const-string v3, "addTime"

    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    new-instance v5, Lcom/mergbw/core/database/bean/ColorBean;

    invoke-direct {v5}, Lcom/mergbw/core/database/bean/ColorBean;-><init>()V

    .line 77
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    .line 78
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/ColorBean;->setColorValue(I)V

    .line 80
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_1

    .line 83
    :cond_0
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    :goto_1
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/ColorBean;->setAlias(Ljava/lang/String;)V

    .line 87
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 90
    :cond_1
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 92
    :goto_2
    invoke-virtual {v5, v7}, Lcom/mergbw/core/database/bean/ColorBean;->setDeviceMac(Ljava/lang/String;)V

    .line 94
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    .line 95
    invoke-virtual {v5, v6, v7}, Lcom/mergbw/core/database/bean/ColorBean;->setAddTime(J)V

    .line 96
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :cond_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 101
    throw v0
.end method


# virtual methods
.method public insertColor(Lcom/mergbw/core/database/bean/ColorBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "color"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;Lcom/mergbw/core/database/bean/ColorBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$insertColor$0$com-mergbw-core-database-dao-ColorInfoDao_Impl(Lcom/mergbw/core/database/bean/ColorBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;->__insertAdapterOfColorBean:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 58
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public queryColorList()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_color_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method
