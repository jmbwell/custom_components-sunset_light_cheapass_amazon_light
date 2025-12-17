.class public Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SceneItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutSceneItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutSceneItemBinding;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutSceneItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutSceneItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneItemBinding;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutSceneItemBinding;

    return-object p0
.end method
