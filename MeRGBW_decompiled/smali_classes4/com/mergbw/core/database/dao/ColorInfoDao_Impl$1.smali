.class Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "ColorInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/mergbw/core/database/bean/ColorBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;


# direct methods
.method constructor <init>(Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$1;->this$0:Lcom/mergbw/core/database/dao/ColorInfoDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/ColorBean;)V
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

    .line 38
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 39
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ColorBean;->getAlias()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ColorBean;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 44
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ColorBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 45
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ColorBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 49
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/ColorBean;->getAddTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

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

    .line 29
    check-cast p2, Lcom/mergbw/core/database/bean/ColorBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/ColorInfoDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/ColorBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "INSERT OR REPLACE INTO `t_color_list` (`colorValue`,`alias`,`deviceMac`,`addTime`) VALUES (?,?,?,?)"

    return-object v0
.end method
