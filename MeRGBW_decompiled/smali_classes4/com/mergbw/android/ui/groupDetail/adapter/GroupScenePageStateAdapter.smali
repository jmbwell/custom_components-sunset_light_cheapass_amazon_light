.class public Lcom/mergbw/android/ui/groupDetail/adapter/GroupScenePageStateAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "GroupScenePageStateAdapter.java"


# instance fields
.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneGroupData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupScenePageStateAdapter;->mPageList:Ljava/util/List;

    return-void
.end method

.method private getTabPage(I)Lcom/mergbw/core/ui/BaseFragment;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;-><init>()V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupFestivalSceneListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupFestivalSceneListFragment;-><init>()V

    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupClassicSceneListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupClassicSceneListFragment;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupScenePageStateAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/SceneGroupData;

    .line 40
    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneGroupData;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupScenePageStateAdapter;->getTabPage(I)Lcom/mergbw/core/ui/BaseFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupScenePageStateAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneGroupData;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupScenePageStateAdapter;->mPageList:Ljava/util/List;

    return-object v0
.end method

.method public setPageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneGroupData;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupScenePageStateAdapter;->mPageList:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupScenePageStateAdapter;->notifyDataSetChanged()V

    return-void
.end method
