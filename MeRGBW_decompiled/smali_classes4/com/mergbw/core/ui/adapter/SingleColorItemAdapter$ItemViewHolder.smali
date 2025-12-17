.class public Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SingleColorItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    iput-object p1, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutSingleColorItemBinding;

    return-object p0
.end method
