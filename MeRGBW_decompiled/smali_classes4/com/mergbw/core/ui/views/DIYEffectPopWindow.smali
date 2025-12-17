.class public Lcom/mergbw/core/ui/views/DIYEffectPopWindow;
.super Landroid/widget/PopupWindow;
.source "DIYEffectPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/DIYEffectPopWindow$OnMenuClickListener;,
        Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;
    }
.end annotation


# instance fields
.field private final effectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentSelect:I

.field private final mEffectAdapter:Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;

.field private final mListener:Lcom/mergbw/core/ui/views/DIYEffectPopWindow$OnMenuClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/mergbw/core/ui/views/DIYEffectPopWindow$OnMenuClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "effect",
            "listener"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/mergbw/core/utils/ViewDataUtils;->EFFECT_NAME:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->effectList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mListener:Lcom/mergbw/core/ui/views/DIYEffectPopWindow$OnMenuClickListener;

    const/4 p3, 0x0

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->effectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->effectList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 40
    iput p3, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mCurrentSelect:I

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/PopDiyEffectBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/PopDiyEffectBinding;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/PopDiyEffectBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, -0x1

    .line 47
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->setWidth(I)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->setHeight(I)V

    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->setFocusable(Z)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->setOutsideTouchable(Z)V

    .line 52
    sget p2, Lcom/mergbw/core/R$style;->pop_anim:I

    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->setAnimationStyle(I)V

    .line 54
    new-instance p2, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;

    invoke-direct {p2, p0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;-><init>(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)V

    iput-object p2, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mEffectAdapter:Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;

    .line 55
    iget-object p3, p1, Lcom/mergbw/core/databinding/PopDiyEffectBinding;->listEffect:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object p2, p1, Lcom/mergbw/core/databinding/PopDiyEffectBinding;->listEffect:Landroid/widget/ListView;

    new-instance p3, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    iget-object p2, p1, Lcom/mergbw/core/databinding/PopDiyEffectBinding;->tvCancel:Landroid/widget/TextView;

    new-instance p3, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p1, Lcom/mergbw/core/databinding/PopDiyEffectBinding;->tvDone:Landroid/widget/TextView;

    new-instance p2, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->effectList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mCurrentSelect:I

    return p0
.end method


# virtual methods
.method synthetic lambda$new$0$com-mergbw-core-ui-views-DIYEffectPopWindow(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 57
    iput p3, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mCurrentSelect:I

    .line 58
    iget-object p1, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mEffectAdapter:Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$new$1$com-mergbw-core-ui-views-DIYEffectPopWindow(Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$2$com-mergbw-core-ui-views-DIYEffectPopWindow(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mListener:Lcom/mergbw/core/ui/views/DIYEffectPopWindow$OnMenuClickListener;

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->effectList:Ljava/util/List;

    iget v1, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->mCurrentSelect:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$OnMenuClickListener;->OnClickDone(I)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->dismiss()V

    return-void
.end method
