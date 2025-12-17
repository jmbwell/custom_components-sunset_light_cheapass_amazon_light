.class public Lcom/mergbw/core/ui/views/SubItemListView;
.super Landroid/widget/LinearLayout;
.source "SubItemListView.java"


# instance fields
.field private mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/SubItemListView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    .line 34
    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub01:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 35
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub05:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 36
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub06:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 37
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub10:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 38
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub11:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 39
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub15:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 40
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub16:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v2}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 41
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub20:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    return-void
.end method


# virtual methods
.method public refreshData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub01:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub02:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub03:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub04:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub05:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub06:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub07:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub08:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub09:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub10:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub11:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub12:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub13:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub14:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub15:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub16:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub17:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub18:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0x11

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub19:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubItemListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubItemListBinding;->viewSub20:Lcom/mergbw/core/ui/views/SubItemView;

    const/16 v1, 0x13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    return-void
.end method
