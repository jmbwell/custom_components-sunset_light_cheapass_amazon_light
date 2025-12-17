.class public Lcom/mergbw/core/ui/views/StarColorPickerView;
.super Landroid/widget/LinearLayout;
.source "StarColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/StarColorPickerView$OnStarColorPickListener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

.field private mListener:Lcom/mergbw/core/ui/views/StarColorPickerView$OnStarColorPickListener;


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

    .line 21
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

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/StarColorPickerView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/views/StarColorPickerView;)Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/core/ui/views/StarColorPickerView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/StarColorPickerView;->calColor()V

    return-void
.end method

.method private calColor()V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;->viewRPicker:Lcom/mergbw/core/ui/views/VerticalRGBSekBar;

    invoke-virtual {v0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 73
    iget-object v3, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    iget-object v3, v3, Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;->viewGPicker:Lcom/mergbw/core/ui/views/VerticalRGBSekBar;

    invoke-virtual {v3}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 74
    iget-object v4, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    iget-object v4, v4, Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;->viewBPicker:Lcom/mergbw/core/ui/views/VerticalRGBSekBar;

    invoke-virtual {v4}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    mul-float/2addr v4, v2

    float-to-int v1, v4

    .line 75
    invoke-static {v0, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calColor r: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " g: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " b: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mListener:Lcom/mergbw/core/ui/views/StarColorPickerView$OnStarColorPickListener;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, v2}, Lcom/mergbw/core/ui/views/StarColorPickerView$OnStarColorPickListener;->onColorPick(I)V

    :cond_0
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    .line 32
    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;->viewRPicker:Lcom/mergbw/core/ui/views/VerticalRGBSekBar;

    new-instance v0, Lcom/mergbw/core/ui/views/StarColorPickerView$1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/StarColorPickerView$1;-><init>(Lcom/mergbw/core/ui/views/StarColorPickerView;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->setOnProgressChangeListener(Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;)V

    .line 43
    iget-object p1, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;->viewGPicker:Lcom/mergbw/core/ui/views/VerticalRGBSekBar;

    new-instance v0, Lcom/mergbw/core/ui/views/StarColorPickerView$2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/StarColorPickerView$2;-><init>(Lcom/mergbw/core/ui/views/StarColorPickerView;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->setOnProgressChangeListener(Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;)V

    .line 54
    iget-object p1, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mBinding:Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutStarColorPickerBinding;->viewBPicker:Lcom/mergbw/core/ui/views/VerticalRGBSekBar;

    new-instance v0, Lcom/mergbw/core/ui/views/StarColorPickerView$3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/StarColorPickerView$3;-><init>(Lcom/mergbw/core/ui/views/StarColorPickerView;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->setOnProgressChangeListener(Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;)V

    return-void
.end method


# virtual methods
.method public setOnColorPickListener(Lcom/mergbw/core/ui/views/StarColorPickerView$OnStarColorPickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/mergbw/core/ui/views/StarColorPickerView;->mListener:Lcom/mergbw/core/ui/views/StarColorPickerView$OnStarColorPickListener;

    return-void
.end method
