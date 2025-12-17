.class Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SceneMultiListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 58
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->setSelectedPosition(I)V

    return-void
.end method
