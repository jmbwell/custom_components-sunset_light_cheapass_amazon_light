.class public Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupDeviceItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mDeviceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-groupDetail-adapter-GroupDeviceItemAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mListener:Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;

    if-eqz p2, :cond_0

    .line 60
    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;->clickItem(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-mergbw-android-ui-groupDetail-adapter-GroupDeviceItemAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 88
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p1, p4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSelected(Z)V

    .line 90
    invoke-static {p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    xor-int/lit8 p3, p4, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 91
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mListener:Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;

    if-eqz p2, :cond_1

    .line 92
    invoke-interface {p2, p1, p4}, Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;->checkItem(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onBindViewHolder$2$com-mergbw-android-ui-groupDetail-adapter-GroupDeviceItemAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 97
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mListener:Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;

    if-eqz p2, :cond_1

    .line 99
    invoke-interface {p2, p1, p3}, Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;->clickPower(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onBindViewHolder$3$com-mergbw-android-ui-groupDetail-adapter-GroupDeviceItemAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mListener:Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;

    if-eqz p2, :cond_0

    .line 105
    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;->clickConnect(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    const/4 p2, 0x1

    .line 106
    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnecting(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->notifyDataSetChanged()V

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

    .line 19
    check-cast p1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;I)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 56
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->tvItemModel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->cbItemCheck:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 65
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v1

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/mergbw/core/utils/ViewDataUtils;->getDeviceIcon(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 67
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemState:Landroid/widget/ImageView;

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_ble_connected:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    .line 70
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->btnConnect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 72
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemState:Landroid/widget/ImageView;

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_ble_disconnected:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    .line 76
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->btnConnect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 79
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->btnConnect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 83
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 87
    :goto_0
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->cbItemCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->btnConnect:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;
    .locals 2

    .line 49
    new-instance p2, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;)V

    return-object p2
.end method

.method public setClickListener(Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mListener:Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mDeviceList:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateCheckAll(Z)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 37
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSelected(Z)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
