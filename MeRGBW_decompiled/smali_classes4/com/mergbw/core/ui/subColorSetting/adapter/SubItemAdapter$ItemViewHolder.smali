.class public Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SubItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/core/databinding/LayoutSubItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/databinding/LayoutSubItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/LayoutSubItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubItemBinding;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/mergbw/core/ui/subColorSetting/adapter/SubItemAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemBinding;

    return-object p0
.end method
