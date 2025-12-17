.class Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$2;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
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
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
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

    .line 72
    iput-object p1, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$2;->this$0:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
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

    .line 82
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 83
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
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

    .line 72
    check-cast p2, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "DELETE FROM `t_upgrade_error_record` WHERE `deviceMac` = ?"

    return-object v0
.end method
