.class public Lcom/mergbw/core/ui/adapter/DIYItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DIYItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/adapter/DIYItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/core/databinding/LayoutDiyItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/databinding/LayoutDiyItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/LayoutDiyItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    iput-object p1, p0, Lcom/mergbw/core/ui/adapter/DIYItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutDiyItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/adapter/DIYItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiyItemBinding;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/mergbw/core/ui/adapter/DIYItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutDiyItemBinding;

    return-object p0
.end method
