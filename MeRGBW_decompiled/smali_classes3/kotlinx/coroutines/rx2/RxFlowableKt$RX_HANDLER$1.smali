.class final synthetic Lkotlinx/coroutines/rx2/RxFlowableKt$RX_HANDLER$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "RxFlowable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/rx2/RxFlowableKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Throwable;",
        "Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/rx2/RxFlowableKt$RX_HANDLER$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/rx2/RxFlowableKt$RX_HANDLER$1;

    invoke-direct {v0}, Lkotlinx/coroutines/rx2/RxFlowableKt$RX_HANDLER$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/rx2/RxFlowableKt$RX_HANDLER$1;->INSTANCE:Lkotlinx/coroutines/rx2/RxFlowableKt$RX_HANDLER$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lkotlinx/coroutines/rx2/RxCancellableKt;

    const-string v4, "handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-string v3, "handleUndeliverableException"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/rx2/RxFlowableKt$RX_HANDLER$1;->invoke(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 51
    invoke-static {p1, p2}, Lkotlinx/coroutines/rx2/RxCancellableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method
