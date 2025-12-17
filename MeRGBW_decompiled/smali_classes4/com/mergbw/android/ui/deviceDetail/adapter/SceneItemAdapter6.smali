.class public Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SceneItemAdapter6.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mGroupList:Ljava/util/List;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-deviceDetail-adapter-SceneItemAdapter6(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    .line 62
    iget p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mCurrentIndex:I

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->getLayoutPosition()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->getLayoutPosition()I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mCurrentIndex:I

    .line 64
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->notifyDataSetChanged()V

    .line 65
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;

    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mGroupList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/SceneData;

    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;->clickSceneItem(Lcom/mergbw/core/bean/SceneData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->onBindViewHolder(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;I)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/bean/SceneData;

    .line 54
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mergbw/core/bean/SceneData;->getSceneNameRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget v1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mCurrentIndex:I

    if-ne v1, p2, :cond_0

    .line 56
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;->layoutItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/mergbw/core/R$drawable;->bg_type_5_item:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;->layoutItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/mergbw/core/R$drawable;->bg_group_item_solid:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    .line 60
    :goto_0
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/mergbw/core/bean/SceneData;->getIconRes()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;->layoutItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;
    .locals 2

    .line 47
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutSceneItem6Binding;)V

    return-object p2
.end method

.method public resetSelected()V
    .locals 1

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mCurrentIndex:I

    .line 40
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->notifyDataSetChanged()V

    return-void
.end method

.method public setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mGroupList:Ljava/util/List;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->mCurrentIndex:I

    return-void
.end method
