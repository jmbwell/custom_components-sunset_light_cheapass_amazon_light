.class public Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WhiteNoiseItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;",
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

.field private mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mGroupList:Ljava/util/List;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-deviceDetail-adapter-WhiteNoiseItemAdapter(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;Lcom/mergbw/core/bean/SceneData;Landroid/view/View;)V
    .locals 2

    .line 74
    iget p3, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mCurrentIndex:I

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne p3, v0, :cond_2

    .line 75
    invoke-virtual {p2}, Lcom/mergbw/core/bean/SceneData;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;->pause()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;

    if-eqz p1, :cond_1

    .line 81
    invoke-interface {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;->resume()V

    .line 84
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/mergbw/core/bean/SceneData;->isPlaying()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lcom/mergbw/core/bean/SceneData;->setPlaying(Z)V

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p3

    iput p3, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mCurrentIndex:I

    .line 87
    invoke-virtual {p2, v1}, Lcom/mergbw/core/bean/SceneData;->setPlaying(Z)V

    .line 88
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;

    if-eqz p2, :cond_3

    .line 89
    iget-object p3, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mGroupList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/SceneData;

    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;->startPlay(Lcom/mergbw/core/bean/SceneData;)V

    .line 92
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->notifyDataSetChanged()V

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
    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;I)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/bean/SceneData;

    .line 56
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mergbw/core/bean/SceneData;->getSceneNameRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget v1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mCurrentIndex:I

    if-ne v1, p2, :cond_2

    .line 58
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->layoutIcon:Landroid/widget/FrameLayout;

    sget v1, Lcom/mergbw/core/R$drawable;->bg_item_stroke:I

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 59
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->viewPlaying:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 60
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->ivPlayState:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->ivPlayState:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/mergbw/core/bean/SceneData;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/mergbw/core/R$mipmap;->icon_pause:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mergbw/core/R$mipmap;->icon_play:I

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    invoke-virtual {v0}, Lcom/mergbw/core/bean/SceneData;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 63
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->viewPlaying:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->viewPlaying:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_1

    .line 68
    :cond_2
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->layoutIcon:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->viewPlaying:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 70
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->ivPlayState:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_1
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/mergbw/core/bean/SceneData;->getIconRes()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v1, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;Lcom/mergbw/core/bean/SceneData;)V

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;
    .locals 2

    .line 50
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;)V

    return-object p2
.end method

.method public resetSelected()V
    .locals 1

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mCurrentIndex:I

    .line 33
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mListener:Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;

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

    .line 26
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mGroupList:Ljava/util/List;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mCurrentIndex:I

    .line 28
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPlaying(Z)V
    .locals 2

    .line 41
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mCurrentIndex:I

    if-ltz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/bean/SceneData;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/bean/SceneData;->setPlaying(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
