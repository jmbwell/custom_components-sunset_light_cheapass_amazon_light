.class public Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "ComplexFloatLargeArray.java"


# static fields
.field private static final serialVersionUID:J = 0x2280edeefa3f507L


# instance fields
.field private dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field private dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 63
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 64
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x4

    .line 65
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 69
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    .line 70
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 71
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    return-void

    .line 67
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(J[F)V
    .locals 3

    .line 81
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 82
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x4

    .line 83
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    if-eqz p3, :cond_0

    .line 87
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 90
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->isConstant:Z

    .line 92
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v2, 0x0

    aget v2, p3, v2

    invoke-direct {v1, p1, p2, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JF)V

    iput-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 93
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    aget p3, p3, v0

    invoke-direct {v1, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JF)V

    iput-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "constantValue == null || constantValue.length != 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 10

    .line 112
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 113
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 116
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 119
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x4

    .line 120
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->sizeof:J

    .line 121
    iget-wide v0, p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    .line 122
    iget-boolean v0, p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    iput-boolean v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->isConstant:Z

    .line 123
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->isConstant:Z

    const-wide/16 v6, 0x1

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    invoke-virtual {p1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JF)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 125
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    invoke-virtual {p1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JF)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    goto :goto_1

    .line 127
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    const/4 v1, 0x0

    invoke-direct {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 128
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    invoke-direct {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 129
    :goto_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 130
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    mul-long v8, v4, v2

    invoke-virtual {p1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v0, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 131
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long/2addr v8, v6

    invoke-virtual {p1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v0, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v4, v6

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The length of the data array must be even."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 4

    .line 154
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 155
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 158
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 161
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    invoke-virtual {p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 164
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x4

    .line 165
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->sizeof:J

    .line 166
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    .line 167
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 168
    iput-object p2, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dataRe.isLarge() != dataIm.isLarge()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The length of the dataRe must be equal to the length of dataIm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 103
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    invoke-direct {p0, v0}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;-><init>(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 1

    .line 144
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    new-instance p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    invoke-direct {p0, v0, p1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;-><init>(Lpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->clone()Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;
    .locals 15

    .line 174
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->isConstant:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    iget-object v4, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v7, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v4, v6, v1

    const/4 v1, 0x1

    aput v5, v6, v1

    invoke-direct {v0, v2, v3, v6}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;-><init>(J[F)V

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    invoke-direct {v0, v2, v3, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;-><init>(JZ)V

    const-wide/16 v11, 0x0

    .line 178
    iget-wide v13, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    const-wide/16 v8, 0x0

    move-object v7, p0

    move-object v10, v0

    invoke-static/range {v7 .. v14}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 186
    invoke-super {p0, p1}, Lpl/edu/icm/jlargearrays/LargeArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 188
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, p1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object p1, p1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic get(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->get(J)[F

    move-result-object p1

    return-object p1
.end method

.method public final get(J)[F
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object p1

    return-object p1
.end method

.method public final getAbsArray()Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 7

    .line 233
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 234
    :goto_0
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 235
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    .line 236
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v3

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    .line 237
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getArgArray()Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 7

    .line 249
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 250
    :goto_0
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 251
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    .line 252
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    float-to-double v5, v5

    .line 253
    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getBoolean(J)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getBoolean(J)Z

    move-result p1

    return p1
.end method

.method public final getBooleanData()[Z
    .locals 1

    .line 451
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getBooleanData()[Z

    move-result-object v0

    return-object v0
.end method

.method public final getBooleanData([ZJJJ)[Z
    .locals 8

    .line 472
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getBooleanData([ZJJJ)[Z

    move-result-object p1

    return-object p1
.end method

.method public final getByte(J)B
    .locals 1

    .line 312
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getByte(J)B

    move-result p1

    return p1
.end method

.method public final getByteData()[B
    .locals 1

    .line 484
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getByteData()[B

    move-result-object v0

    return-object v0
.end method

.method public final getByteData([BJJJ)[B
    .locals 8

    .line 505
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getByteData([BJJJ)[B

    move-result-object p1

    return-object p1
.end method

.method public final getComplexData()[F
    .locals 6

    .line 681
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v4, 0x40000000

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 684
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    .line 685
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    mul-int/lit8 v4, v1, 0x2

    .line 686
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 687
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    aput v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getComplexData([FJJJ)[F
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    .line 710
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_5

    cmp-long v0, p4, v0

    if-ltz v0, :cond_4

    .line 713
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length:J

    cmp-long v0, p4, v0

    if-gtz v0, :cond_4

    cmp-long v0, p4, p2

    if-ltz v0, :cond_4

    const-wide/16 v0, 0x1

    cmp-long v0, p6, v0

    if-ltz v0, :cond_3

    sub-long v0, p4, p2

    long-to-double v0, v0

    long-to-double v2, p6

    div-double/2addr v0, v2

    .line 720
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 725
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v0

    .line 728
    new-array p1, p1, [F

    :goto_0
    const/4 v0, 0x0

    :goto_1
    cmp-long v1, p2, p4

    if-gez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 732
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    .line 733
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    goto :goto_1

    :cond_2
    return-object p1

    .line 717
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 714
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getComplexDouble(J)[D
    .locals 4

    .line 422
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v2, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getDouble(J)D

    move-result-wide p1

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    const/4 v0, 0x1

    aput-wide p1, v2, v0

    return-object v2
.end method

.method public final getComplexFloat(J)[F
    .locals 2

    .line 409
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    return-object p2
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getData()[[F

    move-result-object v0

    return-object v0
.end method

.method public final getData()[[F
    .locals 4

    .line 435
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->isLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 436
    move-object v1, v0

    check-cast v1, [[F

    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [[F

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public final getDouble(J)D
    .locals 1

    .line 396
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getDoubleData()[D
    .locals 1

    .line 649
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getDoubleData()[D

    move-result-object v0

    return-object v0
.end method

.method public final getDoubleData([DJJJ)[D
    .locals 8

    .line 670
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getDoubleData([DJJJ)[D

    move-result-object p1

    return-object p1
.end method

.method public final getFloat(J)F
    .locals 1

    .line 382
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result p1

    return p1
.end method

.method public final getFloatData()[F
    .locals 1

    .line 616
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloatData()[F

    move-result-object v0

    return-object v0
.end method

.method public final getFloatData([FJJJ)[F
    .locals 8

    .line 637
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloatData([FJJJ)[F

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromNative(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getFromNative(J)[F

    move-result-object p1

    return-object p1
.end method

.method public final getFromNative(J)[F
    .locals 2

    .line 284
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFromNative(J)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFromNative(J)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    return-object p2
.end method

.method public final getImaginaryArray()Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 1

    .line 223
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    return-object v0
.end method

.method public final getInt(J)I
    .locals 1

    .line 354
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getInt(J)I

    move-result p1

    return p1
.end method

.method public final getIntData()[I
    .locals 1

    .line 550
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getIntData()[I

    move-result-object v0

    return-object v0
.end method

.method public final getIntData([IJJJ)[I
    .locals 8

    .line 571
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getIntData([IJJJ)[I

    move-result-object p1

    return-object p1
.end method

.method public final getLong(J)J
    .locals 1

    .line 368
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getLongData()[J
    .locals 1

    .line 583
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getLongData()[J

    move-result-object v0

    return-object v0
.end method

.method public final getLongData([JJJJ)[J
    .locals 8

    .line 604
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getLongData([JJJJ)[J

    move-result-object p1

    return-object p1
.end method

.method public final getRealArray()Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 1

    .line 213
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    return-object v0
.end method

.method public final getShort(J)S
    .locals 1

    .line 340
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getShort(J)S

    move-result p1

    return p1
.end method

.method public final getShortData()[S
    .locals 1

    .line 517
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getShortData()[S

    move-result-object v0

    return-object v0
.end method

.method public final getShortData([SJJJ)[S
    .locals 8

    .line 538
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getShortData([SJJJ)[S

    move-result-object p1

    return-object p1
.end method

.method public final getUnsignedByte(J)S
    .locals 1

    .line 326
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getUnsignedByte(J)S

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 196
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 197
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isLarge()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    return v0
.end method

.method public final set(JLjava/lang/Object;)V
    .locals 1

    .line 883
    instance-of v0, p3, [F

    if-eqz v0, :cond_0

    .line 886
    check-cast p3, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    return-void

    .line 884
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not an array of floats."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBoolean(JZ)V
    .locals 1

    .line 771
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setBoolean(JZ)V

    .line 772
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setBoolean(JZ)V

    return-void
.end method

.method public final setByte(JB)V
    .locals 1

    .line 785
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setByte(JB)V

    .line 786
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setByte(JB)V

    return-void
.end method

.method public final setComplexDouble(J[D)V
    .locals 3

    .line 911
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v1, 0x0

    aget-wide v1, p3, v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 912
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v1, 0x1

    aget-wide v1, p3, v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    return-void
.end method

.method public final setComplexFloat(J[F)V
    .locals 2

    .line 898
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-virtual {v0, p1, p2, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 899
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v1, 0x1

    aget p3, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    return-void
.end method

.method public final setDouble(JD)V
    .locals 2

    .line 869
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 870
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    return-void
.end method

.method public final setFloat(JF)V
    .locals 1

    .line 855
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 856
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    return-void
.end method

.method public final setInt(JI)V
    .locals 1

    .line 827
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setInt(JI)V

    .line 828
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setInt(JI)V

    return-void
.end method

.method public final setLong(JJ)V
    .locals 2

    .line 841
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setLong(JJ)V

    .line 842
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setLong(JJ)V

    return-void
.end method

.method public final setShort(JS)V
    .locals 1

    .line 813
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setShort(JS)V

    .line 814
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setShort(JS)V

    return-void
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 2

    .line 754
    instance-of v0, p3, [F

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    check-cast p3, [F

    check-cast p3, [F

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setToNative(JLjava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v1, 0x1

    aget p3, p3, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setToNative(JLjava/lang/Object;)V

    return-void

    .line 755
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not an array of floats."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setUnsignedByte(JS)V
    .locals 1

    .line 799
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setUnsignedByte(JS)V

    .line 800
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setUnsignedByte(JS)V

    return-void
.end method
