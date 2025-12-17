.class public final synthetic Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;

    check-cast p1, Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->lambda$getDIYColor$1$com-mergbw-core-database-presenter-DIYColorDatabasePresenter(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    return-void
.end method
