.class public Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "GroupDetailPageStateAdapter.java"


# instance fields
.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->mPageList:Ljava/util/List;

    return-void
.end method

.method private getTabPage(I)Lcom/mergbw/core/ui/BaseFragment;
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x15

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;-><init>()V

    goto :goto_0

    .line 64
    :cond_1
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;-><init>()V

    goto :goto_0

    .line 72
    :cond_2
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;-><init>()V

    goto :goto_0

    .line 68
    :cond_3
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;-><init>()V

    goto :goto_0

    .line 60
    :cond_4
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSettingFragment;-><init>()V

    goto :goto_0

    .line 76
    :cond_5
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;-><init>()V

    goto :goto_0

    .line 56
    :cond_6
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/TabItemBean;

    .line 44
    invoke-virtual {p1}, Lcom/mergbw/core/bean/TabItemBean;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->getTabPage(I)Lcom/mergbw/core/ui/BaseFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->mPageList:Ljava/util/List;

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
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->mPageList:Ljava/util/List;

    return-object v0
.end method

.method public setPageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->mPageList:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->notifyDataSetChanged()V

    return-void
.end method
