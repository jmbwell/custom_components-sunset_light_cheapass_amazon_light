.class public Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WhiteNoiseItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 106
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/android/databinding/LayoutWhiteNoiseItemBinding;

    return-object p0
.end method
