.class public Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FactoryPorductAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/mergbw/android/ui/factoryArea/adapter/IFactoryProductClickListener;

.field private mProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->mProductList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->mProductList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-factoryArea-adapter-FactoryPorductAdapter(Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p2, p0, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->mListener:Lcom/mergbw/android/ui/factoryArea/adapter/IFactoryProductClickListener;

    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->mProductList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;

    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/factoryArea/adapter/IFactoryProductClickListener;->clickProductItem(Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;)V

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

    .line 27
    check-cast p1, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;I)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->mProductList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;

    .line 51
    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutProductItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutProductItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutProductItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutProductItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-static {}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getFactoryFileAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->getGoodsPicture()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/high16 v1, 0x41400000    # 12.0f

    .line 54
    invoke-static {v1}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 55
    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutProductItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutProductItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 56
    invoke-static {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutProductItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutProductItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;)V

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

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;
    .locals 2

    .line 44
    new-instance p2, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutProductItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutProductItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutProductItemBinding;)V

    return-object p2
.end method

.method public setClickListener(Lcom/mergbw/android/ui/factoryArea/adapter/IFactoryProductClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->mListener:Lcom/mergbw/android/ui/factoryArea/adapter/IFactoryProductClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->mProductList:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/adapter/FactoryPorductAdapter;->notifyDataSetChanged()V

    return-void
.end method
