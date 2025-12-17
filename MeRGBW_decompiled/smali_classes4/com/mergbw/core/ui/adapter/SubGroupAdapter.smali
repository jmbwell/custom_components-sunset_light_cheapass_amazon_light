.class public Lcom/mergbw/core/ui/adapter/SubGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SubGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private longClick:Z

.field private mCurrentIndex:I

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mGroupList:Ljava/util/List;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->longClick:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-core-ui-adapter-SubGroupAdapter(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    .line 74
    iget-boolean p2, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->longClick:Z

    if-nez p2, :cond_0

    iget p2, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    invoke-virtual {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 75
    iget-object p2, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mGroupList:Ljava/util/List;

    iget v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->longClick:Z

    .line 80
    invoke-virtual {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    .line 81
    invoke-virtual {p0}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->notifyDataSetChanged()V

    .line 82
    iget p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->getItemCount()I

    move-result p2

    if-le p1, p2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mListener:Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;

    if-eqz p1, :cond_2

    .line 84
    iget-object p2, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mGroupList:Ljava/util/List;

    iget v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-interface {p1, p2}, Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;->clickGroupItem(Lcom/mergbw/core/database/bean/SubColorBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-mergbw-core-ui-adapter-SubGroupAdapter(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;Landroid/view/View;)Z
    .locals 2

    .line 89
    invoke-virtual {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->longClick:Z

    .line 91
    invoke-virtual {p0}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->notifyDataSetChanged()V

    .line 92
    iget p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    const/4 p2, 0x0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mListener:Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;

    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mGroupList:Ljava/util/List;

    iget v1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;->longClickGroupItem(Lcom/mergbw/core/database/bean/SubColorBean;)V

    :cond_1
    :goto_0
    return p2
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

    .line 19
    check-cast p1, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->onBindViewHolder(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;I)V
    .locals 4
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

    .line 52
    iget-object v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/SubColorBean;

    .line 53
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/SubColorBean;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    if-ne v1, p2, :cond_0

    .line 56
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubItemListView;

    sget v1, Lcom/mergbw/core/R$drawable;->bg_item_stroke:I

    invoke-virtual {p2, v1}, Lcom/mergbw/core/ui/views/SubItemListView;->setBackgroundResource(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubItemListView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/mergbw/core/ui/views/SubItemListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :goto_0
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result p2

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-ne p2, v2, :cond_1

    .line 62
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubItemListView;

    invoke-virtual {p2, v1}, Lcom/mergbw/core/ui/views/SubItemListView;->setVisibility(I)V

    .line 63
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubItemListView;

    invoke-virtual {p2, v3}, Lcom/mergbw/core/ui/views/SubItemListView;->setVisibility(I)V

    .line 66
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mergbw/core/utils/ColorUtils;->getSubColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 69
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubItemListView;

    invoke-virtual {v0, p2}, Lcom/mergbw/core/ui/views/SubItemListView;->refreshData(Ljava/util/List;)V

    .line 73
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/adapter/SubGroupAdapter;Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/adapter/SubGroupAdapter;Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

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

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;
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

    .line 46
    new-instance p2, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;-><init>(Lcom/mergbw/core/databinding/LayoutSubGroupBinding;)V

    return-object p2
.end method

.method public resetSelected()V
    .locals 1

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    .line 36
    invoke-virtual {p0}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setClickListener(Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mListener:Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mGroupList:Ljava/util/List;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->mCurrentIndex:I

    return-void
.end method
