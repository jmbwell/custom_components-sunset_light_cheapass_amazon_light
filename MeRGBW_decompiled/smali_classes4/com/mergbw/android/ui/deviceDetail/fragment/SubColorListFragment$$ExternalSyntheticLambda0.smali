.class public final synthetic Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-virtual {v0}, Lcom/mergbw/core/ui/BaseFragment;->hideWaitDialog()V

    return-void
.end method
