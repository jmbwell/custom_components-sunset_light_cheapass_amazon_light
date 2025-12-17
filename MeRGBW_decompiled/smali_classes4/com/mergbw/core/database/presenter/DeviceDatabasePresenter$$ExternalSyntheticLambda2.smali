.class public final synthetic Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->lambda$getDeviceInfo$3$com-mergbw-core-database-presenter-DeviceDatabasePresenter(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method
