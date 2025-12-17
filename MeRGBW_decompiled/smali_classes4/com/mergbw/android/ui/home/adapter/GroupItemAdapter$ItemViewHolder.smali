.class public Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutGroupItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutGroupItemBinding;)V
    .locals 1

    .line 72
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutGroupItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    iput-object p1, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutGroupItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupItemBinding;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutGroupItemBinding;

    return-object p0
.end method
