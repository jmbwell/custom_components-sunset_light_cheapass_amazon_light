.class Lcom/mergbw/core/database/dao/SubColorDao_Impl$2;
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

    .line 65
    iput-object p1, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl$2;->this$0:Lcom/mergbw/core/database/dao/SubColorDao_Impl;

    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/SubColorBean;)V
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

    .line 74
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getId()I

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

    .line 65
    check-cast p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Lcom/mergbw/core/database/bean/SubColorBean;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "DELETE FROM `t_sub_color_list` WHERE `id` = ?"

    return-object v0
.end method
