.class public Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DIYSubItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDIYSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mDIYSubList:Ljava/util/List;

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mDIYSubList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mDIYSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-core-ui-DIYSetting-adapter-DIYSubItemAdapter(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mListener:Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;

    if-eqz p2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mDIYSubList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->getBindingAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iget v1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    invoke-interface {p2, v0, p1, v1}, Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;->deleteSubItem(Lcom/mergbw/core/database/bean/SubColorBean;II)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-mergbw-core-ui-DIYSetting-adapter-DIYSubItemAdapter(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    .line 85
    iget p2, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    invoke-virtual {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    .line 87
    invoke-virtual {p0}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->notifyDataSetChanged()V

    .line 88
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mListener:Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;

    if-eqz p1, :cond_1

    .line 89
    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mDIYSubList:Ljava/util/List;

    iget v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-interface {p1, p2}, Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;->clickDIYSubItem(Lcom/mergbw/core/database/bean/SubColorBean;)V

    :cond_1
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
            "holder",
            "position"
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->onBindViewHolder(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;I)V
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

    .line 63
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mDIYSubList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/SubColorBean;

    .line 64
    iget v1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    if-ne v1, p2, :cond_0

    .line 65
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    sget v1, Lcom/mergbw/core/R$drawable;->bg_item_stroke:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :goto_0
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p2, v1, :cond_1

    .line 70
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubItemListView;

    invoke-virtual {p2, v3}, Lcom/mergbw/core/ui/views/SubItemListView;->setVisibility(I)V

    .line 72
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_1
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubItemListView;

    invoke-virtual {p2, v2}, Lcom/mergbw/core/ui/views/SubItemListView;->setVisibility(I)V

    .line 76
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubItemListView;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/ColorUtils;->getSubColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mergbw/core/ui/views/SubItemListView;->refreshData(Ljava/util/List;)V

    .line 77
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->ivDelete:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :goto_1
    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;
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

    .line 57
    new-instance p2, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 2
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

    .line 45
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mDIYSubList:Ljava/util/List;

    iget v1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/SubColorBean;

    .line 46
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 47
    iget p1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setClickListener(Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mListener:Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "diySubList",
            "selectIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;I)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mDIYSubList:Ljava/util/List;

    .line 36
    iput p2, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->mCurrentIndex:I

    .line 37
    invoke-virtual {p0}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
