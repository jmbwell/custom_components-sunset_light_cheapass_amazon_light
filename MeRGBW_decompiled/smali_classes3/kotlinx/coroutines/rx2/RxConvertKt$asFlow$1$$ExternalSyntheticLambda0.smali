.class public final synthetic Lkotlinx/coroutines/rx2/RxConvertKt$asFlow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx2/RxConvertKt$asFlow$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/rx2/RxConvertKt$asFlow$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lkotlinx/coroutines/rx2/RxConvertKt$asFlow$1;->$r8$lambda$7rHvVkuXR0jt5ON0YTAdoL6It-A(Ljava/util/concurrent/atomic/AtomicReference;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
