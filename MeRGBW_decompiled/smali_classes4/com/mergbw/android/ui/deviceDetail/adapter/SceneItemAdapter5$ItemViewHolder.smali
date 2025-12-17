.class public Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SceneItemAdapter5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutSceneItem5Binding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutSceneItem5Binding;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutSceneItem5Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutSceneItem5Binding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneItem5Binding;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutSceneItem5Binding;

    return-object p0
.end method
