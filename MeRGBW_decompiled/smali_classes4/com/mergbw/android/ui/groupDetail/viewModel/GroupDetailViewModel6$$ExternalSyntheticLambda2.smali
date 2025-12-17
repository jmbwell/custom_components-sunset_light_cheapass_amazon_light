.class public final synthetic Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

.field public final synthetic f$1:Lcom/mergbw/core/bean/SceneData;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;Lcom/mergbw/core/bean/SceneData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    iput-object p2, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda2;->f$1:Lcom/mergbw/core/bean/SceneData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6$$ExternalSyntheticLambda2;->f$1:Lcom/mergbw/core/bean/SceneData;

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->lambda$setScene$4$com-mergbw-android-ui-groupDetail-viewModel-GroupDetailViewModel6(Lcom/mergbw/core/bean/SceneData;)V

    return-void
.end method
