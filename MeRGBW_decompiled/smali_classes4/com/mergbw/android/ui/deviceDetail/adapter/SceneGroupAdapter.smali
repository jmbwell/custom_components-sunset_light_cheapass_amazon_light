.class public Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SceneGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneGroupData;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneGroupClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mGroupList:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-deviceDetail-adapter-SceneGroupAdapter(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mCurrentIndex:I

    .line 61
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->notifyDataSetChanged()V

    .line 62
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneGroupClickListener;

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-interface {p2, v0, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneGroupClickListener;->clickGroupItem(ILcom/mergbw/core/bean/SceneGroupData;)V

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

    .line 22
    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/bean/SceneGroupData;

    .line 53
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;->groupName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mergbw/core/bean/SceneGroupData;->getGroupNameRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mCurrentIndex:I

    if-ne v0, p2, :cond_0

    .line 55
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;->groupName:Landroid/widget/TextView;

    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;->groupName:Landroid/widget/TextView;

    const-string v0, "#88FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    :goto_0
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;
    .locals 2

    .line 47
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutSceneGroupBinding;)V

    return-object p2
.end method

.method public setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneGroupClickListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneGroupClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneGroupData;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mGroupList:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->mCurrentIndex:I

    .line 41
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method
