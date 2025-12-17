.class public Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SubGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/adapter/SubGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/core/databinding/LayoutSubGroupBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/databinding/LayoutSubGroupBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/LayoutSubGroupBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 110
    iput-object p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)Lcom/mergbw/core/databinding/LayoutSubGroupBinding;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;->mBinding:Lcom/mergbw/core/databinding/LayoutSubGroupBinding;

    return-object p0
.end method
