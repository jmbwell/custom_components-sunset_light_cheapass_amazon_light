.class public Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SubItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/mergbw/core/ui/subColorSetting/adapter/ISubListClickListener;

.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;->mSubList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;->onBindViewHolder(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;->mSubList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/bean/SubItemBean;

    if-eqz p2, :cond_4

    const/16 v0, 0x13

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/16 v2, 0x9

    if-eq p2, v2, :cond_1

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/16 v0, 0xe

    if-eq p2, v0, :cond_3

    const/16 v0, 0xf

    if-eq p2, v0, :cond_2

    .line 69
    invoke-static {p1}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemBinding;->viewSub:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemBinding;->viewSub:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p1}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemBinding;->viewSub:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {p1}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemBinding;->viewSub:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-static {p1}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemBinding;->viewSub:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    goto :goto_0

    .line 47
    :cond_4
    invoke-static {p1}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemBinding;->viewSub:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    :goto_0
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
            "parent",
            "viewType"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 38
    new-instance p2, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/core/databinding/LayoutSubItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/core/databinding/LayoutSubItemBinding;)V

    return-object p2
.end method

.method public setClickListener(Lcom/mergbw/core/ui/subColorSetting/adapter/ISubListClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;->mListener:Lcom/mergbw/core/ui/subColorSetting/adapter/ISubListClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;->mSubList:Ljava/util/List;

    return-void
.end method
