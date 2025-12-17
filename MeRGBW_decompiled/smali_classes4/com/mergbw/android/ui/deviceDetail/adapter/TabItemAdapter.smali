.class public Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TabItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ITabItemClickListener;

.field private mTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mTabList:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mTabList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-deviceDetail-adapter-TabItemAdapter(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mCurrentIndex:I

    .line 56
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->notifyDataSetChanged()V

    .line 57
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ITabItemClickListener;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mTabList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/TabItemBean;

    invoke-interface {p2, v0, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/ITabItemClickListener;->clickTabItem(ILcom/mergbw/core/bean/TabItemBean;)V

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

    .line 17
    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;I)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mTabList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/bean/TabItemBean;

    .line 48
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutTabItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/android/databinding/LayoutTabItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mergbw/core/bean/TabItemBean;->getName()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mCurrentIndex:I

    if-ne v0, p2, :cond_0

    .line 50
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutTabItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutTabItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    sget v0, Lcom/mergbw/android/R$drawable;->bg_page_rb_solid:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutTabItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutTabItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :goto_0
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutTabItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutTabItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;)V

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

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;
    .locals 2

    .line 41
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutTabItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutTabItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutTabItemBinding;)V

    return-object p2
.end method

.method public setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ITabItemClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/ITabItemClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mTabList:Ljava/util/List;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->mCurrentIndex:I

    .line 27
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
