.class public Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SceneItemAdapter6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;

    return-object p0
.end method
