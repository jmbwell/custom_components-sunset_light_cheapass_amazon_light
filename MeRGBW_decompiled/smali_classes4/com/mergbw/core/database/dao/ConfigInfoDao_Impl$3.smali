.class Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
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
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
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

    .line 110
    iput-object p1, p0, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$3;->this$0:Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

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

    .line 119
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 120
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 122
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 126
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getFactoryId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 127
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDeviceType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 129
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 133
    :goto_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getLedNum()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getNameLength()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 135
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getBleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_2

    .line 136
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 138
    :cond_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getBleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 140
    :goto_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getExtra()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_3

    .line 141
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 143
    :cond_3
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 145
    :goto_3
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getKeyMode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_4

    .line 146
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 148
    :cond_4
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getKeyMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 150
    :goto_4
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getRGBModel()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 151
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->isEnableLimit()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 152
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getMaxMixLight()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 154
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getMaxOtherLight()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 155
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getRemoteControl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_5

    .line 156
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 158
    :cond_5
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getRemoteControl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 160
    :goto_5
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDIYMode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_6

    .line 161
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 163
    :cond_6
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getDIYMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 165
    :goto_6
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getSubMode()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_7

    .line 166
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 168
    :cond_7
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getSubMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 170
    :goto_7
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->getId()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x13

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

    .line 110
    check-cast p2, Lcom/mergbw/core/database/bean/ConfigInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/ConfigInfoDao_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/ConfigInfoBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "UPDATE OR ABORT `t_factory_config` SET `id` = ?,`type` = ?,`name` = ?,`factoryId` = ?,`deviceType` = ?,`deviceModel` = ?,`ledNum` = ?,`nameLength` = ?,`bleName` = ?,`extra` = ?,`keyMode` = ?,`RGBModel` = ?,`enableLimit` = ?,`maxMixLight` = ?,`maxOtherLight` = ?,`remoteControl` = ?,`DIYMode` = ?,`SubMode` = ? WHERE `id` = ?"

    return-object v0
.end method
