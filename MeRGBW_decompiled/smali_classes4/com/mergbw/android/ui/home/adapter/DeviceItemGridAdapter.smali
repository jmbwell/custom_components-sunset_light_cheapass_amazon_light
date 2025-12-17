.class public Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;
.super Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;
.source "DeviceItemGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter<",
        "Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-home-adapter-DeviceItemGridAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p2, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;->mListener:Lcom/mergbw/android/ui/home/adapter/IDeviceListClickListener;

    if-eqz p2, :cond_0

    .line 32
    iget-object p2, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;->mListener:Lcom/mergbw/android/ui/home/adapter/IDeviceListClickListener;

    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/home/adapter/IDeviceListClickListener;->clickDeviceItem(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-mergbw-android-ui-home-adapter-DeviceItemGridAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 41
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;->mListener:Lcom/mergbw/android/ui/home/adapter/IDeviceListClickListener;

    if-eqz p2, :cond_1

    .line 43
    iget-object p2, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;->mListener:Lcom/mergbw/android/ui/home/adapter/IDeviceListClickListener;

    invoke-interface {p2, p1, p3}, Lcom/mergbw/android/ui/home/adapter/IDeviceListClickListener;->clickPower(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V

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
            null,
            null
        }
    .end annotation

    .line 19
    check-cast p1, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;I)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 28
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->tvItemModel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v1

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/mergbw/core/utils/ViewDataUtils;->getDeviceIcon(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->ivItemState:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/mergbw/core/R$mipmap;->icon_ble_connected:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mergbw/core/R$mipmap;->icon_ble_disconnected:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 38
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->tvSwitchState:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "On"

    goto :goto_1

    :cond_1
    const-string v1, "Off"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 40
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;
    .locals 1

    .line 22
    new-instance v0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;)V

    return-object v0
.end method
