.class public Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GroupDeviceItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 122
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    return-object p0
.end method
