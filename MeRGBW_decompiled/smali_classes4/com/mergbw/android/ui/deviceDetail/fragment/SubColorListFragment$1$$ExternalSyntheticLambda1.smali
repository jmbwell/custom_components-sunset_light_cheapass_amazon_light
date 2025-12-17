.class public final synthetic Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;

.field public final synthetic f$1:Lcom/mergbw/core/database/bean/SubColorBean;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/database/bean/SubColorBean;

    return-void
.end method


# virtual methods
.method public final OnMenuClick(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->lambda$longClickGroupItem$1$com-mergbw-android-ui-deviceDetail-fragment-SubColorListFragment$1(Lcom/mergbw/core/database/bean/SubColorBean;I)V

    return-void
.end method
