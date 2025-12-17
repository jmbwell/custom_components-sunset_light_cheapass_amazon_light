.class public Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DeviceItemGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    iput-object p1, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutDeviceGridItemBinding;

    return-object p0
.end method
