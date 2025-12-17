.class public Lcom/mergbw/core/ui/views/SubListView;
.super Landroid/widget/LinearLayout;
.source "SubListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

.field private mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;


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

    .line 26
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

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/SubListView;->initViews(Landroid/content/Context;)V

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

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/mergbw/core/databinding/LayoutSubListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutSubListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    .line 36
    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub01:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 37
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub05:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 38
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub06:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 39
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub10:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 40
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub11:Lcom/mergbw/core/ui/views/SubItemView;

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 41
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub15:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 42
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub16:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v2}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 43
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub20:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubItemView;->setType(I)V

    .line 45
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub01:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub02:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub03:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub04:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub05:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub06:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub07:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub08:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda8;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub09:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda9;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub10:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda10;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub11:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda11;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub12:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda12;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub13:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda13;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub14:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda14;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub15:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda15;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub16:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda16;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub17:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda17;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub18:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda18;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub19:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda19;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub20:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/SubListView$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/views/SubListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$initViews$0$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck01:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck01:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub01:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck01:Landroid/widget/CheckBox;

    .line 49
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 48
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck02:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck02:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 55
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub02:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck02:Landroid/widget/CheckBox;

    .line 57
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 56
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$10$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 126
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck11:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck11:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub11:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck11:Landroid/widget/CheckBox;

    .line 129
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 128
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$11$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck12:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck12:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub12:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck12:Landroid/widget/CheckBox;

    .line 137
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 136
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$12$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck13:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck13:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub13:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck13:Landroid/widget/CheckBox;

    .line 145
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 144
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$13$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck14:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck14:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 151
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub14:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck14:Landroid/widget/CheckBox;

    .line 153
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 152
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$14$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 158
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck15:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck15:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub15:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck15:Landroid/widget/CheckBox;

    .line 161
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 160
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$15$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck16:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck16:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub16:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck16:Landroid/widget/CheckBox;

    .line 169
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 168
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$16$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 174
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck17:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck17:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 175
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub17:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck17:Landroid/widget/CheckBox;

    .line 177
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 176
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$17$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 182
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck18:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck18:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub18:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck18:Landroid/widget/CheckBox;

    .line 185
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 184
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$18$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 190
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck19:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck19:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 191
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub19:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck19:Landroid/widget/CheckBox;

    .line 193
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 192
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$19$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 198
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck20:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck20:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 199
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub20:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck20:Landroid/widget/CheckBox;

    .line 201
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 200
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck03:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck03:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub03:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck03:Landroid/widget/CheckBox;

    .line 65
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 64
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck04:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck04:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub04:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck04:Landroid/widget/CheckBox;

    .line 73
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 72
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$4$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck05:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck05:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub05:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck05:Landroid/widget/CheckBox;

    .line 81
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 80
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$5$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck06:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck06:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub06:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck06:Landroid/widget/CheckBox;

    .line 89
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 88
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$6$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck07:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck07:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub07:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck07:Landroid/widget/CheckBox;

    .line 97
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 96
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$7$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck08:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck08:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub08:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck08:Landroid/widget/CheckBox;

    .line 105
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 104
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$8$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck09:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck09:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub09:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck09:Landroid/widget/CheckBox;

    .line 113
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 112
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$9$com-mergbw-core-ui-views-SubListView(Landroid/view/View;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck10:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck10:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    iget-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutSub10:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v1, v1, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck10:Landroid/widget/CheckBox;

    .line 121
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 120
    invoke-interface {p1, v0, v1}, Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;->onSubItemCheck(IZ)V

    :cond_0
    return-void
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 3
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

    .line 211
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck01:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub01:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 213
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck02:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub02:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck03:Landroid/widget/CheckBox;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub03:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck04:Landroid/widget/CheckBox;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub04:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 219
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck05:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub05:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 221
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck06:Landroid/widget/CheckBox;

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub06:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 223
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck07:Landroid/widget/CheckBox;

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub07:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck08:Landroid/widget/CheckBox;

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub08:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck09:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub09:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 229
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck10:Landroid/widget/CheckBox;

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub10:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 231
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck11:Landroid/widget/CheckBox;

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub11:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 233
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck12:Landroid/widget/CheckBox;

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub12:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 235
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck13:Landroid/widget/CheckBox;

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub13:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 237
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck14:Landroid/widget/CheckBox;

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub14:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 239
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck15:Landroid/widget/CheckBox;

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub15:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 241
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck16:Landroid/widget/CheckBox;

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub16:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 243
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck17:Landroid/widget/CheckBox;

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 244
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub17:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 245
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck18:Landroid/widget/CheckBox;

    const/16 v1, 0x11

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub18:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 247
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck19:Landroid/widget/CheckBox;

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub19:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->layoutCheck20:Landroid/widget/CheckBox;

    const/16 v1, 0x13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubListView;->mBinding:Lcom/mergbw/core/databinding/LayoutSubListBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutSubListBinding;->viewSub20:Lcom/mergbw/core/ui/views/SubItemView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SubItemBean;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/views/SubItemView;->setColor(I)V

    return-void
.end method

.method public setOnSubItemCheckChangeListener(Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/mergbw/core/ui/views/SubListView;->mListener:Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;

    return-void
.end method
