.class public Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "ComplexDoubleLargeArray.java"


# static fields
.field private static final serialVersionUID:J = 0x373001b34c5387L


# instance fields
.field private dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field private dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 62
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 63
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 64
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 68
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    .line 69
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 70
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    return-void

    .line 66
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

.method public constructor <init>(J[D)V
    .locals 4

    .line 80
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 81
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 82
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    if-eqz p3, :cond_0

    .line 86
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 89
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->isConstant:Z

    .line 91
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    invoke-direct {v1, p1, p2, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JD)V

    iput-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 92
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    aget-wide v2, p3, v0

    invoke-direct {v1, p1, p2, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JD)V

    iput-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "constantValue == null || constantValue.length != 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
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

.method public constructor <init>(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 12

    .line 111
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 112
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 118
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 119
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->sizeof:J

    .line 120
    iget-wide v0, p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    .line 121
    iget-boolean v0, p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    iput-boolean v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->isConstant:Z

    .line 122
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->isConstant:Z

    const-wide/16 v6, 0x1

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    invoke-virtual {p1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JD)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 124
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    invoke-virtual {p1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JD)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    goto :goto_1

    .line 126
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    const/4 v1, 0x0

    invoke-direct {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 127
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    invoke-direct {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 128
    :goto_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 129
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    mul-long v8, v4, v2

    invoke-virtual {p1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v0, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 130
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v8, v6

    invoke-virtual {p1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v0, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v4, v6

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The length of the data array must be even."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 4

    .line 153
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 154
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 157
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 160
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v0

    invoke-virtual {p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 164
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 165
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->sizeof:J

    .line 166
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    .line 167
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 168
    iput-object p2, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dataRe.isLarge() != dataIm.isLarge()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The length of the dataRe must be equal to the length of dataIm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([D)V
    .locals 1

    .line 102
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    invoke-direct {p0, v0}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;-><init>(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 1

    .line 143
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    new-instance p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    invoke-direct {p0, v0, p1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;-><init>(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->clone()Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;
    .locals 15

    .line 174
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->isConstant:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    iget-object v4, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    iget-object v4, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    const/4 v6, 0x2

    new-array v6, v6, [D

    aput-wide v7, v6, v1

    const/4 v1, 0x1

    aput-wide v4, v6, v1

    invoke-direct {v0, v2, v3, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;-><init>(J[D)V

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    invoke-direct {v0, v2, v3, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;-><init>(JZ)V

    const-wide/16 v11, 0x0

    .line 178
    iget-wide v13, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    const-wide/16 v8, 0x0

    move-object v7, p0

    move-object v10, v0

    invoke-static/range {v7 .. v14}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JJ)V

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
    check-cast p1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 188
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, p1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object p1, p1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic get(J)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->get(J)[D

    move-result-object p1

    return-object p1
.end method

.method public final get(J)[D
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object p1

    return-object p1
.end method

.method public final getAbsArray()Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 7

    .line 233
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 234
    :goto_0
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 235
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    .line 236
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    mul-double/2addr v3, v3

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    .line 237
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getArgArray()Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 7

    .line 249
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 250
    :goto_0
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 251
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    .line 252
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 253
    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getBoolean(J)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getBoolean(J)Z

    move-result p1

    return p1
.end method

.method public final getBooleanData()[Z
    .locals 1

    .line 451
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getBooleanData()[Z

    move-result-object v0

    return-object v0
.end method

.method public final getBooleanData([ZJJJ)[Z
    .locals 8

    .line 472
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getBooleanData([ZJJJ)[Z

    move-result-object p1

    return-object p1
.end method

.method public final getByte(J)B
    .locals 1

    .line 312
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getByte(J)B

    move-result p1

    return p1
.end method

.method public final getByteData()[B
    .locals 1

    .line 484
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getByteData()[B

    move-result-object v0

    return-object v0
.end method

.method public final getByteData([BJJJ)[B
    .locals 8

    .line 505
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getByteData([BJJJ)[B

    move-result-object p1

    return-object p1
.end method

.method public final getComplexData()[D
    .locals 7

    .line 681
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v4, 0x40000000

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 684
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    .line 685
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    mul-int/lit8 v4, v1, 0x2

    .line 686
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 687
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    aput-wide v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getComplexData([DJJJ)[D
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    .line 710
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_5

    cmp-long v0, p4, v0

    if-ltz v0, :cond_4

    .line 713
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length:J

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
    new-array p1, p1, [D

    :goto_0
    const/4 v0, 0x0

    :goto_1
    cmp-long v1, p2, p4

    if-gez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 732
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    .line 733
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    aput-wide v2, p1, v1

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
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v2, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

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
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFloat(J)F

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

    .line 37
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method public final getData()[[D
    .locals 4

    .line 435
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->isLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 436
    move-object v1, v0

    check-cast v1, [[D

    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v0

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [[D

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public final getDouble(J)D
    .locals 1

    .line 396
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getDoubleData()[D
    .locals 1

    .line 649
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDoubleData()[D

    move-result-object v0

    return-object v0
.end method

.method public final getDoubleData([DJJJ)[D
    .locals 8

    .line 670
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDoubleData([DJJJ)[D

    move-result-object p1

    return-object p1
.end method

.method public final getFloat(J)F
    .locals 1

    .line 382
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFloat(J)F

    move-result p1

    return p1
.end method

.method public final getFloatData()[F
    .locals 1

    .line 616
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFloatData()[F

    move-result-object v0

    return-object v0
.end method

.method public final getFloatData([FJJJ)[F
    .locals 8

    .line 637
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFloatData([FJJJ)[F

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromNative(J)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getFromNative(J)[D

    move-result-object p1

    return-object p1
.end method

.method public final getFromNative(J)[D
    .locals 4

    .line 284
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFromNative(J)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFromNative(J)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    const/4 v0, 0x1

    aput-wide p1, v2, v0

    return-object v2
.end method

.method public final getImaginaryArray()Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 1

    .line 223
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    return-object v0
.end method

.method public final getInt(J)I
    .locals 1

    .line 354
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getInt(J)I

    move-result p1

    return p1
.end method

.method public final getIntData()[I
    .locals 1

    .line 550
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getIntData()[I

    move-result-object v0

    return-object v0
.end method

.method public final getIntData([IJJJ)[I
    .locals 8

    .line 571
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getIntData([IJJJ)[I

    move-result-object p1

    return-object p1
.end method

.method public final getLong(J)J
    .locals 1

    .line 368
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getLongData()[J
    .locals 1

    .line 583
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getLongData()[J

    move-result-object v0

    return-object v0
.end method

.method public final getLongData([JJJJ)[J
    .locals 8

    .line 604
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getLongData([JJJJ)[J

    move-result-object p1

    return-object p1
.end method

.method public final getRealArray()Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 1

    .line 213
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    return-object v0
.end method

.method public final getShort(J)S
    .locals 1

    .line 340
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getShort(J)S

    move-result p1

    return p1
.end method

.method public final getShortData()[S
    .locals 1

    .line 517
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getShortData()[S

    move-result-object v0

    return-object v0
.end method

.method public final getShortData([SJJJ)[S
    .locals 8

    .line 538
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getShortData([SJJJ)[S

    move-result-object p1

    return-object p1
.end method

.method public final getUnsignedByte(J)S
    .locals 1

    .line 326
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getUnsignedByte(J)S

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 196
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 197
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isLarge()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v0

    return v0
.end method

.method public final set(JLjava/lang/Object;)V
    .locals 1

    .line 883
    instance-of v0, p3, [D

    if-eqz v0, :cond_0

    .line 886
    check-cast p3, [D

    check-cast p3, [D

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    return-void

    .line 884
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not an array of doubles."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBoolean(JZ)V
    .locals 1

    .line 771
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setBoolean(JZ)V

    .line 772
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setBoolean(JZ)V

    return-void
.end method

.method public final setByte(JB)V
    .locals 1

    .line 785
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setByte(JB)V

    .line 786
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setByte(JB)V

    return-void
.end method

.method public final setComplexDouble(J[D)V
    .locals 3

    .line 911
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v1, 0x0

    aget-wide v1, p3, v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 912
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v1, 0x1

    aget-wide v1, p3, v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    return-void
.end method

.method public final setComplexFloat(J[F)V
    .locals 2

    .line 898
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-virtual {v0, p1, p2, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setFloat(JF)V

    .line 899
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v1, 0x1

    aget p3, p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setFloat(JF)V

    return-void
.end method

.method public final setDouble(JD)V
    .locals 2

    .line 869
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 870
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    return-void
.end method

.method public final setFloat(JF)V
    .locals 1

    .line 855
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setFloat(JF)V

    .line 856
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setFloat(JF)V

    return-void
.end method

.method public final setInt(JI)V
    .locals 1

    .line 827
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setInt(JI)V

    .line 828
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setInt(JI)V

    return-void
.end method

.method public final setLong(JJ)V
    .locals 2

    .line 841
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setLong(JJ)V

    .line 842
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setLong(JJ)V

    return-void
.end method

.method public final setShort(JS)V
    .locals 1

    .line 813
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setShort(JS)V

    .line 814
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setShort(JS)V

    return-void
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 3

    .line 754
    instance-of v0, p3, [D

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    check-cast p3, [D

    check-cast p3, [D

    const/4 v1, 0x0

    aget-wide v1, p3, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setToNative(JLjava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v1, 0x1

    aget-wide v1, p3, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setToNative(JLjava/lang/Object;)V

    return-void

    .line 755
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not an array of doubles."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setUnsignedByte(JS)V
    .locals 1

    .line 799
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataRe:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setUnsignedByte(JS)V

    .line 800
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->dataIm:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setUnsignedByte(JS)V

    return-void
.end method
