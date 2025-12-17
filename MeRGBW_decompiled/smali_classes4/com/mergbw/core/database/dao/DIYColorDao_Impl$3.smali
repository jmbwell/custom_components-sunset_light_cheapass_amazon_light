.class Lcom/mergbw/core/database/dao/DIYColorDao_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "DIYColorDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/database/dao/DIYColorDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
        "Lcom/mergbw/core/database/bean/DIYInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/database/dao/DIYColorDao_Impl;


# direct methods
.method constructor <init>(Lcom/mergbw/core/database/dao/DIYColorDao_Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$3;->this$0:Lcom/mergbw/core/database/dao/DIYColorDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/DIYInfoBean;)V
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

    .line 88
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 89
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 90
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 94
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getStyle()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 95
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getTime()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 96
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 97
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 101
    :goto_1
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 102
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 106
    :goto_2
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getDiyType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getDeviceType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getId()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x9

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

    .line 79
    check-cast p2, Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "UPDATE OR ABORT `t_diy_color_list` SET `id` = ?,`name` = ?,`style` = ?,`time` = ?,`colorValue` = ?,`deviceMac` = ?,`diyType` = ?,`deviceType` = ? WHERE `id` = ?"

    return-object v0
.end method
