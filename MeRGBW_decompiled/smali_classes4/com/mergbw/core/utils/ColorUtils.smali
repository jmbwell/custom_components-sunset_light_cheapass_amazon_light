.class public Lcom/mergbw/core/utils/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorToHex(IZ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "includeAlpha"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 153
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "#%08X"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0xffffff

    and-int/2addr p0, p1

    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "#%06X"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAtmosphereColorList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FF0000"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFF00"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#00FF00"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#00FFFF"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#0000FF"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FF00FF"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getClassicColorList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFFFF"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FF0000"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFF00"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#00FF00"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#00FFFF"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#0000FF"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FF00FF"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getHSVColorData(I)[B
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x3

    .line 116
    new-array v1, v0, [F

    .line 117
    invoke-static {p0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    .line 119
    aget v2, v1, p0

    float-to-int v2, v2

    invoke-static {v2}, Lcom/mergbw/core/utils/DataUtils;->intToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 120
    aget v1, v1, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Lcom/mergbw/core/utils/DataUtils;->intToBytes(I)[B

    move-result-object v1

    const/4 v4, 0x2

    .line 121
    aget-byte v5, v2, v4

    .line 122
    aget-byte v2, v2, v0

    .line 123
    aget-byte v6, v1, v4

    .line 124
    aget-byte v1, v1, v0

    const/4 v7, 0x4

    new-array v7, v7, [B

    aput-byte v5, v7, p0

    aput-byte v2, v7, v3

    aput-byte v6, v7, v4

    aput-byte v1, v7, v0

    return-object v7
.end method

.method public static getLastHexToInt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, v0}, Lcom/mergbw/core/utils/ColorUtils;->colorToHex(IZ)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/16 p0, 0x96

    return p0

    .line 166
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    .line 168
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSubColor(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;"
        }
    .end annotation

    .line 129
    const-class v0, Lcom/mergbw/core/bean/SubItemBean;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 131
    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->initSubData()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 133
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/SubItemBean;

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SubItemBean;->setChecked(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static getWarmColorLineList()[I
    .locals 7

    .line 54
    const-string v0, "#FFFF9A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 55
    const-string v0, "#FFFFAB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 56
    const-string v0, "#FFFFC0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 57
    const-string v0, "#FFFFD5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 58
    const-string v0, "#FFFFEA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 59
    const-string v0, "#FFFFFE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    return-object v0
.end method

.method public static getWarmColorList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFF9A"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFFAB"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFFC0"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFFD5"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFFEA"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/mergbw/core/database/bean/ColorBean;

    const-string v2, "#FFFFFE"

    invoke-direct {v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static initSubData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 143
    new-instance v2, Lcom/mergbw/core/bean/SubItemBean;

    invoke-direct {v2}, Lcom/mergbw/core/bean/SubItemBean;-><init>()V

    .line 144
    const-string v3, "#FF000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mergbw/core/bean/SubItemBean;->setColor(I)V

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static rgbToHsv([I)[F
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rgb"
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    aget v1, p0, v0

    const/4 v2, 0x1

    .line 66
    aget v3, p0, v2

    const/4 v4, 0x2

    .line 67
    aget p0, p0, v4

    int-to-float v1, v1

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v1, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    int-to-float p0, p0

    div-float/2addr p0, v5

    const/4 v5, 0x3

    .line 73
    new-array v6, v5, [F

    aput v1, v6, v0

    aput v3, v6, v2

    aput p0, v6, v4

    .line 74
    aget v7, v6, v0

    move v9, v0

    move v8, v7

    :goto_0
    if-ge v9, v5, :cond_2

    .line 77
    aget v10, v6, v9

    cmpg-float v11, v7, v10

    if-gtz v11, :cond_0

    move v7, v10

    :cond_0
    cmpl-float v11, v8, v10

    if-ltz v11, :cond_1

    move v8, v10

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    sub-float v6, v7, v8

    const/4 v8, 0x0

    cmpl-float v9, v6, v8

    if-nez v9, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    cmpl-float v9, v7, v1

    const/high16 v10, 0x42700000    # 60.0f

    if-nez v9, :cond_4

    sub-float v9, v3, p0

    div-float/2addr v9, v6

    const/high16 v11, 0x40c00000    # 6.0f

    rem-float/2addr v9, v11

    mul-float/2addr v9, v10

    goto :goto_1

    :cond_4
    move v9, v8

    :goto_1
    cmpl-float v11, v7, v3

    if-nez v11, :cond_5

    sub-float v9, p0, v1

    div-float/2addr v9, v6

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v9, v11

    mul-float/2addr v9, v10

    :cond_5
    cmpl-float p0, v7, p0

    if-nez p0, :cond_6

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    const/high16 p0, 0x40800000    # 4.0f

    add-float/2addr v1, p0

    mul-float v9, v1, v10

    :cond_6
    :goto_2
    cmpl-float p0, v7, v8

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    div-float v8, v6, v7

    .line 112
    :goto_3
    new-array p0, v5, [F

    aput v9, p0, v0

    aput v8, p0, v2

    aput v7, p0, v4

    return-object p0
.end method
