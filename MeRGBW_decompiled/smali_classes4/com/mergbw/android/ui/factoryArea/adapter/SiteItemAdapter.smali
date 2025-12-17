.class public Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SiteItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mListener:Lcom/mergbw/android/ui/factoryArea/adapter/ISiteItemClickListener;

.field private mSiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mSiteList:Ljava/util/List;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mSiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-factoryArea-adapter-SiteItemAdapter(Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mCurrentIndex:I

    .line 51
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->notifyDataSetChanged()V

    .line 52
    iget-object p2, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mListener:Lcom/mergbw/android/ui/factoryArea/adapter/ISiteItemClickListener;

    if-eqz p2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mSiteList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/factoryArea/adapter/ISiteItemClickListener;->clickSiteItem(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;)V

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

    .line 18
    check-cast p1, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;I)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mSiteList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    .line 44
    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSiteItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/android/databinding/LayoutSiteItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSiteItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/android/databinding/LayoutSiteItemBinding;->ivSelected:Landroid/widget/ImageView;

    iget v2, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mCurrentIndex:I

    if-ne v2, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    sget-object p2, Lcom/mergbw/android/ui/factoryArea/FactoryDataUtils;->COUNTRY_FLAG:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 47
    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSiteItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutSiteItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/mergbw/android/ui/factoryArea/FactoryDataUtils;->COUNTRY_FLAG:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    :cond_1
    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutSiteItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutSiteItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;)V

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
            null,
            null
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;
    .locals 2

    .line 37
    new-instance p2, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutSiteItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutSiteItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutSiteItemBinding;)V

    return-object p2
.end method

.method public setClickListener(Lcom/mergbw/android/ui/factoryArea/adapter/ISiteItemClickListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mListener:Lcom/mergbw/android/ui/factoryArea/adapter/ISiteItemClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;",
            ">;I)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mSiteList:Ljava/util/List;

    .line 27
    iput p2, p0, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->mCurrentIndex:I

    return-void
.end method
