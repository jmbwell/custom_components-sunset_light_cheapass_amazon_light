.class Lcom/mergbw/core/database/dao/SubColorDao_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
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
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
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

    .line 77
    iput-object p1, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl$3;->this$0:Lcom/mergbw/core/database/dao/SubColorDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

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

    .line 86
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 87
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 92
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getAlias()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 93
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 97
    :goto_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 102
    :goto_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getSubType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 103
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getDeviceType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 104
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x7

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

    .line 77
    check-cast p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/SubColorBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "UPDATE OR ABORT `t_sub_color_list` SET `id` = ?,`colorValue` = ?,`alias` = ?,`deviceMac` = ?,`subType` = ?,`deviceType` = ? WHERE `id` = ?"

    return-object v0
.end method
