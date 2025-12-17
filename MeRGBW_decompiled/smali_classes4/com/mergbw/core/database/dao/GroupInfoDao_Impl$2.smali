.class Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$2;
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

    .line 58
    iput-object p1, p0, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$2;->this$0:Lcom/mergbw/core/database/dao/GroupInfoDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 2
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

    .line 67
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x1

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

    .line 58
    check-cast p2, Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/GroupInfoDao_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "DELETE FROM `t_device_group` WHERE `groupId` = ?"

    return-object v0
.end method
