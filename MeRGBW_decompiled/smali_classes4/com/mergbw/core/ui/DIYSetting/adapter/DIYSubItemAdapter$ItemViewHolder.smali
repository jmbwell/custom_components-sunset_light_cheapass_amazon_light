.class public Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DIYSubItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutDiySubItemBinding;

    return-object p0
.end method
