.class public Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$DeviceItemClickCallback;,
        Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$DeviceItemClickCallback;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$DeviceItemClickCallback;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->mDeviceList:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->mCallback:Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$DeviceItemClickCallback;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;

    move-result-object p2

    .line 49
    new-instance p3, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;)V

    .line 50
    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 57
    iget-object v0, p3, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p3, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;->tvItemModel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p3, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mergbw/core/utils/ViewDataUtils;->getDeviceIcon(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object p3, p3, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;

    iget-object p3, p3, Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;->btnConnect:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method synthetic lambda$getView$0$com-mergbw-android-ui-addDevice-AddDeviceAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p2, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->mCallback:Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$DeviceItemClickCallback;

    if-eqz p2, :cond_0

    .line 62
    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$DeviceItemClickCallback;->onClick(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    :cond_0
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

    .line 26
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->mDeviceList:Ljava/util/List;

    return-void
.end method
