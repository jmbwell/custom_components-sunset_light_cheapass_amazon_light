.class public Lcom/mergbw/core/ui/views/GradientView;
.super Landroid/view/View;
.source "GradientView.java"


# instance fields
.field private colors:[I

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

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/mergbw/core/ui/views/GradientView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 40
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget-object v0, p0, Lcom/mergbw/core/ui/views/GradientView;->colors:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/GradientView;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 43
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/GradientView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/GradientView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/GradientView;->getWidth()I

    move-result v3

    int-to-float v8, v3

    iget-object v10, p0, Lcom/mergbw/core/ui/views/GradientView;->colors:[I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 45
    iget-object v3, p0, Lcom/mergbw/core/ui/views/GradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 46
    iget-object v2, p0, Lcom/mergbw/core/ui/views/GradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColors([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/mergbw/core/ui/views/GradientView;->colors:[I

    .line 35
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/GradientView;->invalidate()V

    return-void
.end method
