.class Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "ConfigInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;


# direct methods
.method constructor <init>(Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$1;->this$0:Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/ConfigInfoBean;)V
    .locals 4
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

    .line 45
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 47
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 52
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getFactoryId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 53
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDeviceType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 54
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 55
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 59
    :goto_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getLedNum()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 60
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getNameLength()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 61
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getBleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_2

    .line 62
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getBleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 66
    :goto_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getExtra()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_3

    .line 67
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 69
    :cond_3
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 71
    :goto_3
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getKeyMode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_4

    .line 72
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 74
    :cond_4
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getKeyMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 76
    :goto_4
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getRGBModel()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 77
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->isEnableLimit()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 78
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 79
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getMaxMixLight()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getMaxOtherLight()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getRemoteControl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_5

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 84
    :cond_5
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getRemoteControl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 86
    :goto_5
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDIYMode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_6

    .line 87
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 89
    :cond_6
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDIYMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 91
    :goto_6
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getSubMode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_7

    .line 92
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 94
    :cond_7
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getSubMode()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_7
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

    .line 36
    check-cast p2, Lcom/mergbw/core/database/bean/ConfigInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/ConfigInfoBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "INSERT OR REPLACE INTO `t_factory_config` (`id`,`type`,`name`,`factoryId`,`deviceType`,`deviceModel`,`ledNum`,`nameLength`,`bleName`,`extra`,`keyMode`,`RGBModel`,`enableLimit`,`maxMixLight`,`maxOtherLight`,`remoteControl`,`DIYMode`,`SubMode`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
