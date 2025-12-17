.class Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "UpgradeErrorRecordDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;


# direct methods
.method constructor <init>(Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$1;->this$0:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 42
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 47
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 53
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 58
    :goto_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getAliasName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 59
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getAliasName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 63
    :goto_3
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getFactoryID()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 64
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getErrorCode()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 65
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getRecordTime()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 66
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getRecordTime()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 32
    check-cast p2, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "INSERT OR REPLACE INTO `t_upgrade_error_record` (`deviceMac`,`deviceName`,`deviceType`,`deviceModel`,`aliasName`,`factoryID`,`errorCode`,`recordTime`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
