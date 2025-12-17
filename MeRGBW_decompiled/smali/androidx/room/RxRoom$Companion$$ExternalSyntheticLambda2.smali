.class public final synthetic Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/Callable;

    invoke-static {v0, p1}, Landroidx/room/RxRoom$Companion;->$r8$lambda$6rRROyCcTO_NOnaoh3htR5eo3b4(Ljava/util/concurrent/Callable;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
