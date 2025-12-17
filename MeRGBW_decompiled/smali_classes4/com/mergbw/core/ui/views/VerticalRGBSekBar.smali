.class public Lcom/mergbw/core/ui/views/VerticalRGBSekBar;
.super Landroid/view/View;
.source "VerticalRGBSekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;,
        Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;
    }
.end annotation


# instance fields
.field private colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

.field private listener:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private rect:Landroid/graphics/RectF;


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

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    sget-object p1, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;->RED:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    iput-object p1, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    const/16 p1, 0x64

    .line 22
    iput p1, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    .line 42
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;->RED:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    iput-object v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    const/16 v0, 0x64

    .line 22
    iput v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    .line 47
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->init()V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget-object p3, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;->RED:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    iput-object p3, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    const/16 p3, 0x64

    .line 22
    iput p3, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    .line 53
    invoke-direct {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->init()V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getMainColor(Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const p1, -0xffff01

    return p1

    :cond_1
    const p1, -0xff0100

    return p1

    :cond_2
    const/high16 p1, -0x10000

    return p1
.end method

.method private init()V
    .locals 2

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    .line 58
    sget-object v0, Lcom/mergbw/core/R$styleable;->VerticalRGBSekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/mergbw/core/R$styleable;->VerticalRGBSekBar_colorType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object p2, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;->BLUE:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    iput-object p2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    goto :goto_0

    .line 66
    :cond_1
    sget-object p2, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;->GREEN:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    iput-object p2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    goto :goto_0

    .line 63
    :cond_2
    sget-object p2, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;->RED:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    iput-object p2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    .line 73
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 106
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41d00000    # 26.0f

    .line 108
    invoke-static {v2}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    .line 109
    invoke-static {v11}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v12

    .line 113
    new-instance v13, Landroid/graphics/LinearGradient;

    div-float v5, v0, v11

    iget-object v2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    .line 115
    invoke-direct {p0, v2}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->getMainColor(Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;)I

    move-result v7

    const/high16 v8, -0x1000000

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    move-object v2, v13

    move v3, v5

    move v6, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 118
    iget-object v2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 119
    iget-object v2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->rect:Landroid/graphics/RectF;

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v0

    div-float v4, v10, v11

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v5, v0

    sub-float v6, v1, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    iget-object v2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v4

    invoke-static {v3}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v5

    iget-object v6, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 124
    iget-object v2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sub-float/2addr v1, v10

    sub-float/2addr v1, v12

    .line 128
    iget v2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v4, v1

    const/4 v2, 0x0

    .line 129
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->rect:Landroid/graphics/RectF;

    div-float/2addr v12, v11

    sub-float/2addr v0, v12

    add-float/2addr v10, v1

    invoke-virtual {v2, v12, v1, v0, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    iget-object v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->rect:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v1

    invoke-static {v3}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v2

    iget-object v3, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    const/16 v1, 0x64

    .line 144
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 166
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 158
    :cond_0
    iput v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    .line 159
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->invalidate()V

    .line 160
    iget-object p1, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->listener:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;

    if-eqz p1, :cond_1

    .line 161
    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;->onProgressEnd(I)V

    :cond_1
    return v2

    .line 149
    :cond_2
    iput v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    .line 150
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->invalidate()V

    .line 151
    iget-object p1, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->listener:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;

    if-eqz p1, :cond_3

    .line 152
    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;->onProgressChanged(I)V

    :cond_3
    return v2
.end method

.method public setColorType(Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->colorType:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$ColorType;

    .line 83
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->invalidate()V

    return-void
.end method

.method public setOnProgressChangeListener(Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->listener:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    const/16 v0, 0x64

    .line 87
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 88
    iget v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    if-eq v0, p1, :cond_0

    .line 89
    iput p1, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->progress:I

    .line 90
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->invalidate()V

    .line 91
    iget-object v0, p0, Lcom/mergbw/core/ui/views/VerticalRGBSekBar;->listener:Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/mergbw/core/ui/views/VerticalRGBSekBar$OnProgressChangeListener;->onProgressChanged(I)V

    :cond_0
    return-void
.end method
