.class public final synthetic Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->lambda$getColorList$2$com-mergbw-core-database-presenter-SubColorDatabasePresenter(Ljava/util/List;)V

    return-void
.end method
