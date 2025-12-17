.class public Lcom/mergbw/core/ui/views/CommonColorPickerView;
.super Landroid/widget/LinearLayout;
.source "CommonColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;
    }
.end annotation


# static fields
.field private static final FROM_CLASSIC:I = 0x3

.field private static final FROM_COMMON:I = 0x4

.field private static final FROM_LINE:I = 0x2

.field private static final FROM_PIE:I = 0x1


# instance fields
.field private lastLineColor:I

.field private mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

.field private mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

.field private mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

.field private mListener:Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;


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

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->lastLineColor:I

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

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->lastLineColor:I

    .line 44
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/views/CommonColorPickerView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->lastLineColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/mergbw/core/ui/views/CommonColorPickerView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->lastLineColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/mergbw/core/ui/views/CommonColorPickerView;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setPickColor(II)V

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

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    .line 50
    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    new-instance v0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-direct {v0}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    .line 52
    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->getClassicColorList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setData(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    new-instance v2, Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/views/CommonColorPickerView;)V

    invoke-virtual {v0, v2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V

    .line 59
    new-instance v0, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-direct {v0}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    .line 60
    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->listCommonColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->listCommonColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    new-instance v0, Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/views/CommonColorPickerView;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->viewColorPie:Ltop/defaults/colorpicker/ColorPickerView;

    new-instance v0, Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/views/CommonColorPickerView;)V

    invoke-virtual {p1, v0}, Ltop/defaults/colorpicker/ColorPickerView;->subscribe(Ltop/defaults/colorpicker/ColorObserver;)V

    .line 74
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    new-instance v0, Lcom/mergbw/core/ui/views/CommonColorPickerView$1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/CommonColorPickerView$1;-><init>(Lcom/mergbw/core/ui/views/CommonColorPickerView;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setOnColorPickerChangeListener(Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method private setPickColor(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "color"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mListener:Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p2}, Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;->onColorPick(I)V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 134
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->viewColorPie:Ltop/defaults/colorpicker/ColorPickerView;

    invoke-virtual {p1, p2}, Ltop/defaults/colorpicker/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 129
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->viewColorPie:Ltop/defaults/colorpicker/ColorPickerView;

    invoke-virtual {p1, p2}, Ltop/defaults/colorpicker/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 123
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 124
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->viewColorPie:Ltop/defaults/colorpicker/ColorPickerView;

    invoke-virtual {p1, p2}, Ltop/defaults/colorpicker/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 118
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$initViews$0$com-mergbw-core-ui-views-CommonColorPickerView(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 1

    .line 0
    const/4 v0, 0x3

    .line 55
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setPickColor(II)V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-core-ui-views-CommonColorPickerView(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 1

    .line 0
    const/4 v0, 0x4

    .line 63
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setPickColor(II)V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-core-ui-views-CommonColorPickerView(IZZ)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 69
    invoke-direct {p0, p2, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setPickColor(II)V

    :cond_0
    return-void
.end method

.method public setCommonColor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->layoutCommonColor:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setData(Ljava/util/List;)V

    .line 106
    iget-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnColorPickListener(Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mListener:Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;

    return-void
.end method

.method public showColorPie(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->viewColorPie:Ltop/defaults/colorpicker/ColorPickerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Ltop/defaults/colorpicker/ColorPickerView;->setVisibility(I)V

    :cond_1
    return-void
.end method
