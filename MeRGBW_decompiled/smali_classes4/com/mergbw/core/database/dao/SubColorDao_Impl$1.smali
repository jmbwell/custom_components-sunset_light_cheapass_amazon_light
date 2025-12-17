.class Lcom/mergbw/core/database/dao/SubColorDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "SubColorDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/database/dao/SubColorDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/mergbw/core/database/bean/SubColorBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/database/dao/SubColorDao_Impl;


# direct methods
.method constructor <init>(Lcom/mergbw/core/database/dao/SubColorDao_Impl;)V
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
    iput-object p1, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl$1;->this$0:Lcom/mergbw/core/database/dao/SubColorDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/SubColorBean;)V
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

    .line 45
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 51
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getAlias()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 56
    :goto_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 61
    :goto_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getSubType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 62
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getDeviceType()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x6

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

    .line 36
    check-cast p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/SubColorBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "INSERT OR REPLACE INTO `t_sub_color_list` (`id`,`colorValue`,`alias`,`deviceMac`,`subType`,`deviceType`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method
