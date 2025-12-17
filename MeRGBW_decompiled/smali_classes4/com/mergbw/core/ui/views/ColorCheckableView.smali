.class public Lcom/mergbw/core/ui/views/ColorCheckableView;
.super Landroid/view/View;
.source "ColorCheckableView.java"


# instance fields
.field private check:Z

.field private color:I

.field private mPaint:Landroid/graphics/Paint;


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

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0x46c601

    .line 18
    iput p1, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->color:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->check:Z

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

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0x46c601

    .line 18
    iput p1, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->color:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->check:Z

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ColorCheckableView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x8

    .line 48
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ColorCheckableView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 49
    iget-object v2, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v2, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    .line 51
    iget-object v2, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 53
    iget-boolean v0, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->check:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ColorCheckableView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    .line 56
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ColorCheckableView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    .line 57
    iget-object v3, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v3, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->mPaint:Landroid/graphics/Paint;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v2, v2

    sub-float v3, v1, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-direct {v6, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v9, 0x0

    .line 63
    iget-object v10, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x43b40000    # 360.0f

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setCheck(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "check"
        }
    .end annotation

    .line 39
    iput-boolean p1, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->check:Z

    .line 40
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ColorCheckableView;->invalidate()V

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

    .line 34
    iput p1, p0, Lcom/mergbw/core/ui/views/ColorCheckableView;->color:I

    .line 35
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ColorCheckableView;->invalidate()V

    return-void
.end method
