.class public Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DeviceItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    iput-object p1, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;

    return-object p0
.end method
