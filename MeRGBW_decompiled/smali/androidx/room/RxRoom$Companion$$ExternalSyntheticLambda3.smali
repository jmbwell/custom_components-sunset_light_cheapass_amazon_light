.class public final synthetic Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lio/reactivex/Maybe;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/Maybe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda3;->f$0:Lio/reactivex/Maybe;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda3;->f$0:Lio/reactivex/Maybe;

    invoke-static {v0, p1}, Landroidx/room/RxRoom$Companion;->$r8$lambda$q373aa4PLE7cZiZ0E-WFPqNqy_M(Lio/reactivex/Maybe;Ljava/lang/Object;)Lio/reactivex/MaybeSource;

    move-result-object p1

    return-object p1
.end method
