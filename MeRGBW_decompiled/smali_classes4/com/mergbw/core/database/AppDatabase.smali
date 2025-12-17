.class public abstract Lcom/mergbw/core/database/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "mergbw_android.db"

.field private static final MIGRATION_1_2:Landroidx/room/migration/Migration;

.field private static final MIGRATION_2_3:Landroidx/room/migration/Migration;

.field private static final MIGRATION_3_4:Landroidx/room/migration/Migration;

.field private static final MIGRATION_4_5:Landroidx/room/migration/Migration;

.field private static final MIGRATION_5_6:Landroidx/room/migration/Migration;

.field private static instance:Lcom/mergbw/core/database/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Lcom/mergbw/core/database/AppDatabase$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/database/AppDatabase$1;-><init>(II)V

    sput-object v0, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    .line 77
    new-instance v0, Lcom/mergbw/core/database/AppDatabase$2;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/mergbw/core/database/AppDatabase$2;-><init>(II)V

    sput-object v0, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    .line 85
    new-instance v0, Lcom/mergbw/core/database/AppDatabase$3;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/database/AppDatabase$3;-><init>(II)V

    sput-object v0, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    .line 92
    new-instance v0, Lcom/mergbw/core/database/AppDatabase$4;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/mergbw/core/database/AppDatabase$4;-><init>(II)V

    sput-object v0, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    .line 99
    new-instance v0, Lcom/mergbw/core/database/AppDatabase$5;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/database/AppDatabase$5;-><init>(II)V

    sput-object v0, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mergbw/core/database/AppDatabase;
    .locals 4

    .line 60
    sget-object v0, Lcom/mergbw/core/database/AppDatabase;->instance:Lcom/mergbw/core/database/AppDatabase;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/mergbw/core/database/AppDatabase;

    const-string v2, "mergbw_android.db"

    invoke-static {v0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Landroidx/room/migration/Migration;

    const/4 v2, 0x0

    sget-object v3, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mergbw/core/database/AppDatabase;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    aput-object v3, v1, v2

    .line 62
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/AppDatabase;

    sput-object v0, Lcom/mergbw/core/database/AppDatabase;->instance:Lcom/mergbw/core/database/AppDatabase;

    .line 65
    :cond_0
    sget-object v0, Lcom/mergbw/core/database/AppDatabase;->instance:Lcom/mergbw/core/database/AppDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract colorInfoDao()Lcom/mergbw/core/database/dao/ColorInfoDao;
.end method

.method public abstract configInfoDao()Lcom/mergbw/core/database/dao/ConfigInfoDao;
.end method

.method public abstract deviceInfoDao()Lcom/mergbw/core/database/dao/DeviceInfoDao;
.end method

.method public abstract diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;
.end method

.method public abstract groupInfoDao()Lcom/mergbw/core/database/dao/GroupInfoDao;
.end method

.method public abstract subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;
.end method

.method public abstract upgradeErrorRecordDao()Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;
.end method
