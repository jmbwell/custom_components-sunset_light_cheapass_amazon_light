.class public final Lcom/mergbw/core/database/dao/DIYColorDao_Impl;
.super Ljava/lang/Object;
.source "DIYColorDao_Impl.java"

# interfaces
.implements Lcom/mergbw/core/database/dao/DIYColorDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfDIYInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertAdapterOfDIYInfoBean:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfDIYInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    new-instance p1, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$1;-><init>(Lcom/mergbw/core/database/dao/DIYColorDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__insertAdapterOfDIYInfoBean:Landroidx/room/EntityInsertAdapter;

    .line 67
    new-instance p1, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$2;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$2;-><init>(Lcom/mergbw/core/database/dao/DIYColorDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__deleteAdapterOfDIYInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 79
    new-instance p1, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$3;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$3;-><init>(Lcom/mergbw/core/database/dao/DIYColorDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__updateAdapterOfDIYInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queryDIYColor$3(ILandroidx/sqlite/SQLiteConnection;)Lcom/mergbw/core/database/bean/DIYInfoBean;
    .locals 11

    .line 140
    const-string v0, "select * from t_diy_color_list where id = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    int-to-long v1, p0

    .line 143
    :try_start_0
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 144
    const-string p0, "id"

    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p0

    .line 145
    const-string v0, "name"

    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 146
    const-string v1, "style"

    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 147
    const-string v2, "time"

    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 148
    const-string v3, "colorValue"

    invoke-static {p1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 149
    const-string v4, "deviceMac"

    invoke-static {p1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 150
    const-string v5, "diyType"

    invoke-static {p1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 151
    const-string v6, "deviceType"

    invoke-static {p1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 153
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 154
    new-instance v7, Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-direct {v7}, Lcom/mergbw/core/database/bean/DIYInfoBean;-><init>()V

    .line 156
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int p0, v9

    .line 157
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setId(I)V

    .line 159
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p0, v8

    goto :goto_0

    .line 162
    :cond_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 164
    :goto_0
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setName(Ljava/lang/String;)V

    .line 166
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 167
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setStyle(I)V

    .line 169
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 170
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setTime(I)V

    .line 172
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, v8

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    :goto_1
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setColorValue(Ljava/lang/String;)V

    .line 179
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    .line 182
    :cond_2
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 184
    :goto_2
    invoke-virtual {v7, v8}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceMac(Ljava/lang/String;)V

    .line 186
    invoke-interface {p1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 187
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDiyType(I)V

    .line 189
    invoke-interface {p1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 190
    invoke-virtual {v7, p0}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    .line 196
    :cond_3
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v8

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 197
    throw p0
.end method

.method static synthetic lambda$queryDIYColorList$4(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 14

    .line 205
    const-string v0, "select * from t_diy_color_list"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 207
    :try_start_0
    const-string v0, "id"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 208
    const-string v1, "name"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 209
    const-string v2, "style"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 210
    const-string v3, "time"

    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 211
    const-string v4, "colorValue"

    invoke-static {p0, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 212
    const-string v5, "deviceMac"

    invoke-static {p0, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 213
    const-string v6, "diyType"

    invoke-static {p0, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 214
    const-string v7, "deviceType"

    invoke-static {p0, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 215
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 218
    new-instance v9, Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-direct {v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;-><init>()V

    .line 220
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 221
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setId(I)V

    .line 223
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v10, v11

    goto :goto_1

    .line 226
    :cond_0
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 228
    :goto_1
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setName(Ljava/lang/String;)V

    .line 230
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v10, v12

    .line 231
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setStyle(I)V

    .line 233
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v10, v12

    .line 234
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setTime(I)V

    .line 236
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v11

    goto :goto_2

    .line 239
    :cond_1
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 241
    :goto_2
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setColorValue(Ljava/lang/String;)V

    .line 243
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    .line 246
    :cond_2
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    .line 248
    :goto_3
    invoke-virtual {v9, v11}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceMac(Ljava/lang/String;)V

    .line 250
    invoke-interface {p0, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 251
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDiyType(I)V

    .line 253
    invoke-interface {p0, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 254
    invoke-virtual {v9, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceType(I)V

    .line 255
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    :cond_3
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v8

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 260
    throw v0
.end method

.method static synthetic lambda$queryDIYColorList$5(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 13

    .line 268
    const-string v0, "select * from t_diy_color_list where deviceMac = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 272
    :try_start_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 276
    :goto_0
    const-string p0, "id"

    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p0

    .line 277
    const-string v0, "name"

    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 278
    const-string v1, "style"

    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 279
    const-string v2, "time"

    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 280
    const-string v3, "colorValue"

    invoke-static {p1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 281
    const-string v4, "deviceMac"

    invoke-static {p1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 282
    const-string v5, "diyType"

    invoke-static {p1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 283
    const-string v6, "deviceType"

    invoke-static {p1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 284
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 285
    :goto_1
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 287
    new-instance v8, Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-direct {v8}, Lcom/mergbw/core/database/bean/DIYInfoBean;-><init>()V

    .line 289
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 290
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setId(I)V

    .line 292
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    move-object v9, v10

    goto :goto_2

    .line 295
    :cond_1
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 297
    :goto_2
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setName(Ljava/lang/String;)V

    .line 299
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v9, v11

    .line 300
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setStyle(I)V

    .line 302
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v9, v11

    .line 303
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setTime(I)V

    .line 305
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v10

    goto :goto_3

    .line 308
    :cond_2
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 310
    :goto_3
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setColorValue(Ljava/lang/String;)V

    .line 312
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_4

    .line 315
    :cond_3
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 317
    :goto_4
    invoke-virtual {v8, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceMac(Ljava/lang/String;)V

    .line 319
    invoke-interface {p1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 320
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDiyType(I)V

    .line 322
    invoke-interface {p1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 323
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceType(I)V

    .line 324
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 328
    :cond_4
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v7

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 329
    throw p0
.end method

.method static synthetic lambda$queryDIYColorList$6(ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 13

    .line 337
    const-string v0, "select * from t_diy_color_list where deviceType = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    int-to-long v1, p0

    .line 340
    :try_start_0
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 341
    const-string p0, "id"

    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p0

    .line 342
    const-string v0, "name"

    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 343
    const-string v1, "style"

    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 344
    const-string v2, "time"

    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 345
    const-string v3, "colorValue"

    invoke-static {p1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 346
    const-string v4, "deviceMac"

    invoke-static {p1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 347
    const-string v5, "diyType"

    invoke-static {p1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 348
    const-string v6, "deviceType"

    invoke-static {p1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 349
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 350
    :goto_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 352
    new-instance v8, Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-direct {v8}, Lcom/mergbw/core/database/bean/DIYInfoBean;-><init>()V

    .line 354
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 355
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setId(I)V

    .line 357
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    move-object v9, v10

    goto :goto_1

    .line 360
    :cond_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 362
    :goto_1
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setName(Ljava/lang/String;)V

    .line 364
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v9, v11

    .line 365
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setStyle(I)V

    .line 367
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v9, v11

    .line 368
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setTime(I)V

    .line 370
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v10

    goto :goto_2

    .line 373
    :cond_1
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 375
    :goto_2
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setColorValue(Ljava/lang/String;)V

    .line 377
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 380
    :cond_2
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    .line 382
    :goto_3
    invoke-virtual {v8, v10}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceMac(Ljava/lang/String;)V

    .line 384
    invoke-interface {p1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 385
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDiyType(I)V

    .line 387
    invoke-interface {p1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 388
    invoke-virtual {v8, v9}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setDeviceType(I)V

    .line 389
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 393
    :cond_3
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v7

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 394
    throw p0
.end method


# virtual methods
.method public deleteColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "DIYColor"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/database/dao/DIYColorDao_Impl;Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public insertDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "DIYColor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/database/dao/DIYColorDao_Impl;Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$deleteColor$1$com-mergbw-core-database-dao-DIYColorDao_Impl(Lcom/mergbw/core/database/bean/DIYInfoBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__deleteAdapterOfDIYInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 124
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$insertDIYColor$0$com-mergbw-core-database-dao-DIYColorDao_Impl(Lcom/mergbw/core/database/bean/DIYInfoBean;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__insertAdapterOfDIYInfoBean:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$updateColor$2$com-mergbw-core-database-dao-DIYColorDao_Impl(Lcom/mergbw/core/database/bean/DIYInfoBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__updateAdapterOfDIYInfoBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 132
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public queryDIYColor(I)Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Maybe<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda3;-><init>(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public queryDIYColorList()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_diy_color_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda6;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public queryDIYColorList(I)Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "deviceType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_diy_color_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public queryDIYColorList(Ljava/lang/String;)Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "deviceMac"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_diy_color_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public updateColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "DIYColor"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/mergbw/core/database/dao/DIYColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/dao/DIYColorDao_Impl;Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
