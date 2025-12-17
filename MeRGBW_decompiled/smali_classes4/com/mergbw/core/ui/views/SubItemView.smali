.class public Lcom/mergbw/core/ui/views/SubItemView;
.super Landroid/view/View;
.source "SubItemView.java"


# static fields
.field public static final DEFAULT_RECT:I = 0x0

.field public static final LEFT_BOTTOM_ARC:I = 0x5

.field public static final LEFT_STRAIGHT:I = 0x1

.field public static final LEFT_TOP_ARC:I = 0x4

.field public static final RIGHT_BOTTOM_ARC:I = 0x3

.field public static final RIGHT_TOP_ARC:I = 0x2


# instance fields
.field private color:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 29
    iput p1, p0, Lcom/mergbw/core/ui/views/SubItemView;->color:I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/mergbw/core/ui/views/SubItemView;->mType:I

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

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

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x1000000

    .line 29
    iput p1, p0, Lcom/mergbw/core/ui/views/SubItemView;->color:I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/mergbw/core/ui/views/SubItemView;->mType:I

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x1000000

    .line 29
    iput v0, p0, Lcom/mergbw/core/ui/views/SubItemView;->color:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/mergbw/core/ui/views/SubItemView;->mType:I

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/mergbw/core/R$styleable;->SubItemView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    sget p2, Lcom/mergbw/core/R$styleable;->SubItemView_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/core/ui/views/SubItemView;->mType:I

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawDefault(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->getWidth()I

    move-result v0

    .line 94
    div-int/lit8 v1, v0, 0x4

    int-to-float v4, v1

    int-to-float v5, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v6, v0

    iget-object v7, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftBottomArc(Landroid/graphics/Canvas;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/mergbw/core/ui/views/SubItemView;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v1, 0x3

    .line 154
    div-int/lit8 v2, v2, 0x4

    int-to-float v7, v2

    div-int/lit8 v9, v1, 0x4

    int-to-float v5, v9

    int-to-float v6, v1

    iget-object v8, v0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    div-int/lit8 v1, v1, 0x2

    .line 159
    iget-object v3, v0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget-object v3, v0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    new-instance v11, Landroid/graphics/RectF;

    sub-int v3, v2, v9

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    int-to-float v3, v3

    rsub-int/lit8 v4, v9, 0x0

    sub-int/2addr v4, v1

    int-to-float v4, v4

    add-int/2addr v2, v9

    add-int/2addr v2, v1

    int-to-float v2, v2

    add-int/2addr v9, v1

    int-to-float v1, v9

    invoke-direct {v11, v3, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v14, 0x0

    .line 165
    iget-object v15, v0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v13, 0x42b40000    # 90.0f

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftStraight(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 99
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    .line 100
    iget-object v6, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v8, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v7

    move v5, v7

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftTopArc(Landroid/graphics/Canvas;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/mergbw/core/ui/views/SubItemView;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v1, 0x3

    .line 138
    div-int/lit8 v2, v2, 0x4

    int-to-float v7, v2

    div-int/lit8 v9, v1, 0x4

    int-to-float v5, v9

    int-to-float v6, v1

    iget-object v8, v0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 140
    div-int/lit8 v3, v1, 0x2

    .line 143
    iget-object v4, v0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v4, v0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    new-instance v11, Landroid/graphics/RectF;

    sub-int v4, v2, v9

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    int-to-float v4, v4

    sub-int v5, v1, v9

    sub-int/2addr v5, v3

    int-to-float v5, v5

    add-int/2addr v2, v9

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v1, v9

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v11, v4, v5, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v14, 0x0

    .line 149
    iget-object v15, v0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42b40000    # 90.0f

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightBottomArc(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->getHeight()I

    move-result v0

    .line 122
    div-int/lit8 v1, v0, 0x4

    int-to-float v5, v1

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v6, v2

    iget-object v7, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    div-int/lit8 v0, v0, 0x2

    .line 127
    iget-object v2, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v2, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    new-instance v5, Landroid/graphics/RectF;

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v2, v0, 0x0

    int-to-float v2, v2

    rsub-int/lit8 v3, v1, 0x0

    sub-int/2addr v3, v0

    int-to-float v3, v3

    add-int v4, v1, v1

    add-int/2addr v4, v0

    int-to-float v4, v4

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v8, 0x0

    .line 133
    iget-object v9, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightTopArc(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->getHeight()I

    move-result v0

    .line 106
    div-int/lit8 v1, v0, 0x4

    int-to-float v5, v1

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v6, v2

    iget-object v7, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    div-int/lit8 v2, v0, 0x2

    .line 111
    iget-object v3, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v3, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    new-instance v6, Landroid/graphics/RectF;

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v3, v2, 0x0

    int-to-float v3, v3

    sub-int v4, v0, v1

    sub-int/2addr v4, v2

    int-to-float v4, v4

    add-int v5, v1, v1

    add-int/2addr v5, v2

    int-to-float v5, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v6, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v9, 0x0

    .line 117
    iget-object v10, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v8, 0x42b40000    # 90.0f

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/mergbw/core/ui/views/SubItemView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mergbw/core/ui/views/SubItemView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget v0, p0, Lcom/mergbw/core/ui/views/SubItemView;->mType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/SubItemView;->drawLeftBottomArc(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/SubItemView;->drawLeftTopArc(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/SubItemView;->drawRightBottomArc(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/SubItemView;->drawRightTopArc(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/SubItemView;->drawLeftStraight(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 67
    :cond_5
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/views/SubItemView;->drawDefault(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 51
    iput p1, p0, Lcom/mergbw/core/ui/views/SubItemView;->color:I

    .line 52
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 56
    iput p1, p0, Lcom/mergbw/core/ui/views/SubItemView;->mType:I

    .line 57
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/SubItemView;->invalidate()V

    return-void
.end method
