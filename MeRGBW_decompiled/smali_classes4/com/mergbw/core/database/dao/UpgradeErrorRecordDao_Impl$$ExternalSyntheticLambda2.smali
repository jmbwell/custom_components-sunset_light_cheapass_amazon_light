.class public final synthetic Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;

.field public final synthetic f$1:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;

    iput-object p2, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda2;->f$1:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;

    iget-object v1, p0, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl$$ExternalSyntheticLambda2;->f$1:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao_Impl;->lambda$deleteRecord$1$com-mergbw-core-database-dao-UpgradeErrorRecordDao_Impl(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
