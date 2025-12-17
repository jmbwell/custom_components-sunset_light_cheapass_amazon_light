.class public Lcom/mergbw/android/ui/view/WaveProgressView;
.super Landroid/view/View;
.source "WaveProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/view/WaveProgressView$BindingText;
    }
.end annotation


# static fields
.field public static final BOTTOM_TEXT:I = 0x3

.field public static final CENTER_TEXT:I = 0x2

.field public static final NONE:I = 0x0

.field private static final OUTER_RING_COLOR:I = -0x7ff7c71

.field private static final STRETCH_FACTOR_A:F = 15.0f

.field public static final TOP_TEXT:I = 0x1

.field private static final TRANSLATE_X_SPEED_ONE:I = 0x5

.field private static final TRANSLATE_X_SPEED_TWO:I = 0x3

.field private static final WAVE_PAINT_COLOR:I = -0x46be01


# instance fields
.field private bindingText:I

.field private bottomPaint:Landroid/graphics/Paint;

.field private bottomText:Ljava/lang/String;

.field private bottomTextColor:I

.field private bottomTextSize:F

.field private centerPaint:Landroid/graphics/Paint;

.field private centerText:Ljava/lang/String;

.field private centerTextColor:I

.field private centerTextSize:F

.field private cirPath:Landroid/graphics/Path;

.field private height:I

.field protected mContext:Landroid/content/Context;

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mResetOneYPositions:[F

.field private mResetTwoYPositions:[F

.field private mWavePaint:Landroid/graphics/Paint;

.field private mXOffsetSpeedOne:I

.field private mXOffsetSpeedTwo:I

.field private mXOneOffset:I

.field private mXTwoOffset:I

.field private mYPositions:[F

.field private max:I

.field private outerRingPaint:Landroid/graphics/Paint;

.field private progress:I

.field private strokeColor:I

.field private strokeWidth:F

.field private submergedTextColor:I

.field private textRect:Landroid/graphics/Rect;

.field private topPaint:Landroid/graphics/Paint;

.field private topText:Ljava/lang/String;

.field private topTextColor:I

.field private topTextSize:F

.field private waveHeight:F

.field private wavePaintColor:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/ui/view/WaveProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/mergbw/android/ui/view/WaveProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 1

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    .line 233
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 80
    iput-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mContext:Landroid/content/Context;

    .line 81
    sget-object v0, Lcom/mergbw/android/R$styleable;->WaveProgressView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_bindingText:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bindingText:I

    .line 83
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_wave_color:I

    const v1, -0x46be01

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->wavePaintColor:I

    .line 84
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_submerged_textColor:I

    const v1, 0xffffff0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->submergedTextColor:I

    .line 85
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_max:I

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->max:I

    .line 86
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_wave_height:I

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->waveHeight:F

    .line 87
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_stroke_width:I

    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mergbw/android/R$dimen;->stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeWidth:F

    .line 88
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_stroke_color:I

    const v1, -0x7ff7c71

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeColor:I

    .line 89
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_top_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topText:Ljava/lang/String;

    .line 90
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_top_textColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topTextColor:I

    .line 91
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_top_textSize:I

    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mergbw/android/R$dimen;->top_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topTextSize:F

    .line 92
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_center_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerText:Ljava/lang/String;

    .line 93
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_center_textColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerTextColor:I

    .line 94
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_center_textSize:I

    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mergbw/android/R$dimen;->center_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerTextSize:F

    .line 95
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_bottom_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomText:Ljava/lang/String;

    .line 96
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_bottom_textColor:I

    const v1, -0x777778

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomTextColor:I

    .line 97
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_bottom_textSize:I

    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mergbw/android/R$dimen;->bottom_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomTextSize:F

    .line 98
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topText:Ljava/lang/String;

    const-string v1, ""

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topText:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerText:Ljava/lang/String;

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerText:Ljava/lang/String;

    .line 100
    :cond_1
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomText:Ljava/lang/String;

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomText:Ljava/lang/String;

    .line 101
    :cond_2
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->outerRingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 102
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->outerRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeWidth:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->outerRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->outerRingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mWavePaint:Landroid/graphics/Paint;

    .line 108
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mWavePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mWavePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->wavePaintColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {p2, v0, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 113
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topTextSize:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerPaint:Landroid/graphics/Paint;

    .line 118
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerTextSize:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomPaint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomTextSize:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    sget p2, Lcom/mergbw/android/R$styleable;->WaveProgressView_progress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 126
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/view/WaveProgressView;->setProgress(I)V

    .line 127
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    .line 128
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->cirPath:Landroid/graphics/Path;

    .line 129
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private resetPositionY()V
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mYPositions:[F

    array-length v1, v0

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOneOffset:I

    sub-int/2addr v1, v2

    .line 224
    iget-object v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mResetOneYPositions:[F

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mYPositions:[F

    iget-object v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mResetOneYPositions:[F

    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOneOffset:I

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mYPositions:[F

    array-length v1, v0

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXTwoOffset:I

    sub-int/2addr v1, v2

    .line 228
    iget-object v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mResetTwoYPositions:[F

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mYPositions:[F

    iget-object v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mResetTwoYPositions:[F

    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXTwoOffset:I

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getBindingText()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bindingText:I

    return v0
.end method

.method public getBottomText()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomText:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomTextColor()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomTextColor:I

    return v0
.end method

.method public getBottomTextSize()F
    .locals 1

    .line 332
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomTextSize:F

    return v0
.end method

.method public getCenterText()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerText:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterTextColor()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerTextColor:I

    return v0
.end method

.method public getCenterTextSize()F
    .locals 1

    .line 323
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerTextSize:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->max:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->progress:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 368
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeWidth:F

    return v0
.end method

.method public getTopText()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topText:Ljava/lang/String;

    return-object v0
.end method

.method public getTopTextColor()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topTextColor:I

    return v0
.end method

.method public getTopTextSize()F
    .locals 1

    .line 314
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topTextSize:F

    return v0
.end method

.method public getWaveColor()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->wavePaintColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mDrawFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->cirPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 182
    invoke-direct {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->resetPositionY()V

    .line 183
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    int-to-float v1, v0

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->progress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->max:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    sub-float/2addr v0, v5

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    const/4 v0, 0x0

    move v2, v0

    .line 184
    :goto_0
    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    if-ge v2, v3, :cond_0

    int-to-float v3, v2

    .line 186
    iget-object v5, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mResetOneYPositions:[F

    aget v5, v5, v2

    sub-float v7, v1, v5

    iget v5, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    int-to-float v9, v5

    iget-object v10, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mWavePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v3

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    iget-object v5, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mResetTwoYPositions:[F

    aget v5, v5, v2

    sub-float v7, v1, v5

    iget v5, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    int-to-float v9, v5

    iget-object v10, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mWavePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 193
    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 194
    iget v5, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    mul-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 195
    iget-object v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    cmpl-float v7, v2, v7

    const v8, 0xffffff0

    if-lez v7, :cond_1

    iget v7, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->submergedTextColor:I

    if-ne v7, v8, :cond_2

    :cond_1
    iget v7, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topTextColor:I

    :cond_2
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v0, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 197
    iget-object v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topText:Ljava/lang/String;

    iget v7, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    iget-object v9, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v4

    sub-float/2addr v7, v9

    iget-object v9, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    iget-object v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    iget v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->submergedTextColor:I

    if-ne v6, v8, :cond_4

    :cond_3
    iget v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerTextColor:I

    :cond_4
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v9, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v0, v7, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 201
    iget-object v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerText:Ljava/lang/String;

    iget v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget-object v7, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    iget-object v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpl-float v1, v5, v1

    if-lez v1, :cond_5

    iget v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->submergedTextColor:I

    if-ne v1, v8, :cond_6

    :cond_5
    iget v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomTextColor:I

    :cond_6
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 205
    iget-object v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomText:Ljava/lang/String;

    iget v2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    iget v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_7

    .line 207
    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    int-to-float v5, v3

    div-float/2addr v5, v4

    iget v6, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    int-to-float v3, v3

    div-float/2addr v3, v4

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->outerRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    :cond_7
    iget p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOneOffset:I

    iget v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOffsetSpeedOne:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOneOffset:I

    .line 210
    iget v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXTwoOffset:I

    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOffsetSpeedTwo:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXTwoOffset:I

    .line 212
    iget v3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    if-lt p1, v3, :cond_8

    .line 213
    iput v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOneOffset:I

    :cond_8
    if-le v1, v3, :cond_9

    .line 215
    iput v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXTwoOffset:I

    .line 216
    :cond_9
    iget p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->waveHeight:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_a

    .line 217
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->postInvalidate()V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    .line 137
    iget-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v2}, Lcom/mergbw/android/ui/view/WaveProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 138
    invoke-virtual {p0, p1, p1}, Lcom/mergbw/android/ui/view/WaveProgressView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 140
    iget-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v2}, Lcom/mergbw/android/ui/view/WaveProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/view/WaveProgressView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 142
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 143
    invoke-virtual {p0, p1, p1}, Lcom/mergbw/android/ui/view/WaveProgressView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ge p1, p2, :cond_0

    .line 153
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    goto :goto_0

    .line 155
    :cond_0
    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    iput p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    .line 157
    :goto_0
    iget p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mYPositions:[F

    .line 159
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mResetOneYPositions:[F

    .line 161
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mResetTwoYPositions:[F

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, p1

    div-double/2addr p2, v0

    double-to-float p1, p2

    const/4 p2, 0x0

    .line 165
    :goto_1
    iget p3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    if-ge p2, p3, :cond_1

    .line 166
    iget-object p3, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mYPositions:[F

    iget p4, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->waveHeight:F

    float-to-double v0, p4

    int-to-float p4, p2

    mul-float/2addr p4, p1

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget p4, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->waveHeight:F

    float-to-double v2, p4

    sub-double/2addr v0, v2

    double-to-float p4, v0

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->cirPath:Landroid/graphics/Path;

    int-to-float p2, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->height:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    int-to-float p3, p3

    div-float/2addr p3, p4

    iget p4, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeWidth:F

    sub-float/2addr p3, p4

    const p4, 0x3e99999a    # 0.3f

    add-float/2addr p3, p4

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 170
    iget-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mContext:Landroid/content/Context;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, p2}, Lcom/mergbw/android/ui/view/WaveProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iget p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    mul-int/2addr p1, p2

    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mContext:Landroid/content/Context;

    const/high16 p3, 0x43a50000    # 330.0f

    invoke-direct {p0, p2, p3}, Lcom/mergbw/android/ui/view/WaveProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOffsetSpeedOne:I

    .line 171
    iget-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mContext:Landroid/content/Context;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-direct {p0, p1, p2}, Lcom/mergbw/android/ui/view/WaveProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iget p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->width:I

    mul-int/2addr p1, p2

    iget-object p2, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/mergbw/android/ui/view/WaveProgressView;->dp2px(Landroid/content/Context;F)I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mXOffsetSpeedTwo:I

    return-void
.end method

.method public setBindingText(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bindingText:I

    return-void
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 309
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomText:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setBottomTextColor(I)V
    .locals 0

    .line 363
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomTextColor:I

    .line 364
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setBottomTextSize(F)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 337
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 300
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerText:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerTextColor:I

    .line 355
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setCenterTextSize(F)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 328
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->max:I

    .line 243
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .line 260
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->progress:I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    iget v1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->max:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%.2f"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    iget v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bindingText:I

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->bottomText:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_1
    iput-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->centerText:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_2
    iput-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topText:Ljava/lang/String;

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->postInvalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->outerRingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 372
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->strokeWidth:F

    .line 373
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setTopText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 291
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topText:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setTopTextColor(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topTextColor:I

    .line 346
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setTopTextSize(F)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->topPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 319
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setWaveColor(I)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/WaveProgressView;->invalidate()V

    return-void
.end method

.method public setWaveHeight(F)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/mergbw/android/ui/view/WaveProgressView;->waveHeight:F

    return-void
.end method
