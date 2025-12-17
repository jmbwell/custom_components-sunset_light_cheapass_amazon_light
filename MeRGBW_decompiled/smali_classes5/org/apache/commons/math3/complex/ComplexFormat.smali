.class public Lorg/apache/commons/math3/complex/ComplexFormat;
.super Ljava/lang/Object;
.source "ComplexFormat.java"


# static fields
.field private static final DEFAULT_IMAGINARY_CHARACTER:Ljava/lang/String; = "i"


# instance fields
.field private final imaginaryCharacter:Ljava/lang/String;

.field private final imaginaryFormat:Ljava/text/NumberFormat;

.field private final realFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "i"

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    .line 55
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    .line 56
    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 107
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2, p2}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 158
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    .line 160
    iput-object p2, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    return-void

    .line 155
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->REAL_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 152
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 149
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 146
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 69
    const-string v0, "i"

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    .line 71
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    return-void

    .line 67
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 91
    const-string v0, "i"

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    .line 93
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    return-void

    .line 88
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->REAL_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private formatImaginary(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p4, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 241
    invoke-virtual {p4, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryFormat()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-static {p1, p2, v1, p3, p4}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    return-object p3
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 169
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 1

    .line 305
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 330
    invoke-static {p1}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    .line 331
    new-instance v0, Lorg/apache/commons/math3/complex/ComplexFormat;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 1

    .line 314
    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    .line 315
    new-instance v0, Lorg/apache/commons/math3/complex/ComplexFormat;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Double;)Ljava/lang/String;
    .locals 5

    .line 189
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/apache/commons/math3/complex/Complex;)Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 271
    instance-of v0, p1, Lorg/apache/commons/math3/complex/Complex;

    if-eqz v0, :cond_0

    .line 272
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    goto :goto_0

    .line 273
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    :goto_0
    return-object p1

    .line 277
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_FORMAT_INSTANCE_AS_COMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p2, p3, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2
.end method

.method public format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 204
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 207
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v0

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    .line 214
    const-string p1, " - "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    neg-double v0, v0

    .line 215
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0, v1, p1, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->formatImaginary(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    cmpl-double p1, v0, v2

    if-gtz p1, :cond_1

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 219
    :cond_1
    const-string p1, " + "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0, v1, p1, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->formatImaginary(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 221
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getImaginaryCharacter()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryCharacter:Ljava/lang/String;

    return-object v0
.end method

.method public getImaginaryFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->imaginaryFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getRealFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->realFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/complex/Complex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 352
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/complex/ComplexFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 353
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 354
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-class v2, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 369
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 372
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 375
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 379
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 384
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 385
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v4

    if-eqz v4, :cond_5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    .line 402
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 403
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v2

    :cond_1
    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 408
    :goto_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 411
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v4

    invoke-static {p1, v4, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_3

    .line 415
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 420
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object v2

    .line 424
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    int-to-double v2, v3

    mul-double/2addr v4, v2

    invoke-direct {p1, v0, v1, v4, v5}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object p1

    .line 391
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object p1
.end method
