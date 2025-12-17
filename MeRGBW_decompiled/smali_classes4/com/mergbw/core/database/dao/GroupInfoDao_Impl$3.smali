.class Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "GroupInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
        "Lcom/mergbw/core/database/bean/GroupItemBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;


# direct methods
.method constructor <init>(Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$3;->this$0:Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/GroupItemBean;)V
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

    .line 79
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 85
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDevices()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 86
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDevices()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 90
    :goto_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 91
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x5

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

    .line 70
    check-cast p2, Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "UPDATE OR ABORT `t_device_group` SET `groupId` = ?,`groupName` = ?,`devices` = ?,`deviceType` = ? WHERE `groupId` = ?"

    return-object v0
.end method
