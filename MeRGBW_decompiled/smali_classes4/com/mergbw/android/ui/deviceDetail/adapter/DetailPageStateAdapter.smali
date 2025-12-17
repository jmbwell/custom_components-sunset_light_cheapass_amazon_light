.class public Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "DetailPageStateAdapter.java"


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

    .line 31
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->mPageList:Ljava/util/List;

    return-void
.end method

.method private getTabPage(I)Lcom/mergbw/core/ui/BaseFragment;
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_a

    const/16 v0, 0xd

    if-eq p1, v0, :cond_9

    const/16 v0, 0x10

    if-eq p1, v0, :cond_8

    const/16 v0, 0x15

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x23

    if-eq p1, v0, :cond_5

    const/16 v0, 0x29

    if-eq p1, v0, :cond_4

    const/16 v0, 0x33

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;-><init>()V

    goto :goto_0

    .line 76
    :cond_1
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;-><init>()V

    goto :goto_0

    .line 100
    :cond_2
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;-><init>()V

    goto :goto_0

    .line 96
    :cond_3
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;-><init>()V

    goto :goto_0

    .line 92
    :cond_4
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;-><init>()V

    goto :goto_0

    .line 88
    :cond_5
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;-><init>()V

    goto :goto_0

    .line 84
    :cond_6
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;-><init>()V

    goto :goto_0

    .line 72
    :cond_7
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;-><init>()V

    goto :goto_0

    .line 68
    :cond_8
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;-><init>()V

    goto :goto_0

    .line 64
    :cond_9
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;-><init>()V

    goto :goto_0

    .line 60
    :cond_a
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->mPageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/TabItemBean;

    .line 48
    invoke-virtual {p1}, Lcom/mergbw/core/bean/TabItemBean;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->getTabPage(I)Lcom/mergbw/core/ui/BaseFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->mPageList:Ljava/util/List;

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

    .line 41
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->mPageList:Ljava/util/List;

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

    .line 36
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->mPageList:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->notifyDataSetChanged()V

    return-void
.end method
