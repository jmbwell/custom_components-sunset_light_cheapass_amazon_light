.class public final Lcom/mergbw/core/database/dao/SubColorDao_Impl;
.super Ljava/lang/Object;
.source "SubColorDao_Impl.java"

# interfaces
.implements Lcom/mergbw/core/database/dao/SubColorDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfSubColorBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertAdapterOfSubColorBean:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfSubColorBean:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
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
    iput-object p1, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    new-instance p1, Lcom/mergbw/core/database/dao/SubColorDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$1;-><init>(Lcom/mergbw/core/database/dao/SubColorDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__insertAdapterOfSubColorBean:Landroidx/room/EntityInsertAdapter;

    .line 65
    new-instance p1, Lcom/mergbw/core/database/dao/SubColorDao_Impl$2;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$2;-><init>(Lcom/mergbw/core/database/dao/SubColorDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__deleteAdapterOfSubColorBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 77
    new-instance p1, Lcom/mergbw/core/database/dao/SubColorDao_Impl$3;

    invoke-direct {p1, p0}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$3;-><init>(Lcom/mergbw/core/database/dao/SubColorDao_Impl;)V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__updateAdapterOfSubColorBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

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

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queryColorList$5(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 10

    .line 201
    const-string v0, "select * from t_sub_color_list"

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    .line 203
    :try_start_0
    const-string v0, "id"

    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 204
    const-string v1, "colorValue"

    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 205
    const-string v2, "alias"

    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 206
    const-string v3, "deviceMac"

    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 207
    const-string v4, "subType"

    invoke-static {p0, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 208
    const-string v5, "deviceType"

    invoke-static {p0, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 209
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 212
    new-instance v7, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v7}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 214
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    .line 215
    invoke-virtual {v7, v8}, Lcom/mergbw/core/database/bean/SubColorBean;->setId(I)V

    .line 217
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    move-object v8, v9

    goto :goto_1

    .line 220
    :cond_0
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 222
    :goto_1
    invoke-virtual {v7, v8}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 224
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v9

    goto :goto_2

    .line 227
    :cond_1
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 229
    :goto_2
    invoke-virtual {v7, v8}, Lcom/mergbw/core/database/bean/SubColorBean;->setAlias(Ljava/lang/String;)V

    .line 231
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    .line 234
    :cond_2
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v9

    .line 236
    :goto_3
    invoke-virtual {v7, v9}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceMac(Ljava/lang/String;)V

    .line 238
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    .line 239
    invoke-virtual {v7, v8}, Lcom/mergbw/core/database/bean/SubColorBean;->setSubType(I)V

    .line 241
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    .line 242
    invoke-virtual {v7, v8}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceType(I)V

    .line 243
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 247
    :cond_3
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v6

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 248
    throw v0
.end method

.method static synthetic lambda$queryColorList$6(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 9

    .line 256
    const-string v0, "select * from t_sub_color_list where deviceMac = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 260
    :try_start_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 264
    :goto_0
    const-string p0, "id"

    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p0

    .line 265
    const-string v0, "colorValue"

    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 266
    const-string v1, "alias"

    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 267
    const-string v2, "deviceMac"

    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 268
    const-string v3, "subType"

    invoke-static {p1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 269
    const-string v4, "deviceType"

    invoke-static {p1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    :goto_1
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 273
    new-instance v6, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v6}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 275
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 276
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setId(I)V

    .line 278
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    move-object v7, v8

    goto :goto_2

    .line 281
    :cond_1
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 283
    :goto_2
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 285
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v8

    goto :goto_3

    .line 288
    :cond_2
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 290
    :goto_3
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setAlias(Ljava/lang/String;)V

    .line 292
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    .line 295
    :cond_3
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 297
    :goto_4
    invoke-virtual {v6, v8}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceMac(Ljava/lang/String;)V

    .line 299
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 300
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setSubType(I)V

    .line 302
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 303
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceType(I)V

    .line 304
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 308
    :cond_4
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v5

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 309
    throw p0
.end method

.method static synthetic lambda$queryColorList$7(ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 9

    .line 317
    const-string v0, "select * from t_sub_color_list where deviceType = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    int-to-long v1, p0

    .line 320
    :try_start_0
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 321
    const-string p0, "id"

    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p0

    .line 322
    const-string v0, "colorValue"

    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 323
    const-string v1, "alias"

    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 324
    const-string v2, "deviceMac"

    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 325
    const-string v3, "subType"

    invoke-static {p1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 326
    const-string v4, "deviceType"

    invoke-static {p1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 327
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    :goto_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 330
    new-instance v6, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v6}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 332
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 333
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setId(I)V

    .line 335
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    move-object v7, v8

    goto :goto_1

    .line 338
    :cond_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 340
    :goto_1
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 342
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v8

    goto :goto_2

    .line 345
    :cond_1
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    .line 347
    :goto_2
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setAlias(Ljava/lang/String;)V

    .line 349
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 352
    :cond_2
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 354
    :goto_3
    invoke-virtual {v6, v8}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceMac(Ljava/lang/String;)V

    .line 356
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 357
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setSubType(I)V

    .line 359
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 360
    invoke-virtual {v6, v7}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceType(I)V

    .line 361
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 365
    :cond_3
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v5

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 366
    throw p0
.end method

.method static synthetic lambda$querySubColor$4(ILandroidx/sqlite/SQLiteConnection;)Lcom/mergbw/core/database/bean/SubColorBean;
    .locals 9

    .line 144
    const-string v0, "select * from t_sub_color_list where id = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    int-to-long v1, p0

    .line 147
    :try_start_0
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    const-string p0, "id"

    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result p0

    .line 149
    const-string v0, "colorValue"

    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 150
    const-string v1, "alias"

    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    .line 151
    const-string v2, "deviceMac"

    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 152
    const-string v3, "subType"

    invoke-static {p1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 153
    const-string v4, "deviceType"

    invoke-static {p1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 155
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 156
    new-instance v5, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v5}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 158
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int p0, v7

    .line 159
    invoke-virtual {v5, p0}, Lcom/mergbw/core/database/bean/SubColorBean;->setId(I)V

    .line 161
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p0, v6

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 166
    :goto_0
    invoke-virtual {v5, p0}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 168
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, v6

    goto :goto_1

    .line 171
    :cond_1
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p0

    .line 173
    :goto_1
    invoke-virtual {v5, p0}, Lcom/mergbw/core/database/bean/SubColorBean;->setAlias(Ljava/lang/String;)V

    .line 175
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    .line 178
    :cond_2
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    :goto_2
    invoke-virtual {v5, v6}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceMac(Ljava/lang/String;)V

    .line 182
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 183
    invoke-virtual {v5, p0}, Lcom/mergbw/core/database/bean/SubColorBean;->setSubType(I)V

    .line 185
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 186
    invoke-virtual {v5, p0}, Lcom/mergbw/core/database/bean/SubColorBean;->setDeviceType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    .line 192
    :cond_3
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v6

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 193
    throw p0
.end method


# virtual methods
.method public deleteColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "subColor"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/core/database/dao/SubColorDao_Impl;Lcom/mergbw/core/database/bean/SubColorBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public deleteColor(Ljava/util/List;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "colorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/database/dao/SubColorDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public insertColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/dao/SubColorDao_Impl;Lcom/mergbw/core/database/bean/SubColorBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$deleteColor$1$com-mergbw-core-database-dao-SubColorDao_Impl(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__deleteAdapterOfSubColorBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handleMultiple(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)I

    .line 120
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$deleteColor$2$com-mergbw-core-database-dao-SubColorDao_Impl(Lcom/mergbw/core/database/bean/SubColorBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__deleteAdapterOfSubColorBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 128
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method synthetic lambda$insertColor$0$com-mergbw-core-database-dao-SubColorDao_Impl(Lcom/mergbw/core/database/bean/SubColorBean;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__insertAdapterOfSubColorBean:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$updateColor$3$com-mergbw-core-database-dao-SubColorDao_Impl(Lcom/mergbw/core/database/bean/SubColorBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__updateAdapterOfSubColorBean:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 136
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public queryColorList()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_sub_color_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda6;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public queryColorList(I)Lio/reactivex/Flowable;
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
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_sub_color_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public queryColorList(Ljava/lang/String;)Lio/reactivex/Flowable;
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
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "t_sub_color_list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public querySubColor(I)Lio/reactivex/Maybe;
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
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public updateColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "color"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/mergbw/core/database/dao/SubColorDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/database/dao/SubColorDao_Impl$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/database/dao/SubColorDao_Impl;Lcom/mergbw/core/database/bean/SubColorBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/RxRoom;->createCompletable(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
