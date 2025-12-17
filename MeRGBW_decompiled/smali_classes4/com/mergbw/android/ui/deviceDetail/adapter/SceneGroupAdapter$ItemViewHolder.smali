.class public Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SceneGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;

    return-object p0
.end method
