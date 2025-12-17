.class Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "DeviceInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;


# direct methods
.method constructor <init>(Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$1;->this$0:Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
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

    .line 44
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 45
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 49
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 50
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 54
    :goto_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 55
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 60
    :goto_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 61
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 63
    :cond_3
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 65
    :goto_3
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 66
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSupportCold()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 67
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSupportWarm()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x8

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

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

    .line 35
    check-cast p2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/DeviceInfoDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "INSERT OR REPLACE INTO `t_device_list` (`deviceMac`,`deviceName`,`deviceType`,`deviceModel`,`aliasName`,`factoryID`,`supportCold`,`supportWarm`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
