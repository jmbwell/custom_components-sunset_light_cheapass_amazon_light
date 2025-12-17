.class public Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SingleColorItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckIndex:I

.field private mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mColorList:Ljava/util/List;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mCheckIndex:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mColorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-core-ui-adapter-SingleColorItemAdapter(Lcom/mergbw/core/database/bean/ColorBean;Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p3, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mListener:Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;

    if-eqz p3, :cond_0

    .line 61
    invoke-interface {p3, p1}, Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;->clickColorItem(Lcom/mergbw/core/database/bean/ColorBean;)V

    .line 63
    :cond_0
    invoke-virtual {p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mCheckIndex:I

    .line 64
    invoke-virtual {p0}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->notifyDataSetChanged()V

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

    .line 21
    check-cast p1, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->onBindViewHolder(Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;I)V
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

    .line 56
    iget-object v0, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mColorList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/ColorBean;

    .line 57
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;->viewColorItem:Lcom/mergbw/core/ui/views/ColorCheckableView;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mergbw/core/ui/views/ColorCheckableView;->setColor(I)V

    .line 58
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;->viewColorItem:Lcom/mergbw/core/ui/views/ColorCheckableView;

    iget v2, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mCheckIndex:I

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v1, p2}, Lcom/mergbw/core/ui/views/ColorCheckableView;->setCheck(Z)V

    .line 59
    invoke-static {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;->viewColorItem:Lcom/mergbw/core/ui/views/ColorCheckableView;

    new-instance v1, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;Lcom/mergbw/core/database/bean/ColorBean;Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v1}, Lcom/mergbw/core/ui/views/ColorCheckableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;
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

    .line 51
    new-instance p2, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;)V

    return-object p2
.end method

.method public refreshSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorValue"
        }
    .end annotation

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mCheckIndex:I

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mColorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mColorList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/ColorBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 41
    iput v0, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mCheckIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mListener:Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->mColorList:Ljava/util/List;

    return-void
.end method
