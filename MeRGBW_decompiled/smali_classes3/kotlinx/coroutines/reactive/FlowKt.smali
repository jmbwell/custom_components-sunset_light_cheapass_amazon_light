.class public final Lkotlinx/coroutines/reactive/FlowKt;
.super Ljava/lang/Object;
.source "Migration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlinx/coroutines/reactive/FlowKt__MigrationKt"
    }
    k = 0x4
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic asFlow(Lorg/reactivestreams/Publisher;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced in favor of ReactiveFlow extension, please import kotlinx.coroutines.reactive.* instead of kotlinx.coroutines.reactive.FlowKt"
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/reactive/FlowKt__MigrationKt;->asFlow(Lorg/reactivestreams/Publisher;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic asFlow(Lorg/reactivestreams/Publisher;I)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "batchSize parameter is deprecated, use .buffer() instead to control the backpressure"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "asFlow().buffer(batchSize)"
            imports = {
                "kotlinx.coroutines.flow.*"
            }
        .end subannotation
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/reactive/FlowKt__MigrationKt;->asFlow(Lorg/reactivestreams/Publisher;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic asPublisher(Lkotlinx/coroutines/flow/Flow;)Lorg/reactivestreams/Publisher;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced in favor of ReactiveFlow extension, please import kotlinx.coroutines.reactive.* instead of kotlinx.coroutines.reactive.FlowKt"
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/reactive/FlowKt__MigrationKt;->asPublisher(Lkotlinx/coroutines/flow/Flow;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    return-object p0
.end method
