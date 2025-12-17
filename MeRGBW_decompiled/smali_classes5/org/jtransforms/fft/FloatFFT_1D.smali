.class public final Lorg/jtransforms/fft/FloatFFT_1D;
.super Ljava/lang/Object;
.source "FloatFFT_1D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jtransforms/fft/FloatFFT_1D$Plans;
    }
.end annotation


# static fields
.field private static final PI:F = 3.1415927f

.field private static final TWO_PI:F = 6.2831855f

.field private static final factors:[I


# instance fields
.field private bk1:[F

.field private bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field private bk2:[F

.field private bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field private ip:[I

.field private ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

.field private n:I

.field private nBluestein:I

.field private nBluesteinl:J

.field private nc:I

.field private ncl:J

.field private nl:J

.field private nw:I

.field private nwl:J

.field private plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

.field private useLargeArrays:Z

.field private w:[F

.field private wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field private wtable:[F

.field private wtable_r:[F

.field private wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field private wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 106
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/jtransforms/fft/FloatFFT_1D;->factors:[I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 12

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    .line 122
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->isUseLargeArrays()Z

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x2

    if-nez v2, :cond_1

    mul-long v6, p1, v4

    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v2

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    long-to-int v6, p1

    .line 123
    iput v6, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    .line 124
    iput-wide p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v6, 0xd3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    if-nez v2, :cond_4

    .line 126
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D;->factors:[I

    invoke-static {p1, p2, v0}, Lorg/jtransforms/utils/CommonUtils;->getReminder(J[I)J

    move-result-wide p1

    cmp-long p1, p1, v6

    if-ltz p1, :cond_2

    .line 128
    sget-object p1, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->BLUESTEIN:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    .line 129
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/2addr p1, v11

    sub-int/2addr p1, v3

    invoke-static {p1}, Lorg/jtransforms/utils/CommonUtils;->nextPow2(I)I

    move-result p1

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 p2, p1, 0x2

    .line 130
    new-array p2, p2, [F

    iput-object p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    mul-int/lit8 p2, p1, 0x2

    .line 131
    new-array p2, p2, [F

    iput-object p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    int-to-float p1, p1

    add-float/2addr p1, v10

    float-to-double p1, p1

    .line 132
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    div-int/2addr p1, v11

    shl-int p1, v3, p1

    add-int/2addr p1, v11

    int-to-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v11

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    .line 133
    iget p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    new-array v0, p2, [F

    iput-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    mul-int/2addr p2, v11

    shr-int/2addr p2, v11

    .line 135
    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    .line 136
    invoke-static {p2, p1, v0}, Lorg/jtransforms/utils/CommonUtils;->makewt(I[I[F)V

    .line 137
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    shr-int/2addr p1, v11

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nc:I

    .line 138
    iget-object p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    invoke-static {p1, p2, v0, v1}, Lorg/jtransforms/utils/CommonUtils;->makect(I[FI[I)V

    .line 139
    invoke-direct {p0}, Lorg/jtransforms/fft/FloatFFT_1D;->bluesteini()V

    goto/16 :goto_2

    .line 141
    :cond_2
    sget-object p1, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->MIXED_RADIX:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    .line 142
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 p2, p1, 0x4

    add-int/lit8 p2, p2, 0xf

    new-array p2, p2, [F

    iput-object p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    mul-int/2addr p1, v11

    add-int/lit8 p1, p1, 0xf

    .line 143
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    .line 144
    invoke-virtual {p0}, Lorg/jtransforms/fft/FloatFFT_1D;->cffti()V

    .line 145
    invoke-virtual {p0}, Lorg/jtransforms/fft/FloatFFT_1D;->rffti()V

    goto/16 :goto_2

    .line 148
    :cond_3
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->SPLIT_RADIX:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    long-to-float p1, p1

    add-float/2addr p1, v10

    float-to-double p1, p1

    .line 149
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    div-int/2addr p1, v11

    shl-int p1, v3, p1

    add-int/2addr p1, v11

    int-to-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v11

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    .line 150
    iget p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    new-array v0, p2, [F

    iput-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    mul-int/2addr p2, v11

    shr-int/2addr p2, v11

    .line 152
    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    .line 153
    invoke-static {p2, p1, v0}, Lorg/jtransforms/utils/CommonUtils;->makewt(I[I[F)V

    .line 154
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    shr-int/2addr p1, v11

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nc:I

    .line 155
    iget-object p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    invoke-static {p1, p2, v0, v1}, Lorg/jtransforms/utils/CommonUtils;->makect(I[FI[I)V

    goto/16 :goto_2

    .line 157
    :cond_4
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result p1

    if-nez p1, :cond_6

    .line 158
    iget-wide p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sget-object v2, Lorg/jtransforms/fft/FloatFFT_1D;->factors:[I

    invoke-static {p1, p2, v2}, Lorg/jtransforms/utils/CommonUtils;->getReminder(J[I)J

    move-result-wide p1

    cmp-long p1, p1, v6

    if-ltz p1, :cond_5

    .line 159
    sget-object p1, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->BLUESTEIN:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    .line 160
    iget-wide p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long/2addr p1, v4

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->nextPow2(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    .line 161
    new-instance p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long/2addr v2, v4

    invoke-direct {p1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 162
    new-instance p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long/2addr v2, v4

    invoke-direct {p1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 163
    new-instance p1, Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    long-to-float p2, v2

    add-float/2addr p2, v10

    float-to-double v2, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-long v2, v2

    div-long/2addr v2, v4

    long-to-int p2, v2

    shl-long/2addr v0, p2

    add-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    add-long/2addr v0, v4

    invoke-direct {p1, v0, v1}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    .line 164
    new-instance p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    invoke-direct {p1, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 165
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long/2addr v0, v4

    shr-long/2addr v0, v11

    .line 166
    iput-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    .line 167
    iget-object p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static {v0, v1, p2, p1}, Lorg/jtransforms/utils/CommonUtils;->makewt(JLpl/edu/icm/jlargearrays/LongLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 168
    iget-wide p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    shr-long v0, p1, v11

    iput-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ncl:J

    .line 169
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->makect(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;)V

    .line 170
    invoke-direct {p0}, Lorg/jtransforms/fft/FloatFFT_1D;->bluesteinil()V

    goto :goto_2

    .line 172
    :cond_5
    sget-object p1, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->MIXED_RADIX:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    .line 173
    new-instance p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long/2addr v2, v0

    const-wide/16 v0, 0xf

    add-long/2addr v2, v0

    invoke-direct {p1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 174
    new-instance p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    invoke-direct {p1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 175
    invoke-virtual {p0}, Lorg/jtransforms/fft/FloatFFT_1D;->cfftil()V

    .line 176
    invoke-virtual {p0}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftil()V

    goto :goto_2

    .line 179
    :cond_6
    sget-object p1, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->SPLIT_RADIX:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    .line 180
    new-instance p1, Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float p2, v2

    add-float/2addr p2, v10

    float-to-double v2, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-long v2, v2

    div-long/2addr v2, v4

    long-to-int p2, v2

    shl-long/2addr v0, p2

    add-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    add-long/2addr v0, v4

    invoke-direct {p1, v0, v1}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    .line 181
    new-instance p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-direct {p1, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 182
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long/2addr v0, v4

    shr-long/2addr v0, v11

    .line 183
    iput-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    .line 184
    iget-object p2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static {v0, v1, p2, p1}, Lorg/jtransforms/utils/CommonUtils;->makewt(JLpl/edu/icm/jlargearrays/LongLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 185
    iget-wide p1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    shr-long v0, p1, v11

    iput-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ncl:J

    .line 186
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->makect(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;)V

    :goto_2
    return-void

    .line 120
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    return-object p0
.end method

.method static synthetic access$100(Lorg/jtransforms/fft/FloatFFT_1D;)[F
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    return-object p0
.end method

.method static synthetic access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    return-object p0
.end method

.method static synthetic access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    return-object p0
.end method

.method private bluestein_complex(Lpl/edu/icm/jlargearrays/FloatLargeArray;JI)V
    .locals 25

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 2114
    const-class v14, Lorg/jtransforms/fft/FloatFFT_1D;

    new-instance v15, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    invoke-direct {v15, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 2115
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 2116
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2118
    iget-wide v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v11, v1

    .line 2121
    new-array v10, v11, [Ljava/util/concurrent/Future;

    .line 2122
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    int-to-long v8, v11

    div-long v18, v0, v8

    const/16 v20, 0x0

    move/from16 v0, v20

    :goto_1
    if-ge v0, v11, :cond_2

    int-to-long v1, v0

    mul-long v4, v1, v18

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_1

    .line 2125
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    goto :goto_2

    :cond_1
    add-long v1, v4, v18

    :goto_2
    move-wide v6, v1

    .line 2126
    new-instance v21, Lorg/jtransforms/fft/FloatFFT_1D$8;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-wide/from16 v22, v8

    move-wide/from16 v8, p2

    move-object/from16 v24, v10

    move-object v10, v15

    move v13, v11

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_1D$8;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;IJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v0, v0, 0x1

    move v11, v13

    move-wide/from16 v8, v22

    move-object/from16 v10, v24

    move-object/from16 v13, p1

    goto :goto_1

    :cond_2
    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move v13, v11

    const/4 v11, 0x0

    .line 2153
    :try_start_0
    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2157
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2155
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2160
    :goto_3
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v15

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 2162
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    div-long v9, v0, v22

    move/from16 v0, v20

    :goto_4
    if-ge v0, v13, :cond_4

    int-to-long v1, v0

    mul-long v4, v1, v9

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_3

    .line 2165
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    goto :goto_5

    :cond_3
    add-long v1, v4, v9

    :goto_5
    move-wide v6, v1

    .line 2166
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_1D$9;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D$9;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;IJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2191
    :cond_4
    :try_start_1
    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2195
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2193
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2198
    :goto_6
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v15

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 2200
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v16, v0, v22

    move/from16 v0, v20

    :goto_7
    if-ge v0, v13, :cond_6

    int-to-long v1, v0

    mul-long v4, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_5

    .line 2203
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    goto :goto_8

    :cond_5
    add-long v1, v4, v16

    :goto_8
    move-wide v6, v1

    .line 2204
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_1D$10;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-wide/from16 v8, p2

    move-object/from16 v10, p1

    move/from16 v19, v13

    move-object v13, v11

    move-object v11, v15

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_1D$10;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;IJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v0, v0, 0x1

    move-object v11, v13

    move/from16 v13, v19

    goto :goto_7

    :cond_6
    move-object v13, v11

    .line 2231
    :try_start_2
    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_10

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2235
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2233
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_7
    const-wide/16 v13, 0x1

    if-lez p4, :cond_9

    const-wide/16 v0, 0x0

    .line 2239
    :goto_9
    iget-wide v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_8

    mul-long v2, v0, v16

    add-long v4, v2, v13

    add-long v6, p2, v2

    add-long v8, p2, v4

    move-object/from16 v10, p1

    .line 2244
    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    iget-object v13, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v11, v13

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    iget-object v14, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v14, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    invoke-virtual {v15, v2, v3, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2245
    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    iget-object v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v15, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    move-wide v13, v2

    goto :goto_9

    :cond_8
    move-object/from16 v10, p1

    goto :goto_b

    :cond_9
    move-object/from16 v10, p1

    move-wide v2, v13

    const-wide/16 v0, 0x0

    .line 2248
    :goto_a
    iget-wide v4, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_a

    mul-long v4, v0, v16

    add-long v13, v4, v2

    add-long v2, p2, v4

    add-long v6, p2, v13

    .line 2253
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    iget-object v9, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    iget-object v11, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    invoke-virtual {v15, v4, v5, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2254
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    iget-object v3, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v15, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_a

    .line 2258
    :cond_a
    :goto_b
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v15

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    if-lez p4, :cond_b

    const-wide/16 v0, 0x0

    .line 2261
    :goto_c
    iget-wide v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    mul-long v2, v0, v16

    const-wide/16 v4, 0x1

    add-long v13, v2, v4

    .line 2264
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    iget-object v5, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 2265
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    iget-object v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v15, v2, v3, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2266
    invoke-virtual {v15, v13, v14, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_c

    :cond_b
    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    .line 2269
    :goto_d
    iget-wide v4, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_c

    mul-long v4, v0, v16

    add-long v13, v4, v2

    .line 2272
    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 2273
    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v3, v6

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    iget-object v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    invoke-virtual {v15, v4, v5, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2274
    invoke-virtual {v15, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_d

    .line 2278
    :cond_c
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v15

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    if-lez p4, :cond_d

    const-wide/16 v18, 0x0

    .line 2280
    :goto_e
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v0, v18, v0

    if-gez v0, :cond_e

    mul-long v0, v18, v16

    const-wide/16 v2, 0x1

    add-long v13, v0, v2

    add-long v2, p2, v0

    add-long v4, p2, v13

    .line 2285
    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v10, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2286
    iget-object v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-virtual {v10, v4, v5, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v0, 0x1

    add-long v18, v18, v0

    goto :goto_e

    :cond_d
    const-wide/16 v0, 0x1

    const-wide/16 v18, 0x0

    .line 2289
    :goto_f
    iget-wide v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v2, v18, v2

    if-gez v2, :cond_e

    mul-long v2, v18, v16

    add-long v13, v2, v0

    add-long v0, p2, v2

    add-long v4, p2, v13

    .line 2294
    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v10, v0, v1, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2295
    iget-object v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {v10, v4, v5, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v0, 0x1

    add-long v18, v18, v0

    goto :goto_f

    :cond_e
    :goto_10
    return-void
.end method

.method private bluestein_complex([FII)V
    .locals 18

    move-object/from16 v9, p0

    .line 1925
    const-class v10, Lorg/jtransforms/fft/FloatFFT_1D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    const/4 v11, 0x2

    mul-int/2addr v0, v11

    new-array v12, v0, [F

    .line 1926
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    const/4 v13, 0x0

    if-le v0, v1, :cond_7

    .line 1927
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v1, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1929
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v11

    .line 1932
    :goto_0
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 1933
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v14

    move v8, v13

    :goto_1
    if-ge v8, v14, :cond_2

    mul-int v4, v8, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v8, v1, :cond_1

    .line 1936
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v1, v4, v0

    :goto_2
    move v5, v1

    .line 1937
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_1D$5;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v17, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D$5;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;IIII[F[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v8, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 1964
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1968
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1966
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1971
    :goto_3
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    .line 1973
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int/2addr v0, v14

    move v7, v13

    :goto_4
    if-ge v7, v14, :cond_4

    mul-int v4, v7, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v7, v1, :cond_3

    .line 1976
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_3
    add-int v1, v4, v0

    :goto_5
    move v5, v1

    .line 1977
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_1D$6;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_1D$6;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;III[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2002
    :cond_4
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2006
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2004
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2009
    :goto_6
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 2011
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v14

    :goto_7
    if-ge v13, v14, :cond_6

    mul-int v4, v13, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_5

    .line 2014
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    goto :goto_8

    :cond_5
    add-int v1, v4, v0

    :goto_8
    move v5, v1

    .line 2015
    new-instance v11, Lorg/jtransforms/fft/FloatFFT_1D$7;

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object/from16 v7, p1

    move/from16 v16, v14

    move-object v14, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D$7;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;IIII[F[F)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    move-object v8, v14

    move/from16 v14, v16

    goto :goto_7

    :cond_6
    move-object v14, v8

    .line 2042
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_f

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2046
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2044
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :cond_7
    if-lez p3, :cond_8

    move v0, v13

    .line 2050
    :goto_9
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    .line 2055
    aget v5, p1, v3

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v7, v6, v1

    mul-float/2addr v5, v7

    aget v7, p1, v4

    aget v8, v6, v2

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    aput v5, v12, v1

    .line 2056
    aget v3, p1, v3

    aget v5, v6, v2

    mul-float/2addr v3, v5

    aget v4, p1, v4

    aget v1, v6, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v13

    .line 2059
    :goto_a
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    .line 2064
    aget v5, p1, v3

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v7, v6, v1

    mul-float/2addr v5, v7

    aget v7, p1, v4

    aget v8, v6, v2

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    aput v5, v12, v1

    .line 2065
    aget v3, p1, v3

    neg-float v3, v3

    aget v5, v6, v2

    mul-float/2addr v3, v5

    aget v4, p1, v4

    aget v1, v6, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2069
    :cond_9
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    if-lez p3, :cond_a

    move v0, v13

    .line 2072
    :goto_b
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2075
    aget v3, v12, v1

    neg-float v4, v3

    iget-object v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v5, v2

    mul-float/2addr v4, v6

    aget v7, v12, v2

    aget v5, v5, v1

    mul-float v8, v7, v5

    add-float/2addr v4, v8

    mul-float/2addr v3, v5

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 2076
    aput v3, v12, v1

    .line 2077
    aput v4, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v13

    .line 2080
    :goto_c
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2083
    aget v3, v12, v1

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v5, v4, v2

    mul-float v6, v3, v5

    aget v7, v12, v2

    aget v4, v4, v1

    mul-float v8, v7, v4

    add-float/2addr v6, v8

    mul-float/2addr v3, v4

    mul-float/2addr v7, v5

    sub-float/2addr v3, v7

    .line 2084
    aput v3, v12, v1

    .line 2085
    aput v6, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2089
    :cond_b
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    if-lez p3, :cond_c

    .line 2091
    :goto_d
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v13, v0, :cond_d

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    add-int v3, p2, v1

    .line 2096
    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v4, v0

    aget v6, v12, v0

    mul-float/2addr v5, v6

    aget v6, v4, v1

    aget v7, v12, v1

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, p1, v2

    .line 2097
    aget v2, v4, v1

    aget v5, v12, v0

    mul-float/2addr v2, v5

    aget v0, v4, v0

    aget v1, v12, v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    aput v2, p1, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 2100
    :cond_c
    :goto_e
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v13, v0, :cond_d

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    add-int v3, p2, v1

    .line 2105
    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v4, v0

    aget v6, v12, v0

    mul-float/2addr v5, v6

    aget v6, v4, v1

    aget v7, v12, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, p1, v2

    .line 2106
    aget v2, v4, v1

    neg-float v2, v2

    aget v5, v12, v0

    mul-float/2addr v2, v5

    aget v0, v4, v0

    aget v1, v12, v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    aput v2, p1, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_d
    :goto_f
    return-void
.end method

.method private bluestein_real_forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 27

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    .line 2769
    const-class v15, Lorg/jtransforms/fft/FloatFFT_1D;

    new-instance v10, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    invoke-direct {v10, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 2770
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x1

    if-le v0, v1, :cond_5

    .line 2771
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2773
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v18

    cmp-long v0, v2, v18

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v9, v1

    .line 2776
    new-array v3, v9, [Ljava/util/concurrent/Future;

    .line 2777
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    int-to-long v12, v9

    div-long v18, v0, v12

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_2

    int-to-long v1, v0

    mul-long v20, v1, v18

    add-int/lit8 v1, v9, -0x1

    if-ne v0, v1, :cond_1

    .line 2780
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    goto :goto_2

    :cond_1
    add-long v1, v20, v18

    :goto_2
    move-wide/from16 v22, v1

    .line 2781
    new-instance v24, Lorg/jtransforms/fft/FloatFFT_1D$19;

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v25, v3

    move-wide/from16 v3, v20

    move-wide/from16 v5, v22

    move-wide/from16 v7, p2

    move v14, v9

    move-object v9, v10

    move-object/from16 v21, v10

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_1D$19;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    move v9, v14

    move-object/from16 v10, v21

    move-object/from16 v3, v25

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v25, v3

    move v14, v9

    move-object/from16 v21, v10

    const/4 v10, 0x0

    .line 2796
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2800
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2798
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2803
    :goto_3
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object/from16 v3, v21

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 2805
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    div-long v8, v0, v12

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v14, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v8

    add-int/lit8 v1, v14, -0x1

    if-ne v0, v1, :cond_3

    .line 2808
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    goto :goto_5

    :cond_3
    add-long v1, v3, v8

    :goto_5
    move-wide v5, v1

    .line 2809
    new-instance v12, Lorg/jtransforms/fft/FloatFFT_1D$20;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D$20;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2824
    :cond_4
    :try_start_1
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2828
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2826
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move-object/from16 v10, p1

    move-wide/from16 v14, p2

    move-object/from16 v9, v21

    goto/16 :goto_9

    :cond_5
    move-object/from16 v21, v10

    const-wide/16 v7, 0x0

    .line 2833
    :goto_7
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_6

    mul-long v0, v7, v16

    const-wide/16 v12, 0x1

    add-long v5, v0, v12

    move-wide/from16 v14, p2

    add-long v2, v14, v7

    move-object/from16 v10, p1

    .line 2837
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    move-object/from16 v9, v21

    invoke-virtual {v9, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2838
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v9, v5, v6, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v7, v12

    goto :goto_7

    :cond_6
    move-object/from16 v10, p1

    move-wide/from16 v14, p2

    move-object/from16 v9, v21

    const-wide/16 v12, 0x1

    .line 2841
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object/from16 v26, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v7, 0x0

    .line 2843
    :goto_8
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_7

    mul-long v0, v7, v16

    add-long v5, v0, v12

    move-object/from16 v9, v26

    .line 2846
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 2847
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v12, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    mul-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-virtual {v9, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2848
    invoke-virtual {v9, v5, v6, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    move-wide v12, v1

    goto :goto_8

    :cond_7
    move-object/from16 v9, v26

    .line 2852
    :goto_9
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object v12, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 2854
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    rem-long v0, v0, v16

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 2855
    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v14, v2

    .line 2856
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v6, v2

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v10, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v5, v2

    .line 2857
    :goto_a
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v0, v0, v16

    cmp-long v0, v5, v0

    if-gez v0, :cond_a

    mul-long v0, v5, v16

    add-long v7, v0, v2

    add-long v2, v14, v0

    .line 2860
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v9, v13

    add-float/2addr v4, v9

    invoke-virtual {v10, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v14, v7

    .line 2861
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    invoke-virtual {v10, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    move-wide v2, v7

    goto :goto_a

    :cond_8
    const-wide/16 v7, 0x1

    .line 2864
    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v14, v7

    .line 2865
    iget-object v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v3, v7

    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v10, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v5, v7

    .line 2866
    :goto_b
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long v2, v0, v7

    div-long v2, v2, v16

    cmp-long v2, v5, v2

    if-gez v2, :cond_9

    mul-long v0, v5, v16

    add-long v2, v0, v7

    add-long v7, v14, v0

    .line 2869
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v9, v13

    add-float/2addr v4, v9

    invoke-virtual {v10, v7, v8, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v7, v14, v2

    .line 2870
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    invoke-virtual {v10, v7, v8, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v5, v2

    move-wide v7, v2

    goto :goto_b

    :cond_9
    move-wide v2, v7

    add-long v4, v14, v0

    sub-long/2addr v4, v2

    .line 2872
    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v6, v2

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {v10, v4, v5, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :cond_a
    return-void
.end method

.method private bluestein_real_forward([FI)V
    .locals 18

    move-object/from16 v8, p0

    .line 2659
    const-class v9, Lorg/jtransforms/fft/FloatFFT_1D;

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    const/4 v10, 0x2

    mul-int/2addr v0, v10

    new-array v11, v0, [F

    .line 2660
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-le v0, v13, :cond_5

    .line 2661
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v1, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2663
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v10

    .line 2666
    :goto_0
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 2667
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v14

    move v7, v12

    :goto_1
    if-ge v7, v14, :cond_2

    mul-int v3, v7, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v7, v1, :cond_1

    .line 2670
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v1, v3, v0

    :goto_2
    move v4, v1

    .line 2671
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_1D$17;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v5, p2

    move-object v6, v11

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D$17;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;III[F[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v7, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 2686
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2690
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2688
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2693
    :goto_3
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    .line 2695
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int/2addr v0, v14

    move v1, v12

    :goto_4
    if-ge v1, v14, :cond_4

    mul-int v2, v1, v0

    add-int/lit8 v3, v14, -0x1

    if-ne v1, v3, :cond_3

    .line 2698
    iget v3, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_3
    add-int v3, v2, v0

    .line 2699
    :goto_5
    new-instance v4, Lorg/jtransforms/fft/FloatFFT_1D$18;

    invoke-direct {v4, v8, v2, v3, v11}, Lorg/jtransforms/fft/FloatFFT_1D$18;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;II[F)V

    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2714
    :cond_4
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2718
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2716
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_5
    move v0, v12

    .line 2723
    :goto_6
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    .line 2727
    aget v4, p1, v3

    iget-object v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v5, v1

    mul-float/2addr v4, v6

    aput v4, v11, v1

    .line 2728
    aget v1, p1, v3

    neg-float v1, v1

    aget v3, v5, v2

    mul-float/2addr v1, v3

    aput v1, v11, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2731
    :cond_6
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    move v0, v12

    .line 2733
    :goto_7
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2736
    aget v3, v11, v1

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v5, v4, v2

    mul-float v6, v3, v5

    aget v7, v11, v2

    aget v4, v4, v1

    mul-float v9, v7, v4

    add-float/2addr v6, v9

    mul-float/2addr v3, v4

    mul-float/2addr v7, v5

    sub-float/2addr v3, v7

    .line 2737
    aput v3, v11, v1

    .line 2738
    aput v6, v11, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2742
    :cond_7
    :goto_8
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 2744
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    .line 2745
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v1, v12

    aget v3, v11, v12

    mul-float/2addr v2, v3

    aget v3, v1, v13

    aget v4, v11, v13

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 2746
    aget v3, v1, v0

    aget v4, v11, v0

    mul-float/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    add-int/2addr v0, v13

    aget v0, v11, v0

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    aput v3, p1, v2

    .line 2747
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v10

    if-ge v13, v0, :cond_a

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    .line 2750
    iget-object v3, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v3, v0

    aget v5, v11, v0

    mul-float/2addr v4, v5

    aget v5, v3, v1

    aget v6, v11, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, p1, v2

    add-int v2, p2, v1

    .line 2751
    aget v4, v3, v1

    neg-float v4, v4

    aget v5, v11, v0

    mul-float/2addr v4, v5

    aget v0, v3, v0

    aget v1, v11, v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    aput v4, p1, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 2754
    :cond_8
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v1, v12

    aget v3, v11, v12

    mul-float/2addr v2, v3

    aget v3, v1, v13

    aget v4, v11, v13

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 2755
    aget v3, v1, v0

    neg-float v3, v3

    add-int/lit8 v4, v0, -0x1

    aget v4, v11, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    aget v0, v11, v0

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    aput v3, p1, v2

    move v0, v13

    .line 2756
    :goto_a
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v2, v1, -0x1

    div-int/2addr v2, v10

    if-ge v0, v2, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    .line 2759
    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v4, v1

    aget v6, v11, v1

    mul-float/2addr v5, v6

    aget v6, v4, v2

    aget v7, v11, v2

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, p1, v3

    add-int v3, p2, v2

    .line 2760
    aget v5, v4, v2

    neg-float v5, v5

    aget v6, v11, v1

    mul-float/2addr v5, v6

    aget v1, v4, v1

    aget v2, v11, v2

    mul-float/2addr v1, v2

    add-float/2addr v5, v1

    aput v5, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    add-int v0, p2, v1

    sub-int/2addr v0, v13

    .line 2762
    iget-object v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    add-int/lit8 v4, v1, -0x1

    aget v4, v11, v4

    mul-float/2addr v3, v4

    aget v2, v2, v1

    aget v1, v11, v1

    mul-float/2addr v2, v1

    add-float/2addr v3, v2

    aput v3, p1, v0

    :cond_a
    return-void
.end method

.method private bluestein_real_full(Lpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 26

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 2481
    const-class v15, Lorg/jtransforms/fft/FloatFFT_1D;

    new-instance v12, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    invoke-direct {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 2482
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 2483
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2485
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v11, v1

    .line 2488
    new-array v9, v11, [Ljava/util/concurrent/Future;

    .line 2489
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    int-to-long v7, v11

    div-long v18, v0, v7

    const/16 v20, 0x0

    move/from16 v0, v20

    :goto_1
    if-ge v0, v11, :cond_2

    int-to-long v1, v0

    mul-long v5, v1, v18

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_1

    .line 2492
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    goto :goto_2

    :cond_1
    add-long v1, v5, v18

    :goto_2
    move-wide/from16 v21, v1

    .line 2493
    new-instance v23, Lorg/jtransforms/fft/FloatFFT_1D$14;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    move-wide/from16 v24, v7

    move-wide/from16 v7, v21

    move-object/from16 v21, v9

    move-wide/from16 v9, p2

    move v14, v11

    move-object v11, v12

    move-object/from16 v22, v12

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D$14;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v23 .. v23}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    move v11, v14

    move-object/from16 v9, v21

    move-object/from16 v12, v22

    move-wide/from16 v7, v24

    move-object/from16 v14, p1

    goto :goto_1

    :cond_2
    move-wide/from16 v24, v7

    move-object/from16 v21, v9

    move v14, v11

    move-object/from16 v22, v12

    const/4 v12, 0x0

    .line 2518
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2522
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2520
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2525
    :goto_3
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v13, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object/from16 v3, v22

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 2527
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    div-long v10, v0, v24

    move/from16 v0, v20

    :goto_4
    if-ge v0, v14, :cond_4

    int-to-long v1, v0

    mul-long v5, v1, v10

    add-int/lit8 v1, v14, -0x1

    if-ne v0, v1, :cond_3

    .line 2530
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    goto :goto_5

    :cond_3
    add-long v1, v5, v10

    :goto_5
    move-wide v7, v1

    .line 2531
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_1D$15;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_1D$15;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2556
    :cond_4
    :try_start_1
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2560
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2558
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2563
    :goto_6
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v13, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object/from16 v3, v22

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 2565
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v16, v0, v24

    move/from16 v0, v20

    :goto_7
    if-ge v0, v14, :cond_6

    int-to-long v1, v0

    mul-long v5, v1, v16

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_5

    .line 2568
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    goto :goto_8

    :cond_5
    add-long v1, v5, v16

    :goto_8
    move-wide v7, v1

    .line 2569
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_1D$16;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v19, v14

    move-object v14, v12

    move-object/from16 v12, v22

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D$16;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    move-object v12, v14

    move/from16 v14, v19

    goto :goto_7

    :cond_6
    move-object v14, v12

    .line 2592
    :try_start_2
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_10

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2596
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2594
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_7
    move-object/from16 v22, v12

    const-wide/16 v10, 0x0

    cmp-long v0, p4, v10

    const-wide/16 v14, 0x1

    if-lez v0, :cond_9

    move-wide v1, v10

    .line 2600
    :goto_9
    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_8

    mul-long v3, v1, v16

    add-long v5, v3, v14

    add-long v7, p2, v1

    move-object/from16 v12, p1

    .line 2604
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    iget-object v10, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    mul-float/2addr v9, v10

    move-object/from16 v10, v22

    invoke-virtual {v10, v3, v4, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2605
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v10, v5, v6, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v14

    const-wide/16 v10, 0x0

    goto :goto_9

    :cond_8
    move-object/from16 v12, p1

    move-object/from16 v10, v22

    goto :goto_b

    :cond_9
    move-object/from16 v12, p1

    move-object/from16 v10, v22

    const-wide/16 v1, 0x0

    .line 2608
    :goto_a
    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_a

    mul-long v3, v1, v16

    add-long v5, v3, v14

    add-long v7, p2, v1

    .line 2612
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    iget-object v11, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    mul-float/2addr v9, v11

    invoke-virtual {v10, v3, v4, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2613
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    neg-float v3, v3

    iget-object v4, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v10, v5, v6, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v14

    goto :goto_a

    .line 2617
    :cond_a
    :goto_b
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v1, v16

    iget-object v6, v13, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v10

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    if-lez v0, :cond_b

    const-wide/16 v1, 0x0

    .line 2620
    :goto_c
    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_c

    mul-long v3, v1, v16

    add-long v5, v3, v14

    .line 2623
    invoke-virtual {v10, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    neg-float v7, v7

    iget-object v8, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v10, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    iget-object v9, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 2624
    invoke-virtual {v10, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    iget-object v9, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v10, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    iget-object v11, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    invoke-virtual {v10, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2625
    invoke-virtual {v10, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v14

    goto :goto_c

    :cond_b
    const-wide/16 v1, 0x0

    .line 2628
    :goto_d
    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_c

    mul-long v3, v1, v16

    add-long v5, v3, v14

    .line 2631
    invoke-virtual {v10, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v10, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    iget-object v9, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 2632
    invoke-virtual {v10, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    iget-object v9, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v10, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    iget-object v11, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    mul-float/2addr v9, v11

    sub-float/2addr v8, v9

    invoke-virtual {v10, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2633
    invoke-virtual {v10, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v14

    goto :goto_d

    .line 2637
    :cond_c
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v1, v16

    iget-object v6, v13, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v10

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    if-lez v0, :cond_d

    const-wide/16 v18, 0x0

    .line 2640
    :goto_e
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v0, v18, v0

    if-gez v0, :cond_e

    mul-long v0, v18, v16

    add-long v2, v0, v14

    add-long v4, p2, v0

    .line 2643
    iget-object v6, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v12, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, p2, v2

    .line 2644
    iget-object v6, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v6, v0

    invoke-virtual {v12, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v18, v18, v14

    goto :goto_e

    :cond_d
    const-wide/16 v18, 0x0

    .line 2647
    :goto_f
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v0, v18, v0

    if-gez v0, :cond_e

    mul-long v0, v18, v16

    add-long v2, v0, v14

    add-long v4, p2, v0

    .line 2650
    iget-object v6, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v12, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, p2, v2

    .line 2651
    iget-object v6, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v13, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v6, v0

    invoke-virtual {v12, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v18, v18, v14

    goto :goto_f

    :cond_e
    :goto_10
    return-void
.end method

.method private bluestein_real_full([FII)V
    .locals 18

    move-object/from16 v9, p0

    .line 2303
    const-class v10, Lorg/jtransforms/fft/FloatFFT_1D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    const/4 v11, 0x2

    mul-int/2addr v0, v11

    new-array v12, v0, [F

    .line 2304
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    const/4 v13, 0x0

    if-le v0, v1, :cond_7

    .line 2305
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v1, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2307
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v11

    .line 2310
    :goto_0
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 2311
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v14

    move v8, v13

    :goto_1
    if-ge v8, v14, :cond_2

    mul-int v4, v8, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v8, v1, :cond_1

    .line 2314
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v1, v4, v0

    :goto_2
    move v5, v1

    .line 2315
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_1D$11;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v17, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D$11;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;IIII[F[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v8, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 2340
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2344
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2342
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2347
    :goto_3
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    .line 2349
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int/2addr v0, v14

    move v7, v13

    :goto_4
    if-ge v7, v14, :cond_4

    mul-int v4, v7, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v7, v1, :cond_3

    .line 2352
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_3
    add-int v1, v4, v0

    :goto_5
    move v5, v1

    .line 2353
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_1D$12;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_1D$12;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;III[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2378
    :cond_4
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2382
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2380
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2385
    :goto_6
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 2387
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v14

    :goto_7
    if-ge v13, v14, :cond_6

    mul-int v4, v13, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_5

    .line 2390
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    goto :goto_8

    :cond_5
    add-int v1, v4, v0

    :goto_8
    move v5, v1

    .line 2391
    new-instance v11, Lorg/jtransforms/fft/FloatFFT_1D$13;

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v16, v14

    move-object v14, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D$13;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;III[FI[F)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    move-object v8, v14

    move/from16 v14, v16

    goto :goto_7

    :cond_6
    move-object v14, v8

    .line 2414
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_f

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2418
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2416
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :cond_7
    if-lez p3, :cond_8

    move v0, v13

    .line 2422
    :goto_9
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    .line 2426
    aget v4, p1, v3

    iget-object v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v5, v1

    mul-float/2addr v4, v6

    aput v4, v12, v1

    .line 2427
    aget v1, p1, v3

    aget v3, v5, v2

    mul-float/2addr v1, v3

    aput v1, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v13

    .line 2430
    :goto_a
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    .line 2434
    aget v4, p1, v3

    iget-object v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v5, v1

    mul-float/2addr v4, v6

    aput v4, v12, v1

    .line 2435
    aget v1, p1, v3

    neg-float v1, v1

    aget v3, v5, v2

    mul-float/2addr v1, v3

    aput v1, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2439
    :cond_9
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    if-lez p3, :cond_a

    move v0, v13

    .line 2442
    :goto_b
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2445
    aget v3, v12, v1

    neg-float v4, v3

    iget-object v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v5, v2

    mul-float/2addr v4, v6

    aget v7, v12, v2

    aget v5, v5, v1

    mul-float v8, v7, v5

    add-float/2addr v4, v8

    mul-float/2addr v3, v5

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 2446
    aput v3, v12, v1

    .line 2447
    aput v4, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v13

    .line 2450
    :goto_c
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2453
    aget v3, v12, v1

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v5, v4, v2

    mul-float v6, v3, v5

    aget v7, v12, v2

    aget v4, v4, v1

    mul-float v8, v7, v4

    add-float/2addr v6, v8

    mul-float/2addr v3, v4

    mul-float/2addr v7, v5

    sub-float/2addr v3, v7

    .line 2454
    aput v3, v12, v1

    .line 2455
    aput v6, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2459
    :cond_b
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    if-lez p3, :cond_c

    .line 2462
    :goto_d
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v13, v0, :cond_d

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    .line 2465
    iget-object v3, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v3, v0

    aget v5, v12, v0

    mul-float/2addr v4, v5

    aget v5, v3, v1

    aget v6, v12, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, p1, v2

    add-int v2, p2, v1

    .line 2466
    aget v4, v3, v1

    aget v5, v12, v0

    mul-float/2addr v4, v5

    aget v0, v3, v0

    aget v1, v12, v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    aput v4, p1, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 2469
    :cond_c
    :goto_e
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v13, v0, :cond_d

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    .line 2472
    iget-object v3, v9, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v3, v0

    aget v5, v12, v0

    mul-float/2addr v4, v5

    aget v5, v3, v1

    aget v6, v12, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, p1, v2

    add-int v2, p2, v1

    .line 2473
    aget v4, v3, v1

    neg-float v4, v4

    aget v5, v12, v0

    mul-float/2addr v4, v5

    aget v0, v3, v0

    aget v1, v12, v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    aput v4, p1, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_d
    :goto_f
    return-void
.end method

.method private bluestein_real_inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 3017
    const-class v13, Lorg/jtransforms/fft/FloatFFT_1D;

    new-instance v14, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    const-wide/16 v15, 0x2

    mul-long/2addr v0, v15

    invoke-direct {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 3018
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    rem-long/2addr v0, v15

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    const-wide/16 v7, 0x1

    if-nez v0, :cond_2

    .line 3019
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v14, v9, v10, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3020
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v14, v7, v8, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v0, v7

    .line 3022
    :goto_0
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v4, v2, v15

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    mul-long v2, v0, v15

    add-long v4, v2, v7

    add-long v9, p2, v2

    add-long v7, p2, v4

    .line 3027
    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    iget-object v15, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    mul-float/2addr v6, v15

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    move-object/from16 v16, v13

    iget-object v13, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v15, v13

    sub-float/2addr v6, v15

    invoke-virtual {v14, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3028
    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v6, v9

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v14, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    move-wide v7, v4

    move-object/from16 v13, v16

    const-wide/16 v9, 0x0

    const-wide/16 v15, 0x2

    goto :goto_0

    :cond_0
    move-wide v4, v7

    move-object/from16 v16, v13

    add-long v0, p2, v4

    .line 3031
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    iget-object v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v8, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v14, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3032
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v2, v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v14, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3034
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, v4

    :goto_1
    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v8, v0, v6

    if-gez v8, :cond_1

    mul-long v8, v0, v2

    move-wide/from16 v22, v0

    add-long v0, v8, v4

    mul-long/2addr v6, v2

    add-long v2, p2, v6

    sub-long/2addr v2, v8

    add-long v6, v2, v4

    .line 3039
    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    iget-object v10, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    invoke-virtual {v14, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3040
    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v14, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v0, 0x1

    add-long v2, v22, v0

    move-wide v4, v0

    move-wide v0, v2

    const-wide/16 v2, 0x2

    goto :goto_1

    :cond_1
    move-wide v7, v4

    goto/16 :goto_4

    :cond_2
    move-wide v0, v7

    move-object/from16 v16, v13

    .line 3044
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v14, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3045
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v14, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v2, v0

    .line 3047
    :goto_2
    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long v6, v4, v0

    const-wide/16 v17, 0x2

    div-long v6, v6, v17

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    mul-long v4, v2, v17

    add-long v7, v4, v0

    add-long v0, p2, v4

    add-long v9, p2, v7

    .line 3052
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    iget-object v13, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v6, v13

    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    iget-object v15, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v15, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    mul-float/2addr v13, v15

    sub-float/2addr v6, v13

    invoke-virtual {v14, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3053
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {v14, v7, v8, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    const-wide/16 v9, 0x0

    goto :goto_2

    :cond_3
    sub-long v2, v4, v0

    add-long v4, p2, v4

    sub-long/2addr v4, v0

    .line 3056
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v4, v5

    add-long v5, p2, v0

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    invoke-virtual {v14, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3057
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long v7, p2, v2

    sub-long/2addr v7, v0

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v8, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v4, v7

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v9, v0

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    invoke-virtual {v14, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3059
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long v7, v2, v0

    add-long v2, p2, v2

    sub-long/2addr v2, v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v9, v0

    invoke-virtual {v3, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    mul-float/2addr v2, v0

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v9, 0x2

    add-long/2addr v3, v9

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-virtual {v14, v7, v8, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3060
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long v2, v0, v9

    add-long v0, p2, v0

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    invoke-virtual {v14, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3062
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v0, v7

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, v2

    :goto_3
    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_4

    mul-long v9, v0, v2

    move-wide/from16 v22, v0

    add-long v0, v9, v7

    mul-long/2addr v4, v2

    add-long v2, p2, v4

    sub-long/2addr v2, v9

    add-long v4, v2, v7

    .line 3067
    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    iget-object v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v14, v9, v10, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3068
    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v14, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v7, 0x1

    add-long v0, v22, v7

    const-wide/16 v2, 0x2

    goto :goto_3

    .line 3072
    :cond_4
    :goto_4
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v13, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-wide v1, v0

    move-object v3, v14

    move-wide/from16 v19, v7

    move-wide v7, v9

    const-wide/16 v17, 0x0

    move-object v9, v13

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 3074
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 3075
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    .line 3077
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x2

    :goto_5
    move v13, v1

    .line 3080
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 3081
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    int-to-long v9, v13

    div-long v17, v0, v9

    const/16 v19, 0x0

    move/from16 v0, v19

    :goto_6
    if-ge v0, v13, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_6

    .line 3084
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    goto :goto_7

    :cond_6
    add-long v1, v3, v17

    :goto_7
    move-wide v5, v1

    .line 3085
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_1D$23;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D$23;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    .line 3100
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3104
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 3102
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3107
    :goto_8
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    const-wide/16 v2, 0x2

    mul-long v1, v0, v2

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v17, 0x0

    move-object v3, v14

    move-wide/from16 v20, v4

    move-wide/from16 v4, v17

    move-wide/from16 v7, v20

    move-wide/from16 v17, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 3109
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v17, v0, v17

    move/from16 v0, v19

    :goto_9
    if-ge v0, v13, :cond_9

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_8

    .line 3112
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    goto :goto_a

    :cond_8
    add-long v1, v3, v17

    :goto_a
    move-wide v5, v1

    .line 3113
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_1D$24;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_1D$24;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3126
    :cond_9
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 3130
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    move-object v1, v0

    .line 3128
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :cond_a
    move-wide/from16 v9, v17

    .line 3135
    :goto_b
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    cmp-long v2, v9, v0

    if-gez v2, :cond_b

    const-wide/16 v2, 0x2

    mul-long v0, v9, v2

    add-long v7, v0, v19

    .line 3138
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 3139
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v14, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3140
    invoke-virtual {v14, v7, v8, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v9, v19

    goto :goto_b

    :cond_b
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 3143
    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-wide v1, v0

    move-object v3, v14

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    move-wide/from16 v9, v17

    .line 3145
    :goto_c
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v0, v9, v0

    if-gez v0, :cond_c

    const-wide/16 v1, 0x2

    mul-long v3, v9, v1

    add-long v7, v3, v19

    add-long v5, p2, v9

    .line 3148
    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v0, v3

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    invoke-virtual {v12, v5, v6, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v9, v19

    goto :goto_c

    :cond_c
    :goto_d
    return-void
.end method

.method private bluestein_real_inverse([FI)V
    .locals 16

    move-object/from16 v8, p0

    .line 2879
    const-class v9, Lorg/jtransforms/fft/FloatFFT_1D;

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    new-array v10, v0, [F

    .line 2880
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/2addr v0, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_1

    .line 2881
    aget v0, p1, p2

    iget-object v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v3, v2, v11

    mul-float/2addr v0, v3

    aput v0, v10, v11

    .line 2882
    aget v0, p1, p2

    aget v2, v2, v12

    mul-float/2addr v0, v2

    aput v0, v10, v12

    move v0, v12

    .line 2884
    :goto_0
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    .line 2889
    aget v6, p1, v4

    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v13, v7, v2

    mul-float/2addr v6, v13

    aget v13, p1, v5

    aget v14, v7, v3

    mul-float/2addr v13, v14

    sub-float/2addr v6, v13

    aput v6, v10, v2

    .line 2890
    aget v4, p1, v4

    aget v6, v7, v3

    mul-float/2addr v4, v6

    aget v5, p1, v5

    aget v2, v7, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, v10, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 2893
    aget v3, p1, v0

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v4, v2

    mul-float/2addr v3, v5

    aput v3, v10, v2

    add-int/lit8 v3, v2, 0x1

    .line 2894
    aget v0, p1, v0

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    mul-float/2addr v0, v4

    aput v0, v10, v3

    .line 2896
    div-int/2addr v2, v1

    add-int/2addr v2, v12

    :goto_1
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int v0, p2, v0

    sub-int/2addr v0, v3

    add-int/lit8 v5, v0, 0x1

    .line 2901
    aget v6, p1, v0

    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v13, v7, v3

    mul-float/2addr v6, v13

    aget v13, p1, v5

    aget v14, v7, v4

    mul-float/2addr v13, v14

    add-float/2addr v6, v13

    aput v6, v10, v3

    .line 2902
    aget v0, p1, v0

    aget v6, v7, v4

    mul-float/2addr v0, v6

    aget v5, p1, v5

    aget v3, v7, v3

    mul-float/2addr v5, v3

    sub-float/2addr v0, v5

    aput v0, v10, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2906
    :cond_1
    aget v0, p1, p2

    iget-object v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v3, v2, v11

    mul-float/2addr v0, v3

    aput v0, v10, v11

    .line 2907
    aget v0, p1, p2

    aget v2, v2, v12

    mul-float/2addr v0, v2

    aput v0, v10, v12

    move v0, v12

    .line 2909
    :goto_2
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v3, v2, -0x1

    div-int/2addr v3, v1

    if-ge v0, v3, :cond_2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    .line 2914
    aget v6, p1, v4

    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v13, v7, v2

    mul-float/2addr v6, v13

    aget v13, p1, v5

    aget v14, v7, v3

    mul-float/2addr v13, v14

    sub-float/2addr v6, v13

    aput v6, v10, v2

    .line 2915
    aget v4, p1, v4

    aget v6, v7, v3

    mul-float/2addr v4, v6

    aget v5, p1, v5

    aget v2, v7, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, v10, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, -0x1

    add-int v3, p2, v2

    sub-int/2addr v3, v12

    .line 2918
    aget v3, p1, v3

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    add-int/lit8 v5, v2, -0x1

    aget v5, v4, v5

    mul-float/2addr v3, v5

    add-int/lit8 v5, p2, 0x1

    aget v6, p1, v5

    aget v7, v4, v2

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    aput v3, v10, v0

    add-int v0, p2, v2

    sub-int/2addr v0, v12

    .line 2919
    aget v0, p1, v0

    aget v3, v4, v2

    mul-float/2addr v0, v3

    aget v3, p1, v5

    add-int/lit8 v6, v2, -0x1

    aget v6, v4, v6

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    aput v0, v10, v2

    add-int/lit8 v0, v2, 0x1

    add-int v3, p2, v2

    sub-int/2addr v3, v12

    .line 2921
    aget v3, p1, v3

    add-int/lit8 v6, v2, 0x1

    aget v6, v4, v6

    mul-float/2addr v3, v6

    aget v6, p1, v5

    add-int/lit8 v7, v2, 0x2

    aget v7, v4, v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    aput v3, v10, v0

    add-int/lit8 v0, v2, 0x2

    add-int v3, p2, v2

    sub-int/2addr v3, v12

    .line 2922
    aget v3, p1, v3

    add-int/lit8 v6, v2, 0x2

    aget v6, v4, v6

    mul-float/2addr v3, v6

    aget v5, p1, v5

    add-int/lit8 v6, v2, 0x1

    aget v4, v4, v6

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    aput v3, v10, v0

    sub-int/2addr v2, v12

    .line 2924
    div-int/2addr v2, v1

    add-int/2addr v2, v1

    :goto_3
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int v0, p2, v0

    sub-int/2addr v0, v3

    add-int/lit8 v5, v0, 0x1

    .line 2929
    aget v6, p1, v0

    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v13, v7, v3

    mul-float/2addr v6, v13

    aget v13, p1, v5

    aget v14, v7, v4

    mul-float/2addr v13, v14

    add-float/2addr v6, v13

    aput v6, v10, v3

    .line 2930
    aget v0, p1, v0

    aget v6, v7, v4

    mul-float/2addr v0, v6

    aget v5, p1, v5

    aget v3, v7, v3

    mul-float/2addr v5, v3

    sub-float/2addr v0, v5

    aput v0, v10, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2934
    :cond_3
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v0, 0x2

    iget-object v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v4, 0x0

    move-object v3, v10

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    .line 2936
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v12, :cond_9

    .line 2937
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v2, v2

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    const/4 v2, 0x4

    if-lt v0, v2, :cond_4

    .line 2939
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v3, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    move v12, v2

    goto :goto_4

    :cond_4
    move v12, v1

    .line 2942
    :goto_4
    new-array v13, v12, [Ljava/util/concurrent/Future;

    .line 2943
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int/2addr v0, v12

    move v2, v11

    :goto_5
    if-ge v2, v12, :cond_6

    mul-int v3, v2, v0

    add-int/lit8 v4, v12, -0x1

    if-ne v2, v4, :cond_5

    .line 2946
    iget v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    goto :goto_6

    :cond_5
    add-int v4, v3, v0

    .line 2947
    :goto_6
    new-instance v5, Lorg/jtransforms/fft/FloatFFT_1D$21;

    invoke-direct {v5, v8, v3, v4, v10}, Lorg/jtransforms/fft/FloatFFT_1D$21;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;II[F)V

    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    .line 2962
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2966
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v14, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 2964
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v14, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2969
    :goto_7
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v0, 0x2

    iget-object v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v4, 0x0

    move-object v3, v10

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 2971
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v12

    :goto_8
    if-ge v11, v12, :cond_8

    mul-int v3, v11, v0

    add-int/lit8 v1, v12, -0x1

    if-ne v11, v1, :cond_7

    .line 2974
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    goto :goto_9

    :cond_7
    add-int v1, v3, v0

    :goto_9
    move v4, v1

    .line 2975
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_1D$22;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D$22;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;II[FI[F)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 2988
    :cond_8
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2992
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2990
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_9
    move v0, v11

    .line 2997
    :goto_a
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v2, :cond_a

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 3000
    aget v4, v10, v2

    neg-float v5, v4

    iget-object v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v7, v6, v3

    mul-float/2addr v5, v7

    aget v9, v10, v3

    aget v6, v6, v2

    mul-float v12, v9, v6

    add-float/2addr v5, v12

    mul-float/2addr v4, v6

    mul-float/2addr v9, v7

    add-float/2addr v4, v9

    .line 3001
    aput v4, v10, v2

    .line 3002
    aput v5, v10, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    mul-int/2addr v2, v1

    .line 3005
    iget-object v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v4, 0x0

    move-object v3, v10

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 3007
    :goto_b
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v11, v0, :cond_b

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v11

    .line 3010
    iget-object v3, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v3, v0

    aget v0, v10, v0

    mul-float/2addr v4, v0

    aget v0, v3, v1

    aget v1, v10, v1

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    aput v4, p1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_b
    :goto_c
    return-void
.end method

.method private bluestein_real_inverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 27

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    .line 3264
    const-class v15, Lorg/jtransforms/fft/FloatFFT_1D;

    new-instance v10, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    invoke-direct {v10, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 3265
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x1

    if-le v0, v1, :cond_5

    .line 3266
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 3268
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v18

    cmp-long v0, v2, v18

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v9, v1

    .line 3271
    new-array v3, v9, [Ljava/util/concurrent/Future;

    .line 3272
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    int-to-long v12, v9

    div-long v18, v0, v12

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_2

    int-to-long v1, v0

    mul-long v20, v1, v18

    add-int/lit8 v1, v9, -0x1

    if-ne v0, v1, :cond_1

    .line 3275
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    goto :goto_2

    :cond_1
    add-long v1, v20, v18

    :goto_2
    move-wide/from16 v22, v1

    .line 3276
    new-instance v24, Lorg/jtransforms/fft/FloatFFT_1D$27;

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v25, v3

    move-wide/from16 v3, v20

    move-wide/from16 v5, v22

    move-wide/from16 v7, p2

    move v14, v9

    move-object v9, v10

    move-object/from16 v21, v10

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_1D$27;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    move v9, v14

    move-object/from16 v10, v21

    move-object/from16 v3, v25

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v25, v3

    move v14, v9

    move-object/from16 v21, v10

    const/4 v10, 0x0

    .line 3291
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3295
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 3293
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3298
    :goto_3
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object/from16 v3, v21

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 3300
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    div-long v8, v0, v12

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v14, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v8

    add-int/lit8 v1, v14, -0x1

    if-ne v0, v1, :cond_3

    .line 3303
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    goto :goto_5

    :cond_3
    add-long v1, v3, v8

    :goto_5
    move-wide v5, v1

    .line 3304
    new-instance v12, Lorg/jtransforms/fft/FloatFFT_1D$28;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D$28;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3319
    :cond_4
    :try_start_1
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 3323
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 3321
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move-object/from16 v10, p1

    move-wide/from16 v14, p2

    move-object/from16 v9, v21

    goto/16 :goto_9

    :cond_5
    move-object/from16 v21, v10

    const-wide/16 v7, 0x0

    .line 3328
    :goto_7
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_6

    mul-long v0, v7, v16

    const-wide/16 v12, 0x1

    add-long v5, v0, v12

    move-wide/from16 v14, p2

    add-long v2, v14, v7

    move-object/from16 v10, p1

    .line 3332
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    move-object/from16 v9, v21

    invoke-virtual {v9, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3333
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v9, v5, v6, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v7, v12

    goto :goto_7

    :cond_6
    move-object/from16 v10, p1

    move-wide/from16 v14, p2

    move-object/from16 v9, v21

    const-wide/16 v12, 0x1

    .line 3336
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object/from16 v26, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v7, 0x0

    .line 3338
    :goto_8
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_7

    mul-long v0, v7, v16

    add-long v5, v0, v12

    move-object/from16 v9, v26

    .line 3341
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 3342
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-object v12, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    mul-float/2addr v4, v12

    add-float/2addr v3, v4

    invoke-virtual {v9, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3343
    invoke-virtual {v9, v5, v6, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    move-wide v12, v1

    goto :goto_8

    :cond_7
    move-object/from16 v9, v26

    .line 3347
    :goto_9
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object v12, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 3349
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    rem-long v0, v0, v16

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 3350
    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v14, v2

    .line 3351
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v6, v2

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v10, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v5, v2

    .line 3352
    :goto_a
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v0, v0, v16

    cmp-long v0, v5, v0

    if-gez v0, :cond_a

    mul-long v0, v5, v16

    add-long v7, v0, v2

    add-long v2, v14, v0

    .line 3355
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v9, v13

    sub-float/2addr v4, v9

    invoke-virtual {v10, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v14, v7

    .line 3356
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    invoke-virtual {v10, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    move-wide v2, v7

    goto :goto_a

    :cond_8
    const-wide/16 v7, 0x1

    .line 3359
    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v14, v7

    .line 3360
    iget-object v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v3, v7

    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v10, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v5, v7

    .line 3361
    :goto_b
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long v2, v0, v7

    div-long v2, v2, v16

    cmp-long v2, v5, v2

    if-gez v2, :cond_9

    mul-long v0, v5, v16

    add-long v2, v0, v7

    add-long v7, v14, v0

    .line 3364
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v9, v13

    sub-float/2addr v4, v9

    invoke-virtual {v10, v7, v8, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v7, v14, v2

    .line 3365
    iget-object v4, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v4, v9

    iget-object v9, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    invoke-virtual {v10, v7, v8, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v5, v2

    move-wide v7, v2

    goto :goto_b

    :cond_9
    move-wide v2, v7

    add-long v4, v14, v0

    sub-long/2addr v4, v2

    .line 3367
    iget-object v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long/2addr v6, v2

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {v10, v4, v5, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :cond_a
    return-void
.end method

.method private bluestein_real_inverse2([FI)V
    .locals 18

    move-object/from16 v8, p0

    .line 3155
    const-class v9, Lorg/jtransforms/fft/FloatFFT_1D;

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    const/4 v10, 0x2

    mul-int/2addr v0, v10

    new-array v11, v0, [F

    .line 3156
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-le v0, v13, :cond_5

    .line 3157
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v1, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 3159
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v10

    .line 3162
    :goto_0
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 3163
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v14

    move v7, v12

    :goto_1
    if-ge v7, v14, :cond_2

    mul-int v3, v7, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v7, v1, :cond_1

    .line 3166
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v1, v3, v0

    :goto_2
    move v4, v1

    .line 3167
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_1D$25;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v5, p2

    move-object v6, v11

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D$25;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;III[F[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v7, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 3182
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3186
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 3184
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3189
    :goto_3
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    .line 3191
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int/2addr v0, v14

    move v1, v12

    :goto_4
    if-ge v1, v14, :cond_4

    mul-int v2, v1, v0

    add-int/lit8 v3, v14, -0x1

    if-ne v1, v3, :cond_3

    .line 3194
    iget v3, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_3
    add-int v3, v2, v0

    .line 3195
    :goto_5
    new-instance v4, Lorg/jtransforms/fft/FloatFFT_1D$26;

    invoke-direct {v4, v8, v2, v3, v11}, Lorg/jtransforms/fft/FloatFFT_1D$26;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;II[F)V

    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3210
    :cond_4
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 3214
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 3212
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_5
    move v0, v12

    .line 3219
    :goto_6
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    .line 3223
    aget v4, p1, v3

    iget-object v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v5, v1

    mul-float/2addr v4, v6

    aput v4, v11, v1

    .line 3224
    aget v1, p1, v3

    aget v3, v5, v2

    mul-float/2addr v1, v3

    aput v1, v11, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3227
    :cond_6
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    move v0, v12

    .line 3229
    :goto_7
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 3232
    aget v3, v11, v1

    neg-float v4, v3

    iget-object v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v5, v2

    mul-float/2addr v4, v6

    aget v7, v11, v2

    aget v5, v5, v1

    mul-float v9, v7, v5

    add-float/2addr v4, v9

    mul-float/2addr v3, v5

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 3233
    aput v3, v11, v1

    .line 3234
    aput v4, v11, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3238
    :cond_7
    :goto_8
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 3240
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    .line 3241
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v1, v12

    aget v3, v11, v12

    mul-float/2addr v2, v3

    aget v3, v1, v13

    aget v4, v11, v13

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 3242
    aget v3, v1, v0

    aget v4, v11, v0

    mul-float/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    add-int/2addr v0, v13

    aget v0, v11, v0

    mul-float/2addr v1, v0

    sub-float/2addr v3, v1

    aput v3, p1, v2

    .line 3243
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v10

    if-ge v13, v0, :cond_a

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    .line 3246
    iget-object v3, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v3, v0

    aget v5, v11, v0

    mul-float/2addr v4, v5

    aget v5, v3, v1

    aget v6, v11, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, p1, v2

    add-int v2, p2, v1

    .line 3247
    aget v4, v3, v1

    aget v5, v11, v0

    mul-float/2addr v4, v5

    aget v0, v3, v0

    aget v1, v11, v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    aput v4, p1, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 3250
    :cond_8
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v1, v12

    aget v3, v11, v12

    mul-float/2addr v2, v3

    aget v3, v1, v13

    aget v4, v11, v13

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 3251
    aget v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, v11, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    aget v0, v11, v0

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    aput v3, p1, v2

    move v0, v13

    .line 3252
    :goto_a
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v2, v1, -0x1

    div-int/2addr v2, v10

    if-ge v0, v2, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    .line 3255
    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v4, v1

    aget v6, v11, v1

    mul-float/2addr v5, v6

    aget v6, v4, v2

    aget v7, v11, v2

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, p1, v3

    add-int v3, p2, v2

    .line 3256
    aget v5, v4, v2

    aget v6, v11, v1

    mul-float/2addr v5, v6

    aget v1, v4, v1

    aget v2, v11, v2

    mul-float/2addr v1, v2

    add-float/2addr v5, v1

    aput v5, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    add-int v0, p2, v1

    sub-int/2addr v0, v13

    .line 3258
    iget-object v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    add-int/lit8 v4, v1, -0x1

    aget v4, v11, v4

    mul-float/2addr v3, v4

    aget v2, v2, v1

    aget v1, v11, v1

    mul-float/2addr v2, v1

    sub-float/2addr v3, v2

    aput v3, p1, v0

    :cond_a
    return-void
.end method

.method private bluesteini()V
    .locals 13

    .line 1871
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v0, v0

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v0

    .line 1872
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1873
    aput v4, v0, v5

    move v4, v2

    move v0, v5

    .line 1874
    :goto_0
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v6, :cond_1

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v8, v7, -0x1

    add-int/2addr v4, v8

    mul-int/lit8 v8, v6, 0x2

    if-lt v4, v8, :cond_0

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    :cond_0
    int-to-float v6, v4

    mul-float/2addr v6, v1

    .line 1880
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    float-to-double v9, v6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    double-to-float v6, v11

    aput v6, v8, v7

    .line 1881
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    add-int/lit8 v7, v7, 0x1

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1883
    :cond_1
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 1884
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v1, v2

    mul-float/2addr v4, v3

    aput v4, v0, v2

    .line 1885
    aget v1, v1, v5

    mul-float/2addr v1, v3

    aput v1, v0, v5

    const/4 v0, 0x2

    move v1, v0

    .line 1886
    :goto_1
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    .line 1887
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v4, v1

    mul-float/2addr v6, v3

    aput v6, v2, v1

    add-int/lit8 v6, v1, 0x1

    .line 1888
    aget v4, v4, v6

    mul-float/2addr v4, v3

    aput v4, v2, v6

    .line 1889
    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v7, v1

    aget v8, v2, v1

    aput v8, v2, v7

    mul-int/2addr v4, v0

    sub-int/2addr v4, v1

    add-int/2addr v4, v5

    .line 1890
    aget v6, v2, v6

    aput v6, v2, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1892
    :cond_2
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    return-void
.end method

.method private bluesteinil()V
    .locals 22

    move-object/from16 v0, p0

    .line 1899
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v1, v1

    const v2, 0x40490fdb    # (float)Math.PI

    div-float/2addr v2, v1

    .line 1900
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1901
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    invoke-virtual {v1, v7, v8, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const/4 v1, 0x1

    move-wide v9, v3

    :goto_0
    int-to-long v11, v1

    .line 1902
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v6, v11, v13

    const-wide/16 v11, 0x2

    if-gez v6, :cond_1

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v15, v6, -0x1

    int-to-long v7, v15

    add-long/2addr v9, v7

    mul-long v7, v13, v11

    cmp-long v7, v9, v7

    if-ltz v7, :cond_0

    mul-long/2addr v13, v11

    sub-long/2addr v9, v13

    :cond_0
    long-to-float v7, v9

    mul-float/2addr v7, v2

    .line 1908
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    int-to-long v11, v6

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v8, v11, v12, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1909
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v11

    double-to-float v4, v11

    invoke-virtual {v3, v6, v7, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x1

    goto :goto_0

    .line 1911
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    long-to-float v1, v1

    div-float/2addr v5, v1

    .line 1912
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v2, v5

    invoke-virtual {v1, v3, v4, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1913
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v2, v5

    invoke-virtual {v1, v3, v4, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const/4 v1, 0x2

    :goto_1
    int-to-long v2, v1

    .line 1914
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long/2addr v6, v11

    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 1915
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {v4, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1916
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-int/lit8 v6, v1, 0x1

    int-to-long v6, v6

    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v8, v5

    invoke-virtual {v4, v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1917
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long/2addr v8, v11

    sub-long/2addr v8, v2

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v4, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1918
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long/2addr v8, v11

    sub-long/2addr v8, v2

    const-wide/16 v2, 0x1

    add-long/2addr v8, v2

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v4, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1920
    :cond_2
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nBluesteinl:J

    mul-long v13, v1, v11

    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v16, 0x0

    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move-object/from16 v21, v4

    invoke-static/range {v13 .. v21}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    return-void
.end method


# virtual methods
.method cfftf(Lpl/edu/icm/jlargearrays/FloatLargeArray;JI)V
    .locals 46

    move-object/from16 v13, p0

    move/from16 v11, p4

    .line 6720
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v2, 0x2

    mul-long v8, v0, v2

    .line 6724
    new-instance v12, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v12, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const-wide/16 v0, 0x4

    .line 6727
    iget-wide v4, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long v20, v4, v0

    const/16 v22, 0x0

    .line 6728
    filled-new-array/range {v22 .. v22}, [I

    move-result-object v23

    .line 6729
    iget-object v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v24, 0x1

    add-long v4, v20, v24

    invoke-virtual {v0, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-long v6, v0

    const-wide/16 v26, 0x0

    move-wide/from16 v28, v2

    move-wide/from16 v32, v8

    move-wide/from16 v16, v24

    move-wide/from16 v30, v26

    :goto_0
    add-long v0, v6, v24

    cmp-long v0, v28, v0

    if-gtz v0, :cond_a

    .line 6734
    iget-object v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v1, v28, v20

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-int v10, v0

    int-to-long v4, v10

    mul-long v34, v4, v16

    .line 6736
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v0, v0, v34

    add-long v36, v0, v0

    mul-long v38, v36, v16

    const/4 v0, 0x2

    if-eq v10, v0, :cond_8

    const/4 v0, 0x3

    if-eq v10, v0, :cond_6

    const/4 v0, 0x4

    if-eq v10, v0, :cond_4

    const/4 v0, 0x5

    if-eq v10, v0, :cond_2

    cmp-long v0, v30, v26

    if-nez v0, :cond_0

    const-wide/16 v14, 0x0

    int-to-long v0, v11

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v36

    move-wide/from16 v40, v6

    move-wide/from16 v6, v16

    move-wide/from16 v42, v8

    move-wide/from16 v8, v38

    move/from16 v44, v10

    move-object/from16 v10, p1

    move-object/from16 v45, v12

    move-wide/from16 v11, p2

    move-object/from16 v13, v45

    move-wide/from16 v16, v32

    .line 6774
    invoke-virtual/range {v0 .. v19}, Lorg/jtransforms/fft/FloatFFT_1D;->passfg([IJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V

    goto :goto_1

    :cond_0
    move-wide/from16 v40, v6

    move-wide/from16 v42, v8

    move/from16 v44, v10

    move-object/from16 v45, v12

    const-wide/16 v11, 0x0

    move/from16 v14, p4

    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v36

    move-wide/from16 v6, v16

    move-wide/from16 v8, v38

    move-object/from16 v10, v45

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v16, v32

    .line 6776
    invoke-virtual/range {v0 .. v19}, Lorg/jtransforms/fft/FloatFFT_1D;->passfg([IJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V

    .line 6778
    :goto_1
    aget v0, v23, v22

    if-eqz v0, :cond_1

    sub-long v30, v24, v30

    :cond_1
    move/from16 v15, p4

    goto/16 :goto_3

    :cond_2
    move-wide/from16 v40, v6

    move-wide/from16 v42, v8

    move/from16 v44, v10

    move-object/from16 v45, v12

    cmp-long v0, v30, v26

    if-nez v0, :cond_3

    const-wide/16 v9, 0x0

    move/from16 v15, p4

    int-to-long v13, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v16

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v45

    move-wide/from16 v11, v32

    .line 6766
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/FloatFFT_1D;->passf5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V

    goto/16 :goto_2

    :cond_3
    move/from16 v15, p4

    const-wide/16 v6, 0x0

    int-to-long v13, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v16

    move-object/from16 v5, v45

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v32

    .line 6768
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/FloatFFT_1D;->passf5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V

    goto/16 :goto_2

    :cond_4
    move-wide/from16 v40, v6

    move-wide/from16 v42, v8

    move/from16 v44, v10

    move v15, v11

    move-object/from16 v45, v12

    cmp-long v0, v30, v26

    if-nez v0, :cond_5

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v16

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v45

    move-wide/from16 v11, v32

    move/from16 v13, p4

    .line 6742
    invoke-virtual/range {v0 .. v13}, Lorg/jtransforms/fft/FloatFFT_1D;->passf4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJI)V

    goto/16 :goto_2

    :cond_5
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v16

    move-object/from16 v5, v45

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v32

    move/from16 v13, p4

    .line 6744
    invoke-virtual/range {v0 .. v13}, Lorg/jtransforms/fft/FloatFFT_1D;->passf4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJI)V

    goto/16 :goto_2

    :cond_6
    move-wide/from16 v40, v6

    move-wide/from16 v42, v8

    move/from16 v44, v10

    move v15, v11

    move-object/from16 v45, v12

    cmp-long v0, v30, v26

    if-nez v0, :cond_7

    const-wide/16 v9, 0x0

    int-to-long v13, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v16

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v45

    move-wide/from16 v11, v32

    .line 6758
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/FloatFFT_1D;->passf3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V

    goto :goto_2

    :cond_7
    const-wide/16 v6, 0x0

    int-to-long v13, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v16

    move-object/from16 v5, v45

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v32

    .line 6760
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/FloatFFT_1D;->passf3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V

    goto :goto_2

    :cond_8
    move-wide/from16 v40, v6

    move-wide/from16 v42, v8

    move/from16 v44, v10

    move v15, v11

    move-object/from16 v45, v12

    cmp-long v0, v30, v26

    if-nez v0, :cond_9

    const-wide/16 v9, 0x0

    int-to-long v13, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v16

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v45

    move-wide/from16 v11, v32

    .line 6750
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/FloatFFT_1D;->passf2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V

    goto :goto_2

    :cond_9
    const-wide/16 v6, 0x0

    int-to-long v13, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v16

    move-object/from16 v5, v45

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v32

    .line 6752
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/FloatFFT_1D;->passf2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V

    :goto_2
    sub-long v30, v24, v30

    :goto_3
    add-int/lit8 v10, v44, -0x1

    int-to-long v0, v10

    mul-long v0, v0, v36

    add-long v32, v32, v0

    add-long v28, v28, v24

    move-object/from16 v13, p0

    move v11, v15

    move-wide/from16 v16, v34

    move-wide/from16 v6, v40

    move-wide/from16 v8, v42

    move-object/from16 v12, v45

    goto/16 :goto_0

    :cond_a
    move-wide/from16 v42, v8

    move-object/from16 v45, v12

    cmp-long v0, v30, v26

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-wide/16 v5, 0x0

    move-object/from16 v4, v45

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, v42

    .line 6789
    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    return-void
.end method

.method cfftf([FII)V
    .locals 27

    move-object/from16 v12, p0

    .line 6639
    iget v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v13, v0, 0x2

    .line 6642
    new-array v14, v13, [F

    const/4 v15, 0x4

    mul-int/lit8 v16, v0, 0x4

    const/4 v11, 0x0

    .line 6646
    filled-new-array {v11}, [I

    move-result-object v17

    .line 6647
    iget-object v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v1, v16, 0x1

    aget v0, v0, v1

    float-to-int v10, v0

    const/4 v9, 0x2

    const/16 v18, 0x1

    move v8, v9

    move/from16 v19, v11

    move/from16 v20, v13

    move/from16 v4, v18

    :goto_0
    add-int/lit8 v0, v10, 0x1

    if-gt v8, v0, :cond_a

    .line 6652
    iget-object v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v1, v8, v16

    aget v0, v0, v1

    float-to-int v7, v0

    mul-int v21, v7, v4

    .line 6654
    iget v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v0, v0, v21

    add-int v22, v0, v0

    mul-int v5, v22, v4

    if-eq v7, v9, :cond_7

    const/4 v0, 0x3

    if-eq v7, v0, :cond_5

    if-eq v7, v15, :cond_3

    const/4 v0, 0x5

    if-eq v7, v0, :cond_1

    if-nez v19, :cond_0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    move v3, v7

    move-object/from16 v6, p1

    move/from16 v24, v7

    move/from16 v7, p2

    move/from16 v25, v8

    move-object v8, v14

    move/from16 v26, v9

    move/from16 v9, v23

    move/from16 v23, v10

    move/from16 v10, v20

    move v15, v11

    move/from16 v11, p3

    .line 6692
    invoke-virtual/range {v0 .. v11}, Lorg/jtransforms/fft/FloatFFT_1D;->passfg([IIIII[FI[FIII)V

    goto :goto_1

    :cond_0
    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v23, v10

    move v15, v11

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v24

    move-object v6, v14

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, v20

    move/from16 v11, p3

    .line 6694
    invoke-virtual/range {v0 .. v11}, Lorg/jtransforms/fft/FloatFFT_1D;->passfg([IIIII[FI[FIII)V

    .line 6696
    :goto_1
    aget v0, v17, v15

    if-eqz v0, :cond_9

    goto/16 :goto_2

    :cond_1
    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v23, v10

    move v15, v11

    if-nez v19, :cond_2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v14

    move/from16 v7, v20

    move/from16 v8, p3

    .line 6684
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D;->passf5(II[FI[FIII)V

    goto/16 :goto_2

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v4

    move-object v3, v14

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    .line 6686
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D;->passf5(II[FI[FIII)V

    goto/16 :goto_2

    :cond_3
    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v23, v10

    move v15, v11

    if-nez v19, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v14

    move/from16 v7, v20

    move/from16 v8, p3

    .line 6660
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D;->passf4(II[FI[FIII)V

    goto/16 :goto_2

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v4

    move-object v3, v14

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    .line 6662
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D;->passf4(II[FI[FIII)V

    goto/16 :goto_2

    :cond_5
    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v23, v10

    move v15, v11

    if-nez v19, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v14

    move/from16 v7, v20

    move/from16 v8, p3

    .line 6676
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D;->passf3(II[FI[FIII)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v4

    move-object v3, v14

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    .line 6678
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D;->passf3(II[FI[FIII)V

    goto :goto_2

    :cond_7
    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v23, v10

    move v15, v11

    if-nez v19, :cond_8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v14

    move/from16 v7, v20

    move/from16 v8, p3

    .line 6668
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D;->passf2(II[FI[FIII)V

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v4

    move-object v3, v14

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v20

    move/from16 v8, p3

    .line 6670
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/FloatFFT_1D;->passf2(II[FI[FIII)V

    :goto_2
    rsub-int/lit8 v0, v19, 0x1

    move/from16 v19, v0

    :cond_9
    add-int/lit8 v7, v24, -0x1

    mul-int v7, v7, v22

    add-int v20, v20, v7

    add-int/lit8 v8, v25, 0x1

    move v11, v15

    move/from16 v4, v21

    move/from16 v10, v23

    move/from16 v9, v26

    const/4 v15, 0x4

    goto/16 :goto_0

    :cond_a
    move v15, v11

    if-nez v19, :cond_b

    return-void

    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 6707
    invoke-static {v14, v15, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final cffti()V
    .locals 27

    move-object/from16 v0, p0

    .line 1523
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v6, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-gt v9, v10, :cond_1

    .line 1546
    sget-object v7, Lorg/jtransforms/fft/FloatFFT_1D;->factors:[I

    aget v6, v7, v6

    move v7, v6

    goto :goto_1

    :cond_1
    add-int/2addr v7, v11

    .line 1551
    :goto_1
    div-int v6, v1, v7

    mul-int v12, v7, v6

    sub-int v12, v1, v12

    if-eqz v12, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v8, 0x1

    .line 1557
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    int-to-float v13, v7

    aput v13, v12, v8

    if-ne v7, v11, :cond_4

    if-eq v1, v2, :cond_4

    move v8, v11

    :goto_2
    if-gt v8, v1, :cond_3

    sub-int v12, v1, v8

    add-int/2addr v12, v11

    add-int/2addr v12, v4

    .line 1563
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v14, v12, 0x1

    aget v12, v13, v12

    aput v12, v13, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1565
    :cond_3
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v12, v4, 0x2

    const/high16 v13, 0x40000000    # 2.0f

    aput v13, v8, v12

    :cond_4
    if-ne v6, v2, :cond_9

    .line 1570
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    iget v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v8, v7

    aput v8, v6, v4

    add-int/lit8 v8, v4, 0x1

    int-to-float v9, v1

    .line 1571
    aput v9, v6, v8

    const v6, 0x40c90fdb

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v7, v2

    move v8, v7

    move v9, v8

    :goto_3
    if-gt v7, v1, :cond_8

    .line 1576
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v7, v7, 0x1

    add-int v13, v7, v4

    aget v12, v12, v13

    float-to-int v12, v12

    mul-int v13, v8, v12

    .line 1579
    iget v14, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v14, v13

    add-int/2addr v14, v14

    add-int/2addr v14, v11

    add-int/lit8 v15, v12, -0x1

    const/16 v16, 0x0

    :goto_4
    if-gt v2, v15, :cond_7

    .line 1584
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v17, v9, -0x1

    add-int v17, v17, v3

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v5, v17

    add-int v17, v9, v3

    const/16 v19, 0x0

    .line 1585
    aput v19, v5, v17

    add-int v5, v16, v8

    int-to-float v10, v5

    mul-float/2addr v10, v6

    const/4 v11, 0x4

    :goto_5
    if-gt v11, v14, :cond_5

    add-int/lit8 v9, v9, 0x2

    add-float v19, v19, v18

    move/from16 v20, v1

    mul-float v1, v19, v10

    add-int v21, v9, v3

    move/from16 v22, v4

    .line 1594
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v23, v21, -0x1

    move/from16 v25, v5

    move/from16 v24, v6

    float-to-double v5, v1

    move/from16 v26, v7

    move v1, v8

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v4, v23

    .line 1595
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v21

    add-int/lit8 v11, v11, 0x2

    move v8, v1

    move/from16 v1, v20

    move/from16 v4, v22

    move/from16 v6, v24

    move/from16 v5, v25

    move/from16 v7, v26

    goto :goto_5

    :cond_5
    move/from16 v20, v1

    move/from16 v22, v4

    move/from16 v25, v5

    move/from16 v24, v6

    move/from16 v26, v7

    move v1, v8

    const/4 v4, 0x5

    if-le v12, v4, :cond_6

    add-int v4, v9, v3

    .line 1600
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v6, v17, -0x1

    add-int/lit8 v7, v4, -0x1

    aget v7, v5, v7

    aput v7, v5, v6

    .line 1601
    aget v4, v5, v4

    aput v4, v5, v17

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move/from16 v1, v20

    move/from16 v4, v22

    move/from16 v6, v24

    move/from16 v16, v25

    move/from16 v7, v26

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto :goto_4

    :cond_7
    move/from16 v26, v7

    move v8, v13

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_8
    return-void

    :cond_9
    move/from16 v20, v1

    move v1, v6

    move/from16 v8, v20

    goto/16 :goto_1
.end method

.method cffti(II)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x4

    move v9, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-gt v10, v11, :cond_1

    .line 1458
    sget-object v7, Lorg/jtransforms/fft/FloatFFT_1D;->factors:[I

    aget v6, v7, v6

    move v7, v6

    goto :goto_1

    :cond_1
    add-int/2addr v7, v12

    .line 1463
    :goto_1
    div-int v6, v9, v7

    mul-int v13, v7, v6

    sub-int v13, v9, v13

    if-eqz v13, :cond_2

    move v6, v10

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 1469
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v13, p2, v8

    add-int/2addr v13, v2

    add-int/2addr v13, v4

    int-to-float v14, v7

    aput v14, v9, v13

    if-ne v7, v12, :cond_4

    if-eq v8, v2, :cond_4

    move v9, v12

    :goto_2
    if-gt v9, v8, :cond_3

    sub-int v13, v8, v9

    add-int/2addr v13, v12

    add-int/2addr v13, v4

    .line 1475
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v13, p2, v13

    add-int/lit8 v15, v13, 0x1

    aget v13, v14, v13

    aput v13, v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1477
    :cond_3
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v13, p2, 0x2

    add-int/2addr v13, v4

    const/high16 v14, 0x40000000    # 2.0f

    aput v14, v9, v13

    :cond_4
    if-ne v6, v2, :cond_9

    .line 1482
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v7, p2, v4

    int-to-float v9, v1

    aput v9, v6, v7

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v4

    int-to-float v10, v8

    .line 1483
    aput v10, v6, v7

    const v6, 0x40c90fdb

    div-float/2addr v6, v9

    move v7, v2

    move v9, v7

    move v10, v9

    :goto_3
    if-gt v7, v8, :cond_8

    .line 1488
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v14, p2, v7

    add-int/2addr v14, v2

    add-int/2addr v14, v4

    aget v13, v13, v14

    float-to-int v13, v13

    mul-int v14, v9, v13

    .line 1491
    div-int v15, v1, v14

    add-int/2addr v15, v15

    add-int/2addr v15, v12

    add-int/lit8 v2, v13, -0x1

    const/4 v5, 0x1

    const/16 v16, 0x0

    :goto_4
    if-gt v5, v2, :cond_7

    .line 1496
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v17, p2, v10

    add-int/lit8 v18, v17, -0x1

    add-int v18, v18, v3

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v11, v18

    add-int v17, v17, v3

    const/16 v18, 0x0

    .line 1497
    aput v18, v11, v17

    add-int v11, v16, v9

    int-to-float v12, v11

    mul-float/2addr v12, v6

    move/from16 v17, v10

    const/4 v1, 0x4

    :goto_5
    if-gt v1, v15, :cond_5

    add-int/lit8 v17, v17, 0x2

    add-float v18, v18, v19

    move/from16 v20, v2

    mul-float v2, v18, v12

    add-int v21, v17, v3

    move/from16 v22, v4

    .line 1506
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v21, p2, v21

    add-int/lit8 v23, v21, -0x1

    move/from16 v24, v8

    move/from16 v25, v9

    float-to-double v8, v2

    move v2, v11

    move/from16 v26, v12

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    aput v11, v4, v23

    .line 1507
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v4, v21

    add-int/lit8 v1, v1, 0x2

    move v11, v2

    move/from16 v2, v20

    move/from16 v4, v22

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v12, v26

    goto :goto_5

    :cond_5
    move/from16 v20, v2

    move/from16 v22, v4

    move/from16 v24, v8

    move/from16 v25, v9

    move v2, v11

    const/4 v1, 0x5

    if-le v13, v1, :cond_6

    add-int/2addr v10, v3

    add-int v1, v17, v3

    .line 1512
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v8, p2, v10

    add-int/lit8 v9, v8, -0x1

    add-int v1, p2, v1

    add-int/lit8 v10, v1, -0x1

    aget v10, v4, v10

    aput v10, v4, v9

    .line 1513
    aget v1, v4, v1

    aput v1, v4, v8

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    move/from16 v16, v2

    move/from16 v10, v17

    move/from16 v2, v20

    move/from16 v4, v22

    move/from16 v8, v24

    move/from16 v9, v25

    const/4 v11, 0x4

    const/4 v12, 0x2

    goto/16 :goto_4

    :cond_7
    move/from16 v22, v4

    move/from16 v24, v8

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    move v9, v14

    const/4 v2, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x2

    goto/16 :goto_3

    :cond_8
    return-void

    :cond_9
    move/from16 v24, v8

    move/from16 v1, p1

    move v9, v6

    goto/16 :goto_1
.end method

.method final cfftil()V
    .locals 51

    move-object/from16 v0, p0

    .line 1611
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-wide/16 v5, 0x2

    mul-long v7, v1, v5

    const-wide/16 v9, 0x4

    mul-long v11, v1, v9

    const-wide/16 v13, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_0
    add-long v21, v13, v3

    cmp-long v23, v21, v9

    if-gtz v23, :cond_1

    .line 1634
    sget-object v17, Lorg/jtransforms/fft/FloatFFT_1D;->factors:[I

    long-to-int v13, v13

    aget v13, v17, v13

    int-to-long v13, v13

    goto :goto_1

    :cond_1
    add-long v17, v17, v5

    move-wide/from16 v13, v17

    .line 1639
    :goto_1
    div-long v17, v1, v13

    mul-long v23, v13, v17

    sub-long v23, v1, v23

    const-wide/16 v15, 0x0

    cmp-long v23, v23, v15

    if-eqz v23, :cond_2

    move-wide/from16 v17, v13

    move-wide/from16 v13, v21

    goto :goto_0

    :cond_2
    add-long v1, v19, v3

    .line 1645
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v19, v19, v5

    add-long v3, v19, v11

    long-to-float v10, v13

    invoke-virtual {v9, v3, v4, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    cmp-long v3, v13, v5

    const-wide/16 v25, 0x1

    if-nez v3, :cond_4

    cmp-long v3, v1, v25

    if-eqz v3, :cond_4

    move-wide v3, v5

    :goto_2
    cmp-long v9, v3, v1

    if-gtz v9, :cond_3

    sub-long v9, v1, v3

    add-long/2addr v9, v5

    add-long/2addr v9, v11

    .line 1651
    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v5, v9, v25

    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v15, v5, v6, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v25

    const-wide/16 v5, 0x2

    const-wide/16 v15, 0x0

    goto :goto_2

    .line 1653
    :cond_3
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x2

    add-long v9, v11, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v9, v10, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :cond_4
    cmp-long v3, v17, v25

    if-nez v3, :cond_9

    .line 1658
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v4, v4

    invoke-virtual {v3, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1659
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v4, v11, v25

    long-to-float v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1660
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v3, v3

    const v4, 0x40c90fdb

    div-float/2addr v4, v3

    move-wide/from16 v5, v25

    move-wide v9, v5

    move-wide v13, v9

    :goto_3
    cmp-long v3, v5, v1

    if-gtz v3, :cond_8

    .line 1664
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v5, v5, v25

    move-wide v15, v1

    add-long v1, v5, v11

    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    float-to-long v1, v1

    mul-long v17, v13, v1

    move-wide/from16 v21, v5

    .line 1667
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v5, v5, v17

    add-long/2addr v5, v5

    const-wide/16 v27, 0x2

    add-long v5, v5, v27

    sub-long v29, v1, v25

    move-wide/from16 v31, v25

    const-wide/16 v33, 0x0

    :goto_4
    cmp-long v3, v31, v29

    if-gtz v3, :cond_7

    .line 1672
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v35, v9, v25

    move-wide/from16 v37, v11

    add-long v11, v35, v7

    move-wide/from16 v35, v15

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v3, v11, v12, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1673
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v11, v9, v7

    const/4 v15, 0x0

    invoke-virtual {v3, v11, v12, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v39, v9

    add-long v9, v33, v13

    long-to-float v3, v9

    mul-float/2addr v3, v4

    const-wide/16 v33, 0x4

    :goto_5
    cmp-long v41, v33, v5

    if-gtz v41, :cond_5

    const-wide/16 v27, 0x2

    add-long v39, v39, v27

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v15, v15, v16

    move/from16 v41, v4

    mul-float v4, v15, v3

    move-wide/from16 v42, v5

    add-long v5, v39, v7

    move/from16 v44, v3

    .line 1682
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v45, v9

    const-wide/16 v25, 0x1

    sub-long v9, v5, v25

    move-wide/from16 v47, v13

    float-to-double v13, v4

    move-wide/from16 v49, v11

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    double-to-float v4, v11

    invoke-virtual {v3, v9, v10, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1683
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    double-to-float v4, v9

    invoke-virtual {v3, v5, v6, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x2

    add-long v33, v33, v3

    move/from16 v4, v41

    move-wide/from16 v5, v42

    move/from16 v3, v44

    move-wide/from16 v9, v45

    move-wide/from16 v13, v47

    move-wide/from16 v11, v49

    goto :goto_5

    :cond_5
    move/from16 v41, v4

    move-wide/from16 v42, v5

    move-wide/from16 v45, v9

    move-wide/from16 v49, v11

    move-wide/from16 v47, v13

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x5

    cmp-long v5, v1, v5

    if-lez v5, :cond_6

    add-long v5, v39, v7

    .line 1688
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x1

    sub-long v12, v49, v10

    sub-long v14, v5, v10

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    invoke-virtual {v9, v12, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1689
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move-wide/from16 v12, v49

    invoke-virtual {v9, v12, v13, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto :goto_6

    :cond_6
    const-wide/16 v10, 0x1

    :goto_6
    add-long v31, v31, v10

    move-wide/from16 v25, v10

    move-wide/from16 v15, v35

    move-wide/from16 v11, v37

    move-wide/from16 v9, v39

    move/from16 v4, v41

    move-wide/from16 v5, v42

    move-wide/from16 v33, v45

    move-wide/from16 v13, v47

    goto/16 :goto_4

    :cond_7
    move-wide/from16 v39, v9

    move-wide v1, v15

    move-wide/from16 v13, v17

    move-wide/from16 v5, v21

    goto/16 :goto_3

    :cond_8
    return-void

    :cond_9
    move-wide/from16 v35, v1

    move-wide/from16 v1, v17

    move-wide/from16 v3, v25

    move-wide/from16 v19, v35

    const-wide/16 v5, 0x2

    const-wide/16 v9, 0x4

    goto/16 :goto_1
.end method

.method public complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    return-void
.end method

.method public complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 9

    .line 282
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 284
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v5, 0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    return-void

    .line 292
    :cond_2
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v1}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const/4 v5, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 300
    :cond_3
    invoke-direct {p0, p1, p2, p3, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_complex(Lpl/edu/icm/jlargearrays/FloatLargeArray;JI)V

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->cfftf(Lpl/edu/icm/jlargearrays/FloatLargeArray;JI)V

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x2

    .line 294
    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long/2addr v0, v5

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v6, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v8}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    :goto_0
    return-void
.end method

.method public complexForward([F)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    return-void
.end method

.method public complexForward([FI)V
    .locals 9

    .line 245
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_0

    .line 248
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 251
    :cond_1
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 259
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_complex([FII)V

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->cfftf([FII)V

    goto :goto_0

    .line 253
    :cond_4
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v3, v0, 0x2

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v4, p1

    move v5, p2

    invoke-static/range {v3 .. v8}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    :goto_0
    return-void
.end method

.method public complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
    .locals 14

    move-object v0, p0

    move-object v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    .line 405
    iget-boolean v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 406
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v11, v1

    if-gez v1, :cond_0

    .line 407
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v1

    long-to-int v2, v11

    invoke-virtual {p0, v1, v2, v13}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    goto :goto_1

    .line 409
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The data array is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    return-void

    .line 415
    :cond_2
    sget-object v1, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 423
    :cond_3
    invoke-direct {p0, p1, v11, v12, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_complex(Lpl/edu/icm/jlargearrays/FloatLargeArray;JI)V

    goto :goto_0

    .line 420
    :cond_4
    invoke-virtual {p0, p1, v11, v12, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->cfftf(Lpl/edu/icm/jlargearrays/FloatLargeArray;JI)V

    goto :goto_0

    :cond_5
    const-wide/16 v1, 0x2

    .line 417
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long/2addr v1, v3

    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    :goto_0
    if-eqz v13, :cond_6

    .line 427
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const/high16 v3, 0x3f800000    # 1.0f

    long-to-float v4, v1

    div-float/2addr v3, v4

    const/4 v7, 0x1

    move-object v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    return-void
.end method

.method public complexInverse([FIZ)V
    .locals 9

    .line 364
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto :goto_1

    .line 367
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 370
    :cond_1
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 378
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_complex([FII)V

    goto :goto_0

    .line 375
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->cfftf([FII)V

    goto :goto_0

    .line 372
    :cond_4
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v3, v0, 0x2

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v4, p1

    move v5, p2

    invoke-static/range {v3 .. v8}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    :goto_0
    if-eqz p3, :cond_5

    .line 382
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, p3

    div-float/2addr v0, v2

    invoke-static {p3, v0, p1, p2, v1}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public complexInverse([FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    return-void
.end method

.method passf2(II[FI[FIII)V
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    mul-int v3, v4, v0

    mul-int/lit8 v5, v3, 0x2

    add-int v5, p4, v5

    add-int v6, v5, v0

    .line 6808
    aget v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    .line 6809
    aget v5, p3, v5

    .line 6810
    aget v8, p3, v6

    add-int/lit8 v6, v6, 0x1

    .line 6811
    aget v6, p3, v6

    add-int v3, p6, v3

    add-int v9, v3, v2

    add-float v10, v7, v8

    .line 6815
    aput v10, p5, v3

    add-int/lit8 v3, v3, 0x1

    add-float v10, v5, v6

    .line 6816
    aput v10, p5, v3

    sub-float/2addr v7, v8

    .line 6817
    aput v7, p5, v9

    add-int/lit8 v9, v9, 0x1

    sub-float/2addr v5, v6

    .line 6818
    aput v5, p5, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_1

    mul-int v6, v3, v0

    add-int v7, p4, v5

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    add-int v8, v7, v0

    .line 6826
    aget v9, p3, v7

    add-int/lit8 v7, v7, 0x1

    .line 6827
    aget v7, p3, v7

    .line 6828
    aget v10, p3, v8

    add-int/lit8 v8, v8, 0x1

    .line 6829
    aget v8, p3, v8

    add-int v11, v5, p7

    move-object/from16 v12, p0

    .line 6832
    iget-object v13, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    aget v14, v13, v11

    move/from16 v15, p8

    int-to-float v4, v15

    add-int/lit8 v11, v11, 0x1

    .line 6833
    aget v11, v13, v11

    mul-float/2addr v4, v11

    sub-float v11, v9, v10

    sub-float v13, v7, v8

    add-int v16, p6, v5

    add-int v16, v16, v6

    add-int v6, v16, v2

    add-float/2addr v9, v10

    .line 6840
    aput v9, p5, v16

    add-int/lit8 v16, v16, 0x1

    add-float/2addr v7, v8

    .line 6841
    aput v7, p5, v16

    mul-float v7, v14, v11

    mul-float v8, v4, v13

    sub-float/2addr v7, v8

    .line 6842
    aput v7, p5, v6

    add-int/lit8 v6, v6, 0x1

    mul-float/2addr v14, v13

    mul-float/2addr v4, v11

    add-float/2addr v14, v4

    .line 6843
    aput v14, p5, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_1
    move-object/from16 v12, p0

    move/from16 v15, p8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v12, p0

    return-void
.end method

.method passf2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    mul-long v3, p1, p3

    const-wide/16 v5, 0x2

    cmp-long v7, p1, v5

    const-wide/16 v10, 0x1

    if-gtz v7, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    cmp-long v7, v8, p3

    if-gez v7, :cond_2

    mul-long v12, v8, p1

    mul-long v14, v12, v5

    add-long v14, p6, v14

    add-long v5, v14, p1

    .line 6864
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    add-long/2addr v14, v10

    .line 6865
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    .line 6866
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    add-long/2addr v5, v10

    .line 6867
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    add-long v12, p9, v12

    add-long v10, v12, v3

    add-float v6, v7, v15

    .line 6871
    invoke-virtual {v2, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v18, 0x1

    add-long v12, v12, v18

    add-float v6, v14, v5

    .line 6872
    invoke-virtual {v2, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v7, v15

    .line 6873
    invoke-virtual {v2, v10, v11, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v18

    sub-float/2addr v14, v5

    .line 6874
    invoke-virtual {v2, v10, v11, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v18

    move-wide/from16 v10, v18

    const-wide/16 v5, 0x2

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v10

    const-wide/16 v5, 0x0

    :goto_1
    cmp-long v7, v5, p3

    if-gez v7, :cond_2

    const-wide/16 v10, 0x0

    :goto_2
    sub-long v12, p1, v18

    cmp-long v7, v10, v12

    if-gez v7, :cond_1

    mul-long v12, v5, p1

    add-long v14, p6, v10

    const-wide/16 v16, 0x2

    mul-long v20, v12, v16

    add-long v14, v14, v20

    add-long v8, v14, p1

    .line 6882
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    add-long v14, v14, v18

    .line 6883
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    .line 6884
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    add-long v8, v8, v18

    .line 6885
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    move-wide/from16 v22, v5

    add-long v5, v10, p11

    .line 6888
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    move-wide/from16 v1, p13

    move/from16 v24, v9

    long-to-float v9, v1

    .line 6889
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v5, v5, v18

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v9, v1

    sub-float v1, v7, v15

    sub-float v2, v14, v8

    add-long v5, p9, v10

    add-long/2addr v5, v12

    add-long v12, v5, v3

    add-float/2addr v7, v15

    move-object/from16 v15, p8

    .line 6896
    invoke-virtual {v15, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v18

    add-float/2addr v14, v8

    .line 6897
    invoke-virtual {v15, v5, v6, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v5, v24, v1

    mul-float v6, v9, v2

    sub-float/2addr v5, v6

    .line 6898
    invoke-virtual {v15, v12, v13, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v18

    mul-float v2, v2, v24

    mul-float/2addr v9, v1

    add-float/2addr v2, v9

    .line 6899
    invoke-virtual {v15, v12, v13, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x2

    add-long/2addr v10, v1

    move-object/from16 v1, p5

    move-object v2, v15

    move-wide/from16 v5, v22

    goto :goto_2

    :cond_1
    move-object v15, v2

    move-wide/from16 v22, v5

    const-wide/16 v1, 0x2

    add-long v5, v22, v18

    move-object/from16 v1, p5

    move-object v2, v15

    goto :goto_1

    :cond_2
    return-void
.end method

.method passf3(II[FI[FIII)V
    .locals 27

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p8

    add-int v3, p7, v0

    mul-int v4, v1, v0

    const v5, 0x3f5db3d7

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    move v3, v7

    :goto_0
    if-gt v3, v1, :cond_2

    mul-int/lit8 v9, v3, 0x3

    sub-int/2addr v9, v8

    mul-int/2addr v9, v0

    add-int v9, p4, v9

    add-int v10, v9, v0

    sub-int v11, v9, v0

    .line 6926
    aget v12, p3, v9

    add-int/2addr v9, v7

    .line 6927
    aget v9, p3, v9

    .line 6928
    aget v13, p3, v10

    add-int/2addr v10, v7

    .line 6929
    aget v10, p3, v10

    .line 6930
    aget v14, p3, v11

    add-int/2addr v11, v7

    .line 6931
    aget v11, p3, v11

    add-float v15, v12, v13

    mul-float v16, v15, v6

    add-float v16, v14, v16

    add-float v17, v9, v10

    mul-float v18, v17, v6

    add-float v18, v11, v18

    int-to-float v6, v2

    mul-float/2addr v6, v5

    sub-float/2addr v12, v13

    mul-float/2addr v12, v6

    sub-float/2addr v9, v10

    mul-float/2addr v6, v9

    add-int/lit8 v9, v3, -0x1

    mul-int/2addr v9, v0

    add-int v9, p6, v9

    add-int v10, v9, v4

    add-int v13, v10, v4

    add-float/2addr v14, v15

    .line 6943
    aput v14, p5, v9

    add-int/2addr v9, v7

    add-float v11, v11, v17

    .line 6944
    aput v11, p5, v9

    sub-float v9, v16, v6

    .line 6945
    aput v9, p5, v10

    add-int/2addr v10, v7

    add-float v9, v18, v12

    .line 6946
    aput v9, p5, v10

    add-float v16, v16, v6

    .line 6947
    aput v16, p5, v13

    add-int/2addr v13, v7

    sub-float v18, v18, v12

    .line 6948
    aput v18, p5, v13

    add-int/lit8 v3, v3, 0x1

    const/high16 v6, -0x41000000    # -0.5f

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_1
    if-gt v6, v1, :cond_2

    mul-int/lit8 v9, v6, 0x3

    sub-int/2addr v9, v8

    mul-int/2addr v9, v0

    add-int v9, p4, v9

    add-int/lit8 v10, v6, -0x1

    mul-int/2addr v10, v0

    add-int v10, p6, v10

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v12, v0, -0x1

    if-ge v11, v12, :cond_1

    add-int v12, v11, v9

    add-int v13, v12, v0

    sub-int v14, v12, v0

    .line 6958
    aget v15, p3, v12

    add-int/2addr v12, v7

    .line 6959
    aget v12, p3, v12

    .line 6960
    aget v16, p3, v13

    add-int/2addr v13, v7

    .line 6961
    aget v13, p3, v13

    .line 6962
    aget v17, p3, v14

    add-int/2addr v14, v7

    .line 6963
    aget v14, p3, v14

    add-float v18, v15, v16

    const/high16 v19, -0x41000000    # -0.5f

    mul-float v20, v18, v19

    add-float v20, v17, v20

    add-float v21, v12, v13

    mul-float v22, v21, v19

    add-float v22, v14, v22

    int-to-float v8, v2

    mul-float v23, v8, v5

    sub-float v15, v15, v16

    mul-float v15, v15, v23

    sub-float/2addr v12, v13

    mul-float v23, v23, v12

    sub-float v12, v20, v23

    add-float v20, v20, v23

    add-float v13, v22, v15

    sub-float v22, v22, v15

    add-int v15, v11, p7

    add-int v16, v11, v3

    move-object/from16 v5, p0

    .line 6978
    iget-object v0, v5, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    aget v24, v0, v15

    add-int/2addr v15, v7

    .line 6979
    aget v15, v0, v15

    mul-float/2addr v15, v8

    .line 6980
    aget v25, v0, v16

    add-int/lit8 v16, v16, 0x1

    .line 6981
    aget v0, v0, v16

    mul-float/2addr v8, v0

    add-int v0, v11, v10

    add-int v16, v0, v4

    add-int v26, v16, v4

    add-float v17, v17, v18

    .line 6986
    aput v17, p5, v0

    add-int/2addr v0, v7

    add-float v14, v14, v21

    .line 6987
    aput v14, p5, v0

    mul-float v0, v24, v12

    mul-float v14, v15, v13

    sub-float/2addr v0, v14

    .line 6988
    aput v0, p5, v16

    add-int/lit8 v16, v16, 0x1

    mul-float v24, v24, v13

    mul-float/2addr v15, v12

    add-float v24, v24, v15

    .line 6989
    aput v24, p5, v16

    mul-float v0, v25, v20

    mul-float v12, v8, v22

    sub-float/2addr v0, v12

    .line 6990
    aput v0, p5, v26

    add-int/lit8 v26, v26, 0x1

    mul-float v25, v25, v22

    mul-float v8, v8, v20

    add-float v25, v25, v8

    .line 6991
    aput v25, p5, v26

    add-int/lit8 v11, v11, 0x2

    move/from16 v0, p1

    const v5, 0x3f5db3d7

    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_1
    const/high16 v19, -0x41000000    # -0.5f

    move-object/from16 v5, p0

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    const v5, 0x3f5db3d7

    const/4 v8, 0x2

    goto/16 :goto_1

    :cond_2
    move-object/from16 v5, p0

    return-void
.end method

.method passf3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move-wide/from16 v3, p13

    add-long v5, p11, p1

    mul-long v7, p3, p1

    const-wide/16 v9, 0x2

    cmp-long v11, p1, v9

    const-wide/16 v13, 0x3

    const/high16 v15, -0x41000000    # -0.5f

    const-wide/16 v16, 0x1

    if-nez v11, :cond_0

    move-wide/from16 v5, v16

    :goto_0
    cmp-long v11, v5, p3

    if-gtz v11, :cond_2

    mul-long v18, v5, v13

    sub-long v18, v18, v9

    mul-long v18, v18, p1

    add-long v9, p6, v18

    add-long v13, v9, p1

    move-wide/from16 p11, v13

    sub-long v12, v9, p1

    .line 7018
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-long v9, v9, v16

    .line 7019
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    move-wide/from16 v20, v12

    move-wide/from16 v11, p11

    .line 7020
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    add-long v11, v11, v16

    .line 7021
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    move-wide/from16 v10, v20

    .line 7022
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v20

    move-wide/from16 v21, v7

    add-long v7, v10, v16

    .line 7023
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    add-float v8, v14, v13

    mul-float v23, v8, v15

    add-float v20, v20, v23

    add-float v23, v9, v12

    mul-float v24, v23, v15

    add-float v24, v7, v24

    long-to-float v15, v3

    const v26, 0x3f5db3d7

    mul-float v15, v15, v26

    sub-float/2addr v14, v13

    mul-float/2addr v14, v15

    sub-float/2addr v9, v12

    mul-float/2addr v15, v9

    sub-long v12, v5, v16

    mul-long v12, v12, p1

    add-long v12, p9, v12

    add-long v3, v12, v21

    move-wide/from16 p11, v5

    add-long v5, v3, v21

    .line 7035
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    add-float/2addr v9, v8

    invoke-virtual {v2, v12, v13, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v16

    add-float v7, v7, v23

    .line 7036
    invoke-virtual {v2, v12, v13, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v7, v20, v15

    .line 7037
    invoke-virtual {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v16

    add-float v7, v24, v14

    .line 7038
    invoke-virtual {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v3, v20, v15

    .line 7039
    invoke-virtual {v2, v5, v6, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v16

    sub-float v3, v24, v14

    .line 7040
    invoke-virtual {v2, v5, v6, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v3, p11

    add-long v5, v3, v16

    move-wide/from16 v3, p13

    move-wide/from16 v7, v21

    const-wide/16 v9, 0x2

    const-wide/16 v13, 0x3

    const/high16 v15, -0x41000000    # -0.5f

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v21, v7

    move-wide/from16 v3, v16

    :goto_1
    cmp-long v7, v3, p3

    if-gtz v7, :cond_2

    const-wide/16 v7, 0x3

    mul-long v13, v3, v7

    const-wide/16 v9, 0x2

    sub-long/2addr v13, v9

    mul-long v13, v13, p1

    add-long v9, p6, v13

    sub-long v11, v3, v16

    mul-long v11, v11, p1

    add-long v11, p9, v11

    const-wide/16 v13, 0x0

    :goto_2
    sub-long v18, p1, v16

    cmp-long v15, v13, v18

    if-gez v15, :cond_1

    add-long v7, v13, v9

    move-wide/from16 v23, v9

    add-long v9, v7, p1

    move-wide/from16 v27, v3

    sub-long v3, v7, p1

    .line 7050
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    add-long v7, v7, v16

    .line 7051
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 7052
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    add-long v9, v9, v16

    .line 7053
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 7054
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    add-long v3, v3, v16

    .line 7055
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    add-float v4, v15, v8

    const/high16 v20, -0x41000000    # -0.5f

    mul-float v25, v4, v20

    add-float v25, v10, v25

    add-float v29, v7, v9

    mul-float v30, v29, v20

    add-float v30, v3, v30

    move-wide/from16 v1, p13

    move/from16 v31, v3

    long-to-float v3, v1

    const v26, 0x3f5db3d7

    mul-float v32, v3, v26

    sub-float/2addr v15, v8

    mul-float v15, v15, v32

    sub-float/2addr v7, v9

    mul-float v32, v32, v7

    sub-float v7, v25, v32

    add-float v25, v25, v32

    add-float v8, v30, v15

    sub-float v30, v30, v15

    add-long v1, v13, p11

    move v15, v8

    add-long v8, v13, v5

    move-wide/from16 v32, v5

    .line 7070
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    .line 7071
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v1, v1, v16

    invoke-virtual {v6, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v1, v3

    .line 7072
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 7073
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v3, v6

    add-long v8, v13, v11

    move-wide/from16 v34, v11

    add-long v11, v8, v21

    move-wide/from16 v36, v13

    add-long v13, v11, v21

    add-float/2addr v10, v4

    move-object/from16 v4, p8

    .line 7078
    invoke-virtual {v4, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v16

    add-float v6, v31, v29

    .line 7079
    invoke-virtual {v4, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v6, v5, v7

    mul-float v8, v1, v15

    sub-float/2addr v6, v8

    .line 7080
    invoke-virtual {v4, v11, v12, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    mul-float/2addr v5, v15

    mul-float/2addr v1, v7

    add-float/2addr v5, v1

    .line 7081
    invoke-virtual {v4, v11, v12, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v1, v2, v25

    mul-float v5, v3, v30

    sub-float/2addr v1, v5

    .line 7082
    invoke-virtual {v4, v13, v14, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v13, v16

    mul-float v2, v2, v30

    mul-float v3, v3, v25

    add-float/2addr v2, v3

    .line 7083
    invoke-virtual {v4, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x2

    add-long v13, v36, v1

    move-object/from16 v1, p5

    move-object v2, v4

    move-wide/from16 v9, v23

    move-wide/from16 v3, v27

    move-wide/from16 v5, v32

    move-wide/from16 v11, v34

    const-wide/16 v7, 0x3

    goto/16 :goto_2

    :cond_1
    move-wide/from16 v27, v3

    move-wide/from16 v32, v5

    const/high16 v20, -0x41000000    # -0.5f

    const v26, 0x3f5db3d7

    move-object v4, v2

    const-wide/16 v1, 0x2

    add-long v5, v27, v16

    move-object/from16 v1, p5

    move-object v2, v4

    move-wide v3, v5

    move-wide/from16 v5, v32

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method passf4(II[FI[FIII)V
    .locals 29

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p8

    add-int v3, p7, v0

    add-int v4, v3, v0

    mul-int v5, v1, v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    mul-int v3, v7, v0

    mul-int/lit8 v4, v3, 0x4

    add-int v4, p4, v4

    add-int/lit8 v6, v4, 0x1

    add-int v8, v6, v0

    add-int v9, v8, v0

    add-int v10, v9, v0

    .line 7110
    aget v4, p3, v4

    .line 7111
    aget v6, p3, v6

    add-int/lit8 v11, v8, -0x1

    .line 7112
    aget v11, p3, v11

    .line 7113
    aget v8, p3, v8

    add-int/lit8 v12, v9, -0x1

    .line 7114
    aget v12, p3, v12

    .line 7115
    aget v9, p3, v9

    add-int/lit8 v13, v10, -0x1

    .line 7116
    aget v13, p3, v13

    .line 7117
    aget v10, p3, v10

    sub-float v14, v6, v9

    add-float/2addr v6, v9

    sub-float v9, v10, v8

    add-float/2addr v8, v10

    sub-float v10, v4, v12

    add-float/2addr v4, v12

    sub-float v12, v11, v13

    add-float/2addr v11, v13

    add-int v3, p6, v3

    add-int v13, v3, v5

    add-int v15, v13, v5

    add-int v16, v15, v5

    add-float v17, v4, v11

    .line 7132
    aput v17, p5, v3

    add-int/lit8 v3, v3, 0x1

    add-float v17, v6, v8

    .line 7133
    aput v17, p5, v3

    int-to-float v3, v2

    mul-float/2addr v9, v3

    add-float v17, v10, v9

    .line 7134
    aput v17, p5, v13

    add-int/lit8 v13, v13, 0x1

    mul-float/2addr v3, v12

    add-float v12, v14, v3

    .line 7135
    aput v12, p5, v13

    sub-float/2addr v4, v11

    .line 7136
    aput v4, p5, v15

    add-int/lit8 v15, v15, 0x1

    sub-float/2addr v6, v8

    .line 7137
    aput v6, p5, v15

    sub-float/2addr v10, v9

    .line 7138
    aput v10, p5, v16

    add-int/lit8 v16, v16, 0x1

    sub-float/2addr v14, v3

    .line 7139
    aput v14, p5, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_2

    mul-int v8, v6, v0

    add-int/lit8 v9, p4, 0x1

    mul-int/lit8 v10, v8, 0x4

    add-int/2addr v9, v10

    const/4 v10, 0x0

    :goto_2
    add-int/lit8 v11, v0, -0x1

    if-ge v10, v11, :cond_1

    add-int v11, v10, v9

    add-int v12, v11, v0

    add-int v13, v12, v0

    add-int v14, v13, v0

    add-int/lit8 v15, v11, -0x1

    .line 7150
    aget v15, p3, v15

    .line 7151
    aget v11, p3, v11

    add-int/lit8 v16, v12, -0x1

    .line 7152
    aget v16, p3, v16

    .line 7153
    aget v12, p3, v12

    add-int/lit8 v17, v13, -0x1

    .line 7154
    aget v17, p3, v17

    .line 7155
    aget v13, p3, v13

    add-int/lit8 v18, v14, -0x1

    .line 7156
    aget v18, p3, v18

    .line 7157
    aget v14, p3, v14

    sub-float v19, v11, v13

    add-float/2addr v11, v13

    add-float v13, v12, v14

    sub-float/2addr v14, v12

    sub-float v12, v15, v17

    add-float v15, v15, v17

    sub-float v17, v16, v18

    add-float v16, v16, v18

    sub-float v18, v15, v16

    sub-float v20, v11, v13

    int-to-float v7, v2

    mul-float/2addr v14, v7

    add-float v21, v12, v14

    sub-float/2addr v12, v14

    mul-float v17, v17, v7

    add-float v14, v19, v17

    sub-float v19, v19, v17

    add-int v17, v10, p7

    add-int v22, v10, v3

    add-int v23, v10, v4

    move-object/from16 v0, p0

    .line 7177
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    aget v24, v1, v17

    add-int/lit8 v17, v17, 0x1

    .line 7178
    aget v17, v1, v17

    mul-float v17, v17, v7

    .line 7179
    aget v25, v1, v22

    add-int/lit8 v22, v22, 0x1

    .line 7180
    aget v22, v1, v22

    mul-float v22, v22, v7

    .line 7181
    aget v26, v1, v23

    add-int/lit8 v23, v23, 0x1

    .line 7182
    aget v1, v1, v23

    mul-float/2addr v7, v1

    add-int v1, p6, v10

    add-int/2addr v1, v8

    add-int v23, v1, v5

    add-int v27, v23, v5

    add-int v28, v27, v5

    add-float v15, v15, v16

    .line 7188
    aput v15, p5, v1

    add-int/lit8 v1, v1, 0x1

    add-float/2addr v11, v13

    .line 7189
    aput v11, p5, v1

    mul-float v1, v24, v21

    mul-float v11, v17, v14

    sub-float/2addr v1, v11

    .line 7190
    aput v1, p5, v23

    add-int/lit8 v23, v23, 0x1

    mul-float v24, v24, v14

    mul-float v17, v17, v21

    add-float v24, v24, v17

    .line 7191
    aput v24, p5, v23

    mul-float v1, v25, v18

    mul-float v11, v22, v20

    sub-float/2addr v1, v11

    .line 7192
    aput v1, p5, v27

    add-int/lit8 v27, v27, 0x1

    mul-float v25, v25, v20

    mul-float v22, v22, v18

    add-float v25, v25, v22

    .line 7193
    aput v25, p5, v27

    mul-float v1, v26, v12

    mul-float v11, v7, v19

    sub-float/2addr v1, v11

    .line 7194
    aput v1, p5, v28

    add-int/lit8 v28, v28, 0x1

    mul-float v26, v26, v19

    mul-float/2addr v7, v12

    add-float v26, v26, v7

    .line 7195
    aput v26, p5, v28

    add-int/lit8 v10, v10, 0x2

    move/from16 v0, p1

    move/from16 v1, p2

    goto/16 :goto_2

    :cond_1
    move-object/from16 v0, p0

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    return-void
.end method

.method passf4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJI)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move/from16 v3, p13

    add-long v4, p11, p1

    add-long v6, v4, p1

    mul-long v8, p3, p1

    const-wide/16 v10, 0x2

    cmp-long v12, p1, v10

    const-wide/16 v13, 0x4

    const-wide/16 v17, 0x1

    if-nez v12, :cond_0

    const-wide/16 v15, 0x0

    :goto_0
    cmp-long v4, v15, p3

    if-gez v4, :cond_2

    mul-long v4, v15, p1

    mul-long v6, v4, v13

    add-long v6, p6, v6

    add-long v10, v6, v17

    add-long v13, v10, p1

    add-long v2, v13, p1

    move-wide/from16 v21, v8

    add-long v8, v2, p1

    .line 7222
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 7223
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-long v10, v13, v17

    .line 7224
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 7225
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-long v12, v2, v17

    .line 7226
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    .line 7227
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    sub-long v13, v8, v17

    .line 7228
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 7229
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-float v9, v7, v2

    add-float/2addr v7, v2

    sub-float v2, v8, v11

    add-float/2addr v11, v8

    sub-float v8, v6, v12

    add-float/2addr v6, v12

    sub-float v12, v10, v3

    add-float/2addr v10, v3

    add-long v3, p9, v4

    add-long v13, v3, v21

    add-long v0, v13, v21

    move/from16 p11, v12

    move-wide/from16 v23, v13

    add-long v12, v0, v21

    add-float v5, v6, v10

    move-object/from16 v14, p8

    .line 7244
    invoke-virtual {v14, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v17

    add-float v5, v7, v11

    .line 7245
    invoke-virtual {v14, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move/from16 v3, p13

    int-to-float v4, v3

    mul-float/2addr v2, v4

    add-float v5, v8, v2

    move-wide/from16 v25, v12

    move-wide/from16 v12, v23

    .line 7246
    invoke-virtual {v14, v12, v13, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v17

    mul-float v4, v4, p11

    add-float v5, v9, v4

    .line 7247
    invoke-virtual {v14, v12, v13, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v6, v10

    .line 7248
    invoke-virtual {v14, v0, v1, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v17

    sub-float/2addr v7, v11

    .line 7249
    invoke-virtual {v14, v0, v1, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v8, v2

    move-wide/from16 v0, v25

    .line 7250
    invoke-virtual {v14, v0, v1, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v0, v17

    sub-float/2addr v9, v4

    .line 7251
    invoke-virtual {v14, v12, v13, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v15, v15, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v14

    move-wide/from16 v8, v21

    const-wide/16 v13, 0x4

    goto/16 :goto_0

    :cond_0
    move-object v14, v2

    move-wide/from16 v21, v8

    const-wide/16 v0, 0x0

    :goto_1
    cmp-long v2, v0, p3

    if-gez v2, :cond_2

    mul-long v8, v0, p1

    add-long v12, p6, v17

    const-wide/16 v19, 0x4

    mul-long v23, v8, v19

    add-long v12, v12, v23

    const-wide/16 v23, 0x0

    :goto_2
    sub-long v25, p1, v17

    cmp-long v2, v23, v25

    if-gez v2, :cond_1

    add-long v10, v23, v12

    move-wide/from16 v27, v12

    add-long v12, v10, p1

    move-wide/from16 v29, v0

    add-long v0, v12, p1

    add-long v14, v0, p1

    move-wide/from16 v31, v8

    sub-long v8, v10, v17

    move-object/from16 v2, p5

    .line 7262
    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 7263
    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    sub-long v10, v12, v17

    .line 7264
    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 7265
    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-long v12, v0, v17

    .line 7266
    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    .line 7267
    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    move-wide/from16 v33, v6

    sub-long v6, v14, v17

    .line 7268
    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    .line 7269
    invoke-virtual {v2, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    sub-float v7, v9, v0

    add-float/2addr v9, v0

    add-float v0, v11, v6

    sub-float/2addr v6, v11

    sub-float v11, v8, v12

    add-float/2addr v8, v12

    sub-float v12, v10, v1

    add-float/2addr v10, v1

    sub-float v1, v8, v10

    sub-float v13, v9, v0

    int-to-float v14, v3

    mul-float/2addr v6, v14

    add-float v15, v11, v6

    sub-float/2addr v11, v6

    mul-float/2addr v12, v14

    add-float v6, v7, v12

    sub-float/2addr v7, v12

    add-long v2, v23, p11

    move/from16 v16, v11

    add-long v11, v23, v4

    move-wide/from16 v35, v4

    add-long v4, v23, v33

    move/from16 v37, v7

    move/from16 v38, v13

    move-object/from16 v7, p0

    .line 7289
    iget-object v13, v7, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    move/from16 v39, v1

    .line 7290
    iget-object v1, v7, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v2, v2, v17

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v1, v14

    .line 7291
    iget-object v2, v7, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 7292
    iget-object v3, v7, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v11, v11, v17

    invoke-virtual {v3, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v3, v14

    .line 7293
    iget-object v11, v7, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 7294
    iget-object v12, v7, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v4, v4, v17

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v14, v4

    add-long v4, p9, v23

    add-long v4, v4, v31

    move/from16 v40, v11

    add-long v11, v4, v21

    move/from16 v41, v2

    move/from16 v42, v3

    add-long v2, v11, v21

    move-wide/from16 v43, v11

    add-long v11, v2, v21

    add-float/2addr v8, v10

    move-object/from16 v10, p8

    .line 7300
    invoke-virtual {v10, v4, v5, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v17

    add-float/2addr v9, v0

    .line 7301
    invoke-virtual {v10, v4, v5, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v0, v13, v15

    mul-float v4, v1, v6

    sub-float/2addr v0, v4

    move-wide/from16 v4, v43

    .line 7302
    invoke-virtual {v10, v4, v5, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v17

    mul-float/2addr v13, v6

    mul-float/2addr v1, v15

    add-float/2addr v13, v1

    .line 7303
    invoke-virtual {v10, v4, v5, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v0, v41, v39

    mul-float v1, v42, v38

    sub-float/2addr v0, v1

    .line 7304
    invoke-virtual {v10, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v17

    mul-float v0, v41, v38

    mul-float v1, v42, v39

    add-float/2addr v0, v1

    .line 7305
    invoke-virtual {v10, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v0, v40, v16

    mul-float v1, v14, v37

    sub-float/2addr v0, v1

    .line 7306
    invoke-virtual {v10, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v17

    mul-float v0, v40, v37

    mul-float v14, v14, v16

    add-float/2addr v0, v14

    .line 7307
    invoke-virtual {v10, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v0, 0x2

    add-long v23, v23, v0

    move/from16 v3, p13

    move-object v14, v10

    move-wide/from16 v12, v27

    move-wide/from16 v8, v31

    move-wide/from16 v6, v33

    move-wide/from16 v4, v35

    move-wide v10, v0

    move-wide/from16 v0, v29

    goto/16 :goto_2

    :cond_1
    move-wide/from16 v29, v0

    move-wide/from16 v35, v4

    move-wide/from16 v33, v6

    move-wide v0, v10

    move-object v10, v14

    move-object/from16 v7, p0

    add-long v2, v29, v17

    move-wide/from16 v6, v33

    move-wide v10, v0

    move-wide v0, v2

    move/from16 v3, p13

    goto/16 :goto_1

    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method passf5(II[FI[FIII)V
    .locals 42

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p8

    add-int v3, p7, v0

    add-int v4, v3, v0

    add-int v5, v4, v0

    mul-int v6, v1, v0

    const/4 v7, 0x2

    const v8, 0x3f167918

    const v9, 0x3f737871

    const v10, -0x40b0e443

    const v11, 0x3e9e377a

    const/4 v12, 0x1

    if-ne v0, v7, :cond_0

    move v3, v12

    :goto_0
    if-gt v3, v1, :cond_2

    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, -0x4

    mul-int/2addr v4, v0

    add-int v4, p4, v4

    add-int/lit8 v5, v4, 0x1

    add-int v7, v5, v0

    sub-int v13, v5, v0

    add-int v14, v7, v0

    add-int v15, v14, v0

    .line 7340
    aget v4, p3, v4

    .line 7341
    aget v5, p3, v5

    add-int/lit8 v16, v7, -0x1

    .line 7342
    aget v16, p3, v16

    .line 7343
    aget v7, p3, v7

    add-int/lit8 v17, v13, -0x1

    .line 7344
    aget v17, p3, v17

    .line 7345
    aget v13, p3, v13

    add-int/lit8 v18, v14, -0x1

    .line 7346
    aget v18, p3, v18

    .line 7347
    aget v14, p3, v14

    add-int/lit8 v19, v15, -0x1

    .line 7348
    aget v19, p3, v19

    .line 7349
    aget v15, p3, v15

    sub-float v20, v5, v15

    add-float/2addr v5, v15

    sub-float v15, v7, v14

    add-float/2addr v7, v14

    sub-float v14, v4, v19

    add-float v4, v4, v19

    sub-float v19, v16, v18

    add-float v16, v16, v18

    mul-float v18, v4, v11

    add-float v18, v17, v18

    mul-float v21, v16, v10

    add-float v18, v18, v21

    mul-float v21, v5, v11

    add-float v21, v13, v21

    mul-float v22, v7, v10

    add-float v21, v21, v22

    mul-float v22, v4, v10

    add-float v22, v17, v22

    mul-float v23, v16, v11

    add-float v22, v22, v23

    mul-float v23, v5, v10

    add-float v23, v13, v23

    mul-float v24, v7, v11

    add-float v23, v23, v24

    int-to-float v10, v2

    mul-float v25, v14, v9

    mul-float v26, v19, v8

    add-float v25, v25, v26

    mul-float v25, v25, v10

    mul-float v26, v20, v9

    mul-float v27, v15, v8

    add-float v26, v26, v27

    mul-float v26, v26, v10

    mul-float/2addr v14, v8

    mul-float v19, v19, v9

    sub-float v14, v14, v19

    mul-float/2addr v14, v10

    mul-float v20, v20, v8

    mul-float/2addr v15, v9

    sub-float v20, v20, v15

    mul-float v10, v10, v20

    add-int/lit8 v15, v3, -0x1

    mul-int/2addr v15, v0

    add-int v15, p6, v15

    add-int v19, v15, v6

    add-int v20, v19, v6

    add-int v27, v20, v6

    add-int v28, v27, v6

    add-float v17, v17, v4

    add-float v17, v17, v16

    .line 7373
    aput v17, p5, v15

    add-int/2addr v15, v12

    add-float/2addr v13, v5

    add-float/2addr v13, v7

    .line 7374
    aput v13, p5, v15

    sub-float v4, v18, v26

    .line 7375
    aput v4, p5, v19

    add-int/lit8 v19, v19, 0x1

    add-float v4, v21, v25

    .line 7376
    aput v4, p5, v19

    sub-float v4, v22, v10

    .line 7377
    aput v4, p5, v20

    add-int/lit8 v20, v20, 0x1

    add-float v4, v23, v14

    .line 7378
    aput v4, p5, v20

    add-float v22, v22, v10

    .line 7379
    aput v22, p5, v27

    add-int/lit8 v27, v27, 0x1

    sub-float v23, v23, v14

    .line 7380
    aput v23, p5, v27

    add-float v18, v18, v26

    .line 7381
    aput v18, p5, v28

    add-int/lit8 v28, v28, 0x1

    sub-float v21, v21, v25

    .line 7382
    aput v21, p5, v28

    add-int/lit8 v3, v3, 0x1

    const v10, -0x40b0e443

    goto/16 :goto_0

    :cond_0
    move v7, v12

    :goto_1
    if-gt v7, v1, :cond_2

    add-int/lit8 v10, p4, 0x1

    mul-int/lit8 v13, v7, 0x5

    add-int/lit8 v13, v13, -0x4

    mul-int/2addr v13, v0

    add-int/2addr v10, v13

    add-int/lit8 v13, v7, -0x1

    mul-int/2addr v13, v0

    add-int v13, p6, v13

    const/4 v14, 0x0

    :goto_2
    add-int/lit8 v15, v0, -0x1

    if-ge v14, v15, :cond_1

    add-int v15, v14, v10

    add-int v16, v15, v0

    sub-int v17, v15, v0

    add-int v18, v16, v0

    add-int v19, v18, v0

    add-int/lit8 v20, v15, -0x1

    .line 7394
    aget v20, p3, v20

    .line 7395
    aget v15, p3, v15

    add-int/lit8 v21, v16, -0x1

    .line 7396
    aget v21, p3, v21

    .line 7397
    aget v16, p3, v16

    add-int/lit8 v22, v17, -0x1

    .line 7398
    aget v22, p3, v22

    .line 7399
    aget v17, p3, v17

    add-int/lit8 v23, v18, -0x1

    .line 7400
    aget v23, p3, v23

    .line 7401
    aget v18, p3, v18

    add-int/lit8 v25, v19, -0x1

    .line 7402
    aget v25, p3, v25

    .line 7403
    aget v19, p3, v19

    sub-float v26, v15, v19

    add-float v15, v15, v19

    sub-float v19, v16, v18

    add-float v16, v16, v18

    sub-float v18, v20, v25

    add-float v20, v20, v25

    sub-float v25, v21, v23

    add-float v21, v21, v23

    mul-float v23, v20, v11

    add-float v23, v22, v23

    const v24, -0x40b0e443

    mul-float v27, v21, v24

    add-float v23, v23, v27

    mul-float v27, v15, v11

    add-float v27, v17, v27

    mul-float v28, v16, v24

    add-float v27, v27, v28

    mul-float v28, v20, v24

    add-float v28, v22, v28

    mul-float v29, v21, v11

    add-float v28, v28, v29

    mul-float v29, v15, v24

    add-float v29, v17, v29

    mul-float v30, v16, v11

    add-float v29, v29, v30

    int-to-float v11, v2

    mul-float v31, v18, v9

    mul-float v32, v25, v8

    add-float v31, v31, v32

    mul-float v31, v31, v11

    mul-float v32, v26, v9

    mul-float v33, v19, v8

    add-float v32, v32, v33

    mul-float v32, v32, v11

    mul-float v18, v18, v8

    mul-float v25, v25, v9

    sub-float v18, v18, v25

    mul-float v18, v18, v11

    mul-float v26, v26, v8

    mul-float v19, v19, v9

    sub-float v26, v26, v19

    mul-float v26, v26, v11

    sub-float v19, v28, v26

    add-float v28, v28, v26

    add-float v25, v29, v18

    sub-float v29, v29, v18

    add-float v18, v23, v32

    sub-float v23, v23, v32

    sub-float v26, v27, v31

    add-float v27, v27, v31

    add-int v31, v14, p7

    add-int v32, v14, v3

    add-int v33, v14, v4

    add-int v34, v14, v5

    move-object/from16 v8, p0

    .line 7434
    iget-object v9, v8, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    aget v35, v9, v31

    add-int/lit8 v31, v31, 0x1

    .line 7435
    aget v31, v9, v31

    mul-float v31, v31, v11

    .line 7436
    aget v36, v9, v32

    add-int/lit8 v32, v32, 0x1

    .line 7437
    aget v32, v9, v32

    mul-float v32, v32, v11

    .line 7438
    aget v37, v9, v33

    add-int/lit8 v33, v33, 0x1

    .line 7439
    aget v33, v9, v33

    mul-float v33, v33, v11

    .line 7440
    aget v38, v9, v34

    add-int/lit8 v34, v34, 0x1

    .line 7441
    aget v9, v9, v34

    mul-float/2addr v11, v9

    add-int v9, v14, v13

    add-int v34, v9, v6

    add-int v39, v34, v6

    add-int v40, v39, v6

    add-int v41, v40, v6

    add-float v22, v22, v20

    add-float v22, v22, v21

    .line 7448
    aput v22, p5, v9

    add-int/2addr v9, v12

    add-float v17, v17, v15

    add-float v17, v17, v16

    .line 7449
    aput v17, p5, v9

    mul-float v9, v35, v23

    mul-float v15, v31, v27

    sub-float/2addr v9, v15

    .line 7450
    aput v9, p5, v34

    add-int/lit8 v34, v34, 0x1

    mul-float v35, v35, v27

    mul-float v31, v31, v23

    add-float v35, v35, v31

    .line 7451
    aput v35, p5, v34

    mul-float v9, v36, v19

    mul-float v15, v32, v25

    sub-float/2addr v9, v15

    .line 7452
    aput v9, p5, v39

    add-int/lit8 v39, v39, 0x1

    mul-float v36, v36, v25

    mul-float v32, v32, v19

    add-float v36, v36, v32

    .line 7453
    aput v36, p5, v39

    mul-float v9, v37, v28

    mul-float v15, v33, v29

    sub-float/2addr v9, v15

    .line 7454
    aput v9, p5, v40

    add-int/lit8 v40, v40, 0x1

    mul-float v37, v37, v29

    mul-float v33, v33, v28

    add-float v37, v37, v33

    .line 7455
    aput v37, p5, v40

    mul-float v9, v38, v18

    mul-float v15, v11, v26

    sub-float/2addr v9, v15

    .line 7456
    aput v9, p5, v41

    add-int/lit8 v41, v41, 0x1

    mul-float v38, v38, v26

    mul-float v11, v11, v18

    add-float v38, v38, v11

    .line 7457
    aput v38, p5, v41

    add-int/lit8 v14, v14, 0x2

    const v8, 0x3f167918

    const v9, 0x3f737871

    const v11, 0x3e9e377a

    goto/16 :goto_2

    :cond_1
    const v24, -0x40b0e443

    move-object/from16 v8, p0

    add-int/lit8 v7, v7, 0x1

    const v8, 0x3f167918

    const v9, 0x3f737871

    const v11, 0x3e9e377a

    goto/16 :goto_1

    :cond_2
    move-object/from16 v8, p0

    return-void
.end method

.method passf5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V
    .locals 61

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move-wide/from16 v3, p13

    add-long v5, p11, p1

    add-long v7, v5, p1

    add-long v9, v7, p1

    mul-long v11, p3, p1

    const-wide/16 v13, 0x2

    cmp-long v15, p1, v13

    const-wide/16 v16, 0x4

    const-wide/16 v18, 0x5

    const v20, 0x3f167918

    const v21, 0x3f737871

    const v22, -0x40b0e443

    const v23, 0x3e9e377a

    const-wide/16 v24, 0x1

    if-nez v15, :cond_0

    move-wide/from16 v5, v24

    :goto_0
    cmp-long v7, v5, p3

    if-gtz v7, :cond_2

    mul-long v7, v5, v18

    sub-long v7, v7, v16

    mul-long v7, v7, p1

    add-long v7, p6, v7

    add-long v9, v7, v24

    add-long v13, v9, p1

    move-wide/from16 v26, v11

    sub-long v11, v9, p1

    move-wide/from16 p11, v5

    add-long v5, v13, p1

    add-long v2, v5, p1

    .line 7490
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 7491
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-long v8, v13, v24

    .line 7492
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 7493
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    sub-long v13, v11, v24

    .line 7494
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 7495
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-long v12, v5, v24

    .line 7496
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    .line 7497
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-long v13, v2, v24

    .line 7498
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 7499
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    sub-float v3, v7, v2

    add-float/2addr v7, v2

    sub-float v2, v9, v5

    add-float/2addr v9, v5

    sub-float v5, v4, v6

    add-float/2addr v4, v6

    sub-float v6, v8, v12

    add-float/2addr v8, v12

    mul-float v12, v4, v23

    add-float/2addr v12, v10

    mul-float v13, v8, v22

    add-float/2addr v12, v13

    mul-float v13, v7, v23

    add-float/2addr v13, v11

    mul-float v14, v9, v22

    add-float/2addr v13, v14

    mul-float v14, v4, v22

    add-float/2addr v14, v10

    mul-float v15, v8, v23

    add-float/2addr v14, v15

    mul-float v15, v7, v22

    add-float/2addr v15, v11

    mul-float v28, v9, v23

    add-float v15, v15, v28

    move-wide/from16 v0, p13

    move/from16 v28, v15

    long-to-float v15, v0

    mul-float v29, v5, v21

    mul-float v30, v6, v20

    add-float v29, v29, v30

    mul-float v29, v29, v15

    mul-float v30, v3, v21

    mul-float v31, v2, v20

    add-float v30, v30, v31

    mul-float v30, v30, v15

    mul-float v5, v5, v20

    mul-float v6, v6, v21

    sub-float/2addr v5, v6

    mul-float/2addr v5, v15

    mul-float v3, v3, v20

    mul-float v2, v2, v21

    sub-float/2addr v3, v2

    mul-float/2addr v15, v3

    move-wide/from16 v2, p11

    sub-long v31, v2, v24

    mul-long v31, v31, p1

    add-long v0, p9, v31

    add-long v2, v0, v26

    move/from16 v31, v5

    add-long v5, v2, v26

    move/from16 v32, v14

    move/from16 v33, v15

    add-long v14, v5, v26

    move-wide/from16 v34, v5

    add-long v5, v14, v26

    add-float/2addr v10, v4

    add-float/2addr v10, v8

    move-object/from16 v4, p8

    .line 7523
    invoke-virtual {v4, v0, v1, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v24

    add-float/2addr v11, v7

    add-float/2addr v11, v9

    .line 7524
    invoke-virtual {v4, v0, v1, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v0, v12, v30

    .line 7525
    invoke-virtual {v4, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v24

    add-float v0, v13, v29

    .line 7526
    invoke-virtual {v4, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v0, v32, v33

    move-wide/from16 v2, v34

    .line 7527
    invoke-virtual {v4, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v2, v24

    add-float v2, v28, v31

    .line 7528
    invoke-virtual {v4, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v0, v32, v33

    .line 7529
    invoke-virtual {v4, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v24

    sub-float v0, v28, v31

    .line 7530
    invoke-virtual {v4, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v12, v12, v30

    .line 7531
    invoke-virtual {v4, v5, v6, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v24

    sub-float v13, v13, v29

    .line 7532
    invoke-virtual {v4, v5, v6, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v0, p11

    add-long v5, v0, v24

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v4

    move-wide/from16 v11, v26

    move-wide/from16 v3, p13

    goto/16 :goto_0

    :cond_0
    move-object v4, v2

    move-wide/from16 v26, v11

    move-wide/from16 v0, v24

    :goto_1
    cmp-long v2, v0, p3

    if-gtz v2, :cond_2

    add-long v2, p6, v24

    mul-long v11, v0, v18

    sub-long v11, v11, v16

    mul-long v11, v11, p1

    add-long/2addr v2, v11

    sub-long v11, v0, v24

    mul-long v11, v11, p1

    add-long v11, p9, v11

    const-wide/16 v28, 0x0

    :goto_2
    sub-long v30, p1, v24

    cmp-long v15, v28, v30

    if-gez v15, :cond_1

    add-long v13, v28, v2

    move-wide/from16 v32, v2

    add-long v2, v13, p1

    move-wide/from16 v34, v0

    sub-long v0, v13, p1

    move-wide/from16 v36, v11

    add-long v11, v2, p1

    move-wide/from16 v38, v9

    add-long v9, v11, p1

    move-wide/from16 v40, v7

    sub-long v7, v13, v24

    move-object/from16 v15, p5

    move-wide/from16 v42, v5

    move-wide/from16 v4, p13

    .line 7544
    invoke-virtual {v15, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 7545
    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-long v13, v2, v24

    .line 7546
    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 7547
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    sub-long v13, v0, v24

    .line 7548
    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 7549
    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    sub-long v13, v11, v24

    .line 7550
    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    .line 7551
    invoke-virtual {v15, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-long v12, v9, v24

    .line 7552
    invoke-virtual {v15, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    .line 7553
    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    sub-float v10, v7, v9

    add-float/2addr v7, v9

    sub-float v9, v2, v11

    add-float/2addr v2, v11

    sub-float v11, v6, v12

    add-float/2addr v6, v12

    sub-float v12, v8, v1

    add-float/2addr v8, v1

    mul-float v1, v6, v23

    add-float/2addr v1, v3

    mul-float v13, v8, v22

    add-float/2addr v1, v13

    mul-float v13, v7, v23

    add-float/2addr v13, v0

    mul-float v14, v2, v22

    add-float/2addr v13, v14

    mul-float v14, v6, v22

    add-float/2addr v14, v3

    mul-float v44, v8, v23

    add-float v14, v14, v44

    mul-float v44, v7, v22

    add-float v44, v0, v44

    mul-float v45, v2, v23

    add-float v44, v44, v45

    long-to-float v15, v4

    mul-float v45, v11, v21

    mul-float v46, v12, v20

    add-float v45, v45, v46

    mul-float v45, v45, v15

    mul-float v46, v10, v21

    mul-float v47, v9, v20

    add-float v46, v46, v47

    mul-float v46, v46, v15

    mul-float v11, v11, v20

    mul-float v12, v12, v21

    sub-float/2addr v11, v12

    mul-float/2addr v11, v15

    mul-float v10, v10, v20

    mul-float v9, v9, v21

    sub-float/2addr v10, v9

    mul-float/2addr v10, v15

    sub-float v9, v14, v10

    add-float/2addr v14, v10

    add-float v10, v44, v11

    sub-float v44, v44, v11

    add-float v11, v1, v46

    sub-float v1, v1, v46

    sub-float v12, v13, v45

    add-float v13, v13, v45

    add-long v4, v28, p11

    move/from16 v45, v11

    move/from16 v46, v12

    add-long v11, v28, v42

    move/from16 v47, v9

    move/from16 v48, v10

    add-long v9, v28, v40

    move/from16 v50, v13

    move/from16 v49, v14

    add-long v13, v28, v38

    move/from16 v51, v1

    move/from16 v52, v2

    move-object/from16 v1, p0

    .line 7584
    iget-object v2, v1, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    move/from16 v53, v2

    .line 7585
    iget-object v2, v1, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v4, v4, v24

    invoke-virtual {v2, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v2, v15

    .line 7586
    iget-object v4, v1, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 7587
    iget-object v5, v1, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v11, v11, v24

    invoke-virtual {v5, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v5, v15

    .line 7588
    iget-object v11, v1, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 7589
    iget-object v12, v1, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v9, v9, v24

    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v9, v15

    .line 7590
    iget-object v10, v1, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 7591
    iget-object v12, v1, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v13, v13, v24

    invoke-virtual {v12, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    mul-float/2addr v15, v12

    add-long v12, v28, v36

    move/from16 v54, v15

    add-long v14, v12, v26

    move/from16 v55, v9

    move/from16 v56, v10

    add-long v9, v14, v26

    move/from16 v57, v4

    move/from16 v58, v5

    add-long v4, v9, v26

    move-wide/from16 v59, v9

    add-long v9, v4, v26

    add-float/2addr v3, v6

    add-float/2addr v3, v8

    move-object/from16 v6, p8

    .line 7598
    invoke-virtual {v6, v12, v13, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v24

    add-float/2addr v0, v7

    add-float v0, v0, v52

    .line 7599
    invoke-virtual {v6, v12, v13, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v0, v53, v51

    mul-float v13, v2, v50

    sub-float/2addr v0, v13

    .line 7600
    invoke-virtual {v6, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v24

    mul-float v0, v53, v50

    mul-float v2, v2, v51

    add-float/2addr v0, v2

    .line 7601
    invoke-virtual {v6, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v0, v57, v47

    mul-float v2, v58, v48

    sub-float/2addr v0, v2

    move-wide/from16 v14, v59

    .line 7602
    invoke-virtual {v6, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v14, v24

    mul-float v0, v57, v48

    mul-float v7, v58, v47

    add-float/2addr v0, v7

    .line 7603
    invoke-virtual {v6, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v14, v11, v49

    mul-float v0, v55, v44

    sub-float/2addr v14, v0

    .line 7604
    invoke-virtual {v6, v4, v5, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v24

    mul-float v11, v11, v44

    mul-float v0, v55, v49

    add-float/2addr v11, v0

    .line 7605
    invoke-virtual {v6, v4, v5, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v0, v56, v45

    mul-float v15, v54, v46

    sub-float/2addr v0, v15

    .line 7606
    invoke-virtual {v6, v9, v10, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v9, v24

    mul-float v0, v56, v46

    mul-float v15, v54, v45

    add-float/2addr v0, v15

    .line 7607
    invoke-virtual {v6, v9, v10, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x2

    add-long v28, v28, v2

    move-wide v13, v2

    move-object v4, v6

    move-wide/from16 v2, v32

    move-wide/from16 v0, v34

    move-wide/from16 v11, v36

    move-wide/from16 v9, v38

    move-wide/from16 v7, v40

    move-wide/from16 v5, v42

    goto/16 :goto_2

    :cond_1
    move-wide/from16 v34, v0

    move-wide/from16 v42, v5

    move-wide/from16 v40, v7

    move-wide/from16 v38, v9

    move-wide v2, v13

    move-object/from16 v1, p0

    move-object v6, v4

    add-long v4, v34, v24

    move-wide v0, v4

    move-object v4, v6

    move-wide/from16 v5, v42

    goto/16 :goto_1

    :cond_2
    move-object/from16 v1, p0

    return-void
.end method

.method passfg([IIIII[FI[FIII)V
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p11

    .line 7624
    div-int/lit8 v10, v1, 0x2

    add-int/lit8 v11, v2, 0x1

    const/4 v12, 0x2

    .line 7625
    div-int/2addr v11, v12

    mul-int v13, v2, v1

    if-lt v1, v3, :cond_5

    const/4 v12, 0x1

    :goto_0
    if-ge v12, v11, :cond_2

    sub-int v17, v2, v12

    mul-int v18, v12, v1

    mul-int v17, v17, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v3, :cond_1

    mul-int v19, v14, v1

    mul-int v20, v18, v3

    add-int v20, v19, v20

    mul-int v21, v17, v3

    add-int v21, v19, v21

    mul-int v19, v19, v2

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v1, :cond_0

    add-int v23, v8, v15

    add-int v24, v6, v15

    add-int v25, v24, v18

    add-int v25, v25, v19

    .line 7639
    aget v25, v5, v25

    add-int v24, v24, v17

    add-int v24, v24, v19

    .line 7640
    aget v24, v5, v24

    add-int v26, v23, v20

    add-float v27, v25, v24

    .line 7641
    aput v27, v7, v26

    add-int v23, v23, v21

    sub-float v25, v25, v24

    .line 7642
    aput v25, v7, v23

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v3, :cond_4

    mul-int v14, v12, v1

    mul-int v15, v14, v2

    move/from16 v17, v10

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v1, :cond_3

    add-int v18, v8, v10

    add-int v18, v18, v14

    add-int v19, v6, v10

    add-int v19, v19, v15

    .line 7650
    aget v19, v5, v19

    aput v19, v7, v18

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v17

    goto :goto_3

    :cond_4
    move/from16 v17, v10

    move/from16 v19, v13

    goto :goto_a

    :cond_5
    move/from16 v17, v10

    const/4 v10, 0x1

    :goto_5
    if-ge v10, v11, :cond_8

    sub-int v12, v2, v10

    mul-int v14, v10, v3

    mul-int/2addr v14, v1

    mul-int v15, v12, v3

    mul-int/2addr v15, v1

    mul-int v18, v10, v1

    mul-int/2addr v12, v1

    move/from16 v19, v13

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v1, :cond_7

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v3, :cond_6

    mul-int v20, v9, v1

    mul-int v21, v20, v2

    add-int v23, v8, v13

    add-int v24, v6, v13

    add-int v25, v24, v18

    add-int v25, v25, v21

    .line 7666
    aget v25, v5, v25

    add-int v24, v24, v12

    add-int v24, v24, v21

    .line 7667
    aget v21, v5, v24

    add-int v23, v23, v20

    add-int v20, v23, v14

    add-float v24, v25, v21

    .line 7668
    aput v24, v7, v20

    add-int v23, v23, v15

    sub-float v25, v25, v21

    .line 7669
    aput v25, v7, v23

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, p11

    goto :goto_6

    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p11

    move/from16 v13, v19

    goto :goto_5

    :cond_8
    move/from16 v19, v13

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v1, :cond_a

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v3, :cond_9

    mul-int v12, v10, v1

    add-int v13, v8, v9

    add-int/2addr v13, v12

    add-int v14, v6, v9

    mul-int/2addr v12, v2

    add-int/2addr v14, v12

    .line 7676
    aget v12, v5, v14

    aput v12, v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_a
    :goto_a
    rsub-int/lit8 v9, v1, 0x2

    add-int/lit8 v10, v2, -0x1

    mul-int/2addr v10, v4

    move v13, v9

    const/4 v12, 0x1

    const/4 v14, 0x0

    :goto_b
    if-ge v12, v11, :cond_f

    sub-int v15, v2, v12

    add-int/2addr v13, v1

    mul-int v18, v12, v4

    mul-int/2addr v15, v4

    add-int v20, v13, p10

    move/from16 v21, v9

    .line 7690
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v23, v20, -0x2

    aget v23, v9, v23

    move/from16 v24, v13

    move/from16 v13, p11

    int-to-float v3, v13

    const/16 v22, 0x1

    add-int/lit8 v20, v20, -0x1

    .line 7691
    aget v9, v9, v20

    mul-float/2addr v9, v3

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v4, :cond_b

    add-int v20, v6, v13

    add-int v25, v8, v13

    add-int v26, v20, v18

    .line 7695
    aget v27, v7, v25

    add-int v28, v25, v4

    aget v28, v7, v28

    mul-float v28, v28, v23

    add-float v27, v27, v28

    aput v27, v5, v26

    add-int v20, v20, v15

    add-int v25, v25, v10

    .line 7696
    aget v25, v7, v25

    mul-float v25, v25, v9

    aput v25, v5, v20

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_b
    add-int/2addr v14, v1

    move/from16 v13, v24

    const/4 v9, 0x2

    :goto_d
    if-ge v9, v11, :cond_e

    sub-int v20, v2, v9

    add-int/2addr v13, v14

    move/from16 v23, v10

    move/from16 v10, v19

    if-le v13, v10, :cond_c

    sub-int/2addr v13, v10

    :cond_c
    add-int v19, v13, p10

    move/from16 v25, v10

    .line 7707
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v26, v19, -0x2

    aget v26, v10, v26

    const/16 v22, 0x1

    add-int/lit8 v19, v19, -0x1

    .line 7708
    aget v10, v10, v19

    mul-float/2addr v10, v3

    mul-int v19, v9, v4

    mul-int v20, v20, v4

    move/from16 v27, v3

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v4, :cond_d

    add-int v28, v6, v3

    add-int v29, v8, v3

    add-int v30, v28, v18

    .line 7714
    aget v31, v5, v30

    add-int v32, v29, v19

    aget v32, v7, v32

    mul-float v32, v32, v26

    add-float v31, v31, v32

    aput v31, v5, v30

    add-int v28, v28, v15

    .line 7715
    aget v30, v5, v28

    add-int v29, v29, v20

    aget v29, v7, v29

    mul-float v29, v29, v10

    add-float v30, v30, v29

    aput v30, v5, v28

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v23

    move/from16 v19, v25

    move/from16 v3, v27

    goto :goto_d

    :cond_e
    move/from16 v23, v10

    move/from16 v25, v19

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p4

    move/from16 v9, v21

    move/from16 v13, v24

    goto/16 :goto_b

    :cond_f
    move/from16 v21, v9

    const/4 v3, 0x1

    :goto_f
    if-ge v3, v11, :cond_11

    mul-int v9, v3, v4

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v4, :cond_10

    add-int v12, v8, v10

    .line 7723
    aget v13, v7, v12

    add-int v14, v12, v9

    aget v14, v7, v14

    add-float/2addr v13, v14

    aput v13, v7, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_11
    const/4 v3, 0x1

    :goto_11
    if-ge v3, v11, :cond_13

    sub-int v9, v2, v3

    mul-int v10, v3, v4

    mul-int/2addr v9, v4

    const/4 v12, 0x1

    :goto_12
    if-ge v12, v4, :cond_12

    add-int v13, v8, v12

    add-int v14, v6, v12

    add-int v15, v14, v10

    add-int/2addr v14, v9

    add-int/lit8 v18, v15, -0x1

    .line 7735
    aget v18, v5, v18

    .line 7736
    aget v15, v5, v15

    add-int/lit8 v19, v14, -0x1

    .line 7737
    aget v19, v5, v19

    .line 7738
    aget v14, v5, v14

    add-int v20, v13, v10

    add-int/2addr v13, v9

    add-int/lit8 v23, v20, -0x1

    sub-float v24, v18, v14

    .line 7742
    aput v24, v7, v23

    add-int/lit8 v23, v13, -0x1

    add-float v18, v18, v14

    .line 7743
    aput v18, v7, v23

    add-float v14, v15, v19

    .line 7744
    aput v14, v7, v20

    sub-float v15, v15, v19

    .line 7745
    aput v15, v7, v13

    add-int/lit8 v12, v12, 0x2

    goto :goto_12

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_13
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 7748
    aput v9, p1, v3

    const/4 v9, 0x2

    if-ne v1, v9, :cond_14

    return-void

    .line 7752
    :cond_14
    aput v3, p1, v3

    .line 7753
    invoke-static {v7, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v4, p4

    mul-int v9, v4, v1

    const/4 v10, 0x1

    :goto_13
    if-ge v10, v2, :cond_16

    mul-int v11, v10, v9

    move v12, v3

    :goto_14
    if-ge v12, v4, :cond_15

    mul-int v13, v12, v1

    add-int v14, v8, v13

    add-int/2addr v14, v11

    add-int/2addr v13, v6

    add-int/2addr v13, v11

    .line 7761
    aget v15, v7, v14

    aput v15, v5, v13

    const/4 v15, 0x1

    add-int/2addr v13, v15

    add-int/2addr v14, v15

    .line 7762
    aget v14, v7, v14

    aput v14, v5, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_16
    move/from16 v10, v17

    if-gt v10, v4, :cond_19

    move v10, v3

    const/4 v15, 0x1

    :goto_15
    if-ge v15, v2, :cond_1c

    const/4 v11, 0x2

    add-int/2addr v10, v11

    mul-int v12, v15, v4

    mul-int/2addr v12, v1

    const/4 v13, 0x3

    :goto_16
    if-ge v13, v1, :cond_18

    add-int/lit8 v10, v10, 0x2

    add-int v14, v10, p10

    add-int/lit8 v16, v14, -0x1

    .line 7773
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    sub-int/2addr v14, v11

    aget v14, v3, v14

    move/from16 v9, p11

    int-to-float v11, v9

    .line 7774
    aget v3, v3, v16

    mul-float/2addr v11, v3

    add-int v3, v6, v13

    add-int v16, v8, v13

    move/from16 v17, v10

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v4, :cond_17

    mul-int v18, v10, v1

    add-int v18, v18, v12

    add-int v19, v3, v18

    add-int v18, v16, v18

    add-int/lit8 v20, v18, -0x1

    .line 7781
    aget v20, v7, v20

    .line 7782
    aget v18, v7, v18

    add-int/lit8 v21, v19, -0x1

    mul-float v22, v14, v20

    mul-float v23, v11, v18

    sub-float v22, v22, v23

    .line 7783
    aput v22, v5, v21

    mul-float v18, v18, v14

    mul-float v20, v20, v11

    add-float v18, v18, v20

    .line 7784
    aput v18, v5, v19

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_17
    add-int/lit8 v13, v13, 0x2

    move/from16 v10, v17

    const/4 v3, 0x0

    const/4 v11, 0x2

    goto :goto_16

    :cond_18
    move/from16 v9, p11

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_15

    :cond_19
    move/from16 v9, p11

    const/4 v3, 0x1

    :goto_18
    if-ge v3, v2, :cond_1c

    add-int v21, v21, v1

    mul-int v10, v3, v4

    mul-int/2addr v10, v1

    const/4 v11, 0x0

    :goto_19
    if-ge v11, v4, :cond_1b

    mul-int v12, v11, v1

    add-int/2addr v12, v10

    move/from16 v14, v21

    const/4 v13, 0x3

    :goto_1a
    if-ge v13, v1, :cond_1a

    add-int/lit8 v15, v14, 0x2

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int v14, v14, p10

    .line 7799
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v17, v14, -0x1

    aget v17, v1, v17

    int-to-float v0, v9

    .line 7800
    aget v1, v1, v14

    mul-float/2addr v0, v1

    add-int v1, v6, v13

    add-int/2addr v1, v12

    add-int v14, v8, v13

    add-int/2addr v14, v12

    add-int/lit8 v18, v14, -0x1

    .line 7803
    aget v18, v7, v18

    .line 7804
    aget v14, v7, v14

    add-int/lit8 v19, v1, -0x1

    mul-float v20, v17, v18

    mul-float v22, v0, v14

    sub-float v20, v20, v22

    .line 7805
    aput v20, v5, v19

    mul-float v17, v17, v14

    mul-float v0, v0, v18

    add-float v17, v17, v0

    .line 7806
    aput v17, v5, v1

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v14, v15

    goto :goto_1a

    :cond_1a
    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_19

    :cond_1b
    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_18

    :cond_1c
    return-void
.end method

.method passfg([IJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJJ)V
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v9, p10

    move-object/from16 v10, p13

    move-wide/from16 v11, p18

    const-wide/16 v13, 0x2

    .line 7824
    div-long v15, p2, v13

    const-wide/16 v17, 0x1

    add-long v1, p4, v17

    .line 7825
    div-long/2addr v1, v13

    mul-long v3, p4, p2

    cmp-long v5, p2, p6

    const-wide/16 v19, 0x0

    if-ltz v5, :cond_5

    move-wide/from16 v5, v17

    :goto_0
    cmp-long v7, v5, v1

    if-gez v7, :cond_2

    sub-long v7, p4, v5

    mul-long v21, v5, p2

    mul-long v7, v7, p2

    move-wide/from16 v23, v19

    :goto_1
    cmp-long v25, v23, p6

    if-gez v25, :cond_1

    mul-long v25, v23, p2

    mul-long v27, v21, p6

    add-long v27, v25, v27

    mul-long v29, v7, p6

    add-long v29, v25, v29

    mul-long v25, v25, p4

    move-wide/from16 v31, v19

    :goto_2
    cmp-long v33, v31, p2

    if-gez v33, :cond_0

    add-long v33, p14, v31

    add-long v35, p11, v31

    add-long v37, v35, v21

    add-long v13, v37, v25

    .line 7839
    invoke-virtual {v9, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    add-long v35, v35, v7

    move-wide/from16 v37, v7

    add-long v7, v35, v25

    .line 7840
    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    move-wide/from16 v35, v15

    add-long v14, v33, v27

    add-float v8, v13, v7

    .line 7841
    invoke-virtual {v10, v14, v15, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v33, v29

    sub-float/2addr v13, v7

    .line 7842
    invoke-virtual {v10, v14, v15, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v31, v31, v17

    move-wide/from16 v15, v35

    move-wide/from16 v7, v37

    const-wide/16 v13, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v37, v7

    move-wide/from16 v35, v15

    add-long v23, v23, v17

    const-wide/16 v13, 0x2

    goto :goto_1

    :cond_1
    move-wide/from16 v35, v15

    add-long v5, v5, v17

    const-wide/16 v13, 0x2

    goto :goto_0

    :cond_2
    move-wide/from16 v35, v15

    move-wide/from16 v5, v19

    :goto_3
    cmp-long v7, v5, p6

    if-gez v7, :cond_4

    mul-long v7, v5, p2

    mul-long v13, v7, p4

    move-wide/from16 v15, v19

    :goto_4
    cmp-long v21, v15, p2

    if-gez v21, :cond_3

    add-long v21, p14, v15

    move-wide/from16 v23, v3

    add-long v3, v21, v7

    add-long v21, p11, v15

    move-wide/from16 v25, v7

    add-long v7, v21, v13

    .line 7850
    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v10, v3, v4, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v15, v15, v17

    move-wide/from16 v3, v23

    move-wide/from16 v7, v25

    goto :goto_4

    :cond_3
    move-wide/from16 v23, v3

    add-long v5, v5, v17

    goto :goto_3

    :cond_4
    move-wide/from16 v23, v3

    move-wide/from16 v27, v1

    goto/16 :goto_a

    :cond_5
    move-wide/from16 v23, v3

    move-wide/from16 v35, v15

    move-wide/from16 v3, v17

    :goto_5
    cmp-long v5, v3, v1

    if-gez v5, :cond_8

    sub-long v5, p4, v3

    mul-long v7, v3, p6

    mul-long v7, v7, p2

    mul-long v13, v5, p6

    mul-long v13, v13, p2

    mul-long v15, v3, p2

    mul-long v5, v5, p2

    move-wide/from16 v21, v19

    :goto_6
    cmp-long v25, v21, p2

    if-gez v25, :cond_7

    move-wide/from16 v25, v19

    :goto_7
    cmp-long v27, v25, p6

    if-gez v27, :cond_6

    mul-long v27, v25, p2

    mul-long v29, v27, p4

    add-long v31, p14, v21

    add-long v33, p11, v21

    add-long v37, v33, v15

    add-long v11, v37, v29

    .line 7866
    invoke-virtual {v9, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    add-long v33, v33, v5

    move-wide/from16 v37, v5

    add-long v5, v33, v29

    .line 7867
    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    add-long v31, v31, v27

    move-wide/from16 v27, v1

    add-long v0, v31, v7

    add-float v2, v11, v5

    .line 7868
    invoke-virtual {v10, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v31, v13

    sub-float/2addr v11, v5

    .line 7869
    invoke-virtual {v10, v0, v1, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v25, v25, v17

    move-object/from16 v0, p0

    move-wide/from16 v11, p18

    move-wide/from16 v1, v27

    move-wide/from16 v5, v37

    goto :goto_7

    :cond_6
    move-wide/from16 v27, v1

    move-wide/from16 v37, v5

    add-long v21, v21, v17

    move-object/from16 v0, p0

    move-wide/from16 v11, p18

    goto :goto_6

    :cond_7
    move-wide/from16 v27, v1

    add-long v3, v3, v17

    move-object/from16 v0, p0

    move-wide/from16 v11, p18

    goto :goto_5

    :cond_8
    move-wide/from16 v27, v1

    move-wide/from16 v0, v19

    :goto_8
    cmp-long v2, v0, p2

    if-gez v2, :cond_a

    move-wide/from16 v2, v19

    :goto_9
    cmp-long v4, v2, p6

    if-gez v4, :cond_9

    mul-long v4, v2, p2

    add-long v6, p14, v0

    add-long/2addr v6, v4

    add-long v11, p11, v0

    mul-long v4, v4, p4

    add-long/2addr v11, v4

    .line 7876
    invoke-virtual {v9, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v10, v6, v7, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v17

    goto :goto_9

    :cond_9
    add-long v0, v0, v17

    goto :goto_8

    :cond_a
    :goto_a
    const-wide/16 v0, 0x2

    sub-long v13, v0, p2

    sub-long v0, p4, v17

    mul-long v0, v0, p8

    move-wide v4, v13

    move-wide/from16 v2, v17

    move-wide/from16 v6, v19

    :goto_b
    cmp-long v8, v2, v27

    if-gez v8, :cond_f

    sub-long v11, p4, v2

    add-long v4, v4, p2

    mul-long v15, v2, p8

    mul-long v11, v11, p8

    add-long v21, v4, p16

    move-object/from16 v8, p0

    move-wide/from16 v25, v4

    .line 7890
    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v31, v13

    const-wide/16 v29, 0x2

    sub-long v13, v21, v29

    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    move-wide/from16 v13, p18

    long-to-float v5, v13

    .line 7891
    iget-object v13, v8, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v29, v2

    sub-long v2, v21, v17

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v2, v5

    move-wide/from16 v13, v19

    :goto_c
    cmp-long v3, v13, p8

    if-gez v3, :cond_b

    add-long v21, p11, v13

    move v3, v5

    move-wide/from16 v33, v6

    add-long v5, p14, v13

    add-long v7, v21, v15

    .line 7895
    invoke-virtual {v10, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v37

    move-wide/from16 v39, v13

    add-long v13, v5, p8

    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v13, v4

    add-float v13, v37, v13

    invoke-virtual {v9, v7, v8, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v7, v21, v11

    add-long/2addr v5, v0

    .line 7896
    invoke-virtual {v10, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-virtual {v9, v7, v8, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v39, v17

    move-object/from16 v8, p0

    move v5, v3

    move-wide/from16 v6, v33

    goto :goto_c

    :cond_b
    move v3, v5

    move-wide/from16 v33, v6

    add-long v6, v33, p2

    move-wide/from16 v13, v25

    const-wide/16 v4, 0x2

    :goto_d
    cmp-long v2, v4, v27

    if-gez v2, :cond_e

    sub-long v21, p4, v4

    add-long/2addr v13, v6

    cmp-long v2, v13, v23

    if-lez v2, :cond_c

    sub-long v13, v13, v23

    :cond_c
    add-long v33, v13, p16

    move-object/from16 v8, p0

    .line 7907
    iget-object v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v39, v0

    const-wide/16 v37, 0x2

    sub-long v0, v33, v37

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    .line 7908
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v37, v6

    sub-long v6, v33, v17

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    mul-float/2addr v1, v3

    mul-long v6, v4, p8

    mul-long v21, v21, p8

    move-wide/from16 v33, v19

    :goto_e
    cmp-long v2, v33, p8

    if-gez v2, :cond_d

    add-long v41, p11, v33

    add-long v43, p14, v33

    move/from16 v45, v3

    add-long v2, v41, v15

    .line 7914
    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v46

    move-wide/from16 v47, v13

    add-long v13, v43, v6

    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v13, v0

    add-float v13, v46, v13

    invoke-virtual {v9, v2, v3, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v41, v11

    .line 7915
    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    move-wide/from16 v41, v6

    add-long v6, v43, v21

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v6, v1

    add-float/2addr v13, v6

    invoke-virtual {v9, v2, v3, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v33, v33, v17

    move-wide/from16 v6, v41

    move/from16 v3, v45

    move-wide/from16 v13, v47

    goto :goto_e

    :cond_d
    move/from16 v45, v3

    move-wide/from16 v47, v13

    add-long v4, v4, v17

    move-wide/from16 v6, v37

    move-wide/from16 v0, v39

    goto :goto_d

    :cond_e
    move-object/from16 v8, p0

    move-wide/from16 v39, v0

    move-wide/from16 v37, v6

    add-long v2, v29, v17

    move-wide/from16 v4, v25

    move-wide/from16 v13, v31

    goto/16 :goto_b

    :cond_f
    move-object/from16 v8, p0

    move-wide/from16 v31, v13

    move-wide/from16 v0, v17

    :goto_f
    cmp-long v2, v0, v27

    if-gez v2, :cond_11

    mul-long v2, v0, p8

    move-wide/from16 v4, v19

    :goto_10
    cmp-long v6, v4, p8

    if-gez v6, :cond_10

    add-long v6, p14, v4

    .line 7923
    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    add-long v12, v6, v2

    invoke-virtual {v10, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v10, v6, v7, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v17

    goto :goto_10

    :cond_10
    add-long v0, v0, v17

    goto :goto_f

    :cond_11
    move-wide/from16 v0, v17

    :goto_11
    cmp-long v2, v0, v27

    if-gez v2, :cond_13

    sub-long v2, p4, v0

    mul-long v4, v0, p8

    mul-long v2, v2, p8

    move-wide/from16 v6, v17

    :goto_12
    cmp-long v11, v6, p8

    if-gez v11, :cond_12

    add-long v11, p14, v6

    add-long v13, p11, v6

    move-wide v15, v0

    add-long v0, v13, v4

    add-long/2addr v13, v2

    move-wide/from16 v21, v6

    sub-long v6, v0, v17

    .line 7935
    invoke-virtual {v9, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 7936
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    sub-long v7, v13, v17

    .line 7937
    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    .line 7938
    invoke-virtual {v9, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    add-long v13, v11, v4

    add-long/2addr v11, v2

    move-wide/from16 v23, v2

    sub-long v2, v13, v17

    sub-float v8, v6, v7

    .line 7942
    invoke-virtual {v10, v2, v3, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v2, v11, v17

    add-float/2addr v6, v7

    .line 7943
    invoke-virtual {v10, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v2, v0, v1

    .line 7944
    invoke-virtual {v10, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v0, v1

    .line 7945
    invoke-virtual {v10, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v0, 0x2

    add-long v6, v21, v0

    move-object/from16 v8, p0

    move-wide v0, v15

    move-wide/from16 v2, v23

    goto :goto_12

    :cond_12
    move-wide v15, v0

    const-wide/16 v0, 0x2

    add-long v2, v15, v17

    move-object/from16 v8, p0

    move-wide v0, v2

    goto :goto_11

    :cond_13
    const-wide/16 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7948
    aput v2, p1, v3

    cmp-long v2, p2, v0

    if-nez v2, :cond_14

    return-void

    .line 7952
    :cond_14
    aput v3, p1, v3

    move-object/from16 v1, p13

    move-wide/from16 v2, p14

    move-object/from16 v4, p10

    move-wide/from16 v5, p11

    move-object/from16 v0, p0

    move-wide/from16 v7, p8

    .line 7953
    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    mul-long v1, p6, p2

    move-wide/from16 v3, v17

    :goto_13
    cmp-long v5, v3, p4

    if-gez v5, :cond_16

    mul-long v5, v3, v1

    move-wide/from16 v7, v19

    :goto_14
    cmp-long v11, v7, p6

    if-gez v11, :cond_15

    mul-long v11, v7, p2

    add-long v13, p14, v11

    add-long/2addr v13, v5

    add-long v11, p11, v11

    add-long/2addr v11, v5

    .line 7961
    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    invoke-virtual {v9, v11, v12, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v17

    add-long v13, v13, v17

    .line 7962
    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v7, v7, v17

    goto :goto_14

    :cond_15
    add-long v3, v3, v17

    goto :goto_13

    :cond_16
    cmp-long v1, v35, p6

    if-gtz v1, :cond_19

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    :goto_15
    cmp-long v1, v4, p4

    if-gez v1, :cond_1c

    const-wide/16 v11, 0x2

    add-long/2addr v6, v11

    mul-long v13, v4, p6

    mul-long v13, v13, p2

    const-wide/16 v15, 0x3

    :goto_16
    cmp-long v1, v15, p2

    if-gez v1, :cond_18

    add-long/2addr v6, v11

    add-long v21, v6, p16

    sub-long v2, v21, v17

    .line 7973
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v23, v6

    sub-long v6, v21, v11

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    move-wide/from16 v11, p18

    long-to-float v6, v11

    .line 7974
    iget-object v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v6, v2

    add-long v2, p11, v15

    add-long v7, p14, v15

    move-wide/from16 v21, v19

    :goto_17
    cmp-long v25, v21, p6

    if-gez v25, :cond_17

    mul-long v25, v21, p2

    add-long v25, v25, v13

    move-wide/from16 v27, v13

    add-long v13, v2, v25

    move-wide/from16 v29, v2

    add-long v2, v7, v25

    move-wide/from16 v25, v7

    sub-long v7, v2, v17

    .line 7981
    invoke-virtual {v10, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 7982
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    sub-long v10, v13, v17

    mul-float v3, v1, v7

    mul-float v8, v6, v2

    sub-float/2addr v3, v8

    .line 7983
    invoke-virtual {v9, v10, v11, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float/2addr v2, v1

    mul-float/2addr v7, v6

    add-float/2addr v2, v7

    .line 7984
    invoke-virtual {v9, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v21, v21, v17

    move-object/from16 v10, p13

    move-wide/from16 v11, p18

    move-wide/from16 v7, v25

    move-wide/from16 v13, v27

    move-wide/from16 v2, v29

    goto :goto_17

    :cond_17
    move-wide/from16 v27, v13

    const-wide/16 v2, 0x2

    add-long/2addr v15, v2

    move-object/from16 v10, p13

    move-wide v11, v2

    move-wide/from16 v6, v23

    goto :goto_16

    :cond_18
    add-long v4, v4, v17

    move-object/from16 v10, p13

    goto :goto_15

    :cond_19
    move-wide/from16 v1, v17

    move-wide/from16 v13, v31

    :goto_18
    cmp-long v3, v1, p4

    if-gez v3, :cond_1c

    add-long v13, v13, p2

    mul-long v3, v1, p6

    mul-long v3, v3, p2

    move-wide/from16 v5, v19

    :goto_19
    cmp-long v7, v5, p6

    if-gez v7, :cond_1b

    mul-long v7, v5, p2

    add-long/2addr v7, v3

    move-wide v15, v13

    const-wide/16 v10, 0x3

    :goto_1a
    cmp-long v12, v10, p2

    if-gez v12, :cond_1a

    const-wide/16 v21, 0x2

    add-long v23, v15, v21

    add-long v15, v15, v17

    move-wide/from16 v21, v3

    add-long v3, v15, p16

    .line 7999
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide v15, v13

    sub-long v13, v3, v17

    invoke-virtual {v12, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    move-wide/from16 v13, p18

    move-wide/from16 v25, v15

    long-to-float v15, v13

    .line 8000
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v15, v3

    add-long v3, p11, v10

    add-long/2addr v3, v7

    add-long v13, p14, v10

    add-long/2addr v13, v7

    move-wide/from16 v27, v7

    sub-long v7, v13, v17

    move-object/from16 v0, p13

    .line 8003
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 8004
    invoke-virtual {v0, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-long v13, v3, v17

    mul-float v16, v12, v7

    mul-float v29, v15, v8

    sub-float v0, v16, v29

    .line 8005
    invoke-virtual {v9, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float/2addr v12, v8

    mul-float/2addr v15, v7

    add-float/2addr v12, v15

    .line 8006
    invoke-virtual {v9, v3, v4, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x2

    add-long/2addr v10, v3

    move-object/from16 v0, p0

    move-wide/from16 v3, v21

    move-wide/from16 v15, v23

    move-wide/from16 v13, v25

    move-wide/from16 v7, v27

    goto :goto_1a

    :cond_1a
    move-wide/from16 v21, v3

    move-wide/from16 v25, v13

    const-wide/16 v3, 0x2

    add-long v5, v5, v17

    move-object/from16 v0, p0

    move-wide/from16 v3, v21

    goto :goto_19

    :cond_1b
    move-wide/from16 v25, v13

    const-wide/16 v3, 0x2

    add-long v1, v1, v17

    move-object/from16 v0, p0

    goto/16 :goto_18

    :cond_1c
    return-void
.end method

.method radb2(II[FI[FII)V
    .locals 22

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v1, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_0

    mul-int v6, v4, v0

    mul-int/lit8 v7, v6, 0x2

    add-int v8, v7, v0

    add-int v6, p6, v6

    add-int v7, p4, v7

    add-int v9, p4, v0

    sub-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 3831
    aget v5, p3, v7

    .line 3832
    aget v7, p3, v9

    add-float v8, v5, v7

    .line 3833
    aput v8, p5, v6

    add-int/2addr v6, v2

    sub-float/2addr v5, v7

    .line 3834
    aput v5, p5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    return-void

    :cond_1
    if-eq v0, v4, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    mul-int v7, v6, v0

    mul-int/lit8 v8, v7, 0x2

    add-int v9, v8, v0

    add-int v10, v7, v2

    move v11, v4

    :goto_2
    if-ge v11, v0, :cond_2

    sub-int v12, v0, v11

    add-int/lit8 v13, v11, -0x1

    add-int v13, v13, p7

    add-int v14, p6, v11

    add-int v15, p4, v11

    add-int v12, p4, v12

    move-object/from16 v3, p0

    .line 3851
    iget-object v4, v3, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v16, v13, -0x1

    aget v16, v4, v16

    .line 3852
    aget v4, v4, v13

    add-int/2addr v15, v8

    add-int/2addr v12, v9

    add-int v13, v14, v7

    add-int/2addr v14, v10

    add-int/lit8 v17, v15, -0x1

    .line 3857
    aget v17, p3, v17

    add-int/lit8 v18, v12, -0x1

    aget v18, p3, v18

    sub-float v19, v17, v18

    .line 3858
    aget v15, p3, v15

    aget v12, p3, v12

    add-float v20, v15, v12

    add-int/lit8 v21, v13, -0x1

    add-float v17, v17, v18

    .line 3864
    aput v17, p5, v21

    sub-float/2addr v15, v12

    .line 3865
    aput v15, p5, v13

    add-int/lit8 v12, v14, -0x1

    mul-float v13, v16, v19

    mul-float v15, v4, v20

    sub-float/2addr v13, v15

    .line 3866
    aput v13, p5, v12

    mul-float v16, v16, v20

    mul-float v4, v4, v19

    add-float v16, v16, v4

    .line 3867
    aput v16, p5, v14

    add-int/lit8 v11, v11, 0x2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    move-object/from16 v3, p0

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    move-object/from16 v3, p0

    .line 3870
    rem-int/lit8 v4, v0, 0x2

    if-ne v4, v5, :cond_5

    return-void

    :cond_4
    move-object/from16 v3, p0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_6

    mul-int v6, v4, v0

    mul-int/lit8 v7, v6, 0x2

    add-int v8, p6, v0

    sub-int/2addr v8, v5

    add-int/2addr v8, v6

    add-int v6, p4, v7

    add-int/2addr v6, v0

    add-int/lit8 v7, v6, -0x1

    .line 3879
    aget v7, p3, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v7, v9

    aput v7, p5, v8

    add-int/2addr v8, v2

    const/high16 v7, -0x40000000    # -2.0f

    .line 3880
    aget v6, p3, v6

    mul-float/2addr v6, v7

    aput v6, p5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    mul-long v3, p3, p1

    const-wide/16 v7, 0x0

    :goto_0
    cmp-long v9, v7, p3

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x1

    if-gez v9, :cond_0

    mul-long v14, v7, p1

    mul-long/2addr v10, v14

    add-long v16, v10, p1

    add-long v14, p9, v14

    add-long v9, p6, v10

    add-long v18, p6, p1

    sub-long v18, v18, v12

    add-long v5, v18, v16

    .line 3901
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 3902
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    add-float v6, v9, v5

    .line 3903
    invoke-virtual {v2, v14, v15, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v14, v3

    sub-float/2addr v9, v5

    .line 3904
    invoke-virtual {v2, v14, v15, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v7, v12

    goto :goto_0

    :cond_0
    cmp-long v5, p1, v10

    if-gez v5, :cond_1

    return-void

    :cond_1
    if-eqz v5, :cond_4

    const-wide/16 v5, 0x0

    :goto_1
    cmp-long v7, v5, p3

    if-gez v7, :cond_3

    mul-long v7, v5, p1

    mul-long v14, v7, v10

    add-long v16, v14, p1

    add-long v18, v7, v3

    move-wide/from16 v20, v10

    :goto_2
    cmp-long v9, v20, p1

    if-gez v9, :cond_2

    sub-long v22, p1, v20

    sub-long v24, v20, v12

    add-long v10, v24, p11

    add-long v24, p9, v20

    add-long v26, p6, v20

    add-long v22, p6, v22

    .line 3921
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v28, v3

    sub-long v3, v10, v12

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 3922
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-long v9, v26, v14

    add-long v12, v22, v16

    move-wide/from16 v22, v14

    add-long v14, v24, v7

    move-wide/from16 v30, v7

    add-long v7, v24, v18

    move-wide/from16 v26, v5

    const-wide/16 v24, 0x1

    sub-long v5, v9, v24

    .line 3927
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    move/from16 v32, v3

    move/from16 v33, v4

    sub-long v3, v12, v24

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v34

    sub-float v11, v11, v34

    .line 3928
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v34

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v35

    add-float v34, v34, v35

    .line 3929
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 3930
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    .line 3931
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 3932
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-long v12, v14, v24

    add-float/2addr v5, v3

    .line 3934
    invoke-virtual {v2, v12, v13, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v9, v6

    .line 3935
    invoke-virtual {v2, v14, v15, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v3, v7, v24

    mul-float v5, v32, v11

    mul-float v6, v33, v34

    sub-float/2addr v5, v6

    .line 3936
    invoke-virtual {v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v3, v32, v34

    mul-float v4, v33, v11

    add-float/2addr v3, v4

    .line 3937
    invoke-virtual {v2, v7, v8, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x2

    add-long v20, v20, v3

    move-wide v10, v3

    move-wide/from16 v14, v22

    move-wide/from16 v12, v24

    move-wide/from16 v5, v26

    move-wide/from16 v3, v28

    move-wide/from16 v7, v30

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v28, v3

    move-wide/from16 v26, v5

    move-wide v3, v10

    move-wide/from16 v24, v12

    add-long v5, v26, v24

    move-wide/from16 v3, v28

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v28, v3

    move-wide v3, v10

    move-wide/from16 v24, v12

    .line 3940
    rem-long v5, p1, v3

    cmp-long v5, v5, v24

    if-nez v5, :cond_5

    return-void

    :cond_4
    move-wide/from16 v28, v3

    move-wide v3, v10

    move-wide/from16 v24, v12

    :cond_5
    const-wide/16 v5, 0x0

    :goto_3
    cmp-long v7, v5, p3

    if-gez v7, :cond_6

    mul-long v7, v5, p1

    mul-long v10, v7, v3

    add-long v12, p9, p1

    sub-long v12, v12, v24

    add-long/2addr v12, v7

    add-long v7, p6, v10

    add-long v7, v7, p1

    sub-long v9, v7, v24

    .line 3949
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    invoke-virtual {v2, v12, v13, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v28

    const/high16 v9, -0x40000000    # -2.0f

    .line 3950
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    mul-float/2addr v7, v9

    invoke-virtual {v2, v12, v13, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v24

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb3(II[FI[FII)V
    .locals 28

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/high16 v5, -0x41000000    # -0.5f

    if-ge v4, v1, :cond_0

    mul-int v6, v4, v0

    mul-int/lit8 v7, v6, 0x3

    add-int v7, p4, v7

    mul-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v7

    .line 4147
    aget v7, p3, v7

    add-int/lit8 v9, v8, -0x1

    .line 4149
    aget v9, p3, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    const v10, 0x3fddb3d7

    .line 4151
    aget v8, p3, v8

    mul-float/2addr v8, v10

    add-int v6, p6, v6

    add-float/2addr v7, v9

    .line 4153
    aput v7, p5, v6

    add-int v6, v4, v1

    mul-int/2addr v6, v0

    add-int v6, p6, v6

    sub-float v7, v5, v8

    .line 4154
    aput v7, p5, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v4

    mul-int/2addr v6, v0

    add-int v6, p6, v6

    add-float/2addr v5, v8

    .line 4155
    aput v5, p5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    mul-int v4, v1, v0

    :goto_1
    if-ge v3, v1, :cond_3

    mul-int v6, v3, v0

    mul-int/lit8 v7, v6, 0x3

    add-int v8, v7, v0

    add-int v9, v8, v0

    add-int v10, v6, v4

    add-int v11, v10, v4

    const/4 v12, 0x2

    :goto_2
    if-ge v12, v0, :cond_2

    sub-int v13, v0, v12

    add-int v14, p4, v12

    add-int v13, p4, v13

    add-int v15, p6, v12

    add-int v16, v14, v7

    add-int/2addr v14, v9

    add-int/2addr v13, v8

    add-int/lit8 v17, v16, -0x1

    .line 4177
    aget v17, p3, v17

    .line 4178
    aget v16, p3, v16

    add-int/lit8 v18, v14, -0x1

    .line 4179
    aget v18, p3, v18

    .line 4180
    aget v14, p3, v14

    add-int/lit8 v19, v13, -0x1

    .line 4181
    aget v19, p3, v19

    .line 4182
    aget v13, p3, v13

    add-float v20, v18, v19

    mul-float v21, v20, v5

    add-float v21, v17, v21

    sub-float v22, v14, v13

    mul-float v23, v22, v5

    add-float v23, v16, v23

    sub-float v18, v18, v19

    const v19, 0x3f5db3d7

    mul-float v18, v18, v19

    add-float/2addr v14, v13

    mul-float v14, v14, v19

    sub-float v13, v21, v14

    add-float v21, v21, v14

    add-float v14, v23, v18

    sub-float v23, v23, v18

    add-int/lit8 v18, v12, -0x1

    add-int v19, v18, p7

    add-int v18, v18, v2

    move-object/from16 v5, p0

    .line 4198
    iget-object v0, v5, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v24, v19, -0x1

    aget v24, v0, v24

    .line 4199
    aget v19, v0, v19

    add-int/lit8 v25, v18, -0x1

    .line 4200
    aget v25, v0, v25

    .line 4201
    aget v0, v0, v18

    add-int v18, v15, v6

    add-int v26, v15, v10

    add-int/2addr v15, v11

    add-int/lit8 v27, v18, -0x1

    add-float v17, v17, v20

    .line 4207
    aput v17, p5, v27

    add-float v16, v16, v22

    .line 4208
    aput v16, p5, v18

    add-int/lit8 v16, v26, -0x1

    mul-float v17, v24, v13

    mul-float v18, v19, v14

    sub-float v17, v17, v18

    .line 4209
    aput v17, p5, v16

    mul-float v24, v24, v14

    mul-float v19, v19, v13

    add-float v24, v24, v19

    .line 4210
    aput v24, p5, v26

    add-int/lit8 v13, v15, -0x1

    mul-float v14, v25, v21

    mul-float v16, v0, v23

    sub-float v14, v14, v16

    .line 4211
    aput v14, p5, v13

    mul-float v25, v25, v23

    mul-float v0, v0, v21

    add-float v25, v25, v0

    .line 4212
    aput v25, p5, v15

    add-int/lit8 v12, v12, 0x2

    move/from16 v0, p1

    const/high16 v5, -0x41000000    # -0.5f

    goto/16 :goto_2

    :cond_2
    move-object/from16 v5, p0

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    const/high16 v5, -0x41000000    # -0.5f

    goto/16 :goto_1

    :cond_3
    move-object/from16 v5, p0

    return-void
.end method

.method radb3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    add-long v3, p11, p1

    const-wide/16 v7, 0x0

    :goto_0
    cmp-long v9, v7, p3

    const-wide/16 v10, 0x3

    const/high16 v12, -0x41000000    # -0.5f

    const-wide/16 v13, 0x2

    const-wide/16 v15, 0x1

    if-gez v9, :cond_0

    mul-long v17, v7, p1

    mul-long v10, v10, v17

    add-long v9, p6, v10

    mul-long v19, p1, v13

    add-long v5, v9, v19

    .line 4234
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    sub-long v10, v5, v15

    .line 4236
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    mul-float/2addr v12, v10

    add-float/2addr v12, v9

    const v11, 0x3fddb3d7

    .line 4238
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v5, v11

    add-long v13, p9, v17

    add-float/2addr v9, v10

    .line 4240
    invoke-virtual {v2, v13, v14, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v7, p3

    mul-long v9, v9, p1

    add-long v9, p9, v9

    sub-float v6, v12, v5

    .line 4241
    invoke-virtual {v2, v9, v10, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v9, 0x2

    mul-long v9, v9, p3

    add-long/2addr v9, v7

    mul-long v9, v9, p1

    add-long v9, p9, v9

    add-float/2addr v12, v5

    .line 4242
    invoke-virtual {v2, v9, v10, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v7, v15

    goto :goto_0

    :cond_0
    cmp-long v5, p1, v15

    if-nez v5, :cond_1

    return-void

    :cond_1
    mul-long v5, p3, p1

    const-wide/16 v21, 0x0

    :goto_1
    cmp-long v7, v21, p3

    if-gez v7, :cond_3

    mul-long v7, v21, p1

    mul-long v13, v7, v10

    add-long v17, v13, p1

    add-long v23, v17, p1

    add-long v25, v7, v5

    add-long v27, v25, v5

    const-wide/16 v29, 0x2

    :goto_2
    cmp-long v9, v29, p1

    if-gez v9, :cond_2

    sub-long v31, p1, v29

    add-long v33, p6, v29

    add-long v31, p6, v31

    add-long v35, p9, v29

    add-long v10, v33, v13

    move-wide/from16 v37, v13

    add-long v12, v33, v23

    move-wide/from16 v33, v5

    add-long v5, v31, v17

    move-wide/from16 v31, v7

    sub-long v7, v10, v15

    .line 4264
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 4265
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-long v10, v12, v15

    .line 4266
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 4267
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-long v12, v5, v15

    .line 4268
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    .line 4269
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    add-float v6, v10, v12

    const/high16 v9, -0x41000000    # -0.5f

    mul-float v13, v6, v9

    add-float/2addr v13, v7

    sub-float v14, v11, v5

    mul-float v39, v14, v9

    add-float v39, v8, v39

    sub-float/2addr v10, v12

    const v12, 0x3f5db3d7

    mul-float/2addr v10, v12

    add-float/2addr v11, v5

    mul-float/2addr v11, v12

    sub-float v5, v13, v11

    add-float/2addr v13, v11

    add-float v11, v39, v10

    sub-float v39, v39, v10

    sub-long v40, v29, v15

    add-long v9, v40, p11

    move/from16 v42, v13

    add-long v12, v40, v3

    .line 4285
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v40, v3

    sub-long v3, v9, v15

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    .line 4286
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 4287
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v9, v12, v15

    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 4288
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    add-long v12, v35, v31

    move/from16 v43, v9

    add-long v9, v35, v25

    move/from16 v44, v3

    move/from16 v45, v4

    add-long v3, v35, v27

    move-wide/from16 v35, v3

    sub-long v3, v12, v15

    add-float/2addr v7, v6

    .line 4294
    invoke-virtual {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float/2addr v8, v14

    .line 4295
    invoke-virtual {v2, v12, v13, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v3, v9, v15

    mul-float v6, v1, v5

    mul-float v7, v44, v11

    sub-float/2addr v6, v7

    .line 4296
    invoke-virtual {v2, v3, v4, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float/2addr v1, v11

    mul-float v3, v44, v5

    add-float/2addr v1, v3

    .line 4297
    invoke-virtual {v2, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v3, v35, v15

    mul-float v1, v45, v42

    mul-float v9, v43, v39

    sub-float/2addr v1, v9

    .line 4298
    invoke-virtual {v2, v3, v4, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v4, v45, v39

    mul-float v9, v43, v42

    add-float/2addr v4, v9

    move-wide/from16 v5, v35

    .line 4299
    invoke-virtual {v2, v5, v6, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x2

    add-long v29, v29, v3

    move-object/from16 v1, p5

    move-wide/from16 v7, v31

    move-wide/from16 v5, v33

    move-wide/from16 v13, v37

    move-wide/from16 v3, v40

    const-wide/16 v10, 0x3

    const/high16 v12, -0x41000000    # -0.5f

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v40, v3

    move-wide/from16 v33, v5

    const-wide/16 v3, 0x2

    add-long v21, v21, v15

    move-object/from16 v1, p5

    move-wide/from16 v3, v40

    const-wide/16 v10, 0x3

    const/high16 v12, -0x41000000    # -0.5f

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radb4(II[FI[FII)V
    .locals 37

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    mul-int v4, v1, v0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v1, :cond_0

    mul-int v8, v6, v0

    mul-int/lit8 v9, v8, 0x4

    add-int v10, v8, v4

    add-int v11, v10, v4

    add-int v12, v11, v4

    add-int v13, v9, v0

    add-int v14, v13, v0

    add-int v15, v14, v0

    add-int v9, p4, v9

    .line 4607
    aget v9, p3, v9

    add-int v14, p4, v14

    .line 4608
    aget v14, p3, v14

    add-int v16, p4, v0

    add-int/lit8 v16, v16, -0x1

    add-int v15, v16, v15

    .line 4609
    aget v7, p3, v15

    add-int v16, v16, v13

    .line 4610
    aget v13, p3, v16

    sub-float v15, v9, v7

    add-float/2addr v9, v7

    add-float/2addr v13, v13

    add-float/2addr v14, v14

    add-int v7, p6, v8

    add-float v8, v9, v13

    .line 4617
    aput v8, p5, v7

    add-int v7, p6, v10

    sub-float v8, v15, v14

    .line 4618
    aput v8, p5, v7

    add-int v7, p6, v11

    sub-float/2addr v9, v13

    .line 4619
    aput v9, p5, v7

    add-int v7, p6, v12

    add-float/2addr v15, v14

    .line 4620
    aput v15, p5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    return-void

    :cond_1
    if-eq v0, v6, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_3

    mul-int v9, v8, v0

    add-int v10, v9, v4

    add-int v11, v10, v4

    add-int v12, v11, v4

    mul-int/lit8 v13, v9, 0x4

    add-int v14, v13, v0

    add-int v15, v14, v0

    add-int v16, v15, v0

    move v5, v6

    :goto_2
    if-ge v5, v0, :cond_2

    sub-int v17, v0, v5

    add-int/lit8 v18, v5, -0x1

    add-int v19, v18, p7

    add-int v20, v18, v2

    add-int v18, v18, v3

    move-object/from16 v6, p0

    .line 4640
    iget-object v7, v6, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v21, v19, -0x1

    aget v21, v7, v21

    .line 4641
    aget v19, v7, v19

    add-int/lit8 v22, v20, -0x1

    .line 4642
    aget v22, v7, v22

    .line 4643
    aget v20, v7, v20

    add-int/lit8 v23, v18, -0x1

    .line 4644
    aget v23, v7, v23

    .line 4645
    aget v7, v7, v18

    add-int v18, p4, v5

    add-int v17, p4, v17

    add-int v24, p6, v5

    add-int v25, v18, v13

    add-int v26, v17, v14

    add-int v18, v18, v15

    add-int v17, v17, v16

    add-int/lit8 v27, v25, -0x1

    .line 4656
    aget v27, p3, v27

    .line 4657
    aget v25, p3, v25

    add-int/lit8 v28, v26, -0x1

    .line 4658
    aget v28, p3, v28

    .line 4659
    aget v26, p3, v26

    add-int/lit8 v29, v18, -0x1

    .line 4660
    aget v29, p3, v29

    .line 4661
    aget v18, p3, v18

    add-int/lit8 v30, v17, -0x1

    .line 4662
    aget v30, p3, v30

    .line 4663
    aget v17, p3, v17

    add-float v31, v25, v17

    sub-float v25, v25, v17

    sub-float v17, v18, v26

    add-float v18, v18, v26

    sub-float v26, v27, v30

    add-float v27, v27, v30

    sub-float v30, v29, v28

    add-float v29, v29, v28

    sub-float v28, v27, v29

    sub-float v32, v25, v17

    sub-float v33, v26, v18

    add-float v26, v26, v18

    add-float v18, v31, v30

    sub-float v31, v31, v30

    add-int v30, v24, v9

    add-int v34, v24, v10

    add-int v35, v24, v11

    add-int v24, v24, v12

    add-int/lit8 v36, v30, -0x1

    add-float v27, v27, v29

    .line 4685
    aput v27, p5, v36

    add-float v25, v25, v17

    .line 4686
    aput v25, p5, v30

    add-int/lit8 v17, v34, -0x1

    mul-float v25, v21, v33

    mul-float v27, v19, v18

    sub-float v25, v25, v27

    .line 4687
    aput v25, p5, v17

    mul-float v21, v21, v18

    mul-float v19, v19, v33

    add-float v21, v21, v19

    .line 4688
    aput v21, p5, v34

    add-int/lit8 v17, v35, -0x1

    mul-float v18, v22, v28

    mul-float v19, v20, v32

    sub-float v18, v18, v19

    .line 4689
    aput v18, p5, v17

    mul-float v22, v22, v32

    mul-float v20, v20, v28

    add-float v22, v22, v20

    .line 4690
    aput v22, p5, v35

    add-int/lit8 v17, v24, -0x1

    mul-float v18, v23, v26

    mul-float v19, v7, v31

    sub-float v18, v18, v19

    .line 4691
    aput v18, p5, v17

    mul-float v23, v23, v31

    mul-float v7, v7, v26

    add-float v23, v23, v7

    .line 4692
    aput v23, p5, v24

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_2
    move-object/from16 v6, p0

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v6, p0

    .line 4695
    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    return-void

    :cond_4
    move-object/from16 v6, p0

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    mul-int v2, v5, v0

    mul-int/lit8 v3, v2, 0x4

    add-int v7, v2, v4

    add-int v8, v7, v4

    add-int v9, v8, v4

    add-int v10, v3, v0

    add-int v11, v10, v0

    add-int v12, v11, v0

    add-int v13, p4, v0

    add-int v14, p6, v0

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    add-int/2addr v3, v13

    .line 4711
    aget v3, p3, v3

    add-int/2addr v13, v11

    .line 4712
    aget v11, p3, v13

    add-int v10, p4, v10

    .line 4713
    aget v10, p3, v10

    add-int v12, p4, v12

    .line 4714
    aget v12, p3, v12

    add-float v13, v10, v12

    sub-float/2addr v12, v10

    sub-float v10, v3, v11

    add-float/2addr v3, v11

    const/4 v11, 0x1

    sub-int/2addr v14, v11

    add-int/2addr v2, v14

    add-float/2addr v3, v3

    .line 4721
    aput v3, p5, v2

    add-int/2addr v7, v14

    const v2, 0x3fb504f3

    sub-float v3, v10, v13

    mul-float/2addr v3, v2

    .line 4722
    aput v3, p5, v7

    add-int/2addr v8, v14

    add-float/2addr v12, v12

    .line 4723
    aput v12, p5, v8

    add-int/2addr v14, v9

    const v2, -0x404afb0d

    add-float/2addr v10, v13

    mul-float/2addr v10, v2

    .line 4724
    aput v10, p5, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    add-long v3, p11, p1

    add-long v5, v3, p1

    mul-long v7, p3, p1

    const-wide/16 v11, 0x0

    :goto_0
    cmp-long v13, v11, p3

    const-wide/16 v14, 0x4

    const-wide/16 v16, 0x1

    if-gez v13, :cond_0

    mul-long v18, v11, p1

    mul-long v14, v14, v18

    add-long v20, v18, v7

    add-long v22, v20, v7

    add-long v24, v22, v7

    add-long v26, v14, p1

    add-long v28, v26, p1

    add-long v30, v28, p1

    add-long v13, p6, v14

    .line 4753
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    add-long v14, p6, v28

    .line 4754
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-long v28, p6, p1

    sub-long v28, v28, v16

    add-long v9, v28, v30

    .line 4755
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    move-wide/from16 v30, v5

    add-long v5, v28, v26

    .line 4756
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-float v6, v13, v9

    add-float/2addr v13, v9

    add-float/2addr v5, v5

    add-float/2addr v14, v14

    add-long v9, p9, v18

    add-float v15, v13, v5

    .line 4763
    invoke-virtual {v2, v9, v10, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, p9, v20

    sub-float v15, v6, v14

    .line 4764
    invoke-virtual {v2, v9, v10, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, p9, v22

    sub-float/2addr v13, v5

    .line 4765
    invoke-virtual {v2, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, p9, v24

    add-float/2addr v6, v14

    .line 4766
    invoke-virtual {v2, v9, v10, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    move-wide/from16 v5, v30

    goto :goto_0

    :cond_0
    move-wide/from16 v30, v5

    const-wide/16 v5, 0x2

    cmp-long v9, p1, v5

    if-gez v9, :cond_1

    return-void

    :cond_1
    if-eqz v9, :cond_4

    const-wide/16 v9, 0x0

    :goto_1
    cmp-long v11, v9, p3

    if-gez v11, :cond_3

    mul-long v11, v9, p1

    add-long v18, v11, v7

    add-long v20, v18, v7

    add-long v22, v20, v7

    mul-long v24, v11, v14

    add-long v26, v24, p1

    add-long v28, v26, p1

    add-long v34, v28, p1

    move-wide/from16 v36, v5

    :goto_2
    cmp-long v13, v36, p1

    if-gez v13, :cond_2

    sub-long v38, p1, v36

    sub-long v40, v36, v16

    add-long v14, v40, p11

    add-long v5, v40, v3

    move-wide/from16 v42, v3

    add-long v3, v40, v30

    .line 4786
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v40, v7

    sub-long v7, v14, v16

    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 4787
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 4788
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v14, v5, v16

    invoke-virtual {v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    .line 4789
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v14, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    .line 4790
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v14, v3, v16

    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 4791
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    add-long v14, p6, v36

    add-long v38, p6, v38

    add-long v44, p9, v36

    move-wide/from16 v46, v9

    add-long v9, v14, v24

    move/from16 v48, v3

    add-long v3, v38, v26

    add-long v14, v14, v28

    move/from16 v49, v5

    move/from16 v50, v6

    add-long v5, v38, v34

    move/from16 v38, v7

    move/from16 v39, v8

    sub-long v7, v9, v16

    .line 4802
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 4803
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-long v9, v3, v16

    .line 4804
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 4805
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    move-wide/from16 v51, v11

    sub-long v10, v14, v16

    .line 4806
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 4807
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    sub-long v11, v5, v16

    .line 4808
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 4809
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    add-float v6, v8, v5

    sub-float/2addr v8, v5

    sub-float v5, v10, v3

    add-float/2addr v10, v3

    sub-float v3, v7, v11

    add-float/2addr v7, v11

    sub-float v11, v4, v9

    add-float/2addr v4, v9

    sub-float v9, v7, v4

    sub-float v12, v8, v5

    sub-float v14, v3, v10

    add-float/2addr v3, v10

    add-float v10, v6, v11

    sub-float/2addr v6, v11

    add-long v0, v44, v51

    move v15, v12

    add-long v11, v44, v18

    move/from16 v53, v9

    move/from16 v54, v10

    add-long v9, v44, v20

    move-wide/from16 v55, v9

    add-long v9, v44, v22

    move-wide/from16 v44, v9

    sub-long v9, v0, v16

    add-float/2addr v7, v4

    .line 4831
    invoke-virtual {v2, v9, v10, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float/2addr v8, v5

    .line 4832
    invoke-virtual {v2, v0, v1, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v11, v16

    mul-float v7, v38, v14

    mul-float v8, v39, v54

    sub-float/2addr v7, v8

    .line 4833
    invoke-virtual {v2, v0, v1, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v7, v38, v54

    mul-float v8, v39, v14

    add-float/2addr v7, v8

    .line 4834
    invoke-virtual {v2, v11, v12, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v9, v55, v16

    mul-float v0, v13, v53

    mul-float v5, v49, v15

    sub-float/2addr v0, v5

    .line 4835
    invoke-virtual {v2, v9, v10, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float/2addr v13, v15

    mul-float v5, v49, v53

    add-float/2addr v13, v5

    move-wide/from16 v0, v55

    .line 4836
    invoke-virtual {v2, v0, v1, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v9, v44, v16

    mul-float v0, v50, v3

    mul-float v1, v48, v6

    sub-float/2addr v0, v1

    .line 4837
    invoke-virtual {v2, v9, v10, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v6, v6, v50

    mul-float v3, v3, v48

    add-float/2addr v6, v3

    move-wide/from16 v0, v44

    .line 4838
    invoke-virtual {v2, v0, v1, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v0, 0x2

    add-long v36, v36, v0

    move-wide v5, v0

    move-wide/from16 v7, v40

    move-wide/from16 v3, v42

    move-wide/from16 v9, v46

    move-wide/from16 v11, v51

    const-wide/16 v14, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v42, v3

    move-wide v0, v5

    move-wide/from16 v40, v7

    move-wide/from16 v46, v9

    add-long v9, v46, v16

    const-wide/16 v14, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_3
    move-wide v0, v5

    move-wide/from16 v40, v7

    .line 4841
    rem-long v0, p1, v0

    cmp-long v0, v0, v16

    if-nez v0, :cond_5

    return-void

    :cond_4
    move-wide/from16 v40, v7

    :cond_5
    const-wide/16 v9, 0x0

    :goto_3
    cmp-long v0, v9, p3

    if-gez v0, :cond_6

    mul-long v0, v9, p1

    const-wide/16 v3, 0x4

    mul-long v14, v0, v3

    add-long v7, v0, v40

    add-long v5, v7, v40

    add-long v11, v5, v40

    add-long v18, v14, p1

    add-long v20, v18, p1

    add-long v22, v20, p1

    add-long v24, p6, p1

    add-long v26, p9, p1

    sub-long v24, v24, v16

    add-long v14, v24, v14

    move-object/from16 v13, p5

    .line 4857
    invoke-virtual {v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-long v3, v24, v20

    .line 4858
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    move-wide/from16 p11, v9

    add-long v9, p6, v18

    .line 4859
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-long v9, p6, v22

    .line 4860
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    add-float v10, v4, v9

    sub-float/2addr v9, v4

    sub-float v4, v14, v3

    add-float/2addr v14, v3

    sub-long v26, v26, v16

    add-long v0, v26, v0

    add-float/2addr v14, v14

    .line 4867
    invoke-virtual {v2, v0, v1, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v7, v26, v7

    const v0, 0x3fb504f3

    sub-float v1, v4, v10

    mul-float/2addr v1, v0

    .line 4868
    invoke-virtual {v2, v7, v8, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v26, v5

    add-float/2addr v9, v9

    .line 4869
    invoke-virtual {v2, v5, v6, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v26, v11

    const v3, -0x404afb0d

    add-float/2addr v4, v10

    mul-float/2addr v4, v3

    .line 4870
    invoke-virtual {v2, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v32, p11

    add-long v9, v32, v16

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb5(II[FI[FII)V
    .locals 51

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    add-int v4, v3, v0

    mul-int v5, v1, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const v8, 0x3f167918

    const v9, 0x3f737871

    const v10, -0x40b0e443

    const v11, 0x3e9e377a

    const/4 v12, 0x1

    if-ge v7, v1, :cond_0

    mul-int v13, v7, v0

    mul-int/lit8 v14, v13, 0x5

    add-int v15, v14, v0

    add-int v16, v15, v0

    add-int v17, v16, v0

    add-int v18, v17, v0

    add-int v19, v13, v5

    add-int v20, v19, v5

    add-int v21, v20, v5

    add-int v22, v21, v5

    add-int v23, p4, v0

    add-int/lit8 v23, v23, -0x1

    add-int v12, p4, v14

    .line 5195
    aget v12, p3, v12

    add-int v14, p4, v16

    .line 5197
    aget v14, p3, v14

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v14, v14, v16

    add-int v18, p4, v18

    .line 5198
    aget v18, p3, v18

    mul-float v18, v18, v16

    add-int v15, v23, v15

    .line 5199
    aget v15, p3, v15

    mul-float v15, v15, v16

    add-int v23, v23, v17

    .line 5200
    aget v17, p3, v23

    mul-float v17, v17, v16

    mul-float v16, v15, v11

    add-float v16, v12, v16

    mul-float v23, v17, v10

    add-float v16, v16, v23

    mul-float/2addr v10, v15

    add-float/2addr v10, v12

    mul-float v11, v11, v17

    add-float/2addr v10, v11

    mul-float v11, v14, v9

    mul-float v23, v18, v8

    add-float v11, v11, v23

    mul-float/2addr v14, v8

    mul-float v18, v18, v9

    sub-float v14, v14, v18

    add-int v8, p6, v13

    add-float/2addr v12, v15

    add-float v12, v12, v17

    .line 5206
    aput v12, p5, v8

    add-int v8, p6, v19

    sub-float v9, v16, v11

    .line 5207
    aput v9, p5, v8

    add-int v8, p6, v20

    sub-float v9, v10, v14

    .line 5208
    aput v9, p5, v8

    add-int v8, p6, v21

    add-float/2addr v10, v14

    .line 5209
    aput v10, p5, v8

    add-int v8, p6, v22

    add-float v16, v16, v11

    .line 5210
    aput v16, p5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v12, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge v6, v1, :cond_3

    mul-int v7, v6, v0

    mul-int/lit8 v12, v7, 0x5

    add-int v13, v12, v0

    add-int v14, v13, v0

    add-int v15, v14, v0

    add-int v16, v15, v0

    add-int v17, v7, v5

    add-int v18, v17, v5

    add-int v19, v18, v5

    add-int v20, v19, v5

    const/16 v21, 0x2

    move/from16 v8, v21

    :goto_2
    if-ge v8, v0, :cond_2

    sub-int v21, v0, v8

    add-int/lit8 v23, v8, -0x1

    add-int v24, v23, p7

    add-int v25, v23, v2

    add-int v26, v23, v3

    add-int v23, v23, v4

    move-object/from16 v9, p0

    .line 5232
    iget-object v10, v9, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v29, v24, -0x1

    aget v29, v10, v29

    .line 5233
    aget v24, v10, v24

    add-int/lit8 v30, v25, -0x1

    .line 5234
    aget v30, v10, v30

    .line 5235
    aget v25, v10, v25

    add-int/lit8 v31, v26, -0x1

    .line 5236
    aget v31, v10, v31

    .line 5237
    aget v26, v10, v26

    add-int/lit8 v32, v23, -0x1

    .line 5238
    aget v32, v10, v32

    .line 5239
    aget v10, v10, v23

    add-int v23, p4, v8

    add-int v21, p4, v21

    add-int v33, p6, v8

    add-int v34, v23, v12

    add-int v35, v21, v13

    add-int v36, v23, v14

    add-int v21, v21, v15

    add-int v23, v23, v16

    add-int/lit8 v37, v34, -0x1

    .line 5251
    aget v37, p3, v37

    .line 5252
    aget v34, p3, v34

    add-int/lit8 v38, v35, -0x1

    .line 5253
    aget v38, p3, v38

    .line 5254
    aget v35, p3, v35

    add-int/lit8 v39, v36, -0x1

    .line 5255
    aget v39, p3, v39

    .line 5256
    aget v36, p3, v36

    add-int/lit8 v40, v21, -0x1

    .line 5257
    aget v40, p3, v40

    .line 5258
    aget v21, p3, v21

    add-int/lit8 v41, v23, -0x1

    .line 5259
    aget v41, p3, v41

    .line 5260
    aget v23, p3, v23

    add-float v42, v36, v35

    sub-float v36, v36, v35

    add-float v35, v23, v21

    sub-float v23, v23, v21

    sub-float v21, v39, v38

    add-float v39, v39, v38

    sub-float v38, v41, v40

    add-float v41, v41, v40

    mul-float v40, v39, v11

    add-float v40, v37, v40

    const v28, -0x40b0e443

    mul-float v43, v41, v28

    add-float v40, v40, v43

    mul-float v43, v36, v11

    add-float v43, v34, v43

    mul-float v44, v23, v28

    add-float v43, v43, v44

    mul-float v44, v39, v28

    add-float v44, v37, v44

    mul-float v45, v41, v11

    add-float v44, v44, v45

    mul-float v45, v36, v28

    add-float v45, v34, v45

    mul-float v46, v23, v11

    add-float v45, v45, v46

    const v27, 0x3f737871

    mul-float v46, v21, v27

    const v22, 0x3f167918

    mul-float v47, v38, v22

    add-float v46, v46, v47

    mul-float v47, v42, v27

    mul-float v48, v35, v22

    add-float v47, v47, v48

    mul-float v21, v21, v22

    mul-float v38, v38, v27

    sub-float v21, v21, v38

    mul-float v42, v42, v22

    mul-float v35, v35, v27

    sub-float v42, v42, v35

    sub-float v35, v44, v42

    add-float v44, v44, v42

    add-float v38, v45, v21

    sub-float v45, v45, v21

    add-float v21, v40, v47

    sub-float v40, v40, v47

    sub-float v42, v43, v46

    add-float v43, v43, v46

    add-int v46, v33, v7

    add-int v47, v33, v17

    add-int v48, v33, v18

    add-int v49, v33, v19

    add-int v33, v33, v20

    add-int/lit8 v50, v46, -0x1

    add-float v37, v37, v39

    add-float v37, v37, v41

    .line 5294
    aput v37, p5, v50

    add-float v34, v34, v36

    add-float v34, v34, v23

    .line 5295
    aput v34, p5, v46

    add-int/lit8 v23, v47, -0x1

    mul-float v34, v29, v40

    mul-float v36, v24, v43

    sub-float v34, v34, v36

    .line 5296
    aput v34, p5, v23

    mul-float v29, v29, v43

    mul-float v24, v24, v40

    add-float v29, v29, v24

    .line 5297
    aput v29, p5, v47

    add-int/lit8 v23, v48, -0x1

    mul-float v24, v30, v35

    mul-float v29, v25, v38

    sub-float v24, v24, v29

    .line 5298
    aput v24, p5, v23

    mul-float v30, v30, v38

    mul-float v25, v25, v35

    add-float v30, v30, v25

    .line 5299
    aput v30, p5, v48

    add-int/lit8 v23, v49, -0x1

    mul-float v24, v31, v44

    mul-float v25, v26, v45

    sub-float v24, v24, v25

    .line 5300
    aput v24, p5, v23

    mul-float v31, v31, v45

    mul-float v26, v26, v44

    add-float v31, v31, v26

    .line 5301
    aput v31, p5, v49

    add-int/lit8 v23, v33, -0x1

    mul-float v24, v32, v21

    mul-float v25, v10, v42

    sub-float v24, v24, v25

    .line 5302
    aput v24, p5, v23

    mul-float v32, v32, v42

    mul-float v10, v10, v21

    add-float v32, v32, v10

    .line 5303
    aput v32, p5, v33

    add-int/lit8 v8, v8, 0x2

    move/from16 v9, v27

    move/from16 v10, v28

    goto/16 :goto_2

    :cond_2
    move/from16 v27, v9

    move/from16 v28, v10

    const v22, 0x3f167918

    move-object/from16 v9, p0

    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v22

    move/from16 v9, v27

    goto/16 :goto_1

    :cond_3
    move-object/from16 v9, p0

    return-void
.end method

.method radb5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 76

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    add-long v3, p11, p1

    add-long v5, v3, p1

    add-long v7, v5, p1

    mul-long v9, p3, p1

    const-wide/16 v13, 0x0

    :goto_0
    cmp-long v15, v13, p3

    const-wide/16 v16, 0x5

    const v18, 0x3f167918

    const v19, 0x3f737871

    const v20, -0x40b0e443

    const v21, 0x3e9e377a

    const-wide/16 v22, 0x1

    if-gez v15, :cond_0

    mul-long v24, v13, p1

    mul-long v16, v16, v24

    add-long v26, v16, p1

    add-long v28, v26, p1

    add-long v30, v28, p1

    add-long v32, v30, p1

    add-long v34, v24, v9

    add-long v36, v34, v9

    add-long v38, v36, v9

    add-long v40, v38, v9

    add-long v42, p6, p1

    sub-long v42, v42, v22

    add-long v11, p6, v16

    .line 5339
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    move-wide/from16 v46, v7

    add-long v7, p6, v28

    .line 5341
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    move-wide/from16 v28, v5

    add-long v5, p6, v32

    .line 5342
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v5, v8

    move-wide/from16 v32, v3

    add-long v3, v42, v26

    .line 5343
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v3, v8

    move-wide/from16 v26, v9

    add-long v9, v42, v30

    .line 5344
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v4, v8

    mul-float v6, v3, v21

    add-float/2addr v6, v11

    mul-float v8, v4, v20

    add-float/2addr v6, v8

    mul-float v20, v20, v3

    add-float v20, v11, v20

    mul-float v21, v21, v4

    add-float v20, v20, v21

    mul-float v8, v7, v19

    mul-float v9, v5, v18

    add-float/2addr v8, v9

    mul-float v7, v7, v18

    mul-float v5, v5, v19

    sub-float/2addr v7, v5

    add-long v9, p9, v24

    add-float/2addr v11, v3

    add-float/2addr v11, v4

    .line 5350
    invoke-virtual {v2, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, p9, v34

    sub-float v5, v6, v8

    .line 5351
    invoke-virtual {v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, p9, v36

    sub-float v5, v20, v7

    .line 5352
    invoke-virtual {v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, p9, v38

    add-float v5, v20, v7

    .line 5353
    invoke-virtual {v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, p9, v40

    add-float/2addr v6, v8

    .line 5354
    invoke-virtual {v2, v3, v4, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v13, v22

    move-wide/from16 v9, v26

    move-wide/from16 v5, v28

    move-wide/from16 v3, v32

    move-wide/from16 v7, v46

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v32, v3

    move-wide/from16 v28, v5

    move-wide/from16 v46, v7

    move-wide/from16 v26, v9

    cmp-long v3, p1, v22

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-wide/16 v11, 0x0

    :goto_1
    cmp-long v3, v11, p3

    if-gez v3, :cond_3

    mul-long v3, v11, p1

    mul-long v5, v3, v16

    add-long v7, v5, p1

    add-long v9, v7, p1

    add-long v13, v9, p1

    add-long v24, v13, p1

    add-long v30, v3, v26

    add-long v34, v30, v26

    add-long v36, v34, v26

    add-long v38, v36, v26

    const-wide/16 v40, 0x2

    move-wide/from16 v42, v40

    :goto_2
    cmp-long v15, v42, p1

    if-gez v15, :cond_2

    sub-long v44, p1, v42

    sub-long v48, v42, v22

    move-wide/from16 v50, v11

    add-long v11, v48, p11

    move-wide/from16 v52, v3

    add-long v2, v48, v32

    move-wide/from16 v54, v13

    add-long v13, v48, v28

    move-wide/from16 v56, v9

    add-long v9, v48, v46

    .line 5376
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v48, v7

    sub-long v7, v11, v22

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 5377
    iget-object v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 5378
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v11, v2, v22

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 5379
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 5380
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v11, v13, v22

    invoke-virtual {v3, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 5381
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 5382
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v13, v9, v22

    invoke-virtual {v12, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    .line 5383
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    add-long v13, p6, v42

    add-long v44, p6, v44

    add-long v58, p9, v42

    move v15, v9

    add-long v9, v13, v5

    move-wide/from16 v60, v5

    add-long v5, v44, v48

    move/from16 v62, v11

    move/from16 v63, v12

    add-long v11, v13, v56

    move/from16 v64, v2

    move/from16 v65, v3

    add-long v2, v44, v54

    add-long v13, v13, v24

    move/from16 v44, v7

    move/from16 v45, v8

    sub-long v7, v9, v22

    .line 5395
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 5396
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-long v9, v5, v22

    .line 5397
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 5398
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move v10, v7

    sub-long v6, v11, v22

    .line 5399
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 5400
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-long v11, v2, v22

    .line 5401
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 5402
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    move v12, v4

    sub-long v3, v13, v22

    .line 5403
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 5404
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-float v13, v7, v5

    sub-float/2addr v7, v5

    add-float v5, v4, v2

    sub-float/2addr v4, v2

    sub-float v2, v6, v9

    add-float/2addr v6, v9

    sub-float v9, v3, v11

    add-float/2addr v3, v11

    mul-float v11, v6, v21

    add-float/2addr v11, v10

    mul-float v14, v3, v20

    add-float/2addr v11, v14

    mul-float v14, v7, v21

    add-float/2addr v14, v8

    mul-float v66, v4, v20

    add-float v14, v14, v66

    mul-float v66, v6, v20

    add-float v66, v10, v66

    mul-float v67, v3, v21

    add-float v66, v66, v67

    mul-float v67, v7, v20

    add-float v67, v8, v67

    mul-float v68, v4, v21

    add-float v67, v67, v68

    mul-float v68, v2, v19

    mul-float v69, v9, v18

    add-float v68, v68, v69

    mul-float v69, v13, v19

    mul-float v70, v5, v18

    add-float v69, v69, v70

    mul-float v2, v2, v18

    mul-float v9, v9, v19

    sub-float/2addr v2, v9

    mul-float v13, v13, v18

    mul-float v5, v5, v19

    sub-float/2addr v13, v5

    sub-float v5, v66, v13

    add-float v66, v66, v13

    add-float v9, v67, v2

    sub-float v67, v67, v2

    add-float v2, v11, v69

    sub-float v11, v11, v69

    sub-float v13, v14, v68

    add-float v14, v14, v68

    add-long v0, v58, v52

    move/from16 v68, v13

    move/from16 v69, v14

    add-long v13, v58, v30

    move/from16 v71, v11

    move/from16 v70, v12

    add-long v11, v58, v34

    move-wide/from16 v72, v11

    add-long v11, v58, v36

    move-wide/from16 v74, v11

    add-long v11, v58, v38

    move-wide/from16 v58, v11

    sub-long v11, v0, v22

    add-float/2addr v6, v10

    add-float/2addr v6, v3

    move-object/from16 v3, p8

    .line 5438
    invoke-virtual {v3, v11, v12, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float/2addr v8, v7

    add-float/2addr v8, v4

    .line 5439
    invoke-virtual {v3, v0, v1, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v13, v22

    mul-float v4, v70, v71

    mul-float v7, v44, v69

    sub-float/2addr v4, v7

    .line 5440
    invoke-virtual {v3, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v4, v70, v69

    mul-float v7, v44, v71

    add-float/2addr v4, v7

    .line 5441
    invoke-virtual {v3, v13, v14, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v11, v72, v22

    mul-float v8, v45, v5

    mul-float v0, v64, v9

    sub-float/2addr v8, v0

    .line 5442
    invoke-virtual {v3, v11, v12, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v8, v45, v9

    mul-float v0, v64, v5

    add-float/2addr v8, v0

    move-wide/from16 v0, v72

    .line 5443
    invoke-virtual {v3, v0, v1, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v11, v74, v22

    mul-float v0, v65, v66

    mul-float v1, v62, v67

    sub-float/2addr v0, v1

    .line 5444
    invoke-virtual {v3, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v0, v65, v67

    mul-float v11, v62, v66

    add-float/2addr v0, v11

    move-wide/from16 v4, v74

    .line 5445
    invoke-virtual {v3, v4, v5, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v11, v58, v22

    mul-float v0, v63, v2

    mul-float v9, v15, v68

    sub-float/2addr v0, v9

    .line 5446
    invoke-virtual {v3, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float v12, v63, v68

    mul-float v9, v15, v2

    add-float/2addr v12, v9

    move-wide/from16 v0, v58

    .line 5447
    invoke-virtual {v3, v0, v1, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v42, v42, v40

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v3

    move-wide/from16 v7, v48

    move-wide/from16 v11, v50

    move-wide/from16 v3, v52

    move-wide/from16 v13, v54

    move-wide/from16 v9, v56

    move-wide/from16 v5, v60

    goto/16 :goto_2

    :cond_2
    move-object v3, v2

    move-wide/from16 v50, v11

    add-long v11, v50, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radbg(IIII[FI[FII)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    const v9, 0x40c90fdb

    int-to-float v10, v2

    div-float/2addr v9, v10

    float-to-double v9, v9

    .line 6048
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 6049
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    add-int/lit8 v10, v1, -0x1

    const/4 v12, 0x2

    .line 6050
    div-int/2addr v10, v12

    add-int/lit8 v13, v2, 0x1

    .line 6051
    div-int/2addr v13, v12

    mul-int v14, v2, v1

    if-lt v1, v3, :cond_1

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v3, :cond_3

    mul-int v16, v15, v1

    mul-int v17, v15, v14

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v1, :cond_0

    add-int v18, v8, v12

    add-int v18, v18, v16

    add-int v19, v6, v12

    add-int v19, v19, v17

    .line 6058
    aget v19, v5, v19

    aput v19, v7, v18

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x2

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v1, :cond_3

    add-int v15, v8, v12

    add-int v16, v6, v12

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_2

    mul-int v17, v0, v1

    add-int v17, v15, v17

    mul-int v18, v0, v14

    add-int v18, v16, v18

    .line 6066
    aget v18, v5, v18

    aput v18, v7, v17

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    add-int v0, v6, v1

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    move v14, v12

    :goto_4
    if-ge v14, v13, :cond_5

    sub-int v15, v2, v14

    mul-int/lit8 v16, v14, 0x2

    mul-int v17, v14, v3

    mul-int v17, v17, v1

    mul-int/2addr v15, v3

    mul-int/2addr v15, v1

    mul-int v16, v16, v1

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v3, :cond_4

    mul-int v19, v12, v1

    mul-int v20, v19, v2

    add-int v21, v0, v16

    add-int v21, v21, v20

    sub-int v21, v21, v1

    add-int v22, v6, v16

    add-int v22, v22, v20

    .line 6082
    aget v20, v5, v21

    .line 6083
    aget v21, v5, v22

    add-int v19, v8, v19

    add-int v22, v19, v17

    add-float v20, v20, v20

    .line 6085
    aput v20, v7, v22

    add-int v19, v19, v15

    add-float v21, v21, v21

    .line 6086
    aput v21, v7, v19

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    if-eq v1, v12, :cond_b

    if-lt v10, v3, :cond_8

    const/4 v12, 0x1

    :goto_6
    if-ge v12, v13, :cond_b

    sub-int v0, v2, v12

    mul-int v14, v12, v3

    mul-int/2addr v14, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/lit8 v15, v12, 0x2

    mul-int/2addr v15, v1

    move/from16 v16, v10

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v3, :cond_7

    mul-int v17, v10, v1

    add-int v19, v17, v14

    add-int v17, v17, v0

    mul-int v20, v10, v2

    mul-int v20, v20, v1

    add-int v20, v20, v15

    move/from16 v21, v0

    const/4 v0, 0x2

    :goto_8
    if-ge v0, v1, :cond_6

    sub-int v22, v1, v0

    add-int v23, v8, v0

    add-int v22, v6, v22

    add-int v24, v6, v0

    add-int v25, v23, v19

    add-int v23, v23, v17

    add-int v24, v24, v20

    add-int v22, v22, v20

    sub-int v22, v22, v1

    add-int/lit8 v26, v24, -0x1

    .line 6110
    aget v26, v5, v26

    .line 6111
    aget v24, v5, v24

    add-int/lit8 v27, v22, -0x1

    .line 6112
    aget v27, v5, v27

    .line 6113
    aget v22, v5, v22

    add-int/lit8 v28, v25, -0x1

    add-float v29, v26, v27

    .line 6115
    aput v29, v7, v28

    add-int/lit8 v28, v23, -0x1

    sub-float v26, v26, v27

    .line 6116
    aput v26, v7, v28

    sub-float v26, v24, v22

    .line 6117
    aput v26, v7, v25

    add-float v24, v24, v22

    .line 6118
    aput v24, v7, v23

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v21

    goto :goto_7

    :cond_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v16

    goto :goto_6

    :cond_8
    move/from16 v16, v10

    const/4 v12, 0x1

    :goto_9
    if-ge v12, v13, :cond_c

    sub-int v0, v2, v12

    mul-int v10, v12, v3

    mul-int/2addr v10, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/lit8 v14, v12, 0x2

    mul-int/2addr v14, v1

    const/4 v15, 0x2

    :goto_a
    if-ge v15, v1, :cond_a

    sub-int v17, v1, v15

    add-int v19, v8, v15

    add-int v17, v6, v17

    add-int v20, v6, v15

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v3, :cond_9

    mul-int v21, v8, v1

    add-int v22, v21, v10

    add-int v21, v21, v0

    mul-int v23, v8, v2

    mul-int v23, v23, v1

    add-int v23, v23, v14

    add-int v22, v19, v22

    add-int v21, v19, v21

    add-int v24, v20, v23

    add-int v23, v17, v23

    sub-int v23, v23, v1

    add-int/lit8 v25, v24, -0x1

    .line 6141
    aget v25, v5, v25

    .line 6142
    aget v24, v5, v24

    add-int/lit8 v26, v23, -0x1

    .line 6143
    aget v26, v5, v26

    .line 6144
    aget v23, v5, v23

    add-int/lit8 v27, v22, -0x1

    add-float v28, v25, v26

    .line 6146
    aput v28, v7, v27

    add-int/lit8 v27, v21, -0x1

    sub-float v25, v25, v26

    .line 6147
    aput v25, v7, v27

    sub-float v25, v24, v23

    .line 6148
    aput v25, v7, v22

    add-float v24, v24, v23

    .line 6149
    aput v24, v7, v21

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v15, v15, 0x2

    move/from16 v8, p8

    goto :goto_a

    :cond_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, p8

    goto :goto_9

    :cond_b
    move/from16 v16, v10

    :cond_c
    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v4

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v12, 0x1

    :goto_c
    if-ge v12, v13, :cond_10

    sub-int v14, v2, v12

    mul-float v15, v11, v8

    mul-float v17, v9, v10

    sub-float v15, v15, v17

    mul-float/2addr v10, v11

    mul-float/2addr v8, v9

    add-float/2addr v10, v8

    mul-int v8, v12, v4

    mul-int/2addr v14, v4

    move/from16 v17, v9

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v4, :cond_d

    add-int v19, v6, v9

    move/from16 v20, v11

    move/from16 v11, p8

    add-int v21, v11, v9

    add-int v22, v19, v8

    .line 6169
    aget v23, v7, v21

    add-int v24, v21, v4

    aget v24, v7, v24

    mul-float v24, v24, v15

    add-float v23, v23, v24

    aput v23, v5, v22

    add-int v19, v19, v14

    add-int v21, v21, v0

    .line 6170
    aget v21, v7, v21

    mul-float v21, v21, v10

    aput v21, v5, v19

    add-int/lit8 v9, v9, 0x1

    move/from16 v11, v20

    goto :goto_d

    :cond_d
    move/from16 v20, v11

    move/from16 v11, p8

    move/from16 v21, v10

    move/from16 v19, v15

    const/4 v9, 0x2

    :goto_e
    if-ge v9, v13, :cond_f

    sub-int v22, v2, v9

    mul-float v23, v15, v19

    mul-float v24, v10, v21

    sub-float v23, v23, v24

    mul-float v21, v21, v15

    mul-float v19, v19, v10

    add-float v21, v21, v19

    mul-int v19, v9, v4

    mul-int v22, v22, v4

    move/from16 v24, v0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v4, :cond_e

    add-int v25, v6, v0

    add-int v26, v11, v0

    add-int v27, v25, v8

    .line 6186
    aget v28, v5, v27

    add-int v29, v26, v19

    aget v29, v7, v29

    mul-float v29, v29, v23

    add-float v28, v28, v29

    aput v28, v5, v27

    add-int v25, v25, v14

    .line 6187
    aget v27, v5, v25

    add-int v26, v26, v22

    aget v26, v7, v26

    mul-float v26, v26, v21

    add-float v27, v27, v26

    aput v27, v5, v25

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v19, v23

    move/from16 v0, v24

    goto :goto_e

    :cond_f
    move/from16 v24, v0

    add-int/lit8 v12, v12, 0x1

    move v8, v15

    move/from16 v9, v17

    move/from16 v11, v20

    goto/16 :goto_c

    :cond_10
    move/from16 v11, p8

    const/4 v12, 0x1

    :goto_10
    if-ge v12, v13, :cond_12

    mul-int v0, v12, v4

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v4, :cond_11

    add-int v9, v11, v8

    .line 6195
    aget v10, v7, v9

    add-int v14, v9, v0

    aget v14, v7, v14

    add-float/2addr v10, v14

    aput v10, v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_12
    const/4 v12, 0x1

    :goto_12
    if-ge v12, v13, :cond_14

    sub-int v0, v2, v12

    mul-int v8, v12, v3

    mul-int/2addr v8, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v3, :cond_13

    mul-int v10, v9, v1

    add-int v14, v11, v10

    add-int/2addr v10, v6

    add-int v15, v10, v8

    add-int/2addr v10, v0

    .line 6207
    aget v15, v5, v15

    .line 6208
    aget v10, v5, v10

    add-int v17, v14, v8

    sub-float v19, v15, v10

    .line 6210
    aput v19, v7, v17

    add-int/2addr v14, v0

    add-float/2addr v15, v10

    .line 6211
    aput v15, v7, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_14
    const/4 v12, 0x1

    if-ne v1, v12, :cond_15

    return-void

    :cond_15
    move/from16 v10, v16

    if-lt v10, v3, :cond_18

    move v0, v12

    :goto_14
    if-ge v0, v13, :cond_1b

    sub-int v8, v2, v0

    mul-int v9, v0, v3

    mul-int/2addr v9, v1

    mul-int/2addr v8, v3

    mul-int/2addr v8, v1

    const/4 v14, 0x0

    :goto_15
    if-ge v14, v3, :cond_17

    mul-int v15, v14, v1

    const/4 v12, 0x2

    :goto_16
    if-ge v12, v1, :cond_16

    add-int v16, v11, v12

    add-int v17, v6, v12

    add-int v16, v16, v15

    add-int v19, v16, v9

    add-int v16, v16, v8

    add-int v17, v17, v15

    add-int v20, v17, v9

    add-int v17, v17, v8

    add-int/lit8 v21, v20, -0x1

    .line 6232
    aget v21, v5, v21

    .line 6233
    aget v20, v5, v20

    add-int/lit8 v22, v17, -0x1

    .line 6234
    aget v22, v5, v22

    .line 6235
    aget v17, v5, v17

    add-int/lit8 v23, v19, -0x1

    sub-float v24, v21, v17

    .line 6237
    aput v24, v7, v23

    add-int/lit8 v23, v16, -0x1

    add-float v21, v21, v17

    .line 6238
    aput v21, v7, v23

    add-float v17, v20, v22

    .line 6239
    aput v17, v7, v19

    sub-float v20, v20, v22

    .line 6240
    aput v20, v7, v16

    add-int/lit8 v12, v12, 0x2

    goto :goto_16

    :cond_16
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_15

    :cond_17
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x1

    goto :goto_14

    :cond_18
    const/4 v12, 0x1

    :goto_17
    if-ge v12, v13, :cond_1b

    sub-int v0, v2, v12

    mul-int v8, v12, v3

    mul-int/2addr v8, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    const/4 v9, 0x2

    :goto_18
    if-ge v9, v1, :cond_1a

    add-int v14, v11, v9

    add-int v15, v6, v9

    move/from16 v16, v13

    const/4 v13, 0x0

    :goto_19
    if-ge v13, v3, :cond_19

    mul-int v17, v13, v1

    add-int v19, v14, v17

    add-int v20, v19, v8

    add-int v19, v19, v0

    add-int v17, v15, v17

    add-int v21, v17, v8

    add-int v17, v17, v0

    add-int/lit8 v22, v21, -0x1

    .line 6258
    aget v22, v5, v22

    .line 6259
    aget v21, v5, v21

    add-int/lit8 v23, v17, -0x1

    .line 6260
    aget v23, v5, v23

    .line 6261
    aget v17, v5, v17

    add-int/lit8 v24, v20, -0x1

    sub-float v25, v22, v17

    .line 6263
    aput v25, v7, v24

    add-int/lit8 v24, v19, -0x1

    add-float v22, v22, v17

    .line 6264
    aput v22, v7, v24

    add-float v17, v21, v23

    .line 6265
    aput v17, v7, v20

    sub-float v21, v21, v23

    .line 6266
    aput v21, v7, v19

    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    :cond_19
    add-int/lit8 v9, v9, 0x2

    move/from16 v13, v16

    goto :goto_18

    :cond_1a
    move/from16 v16, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    .line 6271
    :cond_1b
    invoke-static {v7, v11, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x1

    :goto_1a
    if-ge v12, v2, :cond_1d

    mul-int v0, v12, v3

    mul-int/2addr v0, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_1c

    mul-int v8, v4, v1

    add-int/2addr v8, v0

    add-int v9, v6, v8

    add-int/2addr v8, v11

    .line 6276
    aget v8, v7, v8

    aput v8, v5, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_1c
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_1d
    if-gt v10, v3, :cond_21

    neg-int v0, v1

    const/4 v12, 0x1

    :goto_1c
    if-ge v12, v2, :cond_20

    add-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    mul-int v8, v12, v3

    mul-int/2addr v8, v1

    const/4 v9, 0x2

    :goto_1d
    if-ge v9, v1, :cond_1f

    const/4 v10, 0x2

    add-int/2addr v4, v10

    add-int v10, v4, p9

    move-object/from16 v13, p0

    .line 6288
    iget-object v14, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v15, v10, -0x1

    aget v15, v14, v15

    .line 6289
    aget v10, v14, v10

    add-int v14, v6, v9

    add-int v16, v11, v9

    move/from16 p4, v0

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v3, :cond_1e

    mul-int v17, v0, v1

    add-int v17, v17, v8

    add-int v18, v14, v17

    add-int v17, v16, v17

    add-int/lit8 v19, v17, -0x1

    .line 6296
    aget v19, v7, v19

    .line 6297
    aget v17, v7, v17

    add-int/lit8 v20, v18, -0x1

    mul-float v21, v15, v19

    mul-float v22, v10, v17

    sub-float v21, v21, v22

    .line 6299
    aput v21, v5, v20

    mul-float v17, v17, v15

    mul-float v19, v19, v10

    add-float v17, v17, v19

    .line 6300
    aput v17, v5, v18

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_1e
    add-int/lit8 v9, v9, 0x2

    move/from16 v0, p4

    goto :goto_1d

    :cond_1f
    move-object/from16 v13, p0

    move/from16 p4, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_1c

    :cond_20
    move-object/from16 v13, p0

    goto :goto_22

    :cond_21
    move-object/from16 v13, p0

    neg-int v0, v1

    const/4 v12, 0x1

    :goto_1f
    if-ge v12, v2, :cond_24

    add-int/2addr v0, v1

    mul-int v4, v12, v3

    mul-int/2addr v4, v1

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v3, :cond_23

    add-int/lit8 v9, v0, -0x1

    mul-int v10, v8, v1

    add-int/2addr v10, v4

    const/4 v14, 0x2

    :goto_21
    if-ge v14, v1, :cond_22

    const/4 v15, 0x2

    add-int/2addr v9, v15

    add-int v16, v9, p9

    .line 6315
    iget-object v15, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v17, v16, -0x1

    aget v17, v15, v17

    .line 6316
    aget v15, v15, v16

    add-int v16, v6, v14

    add-int v18, v11, v14

    add-int v16, v16, v10

    add-int v18, v18, v10

    add-int/lit8 v19, v18, -0x1

    .line 6321
    aget v19, v7, v19

    .line 6322
    aget v18, v7, v18

    add-int/lit8 v20, v16, -0x1

    mul-float v21, v17, v19

    mul-float v22, v15, v18

    sub-float v21, v21, v22

    .line 6324
    aput v21, v5, v20

    mul-float v17, v17, v18

    mul-float v15, v15, v19

    add-float v17, v17, v15

    .line 6325
    aput v17, v5, v16

    add-int/lit8 v14, v14, 0x2

    goto :goto_21

    :cond_22
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_23
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    :cond_24
    :goto_22
    return-void
.end method

.method radbg(JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 48

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v13, p9

    move-object/from16 v14, p12

    const v5, 0x40c90fdb

    long-to-float v6, v3

    div-float/2addr v5, v6

    float-to-double v5, v5

    .line 6345
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 6346
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    const-wide/16 v15, 0x1

    sub-long v8, v1, v15

    const-wide/16 v17, 0x2

    .line 6347
    div-long v8, v8, v17

    add-long v10, v3, v15

    .line 6348
    div-long v10, v10, v17

    mul-long v19, v3, v1

    cmp-long v6, v1, p5

    const-wide/16 v21, 0x0

    if-ltz v6, :cond_2

    move-wide/from16 v23, v21

    :goto_0
    cmp-long v6, v23, p5

    if-gez v6, :cond_1

    mul-long v25, v23, v1

    mul-long v27, v23, v19

    move-wide/from16 v29, v21

    :goto_1
    cmp-long v6, v29, v1

    if-gez v6, :cond_0

    add-long v31, p13, v29

    move v12, v5

    add-long v5, v31, v25

    add-long v31, p10, v29

    move/from16 v33, v7

    move-wide/from16 v34, v8

    add-long v7, v31, v27

    .line 6355
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v14, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v29, v29, v15

    move v5, v12

    move/from16 v7, v33

    move-wide/from16 v8, v34

    goto :goto_1

    :cond_0
    move v12, v5

    move/from16 v33, v7

    move-wide/from16 v34, v8

    add-long v23, v23, v15

    goto :goto_0

    :cond_1
    move v12, v5

    move/from16 v33, v7

    move-wide/from16 v34, v8

    goto :goto_4

    :cond_2
    move v12, v5

    move/from16 v33, v7

    move-wide/from16 v34, v8

    move-wide/from16 v5, v21

    :goto_2
    cmp-long v7, v5, v1

    if-gez v7, :cond_4

    add-long v7, p13, v5

    add-long v23, p10, v5

    move-wide/from16 v25, v21

    :goto_3
    cmp-long v9, v25, p5

    if-gez v9, :cond_3

    mul-long v27, v25, v1

    add-long v3, v7, v27

    mul-long v27, v25, v19

    move-wide/from16 v29, v7

    add-long v7, v23, v27

    .line 6363
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v14, v3, v4, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v25, v25, v15

    move-wide/from16 v3, p3

    move-wide/from16 v7, v29

    goto :goto_3

    :cond_3
    add-long/2addr v5, v15

    move-wide/from16 v3, p3

    goto :goto_2

    :cond_4
    :goto_4
    add-long v3, p10, v1

    sub-long/2addr v3, v15

    move-wide v5, v15

    :goto_5
    cmp-long v7, v5, v10

    if-gez v7, :cond_6

    sub-long v7, p3, v5

    mul-long v19, v5, v17

    mul-long v23, v5, p5

    mul-long v23, v23, v1

    mul-long v7, v7, p5

    mul-long/2addr v7, v1

    mul-long v19, v19, v1

    move-wide/from16 v25, v21

    :goto_6
    cmp-long v9, v25, p5

    if-gez v9, :cond_5

    mul-long v27, v25, v1

    mul-long v29, v27, p3

    add-long v31, v3, v19

    add-long v31, v31, v29

    move-wide/from16 v36, v3

    sub-long v3, v31, v1

    add-long v31, p10, v19

    move-wide/from16 v38, v10

    add-long v9, v31, v29

    .line 6379
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 6380
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-long v9, p13, v27

    move/from16 v27, v12

    add-long v11, v9, v23

    add-float/2addr v3, v3

    .line 6382
    invoke-virtual {v14, v11, v12, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v9, v7

    add-float/2addr v4, v4

    .line 6383
    invoke-virtual {v14, v9, v10, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v25, v25, v15

    move/from16 v12, v27

    move-wide/from16 v3, v36

    move-wide/from16 v10, v38

    goto :goto_6

    :cond_5
    move-wide/from16 v36, v3

    move-wide/from16 v38, v10

    move/from16 v27, v12

    add-long/2addr v5, v15

    goto :goto_5

    :cond_6
    move-wide/from16 v38, v10

    move/from16 v27, v12

    cmp-long v3, v1, v15

    if-eqz v3, :cond_d

    cmp-long v4, v34, p5

    if-ltz v4, :cond_9

    move-wide v4, v15

    :goto_7
    cmp-long v6, v4, v38

    if-gez v6, :cond_d

    sub-long v6, p3, v4

    mul-long v8, v4, p5

    mul-long/2addr v8, v1

    mul-long v6, v6, p5

    mul-long/2addr v6, v1

    mul-long v10, v4, v17

    mul-long/2addr v10, v1

    move-wide/from16 v19, v21

    :goto_8
    cmp-long v12, v19, p5

    if-gez v12, :cond_8

    mul-long v23, v19, v1

    add-long v25, v23, v8

    add-long v23, v23, v6

    mul-long v28, v19, p3

    mul-long v28, v28, v1

    add-long v28, v28, v10

    move-wide/from16 v30, v17

    :goto_9
    cmp-long v12, v30, v1

    if-gez v12, :cond_7

    sub-long v36, v1, v30

    add-long v40, p13, v30

    add-long v36, p10, v36

    add-long v42, p10, v30

    move-wide/from16 v44, v6

    add-long v6, v40, v25

    move-wide/from16 v46, v8

    add-long v8, v40, v23

    move-wide/from16 v40, v10

    add-long v10, v42, v28

    add-long v36, v36, v28

    move v12, v3

    move-wide/from16 v42, v4

    sub-long v3, v36, v1

    sub-long v0, v10, v15

    .line 6407
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    .line 6408
    invoke-virtual {v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    sub-long v10, v3, v15

    .line 6409
    invoke-virtual {v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 6410
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-long v4, v6, v15

    add-float v10, v0, v2

    .line 6412
    invoke-virtual {v14, v4, v5, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v4, v8, v15

    sub-float/2addr v0, v2

    .line 6413
    invoke-virtual {v14, v4, v5, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v0, v1, v3

    .line 6414
    invoke-virtual {v14, v6, v7, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float/2addr v1, v3

    .line 6415
    invoke-virtual {v14, v8, v9, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v30, v30, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v12

    move-wide/from16 v10, v40

    move-wide/from16 v4, v42

    move-wide/from16 v6, v44

    move-wide/from16 v8, v46

    goto :goto_9

    :cond_7
    move v12, v3

    move-wide/from16 v42, v4

    move-wide/from16 v44, v6

    move-wide/from16 v46, v8

    move-wide/from16 v40, v10

    add-long v19, v19, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    goto :goto_8

    :cond_8
    move v12, v3

    move-wide/from16 v42, v4

    add-long v4, v42, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    goto/16 :goto_7

    :cond_9
    move v12, v3

    move-wide v0, v15

    :goto_a
    cmp-long v2, v0, v38

    if-gez v2, :cond_c

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    move-wide/from16 v9, p1

    mul-long/2addr v4, v9

    mul-long v2, v2, p5

    mul-long/2addr v2, v9

    mul-long v6, v0, v17

    mul-long/2addr v6, v9

    move-wide/from16 v19, v17

    :goto_b
    cmp-long v8, v19, v9

    if-gez v8, :cond_b

    sub-long v23, v9, v19

    add-long v25, p13, v19

    add-long v23, p10, v23

    add-long v28, p10, v19

    move-wide/from16 v30, v21

    :goto_c
    cmp-long v8, v30, p5

    if-gez v8, :cond_a

    mul-long v36, v30, v9

    add-long v40, v36, v4

    add-long v36, v36, v2

    mul-long v42, v30, p3

    mul-long v42, v42, v9

    add-long v42, v42, v6

    move-wide/from16 v44, v2

    add-long v2, v25, v40

    move-wide/from16 v40, v4

    add-long v4, v25, v36

    move-wide/from16 v36, v6

    add-long v6, v28, v42

    add-long v42, v23, v42

    move v8, v12

    sub-long v11, v42, v9

    move v10, v8

    sub-long v8, v6, v15

    .line 6438
    invoke-virtual {v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 6439
    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    move v7, v10

    sub-long v9, v11, v15

    .line 6440
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 6441
    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    sub-long v11, v2, v15

    move/from16 v32, v7

    add-float v7, v8, v9

    .line 6443
    invoke-virtual {v14, v11, v12, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v11, v4, v15

    sub-float/2addr v8, v9

    .line 6444
    invoke-virtual {v14, v11, v12, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v7, v6, v10

    .line 6445
    invoke-virtual {v14, v2, v3, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float/2addr v6, v10

    .line 6446
    invoke-virtual {v14, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v30, v30, v15

    move-wide/from16 v9, p1

    move/from16 v12, v32

    move-wide/from16 v6, v36

    move-wide/from16 v4, v40

    move-wide/from16 v2, v44

    goto :goto_c

    :cond_a
    move-wide/from16 v44, v2

    move-wide/from16 v40, v4

    move-wide/from16 v36, v6

    move/from16 v32, v12

    add-long v19, v19, v17

    move-wide/from16 v9, p1

    goto :goto_b

    :cond_b
    move/from16 v32, v12

    add-long/2addr v0, v15

    goto/16 :goto_a

    :cond_c
    move/from16 v32, v12

    goto :goto_d

    :cond_d
    move/from16 v32, v3

    :goto_d
    sub-long v0, p3, v15

    mul-long v0, v0, p7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-wide v4, v15

    :goto_e
    cmp-long v6, v4, v38

    if-gez v6, :cond_11

    sub-long v6, p3, v4

    mul-float v8, v33, v2

    mul-float v9, v27, v3

    sub-float/2addr v8, v9

    mul-float v3, v3, v33

    mul-float v2, v2, v27

    add-float/2addr v3, v2

    mul-long v9, v4, p7

    mul-long v6, v6, p7

    move-wide/from16 v11, v21

    :goto_f
    cmp-long v2, v11, p7

    if-gez v2, :cond_e

    add-long v19, p10, v11

    move-wide/from16 v23, v4

    add-long v4, p13, v11

    move-wide/from16 v25, v11

    add-long v11, v19, v9

    .line 6466
    invoke-virtual {v14, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    move-wide/from16 v28, v9

    add-long v9, v4, p7

    invoke-virtual {v14, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v9, v8

    add-float/2addr v2, v9

    invoke-virtual {v13, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v19, v6

    add-long/2addr v4, v0

    .line 6467
    invoke-virtual {v14, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {v13, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v25, v15

    move-wide/from16 v4, v23

    move-wide/from16 v9, v28

    goto :goto_f

    :cond_e
    move-wide/from16 v23, v4

    move-wide/from16 v28, v9

    move v9, v3

    move v2, v8

    move-wide/from16 v4, v17

    :goto_10
    cmp-long v10, v4, v38

    if-gez v10, :cond_10

    sub-long v10, p3, v4

    mul-float v12, v8, v2

    mul-float v19, v3, v9

    sub-float v12, v12, v19

    mul-float/2addr v9, v8

    mul-float/2addr v2, v3

    add-float/2addr v9, v2

    mul-long v19, v4, p7

    mul-long v10, v10, p7

    move-wide/from16 v25, v21

    :goto_11
    cmp-long v2, v25, p7

    if-gez v2, :cond_f

    add-long v30, p10, v25

    add-long v36, p13, v25

    move-wide/from16 v40, v0

    add-long v0, v30, v28

    .line 6483
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    move/from16 v42, v3

    move-wide/from16 v43, v4

    add-long v3, v36, v19

    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    invoke-virtual {v13, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v30, v6

    .line 6484
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    add-long v3, v36, v10

    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    invoke-virtual {v13, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v25, v25, v15

    move-wide/from16 v0, v40

    move/from16 v3, v42

    move-wide/from16 v4, v43

    goto :goto_11

    :cond_f
    move-wide/from16 v40, v0

    move/from16 v42, v3

    move-wide/from16 v43, v4

    add-long v4, v43, v15

    move v2, v12

    goto :goto_10

    :cond_10
    move-wide/from16 v40, v0

    move/from16 v42, v3

    add-long v4, v23, v15

    move v2, v8

    goto/16 :goto_e

    :cond_11
    move-wide v0, v15

    :goto_12
    cmp-long v2, v0, v38

    if-gez v2, :cond_13

    mul-long v2, v0, p7

    move-wide/from16 v4, v21

    :goto_13
    cmp-long v6, v4, p7

    if-gez v6, :cond_12

    add-long v6, p13, v4

    .line 6492
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    add-long v9, v6, v2

    invoke-virtual {v14, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v14, v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v4, v15

    goto :goto_13

    :cond_12
    add-long/2addr v0, v15

    goto :goto_12

    :cond_13
    move-wide v0, v15

    :goto_14
    cmp-long v2, v0, v38

    if-gez v2, :cond_15

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v21

    :goto_15
    cmp-long v8, v6, p5

    if-gez v8, :cond_14

    mul-long v8, v6, p1

    add-long v10, p13, v8

    add-long v8, p10, v8

    move-wide/from16 v19, v0

    add-long v0, v8, v4

    add-long/2addr v8, v2

    .line 6504
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    .line 6505
    invoke-virtual {v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    add-long v8, v10, v4

    sub-float v12, v0, v1

    .line 6507
    invoke-virtual {v14, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v10, v2

    add-float/2addr v0, v1

    .line 6508
    invoke-virtual {v14, v10, v11, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v6, v15

    move-wide/from16 v0, v19

    goto :goto_15

    :cond_14
    move-wide/from16 v19, v0

    add-long v0, v19, v15

    goto :goto_14

    :cond_15
    if-nez v32, :cond_16

    return-void

    :cond_16
    cmp-long v0, v34, p5

    if-ltz v0, :cond_1a

    move-wide v1, v15

    :goto_16
    cmp-long v3, v1, v38

    if-gez v3, :cond_19

    sub-long v3, p3, v1

    mul-long v5, v1, p5

    mul-long v5, v5, p1

    mul-long v3, v3, p5

    mul-long v3, v3, p1

    move-wide/from16 v7, v21

    :goto_17
    cmp-long v9, v7, p5

    if-gez v9, :cond_18

    mul-long v9, v7, p1

    move-wide/from16 v11, v17

    :goto_18
    cmp-long v19, v11, p1

    if-gez v19, :cond_17

    add-long v19, p13, v11

    add-long v23, p10, v11

    add-long v19, v19, v9

    move/from16 v25, v0

    move-wide/from16 v26, v1

    add-long v0, v19, v5

    move-wide/from16 v28, v7

    add-long v7, v19, v3

    add-long v23, v23, v9

    move-wide/from16 v19, v9

    add-long v9, v23, v5

    move-wide/from16 v30, v5

    add-long v5, v23, v3

    move-wide/from16 v23, v3

    sub-long v2, v9, v15

    .line 6529
    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 6530
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-long v9, v5, v15

    .line 6531
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 6532
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-long v9, v0, v15

    sub-float v6, v2, v5

    .line 6534
    invoke-virtual {v14, v9, v10, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v9, v7, v15

    add-float/2addr v2, v5

    .line 6535
    invoke-virtual {v14, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v2, v3, v4

    .line 6536
    invoke-virtual {v14, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v3, v4

    .line 6537
    invoke-virtual {v14, v7, v8, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v17

    move-wide/from16 v9, v19

    move-wide/from16 v3, v23

    move/from16 v0, v25

    move-wide/from16 v1, v26

    move-wide/from16 v7, v28

    move-wide/from16 v5, v30

    goto :goto_18

    :cond_17
    move/from16 v25, v0

    move-wide/from16 v26, v1

    move-wide/from16 v23, v3

    move-wide/from16 v30, v5

    move-wide/from16 v28, v7

    add-long v7, v28, v15

    goto :goto_17

    :cond_18
    move/from16 v25, v0

    move-wide/from16 v26, v1

    add-long v1, v26, v15

    goto/16 :goto_16

    :cond_19
    move/from16 v25, v0

    goto/16 :goto_1c

    :cond_1a
    move/from16 v25, v0

    move-wide v0, v15

    :goto_19
    cmp-long v2, v0, v38

    if-gez v2, :cond_1d

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v17

    :goto_1a
    cmp-long v8, v6, p1

    if-gez v8, :cond_1c

    add-long v8, p13, v6

    add-long v10, p10, v6

    move-wide/from16 v19, v21

    :goto_1b
    cmp-long v12, v19, p5

    if-gez v12, :cond_1b

    mul-long v23, v19, p1

    add-long v26, v8, v23

    move-wide/from16 v28, v8

    add-long v8, v26, v4

    move-wide/from16 v30, v0

    add-long v0, v26, v2

    add-long v23, v10, v23

    move-wide/from16 v26, v10

    add-long v10, v23, v4

    move-wide/from16 v32, v4

    add-long v4, v23, v2

    move-wide/from16 v23, v2

    sub-long v2, v10, v15

    .line 6555
    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 6556
    invoke-virtual {v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-long v10, v4, v15

    .line 6557
    invoke-virtual {v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 6558
    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    sub-long v11, v8, v15

    sub-float v5, v2, v4

    .line 6560
    invoke-virtual {v14, v11, v12, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v11, v0, v15

    add-float/2addr v2, v4

    .line 6561
    invoke-virtual {v14, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v2, v3, v10

    .line 6562
    invoke-virtual {v14, v8, v9, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v3, v10

    .line 6563
    invoke-virtual {v14, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v19, v19, v15

    move-wide/from16 v2, v23

    move-wide/from16 v10, v26

    move-wide/from16 v8, v28

    move-wide/from16 v0, v30

    move-wide/from16 v4, v32

    goto :goto_1b

    :cond_1b
    move-wide/from16 v30, v0

    move-wide/from16 v23, v2

    move-wide/from16 v32, v4

    add-long v6, v6, v17

    goto :goto_1a

    :cond_1c
    move-wide/from16 v30, v0

    add-long v0, v30, v15

    goto :goto_19

    :cond_1d
    :goto_1c
    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-object/from16 v8, p9

    move-wide/from16 v0, p1

    move-wide/from16 v9, p10

    move-wide/from16 v11, p7

    .line 6568
    invoke-static/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    move-wide v2, v15

    :goto_1d
    cmp-long v4, v2, p3

    if-gez v4, :cond_1f

    mul-long v4, v2, p5

    mul-long/2addr v4, v0

    move-wide/from16 v6, v21

    :goto_1e
    cmp-long v8, v6, p5

    if-gez v8, :cond_1e

    mul-long v8, v6, v0

    add-long/2addr v8, v4

    add-long v10, p10, v8

    add-long v8, p13, v8

    .line 6573
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v13, v10, v11, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v6, v15

    goto :goto_1e

    :cond_1e
    add-long/2addr v2, v15

    goto :goto_1d

    :cond_1f
    if-gtz v25, :cond_23

    neg-long v2, v0

    move-wide v4, v15

    :goto_1f
    cmp-long v6, v4, p3

    if-gez v6, :cond_22

    add-long/2addr v2, v0

    sub-long v6, v2, v15

    mul-long v8, v4, p5

    mul-long/2addr v8, v0

    move-wide/from16 v10, v17

    :goto_20
    cmp-long v12, v10, v0

    if-gez v12, :cond_21

    add-long v6, v6, v17

    move-wide/from16 p7, v2

    add-long v2, v6, p15

    move-object/from16 v12, p0

    move-wide/from16 v19, v6

    .line 6585
    iget-object v6, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v23, v4

    sub-long v4, v2, v15

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 6586
    iget-object v5, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    add-long v5, p10, v10

    add-long v25, p13, v10

    move-wide/from16 v27, v21

    :goto_21
    cmp-long v3, v27, p5

    if-gez v3, :cond_20

    mul-long v29, v27, v0

    add-long v29, v29, v8

    move-wide/from16 v31, v8

    add-long v7, v5, v29

    move-wide/from16 v33, v5

    add-long v5, v25, v29

    sub-long v0, v5, v15

    .line 6593
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    .line 6594
    invoke-virtual {v14, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    sub-long v5, v7, v15

    mul-float v3, v4, v0

    mul-float v9, v2, v1

    sub-float/2addr v3, v9

    .line 6596
    invoke-virtual {v13, v5, v6, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float/2addr v1, v4

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 6597
    invoke-virtual {v13, v7, v8, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v27, v27, v15

    move-wide/from16 v0, p1

    move-wide/from16 v8, v31

    move-wide/from16 v5, v33

    goto :goto_21

    :cond_20
    move-wide/from16 v31, v8

    add-long v10, v10, v17

    move-wide/from16 v0, p1

    move-wide/from16 v2, p7

    move-wide/from16 v6, v19

    move-wide/from16 v4, v23

    goto :goto_20

    :cond_21
    move-object/from16 v12, p0

    move-wide/from16 p7, v2

    move-wide/from16 v23, v4

    add-long v4, v23, v15

    move-wide/from16 v0, p1

    goto :goto_1f

    :cond_22
    move-object/from16 v12, p0

    goto/16 :goto_25

    :cond_23
    move-object/from16 v12, p0

    neg-long v2, v0

    move-wide v4, v15

    :goto_22
    cmp-long v6, v4, p3

    if-gez v6, :cond_26

    add-long/2addr v2, v0

    mul-long v6, v4, p5

    mul-long/2addr v6, v0

    move-wide/from16 v8, v21

    :goto_23
    cmp-long v10, v8, p5

    if-gez v10, :cond_25

    sub-long v10, v2, v15

    mul-long v19, v8, v0

    add-long v19, v19, v6

    move-wide/from16 v23, v17

    :goto_24
    cmp-long v25, v23, v0

    if-gez v25, :cond_24

    add-long v10, v10, v17

    add-long v0, v10, p15

    move-wide/from16 p7, v2

    .line 6612
    iget-object v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v25, v6

    sub-long v6, v0, v15

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 6613
    iget-object v3, v12, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    add-long v6, p10, v23

    add-long v27, p13, v23

    add-long v6, v6, v19

    move-wide/from16 v29, v10

    add-long v10, v27, v19

    move-wide/from16 v27, v4

    sub-long v3, v10, v15

    .line 6618
    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    .line 6619
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-long v4, v6, v15

    mul-float v10, v2, v1

    mul-float v11, v0, v3

    sub-float/2addr v10, v11

    .line 6621
    invoke-virtual {v13, v4, v5, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float/2addr v2, v3

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 6622
    invoke-virtual {v13, v6, v7, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v23, v23, v17

    move-wide/from16 v0, p1

    move-wide/from16 v2, p7

    move-wide/from16 v6, v25

    move-wide/from16 v4, v27

    move-wide/from16 v10, v29

    goto :goto_24

    :cond_24
    move-wide/from16 p7, v2

    move-wide/from16 v27, v4

    move-wide/from16 v25, v6

    add-long/2addr v8, v15

    move-wide/from16 v0, p1

    goto :goto_23

    :cond_25
    move-wide/from16 p7, v2

    move-wide/from16 v27, v4

    add-long v4, v27, v15

    move-wide/from16 v0, p1

    goto :goto_22

    :cond_26
    :goto_25
    return-void
.end method

.method radf2(II[FI[FII)V
    .locals 21

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v1, v0

    mul-int/lit8 v3, v0, 0x2

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v1, :cond_0

    mul-int v7, v5, v3

    add-int v7, p6, v7

    add-int v8, v7, v3

    sub-int/2addr v8, v6

    mul-int v6, v5, v0

    add-int v6, p4, v6

    add-int v9, v6, v2

    .line 3685
    aget v6, p3, v6

    .line 3686
    aget v9, p3, v9

    add-float v10, v6, v9

    .line 3688
    aput v10, p5, v7

    sub-float/2addr v6, v9

    .line 3689
    aput v6, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_1

    return-void

    :cond_1
    if-eq v0, v5, :cond_5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_3

    mul-int v3, v7, v0

    mul-int/lit8 v8, v3, 0x2

    add-int v9, v8, v0

    add-int v10, v3, v2

    move v11, v5

    :goto_2
    if-ge v11, v0, :cond_2

    sub-int v12, v0, v11

    add-int/lit8 v13, v11, -0x1

    add-int v13, v13, p7

    add-int v14, p6, v11

    add-int/2addr v14, v8

    add-int v12, p6, v12

    add-int/2addr v12, v9

    add-int v15, p4, v11

    add-int v16, v15, v3

    add-int/2addr v15, v10

    add-int/lit8 v17, v16, -0x1

    .line 3708
    aget v17, p3, v17

    .line 3709
    aget v16, p3, v16

    add-int/lit8 v18, v15, -0x1

    .line 3710
    aget v18, p3, v18

    .line 3711
    aget v15, p3, v15

    move-object/from16 v4, p0

    .line 3713
    iget-object v5, v4, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v19, v13, -0x1

    aget v19, v5, v19

    .line 3714
    aget v5, v5, v13

    mul-float v13, v19, v18

    mul-float v20, v5, v15

    add-float v13, v13, v20

    mul-float v19, v19, v15

    mul-float v5, v5, v18

    sub-float v19, v19, v5

    add-float v5, v16, v19

    .line 3719
    aput v5, p5, v14

    sub-int/2addr v14, v6

    add-float v5, v17, v13

    .line 3720
    aput v5, p5, v14

    sub-float v19, v19, v16

    .line 3722
    aput v19, p5, v12

    sub-int/2addr v12, v6

    sub-float v17, v17, v13

    .line 3723
    aput v17, p5, v12

    add-int/lit8 v11, v11, 0x2

    const/4 v5, 0x2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p0

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    move-object/from16 v4, p0

    .line 3726
    rem-int/lit8 v5, v0, 0x2

    if-ne v5, v6, :cond_4

    return-void

    :cond_4
    const/4 v5, 0x2

    goto :goto_3

    :cond_5
    move-object/from16 v4, p0

    :goto_3
    mul-int/2addr v3, v5

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_6

    mul-int v7, v5, v0

    add-int v8, p6, v3

    add-int/2addr v8, v0

    add-int v9, p4, v0

    sub-int/2addr v9, v6

    add-int/2addr v9, v7

    add-int v7, v9, v2

    .line 3736
    aget v7, p3, v7

    neg-float v7, v7

    aput v7, p5, v8

    sub-int/2addr v8, v6

    .line 3737
    aget v7, p3, v9

    aput v7, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method radf2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    mul-long v3, p3, p1

    const-wide/16 v5, 0x2

    mul-long v7, p1, v5

    const-wide/16 v11, 0x0

    :goto_0
    cmp-long v13, v11, p3

    const-wide/16 v14, 0x1

    if-gez v13, :cond_0

    mul-long v16, v11, v7

    add-long v9, p9, v16

    add-long v16, v9, v7

    sub-long v5, v16, v14

    mul-long v16, v11, p1

    add-long v14, p6, v16

    move-wide/from16 v16, v7

    add-long v7, v14, v3

    .line 3758
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    .line 3759
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    add-float v8, v13, v7

    .line 3761
    invoke-virtual {v2, v9, v10, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v13, v7

    .line 3762
    invoke-virtual {v2, v5, v6, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    move-wide/from16 v7, v16

    const-wide/16 v5, 0x2

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v7

    cmp-long v7, p1, v5

    if-gez v7, :cond_1

    return-void

    :cond_1
    if-eqz v7, :cond_4

    move-wide/from16 v7, v16

    const-wide/16 v9, 0x0

    :goto_1
    cmp-long v11, v9, p3

    if-gez v11, :cond_3

    mul-long v7, v9, p1

    mul-long v11, v7, v5

    add-long v5, v11, p1

    add-long v13, v7, v3

    const-wide/16 v15, 0x2

    :goto_2
    cmp-long v17, v15, p1

    if-gez v17, :cond_2

    sub-long v20, p1, v15

    const-wide/16 v18, 0x1

    sub-long v22, v15, v18

    move-wide/from16 v24, v3

    add-long v3, v22, p11

    add-long v22, p9, v15

    move-wide/from16 v26, v9

    add-long v9, v22, v11

    add-long v20, p9, v20

    move-wide/from16 v22, v11

    add-long v11, v20, v5

    add-long v20, p6, v15

    move-wide/from16 v28, v5

    add-long v5, v20, v7

    move-wide/from16 v30, v7

    add-long v7, v20, v13

    move-wide/from16 v20, v13

    sub-long v13, v5, v18

    .line 3781
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    .line 3782
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move-wide/from16 v32, v15

    sub-long v14, v7, v18

    .line 3783
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 3784
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 3786
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v14, v3, v18

    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 3787
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float v4, v8, v6

    mul-float v14, v3, v7

    add-float/2addr v4, v14

    mul-float/2addr v8, v7

    mul-float/2addr v3, v6

    sub-float/2addr v8, v3

    add-float v3, v5, v8

    .line 3792
    invoke-virtual {v2, v9, v10, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v14, 0x1

    sub-long/2addr v9, v14

    add-float v3, v13, v4

    .line 3793
    invoke-virtual {v2, v9, v10, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v8, v5

    .line 3795
    invoke-virtual {v2, v11, v12, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long/2addr v11, v14

    sub-float/2addr v13, v4

    .line 3796
    invoke-virtual {v2, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x2

    add-long v5, v32, v3

    move-wide v15, v5

    move-wide/from16 v13, v20

    move-wide/from16 v11, v22

    move-wide/from16 v3, v24

    move-wide/from16 v9, v26

    move-wide/from16 v5, v28

    move-wide/from16 v7, v30

    goto :goto_2

    :cond_2
    move-wide/from16 v24, v3

    move-wide/from16 v30, v7

    move-wide/from16 v26, v9

    const-wide/16 v3, 0x2

    const-wide/16 v14, 0x1

    add-long v9, v26, v14

    move-wide v5, v3

    move-wide/from16 v3, v24

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v24, v3

    move-wide v3, v5

    const-wide/16 v14, 0x1

    .line 3799
    rem-long v5, p1, v3

    cmp-long v5, v5, v14

    if-nez v5, :cond_5

    return-void

    :cond_4
    move-wide/from16 v24, v3

    move-wide v3, v5

    move-wide/from16 v7, v16

    :cond_5
    mul-long/2addr v7, v3

    const-wide/16 v9, 0x0

    :goto_3
    cmp-long v3, v9, p3

    if-gez v3, :cond_6

    mul-long v3, v9, p1

    add-long v5, p9, v7

    add-long v5, v5, p1

    add-long v11, p6, p1

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    add-long/2addr v11, v3

    add-long v3, v11, v24

    .line 3809
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v5, v6, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long/2addr v5, v13

    .line 3810
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v5, v6, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v9, v13

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf3(II[FI[FII)V
    .locals 29

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    mul-int v3, v1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/high16 v6, -0x41000000    # -0.5f

    const v7, 0x3f5db3d7

    const/4 v8, 0x1

    if-ge v5, v1, :cond_0

    mul-int v9, v5, v0

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v8

    mul-int/2addr v11, v0

    add-int v12, p4, v9

    add-int v13, v12, v3

    add-int/2addr v10, v12

    .line 3975
    aget v12, p3, v12

    .line 3976
    aget v13, p3, v13

    .line 3977
    aget v10, p3, v10

    add-float v14, v13, v10

    mul-int/lit8 v9, v9, 0x3

    add-int v9, p6, v9

    add-float v15, v12, v14

    .line 3979
    aput v15, p5, v9

    add-int v9, p6, v11

    add-int/2addr v9, v0

    sub-float/2addr v10, v13

    mul-float/2addr v10, v7

    .line 3980
    aput v10, p5, v9

    add-int v7, p6, v0

    sub-int/2addr v7, v8

    add-int/2addr v7, v11

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    .line 3981
    aput v12, p5, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v8, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge v4, v1, :cond_3

    mul-int v5, v4, v0

    mul-int/lit8 v8, v5, 0x3

    add-int v9, v5, v3

    add-int v10, v9, v3

    add-int v11, v8, v0

    add-int v12, v11, v0

    const/4 v13, 0x2

    :goto_2
    if-ge v13, v0, :cond_2

    sub-int v14, v0, v13

    add-int/lit8 v15, v13, -0x1

    add-int v16, v15, p7

    add-int/2addr v15, v2

    move-object/from16 v7, p0

    .line 3998
    iget-object v6, v7, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v19, v16, -0x1

    aget v19, v6, v19

    .line 3999
    aget v16, v6, v16

    add-int/lit8 v20, v15, -0x1

    .line 4000
    aget v20, v6, v20

    .line 4001
    aget v6, v6, v15

    add-int v15, p4, v13

    add-int v21, p6, v13

    add-int v14, p6, v14

    add-int v22, v15, v5

    add-int v23, v15, v9

    add-int/2addr v15, v10

    add-int/lit8 v24, v22, -0x1

    .line 4010
    aget v24, p3, v24

    .line 4011
    aget v22, p3, v22

    add-int/lit8 v25, v23, -0x1

    .line 4012
    aget v25, p3, v25

    .line 4013
    aget v23, p3, v23

    add-int/lit8 v26, v15, -0x1

    .line 4014
    aget v26, p3, v26

    .line 4015
    aget v15, p3, v15

    mul-float v27, v19, v25

    mul-float v28, v16, v23

    add-float v27, v27, v28

    mul-float v19, v19, v23

    mul-float v16, v16, v25

    sub-float v19, v19, v16

    mul-float v16, v20, v26

    mul-float v23, v6, v15

    add-float v16, v16, v23

    mul-float v20, v20, v15

    mul-float v6, v6, v26

    sub-float v20, v20, v6

    add-float v6, v27, v16

    add-float v15, v19, v20

    const/high16 v18, -0x41000000    # -0.5f

    mul-float v23, v6, v18

    add-float v23, v24, v23

    mul-float v25, v15, v18

    add-float v25, v22, v25

    sub-float v19, v19, v20

    const v17, 0x3f5db3d7

    mul-float v19, v19, v17

    sub-float v16, v16, v27

    mul-float v16, v16, v17

    add-int v20, v21, v8

    add-int/2addr v14, v11

    add-int v21, v21, v12

    add-int/lit8 v26, v20, -0x1

    add-float v24, v24, v6

    .line 4032
    aput v24, p5, v26

    add-float v22, v22, v15

    .line 4033
    aput v22, p5, v20

    add-int/lit8 v6, v14, -0x1

    sub-float v15, v23, v19

    .line 4034
    aput v15, p5, v6

    sub-float v6, v16, v25

    .line 4035
    aput v6, p5, v14

    add-int/lit8 v6, v21, -0x1

    add-float v23, v23, v19

    .line 4036
    aput v23, p5, v6

    add-float v25, v25, v16

    .line 4037
    aput v25, p5, v21

    add-int/lit8 v13, v13, 0x2

    move/from16 v7, v17

    move/from16 v6, v18

    goto/16 :goto_2

    :cond_2
    move/from16 v18, v6

    move/from16 v17, v7

    move-object/from16 v7, p0

    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v17

    goto/16 :goto_1

    :cond_3
    move-object/from16 v7, p0

    return-void
.end method

.method radf3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    add-long v3, p11, p1

    mul-long v5, p3, p1

    const-wide/16 v9, 0x0

    :goto_0
    cmp-long v11, v9, p3

    const-wide/16 v14, 0x3

    const-wide/16 v16, 0x2

    const-wide/16 v18, 0x1

    if-gez v11, :cond_0

    mul-long v20, v9, p1

    mul-long v16, v16, v5

    mul-long v22, v9, v14

    add-long v22, v22, v18

    mul-long v22, v22, p1

    add-long v7, p6, v20

    add-long v12, v7, v5

    add-long v14, v7, v16

    .line 4063
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 4064
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 4065
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    add-float v13, v8, v12

    const-wide/16 v14, 0x3

    mul-long v20, v20, v14

    add-long v14, p9, v20

    add-float v11, v7, v13

    .line 4067
    invoke-virtual {v2, v14, v15, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, p9, v22

    add-long v14, v14, p1

    sub-float/2addr v12, v8

    const v8, 0x3f5db3d7

    mul-float/2addr v12, v8

    .line 4068
    invoke-virtual {v2, v14, v15, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, p9, p1

    sub-long v11, v11, v18

    add-long v11, v11, v22

    const/high16 v8, -0x41000000    # -0.5f

    mul-float/2addr v13, v8

    add-float/2addr v7, v13

    .line 4069
    invoke-virtual {v2, v11, v12, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v9, v18

    goto :goto_0

    :cond_0
    cmp-long v7, p1, v18

    if-nez v7, :cond_1

    return-void

    :cond_1
    const-wide/16 v7, 0x0

    :goto_1
    cmp-long v9, v7, p3

    if-gez v9, :cond_3

    mul-long v9, v7, p1

    const-wide/16 v12, 0x3

    mul-long v14, v9, v12

    add-long v20, v9, v5

    add-long v22, v20, v5

    add-long v24, v14, p1

    add-long v27, v24, p1

    move-wide/from16 v29, v16

    :goto_2
    cmp-long v31, v29, p1

    if-gez v31, :cond_2

    sub-long v31, p1, v29

    sub-long v33, v29, v18

    add-long v11, v33, p11

    move-wide/from16 v35, v5

    add-long v5, v33, v3

    .line 4086
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v33, v3

    sub-long v3, v11, v18

    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 4087
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 4088
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v12, v5, v18

    invoke-virtual {v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 4089
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    add-long v12, p6, v29

    add-long v37, p9, v29

    add-long v31, p9, v31

    move-wide/from16 v39, v7

    add-long v6, v12, v9

    move-wide/from16 v41, v9

    add-long v8, v12, v20

    add-long v12, v12, v22

    move-wide/from16 v43, v14

    sub-long v14, v6, v18

    .line 4098
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 4099
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    sub-long v14, v8, v18

    .line 4100
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 4101
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-long v14, v12, v18

    .line 4102
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 4103
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    mul-float v13, v3, v7

    mul-float v14, v4, v8

    add-float/2addr v13, v14

    mul-float/2addr v3, v8

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    mul-float v4, v11, v9

    mul-float v7, v5, v12

    add-float/2addr v4, v7

    mul-float/2addr v11, v12

    mul-float/2addr v5, v9

    sub-float/2addr v11, v5

    add-float v5, v13, v4

    add-float v7, v3, v11

    const/high16 v8, -0x41000000    # -0.5f

    mul-float v12, v5, v8

    add-float/2addr v12, v10

    mul-float v9, v7, v8

    add-float/2addr v9, v6

    sub-float/2addr v3, v11

    const v11, 0x3f5db3d7

    mul-float/2addr v3, v11

    sub-float/2addr v4, v13

    mul-float/2addr v4, v11

    add-long v14, v37, v43

    move v13, v9

    add-long v8, v31, v24

    move/from16 v26, v12

    add-long v11, v37, v27

    sub-long v0, v14, v18

    add-float/2addr v10, v5

    .line 4120
    invoke-virtual {v2, v0, v1, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float/2addr v6, v7

    .line 4121
    invoke-virtual {v2, v14, v15, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v8, v18

    sub-float v5, v26, v3

    .line 4122
    invoke-virtual {v2, v0, v1, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v0, v4, v13

    .line 4123
    invoke-virtual {v2, v8, v9, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v11, v18

    add-float v3, v26, v3

    .line 4124
    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v9, v13, v4

    .line 4125
    invoke-virtual {v2, v11, v12, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v29, v29, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v3, v33

    move-wide/from16 v5, v35

    move-wide/from16 v7, v39

    move-wide/from16 v9, v41

    move-wide/from16 v14, v43

    const-wide/16 v12, 0x3

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v33, v3

    move-wide/from16 v35, v5

    move-wide/from16 v39, v7

    add-long v7, v39, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radf4(II[FI[FII)V
    .locals 34

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    mul-int v4, v1, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    mul-int v7, v6, v0

    mul-int/lit8 v8, v7, 0x4

    add-int v9, v7, v4

    add-int v10, v9, v4

    add-int v11, v10, v4

    add-int v12, v8, v0

    add-int v7, p4, v7

    .line 4324
    aget v7, p3, v7

    add-int v9, p4, v9

    .line 4325
    aget v9, p3, v9

    add-int v10, p4, v10

    .line 4326
    aget v10, p3, v10

    add-int v11, p4, v11

    .line 4327
    aget v11, p3, v11

    add-float v13, v9, v11

    add-float v14, v7, v10

    add-int v8, p6, v8

    add-int v12, p6, v12

    add-int/2addr v12, v0

    add-float v15, v13, v14

    .line 4335
    aput v15, p5, v8

    add-int/lit8 v8, v12, -0x1

    add-int v15, v8, v0

    add-int/2addr v15, v0

    sub-float/2addr v14, v13

    .line 4336
    aput v14, p5, v15

    sub-float/2addr v7, v10

    .line 4337
    aput v7, p5, v8

    sub-float/2addr v11, v9

    .line 4338
    aput v11, p5, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    return-void

    :cond_1
    if-eq v0, v6, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_3

    mul-int v9, v8, v0

    add-int v10, v9, v4

    add-int v11, v10, v4

    add-int v12, v11, v4

    mul-int/lit8 v13, v9, 0x4

    add-int v14, v13, v0

    add-int v15, v14, v0

    add-int v16, v15, v0

    move v5, v6

    :goto_2
    if-ge v5, v0, :cond_2

    sub-int v17, v0, v5

    add-int/lit8 v18, v5, -0x1

    add-int v19, v18, p7

    add-int v20, v18, v2

    add-int v18, v18, v3

    move-object/from16 v6, p0

    .line 4358
    iget-object v7, v6, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v21, v19, -0x1

    aget v21, v7, v21

    .line 4359
    aget v19, v7, v19

    add-int/lit8 v22, v20, -0x1

    .line 4360
    aget v22, v7, v22

    .line 4361
    aget v20, v7, v20

    add-int/lit8 v23, v18, -0x1

    .line 4362
    aget v23, v7, v23

    .line 4363
    aget v7, v7, v18

    add-int v18, p4, v5

    add-int v24, p6, v5

    add-int v17, p6, v17

    add-int v25, v18, v9

    add-int v26, v18, v10

    add-int v27, v18, v11

    add-int v18, v18, v12

    add-int/lit8 v28, v25, -0x1

    .line 4373
    aget v28, p3, v28

    .line 4374
    aget v25, p3, v25

    add-int/lit8 v29, v26, -0x1

    .line 4375
    aget v29, p3, v29

    .line 4376
    aget v26, p3, v26

    add-int/lit8 v30, v27, -0x1

    .line 4377
    aget v30, p3, v30

    .line 4378
    aget v27, p3, v27

    add-int/lit8 v31, v18, -0x1

    .line 4379
    aget v31, p3, v31

    .line 4380
    aget v18, p3, v18

    mul-float v32, v21, v29

    mul-float v33, v19, v26

    add-float v32, v32, v33

    mul-float v21, v21, v26

    mul-float v19, v19, v29

    sub-float v21, v21, v19

    mul-float v19, v22, v30

    mul-float v26, v20, v27

    add-float v19, v19, v26

    mul-float v22, v22, v27

    mul-float v20, v20, v30

    sub-float v22, v22, v20

    mul-float v20, v23, v31

    mul-float v26, v7, v18

    add-float v20, v20, v26

    mul-float v23, v23, v18

    mul-float v7, v7, v31

    sub-float v23, v23, v7

    add-float v7, v32, v20

    sub-float v20, v20, v32

    add-float v18, v21, v23

    sub-float v21, v21, v23

    add-float v23, v25, v22

    sub-float v25, v25, v22

    add-float v22, v28, v19

    sub-float v28, v28, v19

    add-int v19, v24, v13

    add-int v26, v17, v14

    add-int v24, v24, v15

    add-int v17, v17, v16

    add-int/lit8 v27, v19, -0x1

    add-float v29, v7, v22

    .line 4402
    aput v29, p5, v27

    add-int/lit8 v27, v17, -0x1

    sub-float v22, v22, v7

    .line 4403
    aput v22, p5, v27

    add-float v7, v18, v23

    .line 4404
    aput v7, p5, v19

    sub-float v18, v18, v23

    .line 4405
    aput v18, p5, v17

    add-int/lit8 v7, v24, -0x1

    add-float v17, v21, v28

    .line 4406
    aput v17, p5, v7

    add-int/lit8 v7, v26, -0x1

    sub-float v28, v28, v21

    .line 4407
    aput v28, p5, v7

    add-float v7, v20, v25

    .line 4408
    aput v7, p5, v24

    sub-float v20, v20, v25

    .line 4409
    aput v20, p5, v26

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_2
    move-object/from16 v6, p0

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_3
    move-object/from16 v6, p0

    .line 4412
    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    return-void

    :cond_4
    move-object/from16 v6, p0

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    mul-int v2, v5, v0

    mul-int/lit8 v3, v2, 0x4

    add-int v7, v2, v4

    add-int v8, v7, v4

    add-int v9, v8, v4

    add-int v10, v3, v0

    add-int v11, v10, v0

    add-int v12, v11, v0

    add-int v13, p4, v0

    add-int v14, p6, v0

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    add-int/2addr v2, v13

    .line 4428
    aget v2, p3, v2

    add-int/2addr v7, v13

    .line 4429
    aget v7, p3, v7

    add-int/2addr v8, v13

    .line 4430
    aget v8, p3, v8

    add-int/2addr v13, v9

    .line 4431
    aget v9, p3, v13

    const v13, -0x40cafb0d

    add-float v15, v7, v9

    mul-float/2addr v15, v13

    const v13, 0x3f3504f3

    sub-float/2addr v7, v9

    mul-float/2addr v7, v13

    const/4 v9, 0x1

    sub-int/2addr v14, v9

    add-int/2addr v3, v14

    add-float v13, v7, v2

    .line 4436
    aput v13, p5, v3

    add-int/2addr v14, v11

    sub-float/2addr v2, v7

    .line 4437
    aput v2, p5, v14

    add-int v2, p6, v10

    sub-float v3, v15, v8

    .line 4438
    aput v3, p5, v2

    add-int v2, p6, v12

    add-float/2addr v15, v8

    .line 4439
    aput v15, p5, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    add-long v3, p11, p1

    add-long v5, v3, p1

    mul-long v7, p3, p1

    const-wide/16 v11, 0x0

    :goto_0
    cmp-long v13, v11, p3

    const-wide/16 v14, 0x4

    const-wide/16 v16, 0x1

    if-gez v13, :cond_0

    mul-long v18, v11, p1

    mul-long v14, v14, v18

    add-long v20, v18, v7

    add-long v22, v20, v7

    add-long v24, v22, v7

    add-long v26, v14, p1

    add-long v9, p6, v18

    .line 4463
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    move-wide/from16 v18, v5

    add-long v5, p6, v20

    .line 4464
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move-wide/from16 v20, v3

    add-long v3, p6, v22

    .line 4465
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    move-wide/from16 v22, v7

    add-long v6, p6, v24

    .line 4466
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-float v6, v5, v4

    add-float v7, v9, v3

    add-long v13, p9, v14

    add-long v24, p9, v26

    add-long v0, v24, p1

    add-float v8, v6, v7

    .line 4474
    invoke-virtual {v2, v13, v14, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v13, v0, v16

    add-long v24, v13, p1

    move-wide/from16 v26, v11

    add-long v10, v24, p1

    sub-float/2addr v7, v6

    .line 4475
    invoke-virtual {v2, v10, v11, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v9, v3

    .line 4476
    invoke-virtual {v2, v13, v14, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v4, v5

    .line 4477
    invoke-virtual {v2, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v26, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v5, v18

    move-wide/from16 v3, v20

    move-wide/from16 v7, v22

    goto :goto_0

    :cond_0
    move-wide/from16 v20, v3

    move-wide/from16 v18, v5

    move-wide/from16 v22, v7

    const-wide/16 v0, 0x2

    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_4

    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v5, v3, p3

    if-gez v5, :cond_3

    mul-long v5, v3, p1

    add-long v7, v5, v22

    add-long v9, v7, v22

    add-long v11, v9, v22

    mul-long v24, v5, v14

    add-long v26, v24, p1

    add-long v30, v26, p1

    add-long v32, v30, p1

    move-wide/from16 v34, v0

    :goto_2
    cmp-long v13, v34, p1

    if-gez v13, :cond_2

    sub-long v36, p1, v34

    sub-long v38, v34, v16

    add-long v14, v38, p11

    add-long v0, v38, v20

    move-wide/from16 v40, v3

    add-long v3, v38, v18

    move-object/from16 v13, p0

    .line 4497
    iget-object v2, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v38, v11

    sub-long v11, v14, v16

    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 4498
    iget-object v11, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 4499
    iget-object v12, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v14, v0, v16

    invoke-virtual {v12, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    .line 4500
    iget-object v14, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    .line 4501
    iget-object v1, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v14, v3, v16

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    .line 4502
    iget-object v14, v13, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    add-long v14, p6, v34

    add-long v42, p9, v34

    add-long v36, p9, v36

    move/from16 v44, v3

    add-long v3, v14, v5

    move-wide/from16 v45, v5

    add-long v5, v14, v7

    move-wide/from16 v47, v7

    add-long v7, v14, v9

    add-long v14, v14, v38

    move-wide/from16 v49, v9

    sub-long v9, v3, v16

    move-object/from16 v13, p5

    .line 4512
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 4513
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    move v4, v9

    sub-long v9, v5, v16

    .line 4514
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 4515
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move v6, v3

    move v10, v4

    sub-long v3, v7, v16

    .line 4516
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 4517
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    sub-long v7, v14, v16

    .line 4518
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 4519
    invoke-virtual {v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float v14, v2, v9

    mul-float v15, v11, v5

    add-float/2addr v14, v15

    mul-float/2addr v2, v5

    mul-float/2addr v11, v9

    sub-float/2addr v2, v11

    mul-float v5, v12, v3

    mul-float v9, v0, v4

    add-float/2addr v5, v9

    mul-float/2addr v12, v4

    mul-float/2addr v0, v3

    sub-float/2addr v12, v0

    mul-float v0, v1, v7

    mul-float v3, v44, v8

    add-float/2addr v0, v3

    mul-float/2addr v1, v8

    mul-float v3, v44, v7

    sub-float/2addr v1, v3

    add-float v3, v14, v0

    sub-float/2addr v0, v14

    add-float v4, v2, v1

    sub-float/2addr v2, v1

    add-float v1, v6, v12

    sub-float/2addr v6, v12

    add-float v9, v10, v5

    sub-float v5, v10, v5

    add-long v7, v42, v24

    add-long v10, v36, v26

    add-long v14, v42, v30

    add-long v12, v36, v32

    move-wide/from16 v36, v10

    sub-long v10, v7, v16

    move/from16 v42, v0

    add-float v0, v3, v9

    move/from16 v43, v6

    move-object/from16 v6, p8

    .line 4541
    invoke-virtual {v6, v10, v11, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v10, v12, v16

    sub-float/2addr v9, v3

    .line 4542
    invoke-virtual {v6, v10, v11, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v0, v4, v1

    .line 4543
    invoke-virtual {v6, v7, v8, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v4, v1

    .line 4544
    invoke-virtual {v6, v12, v13, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v14, v16

    add-float v3, v2, v5

    .line 4545
    invoke-virtual {v6, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v10, v36, v16

    sub-float/2addr v5, v2

    .line 4546
    invoke-virtual {v6, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v0, v42, v43

    .line 4547
    invoke-virtual {v6, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v0, v42, v43

    move-wide/from16 v1, v36

    .line 4548
    invoke-virtual {v6, v1, v2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v0, 0x2

    add-long v34, v34, v0

    move-object v2, v6

    move-wide/from16 v11, v38

    move-wide/from16 v3, v40

    move-wide/from16 v5, v45

    move-wide/from16 v7, v47

    move-wide/from16 v9, v49

    const-wide/16 v14, 0x4

    goto/16 :goto_2

    :cond_2
    move-object v6, v2

    move-wide/from16 v40, v3

    add-long v3, v40, v16

    const-wide/16 v14, 0x4

    goto/16 :goto_1

    :cond_3
    move-object v6, v2

    .line 4551
    rem-long v0, p1, v0

    cmp-long v0, v0, v16

    if-nez v0, :cond_5

    return-void

    :cond_4
    move-object v6, v2

    :cond_5
    const-wide/16 v9, 0x0

    :goto_3
    cmp-long v0, v9, p3

    if-gez v0, :cond_6

    mul-long v0, v9, p1

    const-wide/16 v2, 0x4

    mul-long v14, v0, v2

    add-long v7, v0, v22

    add-long v4, v7, v22

    add-long v11, v4, v22

    add-long v18, v14, p1

    add-long v20, v18, p1

    add-long v24, v20, p1

    add-long v26, p6, p1

    add-long v28, p9, p1

    sub-long v26, v26, v16

    add-long v0, v26, v0

    move-object/from16 v13, p5

    .line 4567
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    add-long v7, v26, v7

    .line 4568
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    add-long v4, v26, v4

    .line 4569
    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-long v7, v26, v11

    .line 4570
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    const v7, -0x40cafb0d

    add-float v8, v1, v5

    mul-float/2addr v8, v7

    const v7, 0x3f3504f3

    sub-float/2addr v1, v5

    mul-float/2addr v1, v7

    sub-long v28, v28, v16

    add-long v14, v28, v14

    add-float v5, v1, v0

    .line 4575
    invoke-virtual {v6, v14, v15, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v28, v20

    sub-float/2addr v0, v1

    .line 4576
    invoke-virtual {v6, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, p9, v18

    sub-float v5, v8, v4

    .line 4577
    invoke-virtual {v6, v0, v1, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, p9, v24

    add-float/2addr v8, v4

    .line 4578
    invoke-virtual {v6, v0, v1, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v9, v16

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf5(II[FI[FII)V
    .locals 45

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    add-int v4, v3, v0

    mul-int v5, v1, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const v8, 0x3f167918

    const v9, 0x3f737871

    const v10, -0x40b0e443

    const v11, 0x3e9e377a

    const/4 v12, 0x1

    if-ge v7, v1, :cond_0

    mul-int v13, v7, v0

    mul-int/lit8 v14, v13, 0x5

    add-int v15, v14, v0

    add-int v16, v15, v0

    add-int v17, v16, v0

    add-int v18, v17, v0

    add-int v19, v13, v5

    add-int v20, v19, v5

    add-int v21, v20, v5

    add-int v22, v21, v5

    add-int v23, p6, v0

    add-int/lit8 v23, v23, -0x1

    add-int v12, p4, v13

    .line 4905
    aget v12, p3, v12

    add-int v13, p4, v19

    .line 4906
    aget v13, p3, v13

    add-int v19, p4, v20

    .line 4907
    aget v19, p3, v19

    add-int v20, p4, v21

    .line 4908
    aget v20, p3, v20

    add-int v21, p4, v22

    .line 4909
    aget v21, p3, v21

    add-float v22, v21, v13

    sub-float v21, v21, v13

    add-float v13, v20, v19

    sub-float v20, v20, v19

    add-int v14, p6, v14

    add-float v19, v12, v22

    add-float v19, v19, v13

    .line 4916
    aput v19, p5, v14

    add-int v15, v23, v15

    mul-float v14, v22, v11

    add-float/2addr v14, v12

    mul-float v19, v13, v10

    add-float v14, v14, v19

    .line 4917
    aput v14, p5, v15

    add-int v14, p6, v16

    mul-float v15, v21, v9

    mul-float v16, v20, v8

    add-float v15, v15, v16

    .line 4918
    aput v15, p5, v14

    add-int v23, v23, v17

    mul-float v22, v22, v10

    add-float v12, v12, v22

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    .line 4919
    aput v12, p5, v23

    add-int v10, p6, v18

    mul-float v21, v21, v8

    mul-float v20, v20, v9

    sub-float v21, v21, v20

    .line 4920
    aput v21, p5, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v12, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge v6, v1, :cond_3

    mul-int v7, v6, v0

    mul-int/lit8 v12, v7, 0x5

    add-int v13, v12, v0

    add-int v14, v13, v0

    add-int v15, v14, v0

    add-int v16, v15, v0

    add-int v17, v7, v5

    add-int v18, v17, v5

    add-int v19, v18, v5

    add-int v20, v19, v5

    const/16 v21, 0x2

    move/from16 v8, v21

    :goto_2
    if-ge v8, v0, :cond_2

    add-int/lit8 v21, v8, -0x1

    add-int v23, v21, p7

    add-int v24, v21, v2

    add-int v25, v21, v3

    add-int v21, v21, v4

    move-object/from16 v9, p0

    .line 4941
    iget-object v10, v9, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v28, v23, -0x1

    aget v28, v10, v28

    .line 4942
    aget v23, v10, v23

    add-int/lit8 v29, v24, -0x1

    .line 4943
    aget v29, v10, v29

    .line 4944
    aget v24, v10, v24

    add-int/lit8 v30, v25, -0x1

    .line 4945
    aget v30, v10, v30

    .line 4946
    aget v25, v10, v25

    add-int/lit8 v31, v21, -0x1

    .line 4947
    aget v31, v10, v31

    .line 4948
    aget v10, v10, v21

    sub-int v21, v0, v8

    add-int v32, p4, v8

    add-int v33, p6, v8

    add-int v21, p6, v21

    add-int v34, v32, v7

    add-int v35, v32, v17

    add-int v36, v32, v18

    add-int v37, v32, v19

    add-int v32, v32, v20

    add-int/lit8 v38, v34, -0x1

    .line 4961
    aget v38, p3, v38

    .line 4962
    aget v34, p3, v34

    add-int/lit8 v39, v35, -0x1

    .line 4963
    aget v39, p3, v39

    .line 4964
    aget v35, p3, v35

    add-int/lit8 v40, v36, -0x1

    .line 4965
    aget v40, p3, v40

    .line 4966
    aget v36, p3, v36

    add-int/lit8 v41, v37, -0x1

    .line 4967
    aget v41, p3, v41

    .line 4968
    aget v37, p3, v37

    add-int/lit8 v42, v32, -0x1

    .line 4969
    aget v42, p3, v42

    .line 4970
    aget v32, p3, v32

    mul-float v43, v28, v39

    mul-float v44, v23, v35

    add-float v43, v43, v44

    mul-float v28, v28, v35

    mul-float v23, v23, v39

    sub-float v28, v28, v23

    mul-float v23, v29, v40

    mul-float v35, v24, v36

    add-float v23, v23, v35

    mul-float v29, v29, v36

    mul-float v24, v24, v40

    sub-float v29, v29, v24

    mul-float v24, v30, v41

    mul-float v35, v25, v37

    add-float v24, v24, v35

    mul-float v30, v30, v37

    mul-float v25, v25, v41

    sub-float v30, v30, v25

    mul-float v25, v31, v42

    mul-float v35, v10, v32

    add-float v25, v25, v35

    mul-float v31, v31, v32

    mul-float v10, v10, v42

    sub-float v31, v31, v10

    add-float v10, v43, v25

    sub-float v25, v25, v43

    sub-float v32, v28, v31

    add-float v28, v28, v31

    add-float v31, v23, v24

    sub-float v24, v24, v23

    sub-float v23, v29, v30

    add-float v29, v29, v30

    mul-float v30, v10, v11

    add-float v30, v38, v30

    const v27, -0x40b0e443

    mul-float v35, v31, v27

    add-float v30, v30, v35

    mul-float v35, v28, v11

    add-float v35, v34, v35

    mul-float v36, v29, v27

    add-float v35, v35, v36

    mul-float v36, v10, v27

    add-float v36, v38, v36

    mul-float v37, v31, v11

    add-float v36, v36, v37

    mul-float v37, v28, v27

    add-float v37, v34, v37

    mul-float v39, v29, v11

    add-float v37, v37, v39

    const v26, 0x3f737871

    mul-float v39, v32, v26

    const v22, 0x3f167918

    mul-float v40, v23, v22

    add-float v39, v39, v40

    mul-float v40, v25, v26

    mul-float v41, v24, v22

    add-float v40, v40, v41

    mul-float v32, v32, v22

    mul-float v23, v23, v26

    sub-float v32, v32, v23

    mul-float v25, v25, v22

    mul-float v24, v24, v26

    sub-float v25, v25, v24

    add-int v23, v33, v12

    add-int v24, v21, v13

    add-int v41, v33, v14

    add-int v21, v21, v15

    add-int v33, v33, v16

    add-int/lit8 v42, v23, -0x1

    add-float v38, v38, v10

    add-float v38, v38, v31

    .line 5005
    aput v38, p5, v42

    add-float v34, v34, v28

    add-float v34, v34, v29

    .line 5006
    aput v34, p5, v23

    add-int/lit8 v10, v41, -0x1

    add-float v23, v30, v39

    .line 5007
    aput v23, p5, v10

    add-int/lit8 v10, v24, -0x1

    sub-float v30, v30, v39

    .line 5008
    aput v30, p5, v10

    add-float v10, v35, v40

    .line 5009
    aput v10, p5, v41

    sub-float v40, v40, v35

    .line 5010
    aput v40, p5, v24

    add-int/lit8 v10, v33, -0x1

    add-float v23, v36, v32

    .line 5011
    aput v23, p5, v10

    add-int/lit8 v10, v21, -0x1

    sub-float v36, v36, v32

    .line 5012
    aput v36, p5, v10

    add-float v10, v37, v25

    .line 5013
    aput v10, p5, v33

    sub-float v25, v25, v37

    .line 5014
    aput v25, p5, v21

    add-int/lit8 v8, v8, 0x2

    move/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_2

    :cond_2
    move/from16 v26, v9

    move/from16 v27, v10

    const v22, 0x3f167918

    move-object/from16 v9, p0

    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v22

    move/from16 v9, v26

    goto/16 :goto_1

    :cond_3
    move-object/from16 v9, p0

    return-void
.end method

.method radf5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    add-long v3, p11, p1

    add-long v5, v3, p1

    add-long v7, v5, p1

    mul-long v9, p3, p1

    const-wide/16 v13, 0x0

    :goto_0
    cmp-long v15, v13, p3

    const-wide/16 v16, 0x5

    const v18, 0x3f167918

    const v19, 0x3f737871

    const v20, -0x40b0e443

    const v21, 0x3e9e377a

    const-wide/16 v22, 0x1

    if-gez v15, :cond_0

    mul-long v24, v13, p1

    mul-long v16, v16, v24

    add-long v26, v16, p1

    add-long v28, v26, p1

    add-long v30, v28, p1

    add-long v32, v30, p1

    add-long v34, v24, v9

    add-long v36, v34, v9

    add-long v38, v36, v9

    add-long v40, v38, v9

    add-long v42, p9, p1

    sub-long v42, v42, v22

    add-long v11, p6, v24

    .line 5050
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    move-wide/from16 v24, v7

    add-long v7, p6, v34

    .line 5051
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    move-wide/from16 v34, v5

    add-long v5, p6, v36

    .line 5052
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move-wide/from16 v36, v3

    add-long v3, p6, v38

    .line 5053
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    move-wide/from16 v38, v9

    add-long v8, p6, v40

    .line 5054
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-float v6, v4, v7

    sub-float/2addr v4, v7

    add-float v7, v3, v5

    sub-float/2addr v3, v5

    add-long v8, p9, v16

    add-float v5, v11, v6

    add-float/2addr v5, v7

    .line 5061
    invoke-virtual {v2, v8, v9, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v42, v26

    mul-float v5, v6, v21

    add-float/2addr v5, v11

    mul-float v10, v7, v20

    add-float/2addr v5, v10

    .line 5062
    invoke-virtual {v2, v8, v9, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, p9, v28

    mul-float v5, v4, v19

    mul-float v10, v3, v18

    add-float/2addr v5, v10

    .line 5063
    invoke-virtual {v2, v8, v9, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v42, v30

    mul-float v6, v6, v20

    add-float/2addr v11, v6

    mul-float v7, v7, v21

    add-float/2addr v11, v7

    .line 5064
    invoke-virtual {v2, v8, v9, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, p9, v32

    mul-float v4, v4, v18

    mul-float v3, v3, v19

    sub-float/2addr v4, v3

    .line 5065
    invoke-virtual {v2, v5, v6, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v13, v22

    move-wide/from16 v7, v24

    move-wide/from16 v5, v34

    move-wide/from16 v3, v36

    move-wide/from16 v9, v38

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v36, v3

    move-wide/from16 v34, v5

    move-wide/from16 v24, v7

    move-wide/from16 v38, v9

    cmp-long v3, p1, v22

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-wide/16 v11, 0x0

    :goto_1
    cmp-long v3, v11, p3

    if-gez v3, :cond_3

    mul-long v3, v11, p1

    mul-long v5, v3, v16

    add-long v7, v5, p1

    add-long v9, v7, p1

    add-long v13, v9, p1

    add-long v26, v13, p1

    add-long v28, v3, v38

    add-long v30, v28, v38

    add-long v32, v30, v38

    add-long v40, v32, v38

    const-wide/16 v42, 0x2

    move-wide/from16 v44, v42

    :goto_2
    cmp-long v15, v44, p1

    if-gez v15, :cond_2

    sub-long v46, v44, v22

    move-wide/from16 v48, v11

    add-long v11, v46, p11

    move-wide/from16 v50, v13

    add-long v13, v46, v36

    move-wide/from16 v52, v9

    add-long v9, v46, v34

    move-wide/from16 v54, v7

    add-long v7, v46, v24

    .line 5086
    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v46, v5

    sub-long v5, v11, v22

    invoke-virtual {v15, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    .line 5087
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 5088
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move v12, v5

    move v15, v6

    sub-long v5, v13, v22

    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    .line 5089
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 5090
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v13, v9, v22

    invoke-virtual {v11, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 5091
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 5092
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v13, v7, v22

    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 5093
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-long v13, p1, v44

    add-long v56, p6, v44

    add-long v58, p9, v44

    add-long v13, p9, v13

    move-wide/from16 v60, v13

    add-long v13, v56, v3

    move-wide/from16 v62, v3

    add-long v3, v56, v28

    move/from16 v64, v7

    add-long v7, v56, v30

    move/from16 v65, v9

    move/from16 v66, v10

    add-long v9, v56, v32

    move/from16 v67, v5

    move/from16 v68, v6

    add-long v5, v56, v40

    move/from16 v57, v11

    move/from16 v56, v12

    sub-long v11, v13, v22

    .line 5106
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 5107
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    sub-long v13, v3, v22

    .line 5108
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    .line 5109
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    move v4, v11

    move v14, v12

    sub-long v11, v7, v22

    .line 5110
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    .line 5111
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    move v12, v7

    sub-long v7, v9, v22

    .line 5112
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    .line 5113
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-long v9, v5, v22

    .line 5114
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 5115
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float v6, v56, v13

    mul-float v10, v15, v3

    add-float/2addr v6, v10

    mul-float v3, v3, v56

    mul-float v10, v15, v13

    sub-float/2addr v3, v10

    mul-float v10, v67, v11

    mul-float v13, v68, v12

    add-float/2addr v10, v13

    mul-float v12, v12, v67

    mul-float v11, v11, v68

    sub-float/2addr v12, v11

    mul-float v11, v57, v7

    mul-float v13, v65, v8

    add-float/2addr v11, v13

    mul-float v8, v8, v57

    mul-float v7, v7, v65

    sub-float/2addr v8, v7

    mul-float v7, v66, v9

    mul-float v13, v64, v5

    add-float/2addr v7, v13

    mul-float v5, v5, v66

    mul-float v9, v9, v64

    sub-float/2addr v5, v9

    add-float v9, v6, v7

    sub-float/2addr v7, v6

    sub-float v6, v3, v5

    add-float/2addr v3, v5

    add-float v5, v10, v11

    sub-float/2addr v11, v10

    sub-float v10, v12, v8

    add-float/2addr v12, v8

    mul-float v8, v9, v21

    add-float/2addr v8, v4

    mul-float v13, v5, v20

    add-float/2addr v8, v13

    mul-float v13, v3, v21

    add-float/2addr v13, v14

    mul-float v15, v12, v20

    add-float/2addr v13, v15

    mul-float v15, v9, v20

    add-float/2addr v15, v4

    mul-float v56, v5, v21

    add-float v15, v15, v56

    mul-float v56, v3, v20

    add-float v56, v14, v56

    mul-float v57, v12, v21

    add-float v56, v56, v57

    mul-float v57, v6, v19

    mul-float v64, v10, v18

    add-float v57, v57, v64

    mul-float v64, v7, v19

    mul-float v65, v11, v18

    add-float v64, v64, v65

    mul-float v6, v6, v18

    mul-float v10, v10, v19

    sub-float/2addr v6, v10

    mul-float v7, v7, v18

    mul-float v11, v11, v19

    sub-float/2addr v7, v11

    add-long v10, v58, v46

    add-long v0, v60, v54

    move/from16 v65, v6

    move/from16 v66, v7

    add-long v6, v58, v52

    move-wide/from16 v67, v0

    add-long v0, v60, v50

    move-wide/from16 v60, v0

    add-long v0, v58, v26

    move-wide/from16 v58, v0

    sub-long v0, v10, v22

    add-float/2addr v4, v9

    add-float/2addr v4, v5

    .line 5150
    invoke-virtual {v2, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v0, v14, v3

    add-float/2addr v0, v12

    .line 5151
    invoke-virtual {v2, v10, v11, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v6, v22

    add-float v3, v8, v57

    .line 5152
    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v67, v22

    sub-float v8, v8, v57

    .line 5153
    invoke-virtual {v2, v0, v1, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v0, v13, v64

    .line 5154
    invoke-virtual {v2, v6, v7, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v0, v64, v13

    move-wide/from16 v13, v67

    .line 5155
    invoke-virtual {v2, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v58, v22

    add-float v6, v15, v65

    .line 5156
    invoke-virtual {v2, v0, v1, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v0, v60, v22

    sub-float v15, v15, v65

    .line 5157
    invoke-virtual {v2, v0, v1, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v7, v56, v66

    move-wide/from16 v0, v58

    .line 5158
    invoke-virtual {v2, v0, v1, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v7, v66, v56

    move-wide/from16 v13, v60

    .line 5159
    invoke-virtual {v2, v13, v14, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v44, v44, v42

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v5, v46

    move-wide/from16 v11, v48

    move-wide/from16 v13, v50

    move-wide/from16 v9, v52

    move-wide/from16 v7, v54

    move-wide/from16 v3, v62

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v48, v11

    add-long v11, v48, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radfg(IIII[FI[FII)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    const v9, 0x40c90fdb

    int-to-float v10, v2

    div-float/2addr v9, v10

    float-to-double v9, v9

    .line 5462
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 5463
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    add-int/lit8 v10, v2, 0x1

    const/4 v12, 0x2

    .line 5464
    div-int/2addr v10, v12

    add-int/lit8 v13, v1, -0x1

    .line 5465
    div-int/2addr v13, v12

    const/4 v15, 0x1

    if-eq v1, v15, :cond_10

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v4, :cond_0

    add-int v16, v8, v14

    add-int v17, v6, v14

    .line 5468
    aget v17, v5, v17

    aput v17, v7, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move v14, v15

    :goto_1
    if-ge v14, v2, :cond_2

    mul-int v16, v14, v3

    mul-int v16, v16, v1

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v3, :cond_1

    mul-int v18, v15, v1

    add-int v18, v18, v16

    add-int v19, v8, v18

    add-int v18, v6, v18

    .line 5474
    aget v18, v5, v18

    aput v18, v7, v19

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    if-gt v13, v3, :cond_6

    neg-int v14, v1

    const/4 v15, 0x1

    :goto_3
    if-ge v15, v2, :cond_5

    add-int/2addr v14, v1

    add-int/lit8 v16, v14, -0x1

    mul-int v18, v15, v3

    mul-int v18, v18, v1

    move/from16 v19, v14

    move v14, v12

    :goto_4
    if-ge v14, v1, :cond_4

    add-int/lit8 v16, v16, 0x2

    add-int v20, v16, p9

    add-int v21, v6, v14

    add-int v22, v8, v14

    .line 5488
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v24, v20, -0x1

    aget v24, v12, v24

    .line 5489
    aget v12, v12, v20

    move/from16 v20, v9

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v3, :cond_3

    mul-int v25, v9, v1

    add-int v25, v25, v18

    add-int v26, v22, v25

    add-int v25, v21, v25

    add-int/lit8 v27, v25, -0x1

    .line 5494
    aget v27, v5, v27

    .line 5495
    aget v25, v5, v25

    add-int/lit8 v28, v26, -0x1

    mul-float v29, v24, v27

    mul-float v30, v12, v25

    add-float v29, v29, v30

    .line 5497
    aput v29, v7, v28

    mul-float v25, v25, v24

    mul-float v27, v27, v12

    sub-float v25, v25, v27

    .line 5498
    aput v25, v7, v26

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v14, v14, 0x2

    move/from16 v9, v20

    const/4 v12, 0x2

    goto :goto_4

    :cond_4
    move/from16 v20, v9

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v19

    const/4 v12, 0x2

    goto :goto_3

    :cond_5
    move/from16 v20, v9

    move/from16 v21, v12

    goto :goto_9

    :cond_6
    move/from16 v20, v9

    neg-int v9, v1

    const/4 v12, 0x1

    :goto_6
    if-ge v12, v2, :cond_9

    add-int/2addr v9, v1

    mul-int v14, v12, v3

    mul-int/2addr v14, v1

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v3, :cond_8

    add-int/lit8 v16, v9, -0x1

    mul-int v18, v15, v1

    add-int v18, v18, v14

    move/from16 v19, v9

    const/4 v9, 0x2

    :goto_8
    if-ge v9, v1, :cond_7

    const/16 v21, 0x2

    add-int/lit8 v16, v16, 0x2

    add-int v22, v16, p9

    move/from16 v23, v14

    .line 5513
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v24, v22, -0x1

    aget v24, v14, v24

    .line 5514
    aget v14, v14, v22

    add-int v22, v8, v9

    add-int v22, v22, v18

    add-int v25, v6, v9

    add-int v25, v25, v18

    add-int/lit8 v26, v25, -0x1

    .line 5517
    aget v26, v5, v26

    .line 5518
    aget v25, v5, v25

    add-int/lit8 v27, v22, -0x1

    mul-float v28, v24, v26

    mul-float v29, v14, v25

    add-float v28, v28, v29

    .line 5520
    aput v28, v7, v27

    mul-float v24, v24, v25

    mul-float v14, v14, v26

    sub-float v24, v24, v14

    .line 5521
    aput v24, v7, v22

    add-int/lit8 v9, v9, 0x2

    move/from16 v14, v23

    goto :goto_8

    :cond_7
    move/from16 v23, v14

    const/16 v21, 0x2

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v19

    goto :goto_7

    :cond_8
    move/from16 v19, v9

    const/16 v21, 0x2

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_9
    const/16 v21, 0x2

    :goto_9
    if-lt v13, v3, :cond_c

    const/4 v9, 0x1

    :goto_a
    if-ge v9, v10, :cond_f

    sub-int v12, v2, v9

    mul-int v14, v9, v3

    mul-int/2addr v14, v1

    mul-int/2addr v12, v3

    mul-int/2addr v12, v1

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v3, :cond_b

    mul-int v16, v15, v1

    add-int v18, v16, v14

    add-int v16, v16, v12

    move/from16 v0, v21

    :goto_c
    if-ge v0, v1, :cond_a

    add-int v19, v6, v0

    add-int v22, v8, v0

    add-int v23, v19, v18

    add-int v19, v19, v16

    add-int v24, v22, v18

    add-int v22, v22, v16

    add-int/lit8 v25, v24, -0x1

    .line 5541
    aget v25, v7, v25

    .line 5542
    aget v24, v7, v24

    add-int/lit8 v26, v22, -0x1

    .line 5543
    aget v26, v7, v26

    .line 5544
    aget v22, v7, v22

    add-int/lit8 v27, v23, -0x1

    add-float v28, v25, v26

    .line 5546
    aput v28, v5, v27

    add-float v27, v24, v22

    .line 5547
    aput v27, v5, v23

    add-int/lit8 v23, v19, -0x1

    sub-float v24, v24, v22

    .line 5549
    aput v24, v5, v23

    sub-float v26, v26, v25

    .line 5550
    aput v26, v5, v19

    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_b

    :cond_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_c
    const/4 v0, 0x1

    :goto_d
    if-ge v0, v10, :cond_f

    sub-int v9, v2, v0

    mul-int v12, v0, v3

    mul-int/2addr v12, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    move/from16 v14, v21

    :goto_e
    if-ge v14, v1, :cond_e

    add-int v15, v6, v14

    add-int v16, v8, v14

    move/from16 v18, v13

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v3, :cond_d

    mul-int v19, v13, v1

    add-int v22, v19, v12

    add-int v19, v19, v9

    add-int v23, v15, v22

    add-int v24, v15, v19

    add-int v22, v16, v22

    add-int v19, v16, v19

    add-int/lit8 v25, v22, -0x1

    .line 5569
    aget v25, v7, v25

    .line 5570
    aget v22, v7, v22

    add-int/lit8 v26, v19, -0x1

    .line 5571
    aget v26, v7, v26

    .line 5572
    aget v19, v7, v19

    add-int/lit8 v27, v23, -0x1

    add-float v28, v25, v26

    .line 5574
    aput v28, v5, v27

    add-float v27, v22, v19

    .line 5575
    aput v27, v5, v23

    add-int/lit8 v23, v24, -0x1

    sub-float v22, v22, v19

    .line 5576
    aput v22, v5, v23

    sub-float v26, v26, v25

    .line 5577
    aput v26, v5, v24

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_d
    add-int/lit8 v14, v14, 0x2

    move/from16 v13, v18

    goto :goto_e

    :cond_e
    move/from16 v18, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_f
    move/from16 v18, v13

    goto :goto_10

    :cond_10
    move/from16 v20, v9

    move/from16 v21, v12

    move/from16 v18, v13

    .line 5583
    invoke-static {v7, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-ge v0, v10, :cond_12

    sub-int v9, v2, v0

    mul-int v12, v0, v3

    mul-int/2addr v12, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v3, :cond_11

    mul-int v14, v13, v1

    add-int v15, v14, v12

    add-int/2addr v14, v9

    add-int v16, v8, v15

    add-int v19, v8, v14

    .line 5594
    aget v16, v7, v16

    .line 5595
    aget v19, v7, v19

    add-int/2addr v15, v6

    add-float v22, v16, v19

    .line 5597
    aput v22, v5, v15

    add-int/2addr v14, v6

    sub-float v19, v19, v16

    .line 5598
    aput v19, v5, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_12
    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v4

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_13
    if-ge v13, v10, :cond_16

    sub-int v14, v2, v13

    mul-float v15, v11, v9

    mul-float v16, v20, v12

    sub-float v15, v15, v16

    mul-float/2addr v12, v11

    mul-float v9, v9, v20

    add-float/2addr v12, v9

    mul-int v9, v13, v4

    mul-int/2addr v14, v4

    move/from16 v16, v11

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v4, :cond_13

    add-int v19, v8, v11

    add-int v22, v6, v11

    add-int v23, v19, v9

    .line 5615
    aget v24, v5, v22

    add-int v25, v22, v4

    aget v25, v5, v25

    mul-float v25, v25, v15

    add-float v24, v24, v25

    aput v24, v7, v23

    add-int v19, v19, v14

    add-int v22, v22, v0

    .line 5616
    aget v22, v5, v22

    mul-float v22, v22, v12

    aput v22, v7, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_13
    move/from16 v22, v12

    move/from16 v19, v15

    move/from16 v11, v21

    :goto_15
    if-ge v11, v10, :cond_15

    sub-int v23, v2, v11

    mul-float v24, v15, v19

    mul-float v25, v12, v22

    sub-float v24, v24, v25

    mul-float v22, v22, v15

    mul-float v19, v19, v12

    add-float v22, v22, v19

    mul-int v19, v11, v4

    mul-int v23, v23, v4

    move/from16 p9, v0

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v4, :cond_14

    add-int v25, v8, v0

    add-int v26, v6, v0

    add-int v27, v25, v9

    .line 5632
    aget v28, v7, v27

    add-int v29, v26, v19

    aget v29, v5, v29

    mul-float v29, v29, v24

    add-float v28, v28, v29

    aput v28, v7, v27

    add-int v25, v25, v14

    .line 5633
    aget v27, v7, v25

    add-int v26, v26, v23

    aget v26, v5, v26

    mul-float v26, v26, v22

    add-float v27, v27, v26

    aput v27, v7, v25

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_14
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p9

    move/from16 v19, v24

    goto :goto_15

    :cond_15
    move/from16 p9, v0

    add-int/lit8 v13, v13, 0x1

    move v9, v15

    move/from16 v11, v16

    goto/16 :goto_13

    :cond_16
    const/4 v0, 0x1

    :goto_17
    if-ge v0, v10, :cond_18

    mul-int v9, v0, v4

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v4, :cond_17

    add-int v12, v8, v11

    .line 5640
    aget v13, v7, v12

    add-int v14, v6, v11

    add-int/2addr v14, v9

    aget v14, v5, v14

    add-float/2addr v13, v14

    aput v13, v7, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_18
    if-lt v1, v3, :cond_1a

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v3, :cond_1c

    mul-int v4, v0, v1

    mul-int v9, v4, v2

    const/4 v11, 0x0

    :goto_1a
    if-ge v11, v1, :cond_19

    add-int v12, v6, v11

    add-int/2addr v12, v9

    add-int v13, v8, v11

    add-int/2addr v13, v4

    .line 5649
    aget v13, v7, v13

    aput v13, v5, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v1, :cond_1c

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_1b

    mul-int v9, v4, v1

    add-int v11, v6, v0

    mul-int v12, v9, v2

    add-int/2addr v11, v12

    add-int v12, v8, v0

    add-int/2addr v12, v9

    .line 5656
    aget v9, v7, v12

    aput v9, v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_1c
    mul-int v0, v2, v1

    const/4 v4, 0x1

    :goto_1d
    if-ge v4, v10, :cond_1e

    sub-int v9, v2, v4

    mul-int/lit8 v11, v4, 0x2

    mul-int v12, v4, v3

    mul-int/2addr v12, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    mul-int/2addr v11, v1

    const/4 v13, 0x0

    :goto_1e
    if-ge v13, v3, :cond_1d

    mul-int v14, v13, v1

    add-int v15, v14, v12

    add-int/2addr v14, v9

    mul-int v16, v13, v0

    add-int v19, v6, v1

    const/16 v17, 0x1

    add-int/lit8 v19, v19, -0x1

    add-int v19, v19, v11

    sub-int v19, v19, v1

    add-int v19, v19, v16

    add-int/2addr v15, v8

    .line 5672
    aget v15, v7, v15

    aput v15, v5, v19

    add-int v15, v6, v11

    add-int v15, v15, v16

    add-int/2addr v14, v8

    .line 5673
    aget v14, v7, v14

    aput v14, v5, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_1e
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1f

    return-void

    :cond_1f
    move/from16 v13, v18

    if-lt v13, v3, :cond_22

    move v15, v4

    :goto_1f
    if-ge v15, v10, :cond_25

    sub-int v4, v2, v15

    mul-int/lit8 v9, v15, 0x2

    mul-int v11, v15, v3

    mul-int/2addr v11, v1

    mul-int/2addr v4, v3

    mul-int/2addr v4, v1

    mul-int/2addr v9, v1

    const/4 v12, 0x0

    :goto_20
    if-ge v12, v3, :cond_21

    mul-int v13, v12, v0

    mul-int v14, v12, v1

    move/from16 p4, v0

    move/from16 v0, v21

    :goto_21
    if-ge v0, v1, :cond_20

    sub-int v16, v1, v0

    add-int v17, v6, v0

    add-int v16, v6, v16

    add-int v18, v8, v0

    add-int v17, v17, v9

    add-int v17, v17, v13

    add-int v16, v16, v9

    sub-int v16, v16, v1

    add-int v16, v16, v13

    add-int v18, v18, v14

    add-int v19, v18, v11

    add-int v18, v18, v4

    add-int/lit8 v20, v19, -0x1

    .line 5698
    aget v20, v7, v20

    .line 5699
    aget v19, v7, v19

    add-int/lit8 v22, v18, -0x1

    .line 5700
    aget v22, v7, v22

    .line 5701
    aget v18, v7, v18

    add-int/lit8 v23, v17, -0x1

    add-float v24, v20, v22

    .line 5703
    aput v24, v5, v23

    add-int/lit8 v23, v16, -0x1

    sub-float v20, v20, v22

    .line 5704
    aput v20, v5, v23

    add-float v20, v19, v18

    .line 5705
    aput v20, v5, v17

    sub-float v18, v18, v19

    .line 5706
    aput v18, v5, v16

    add-int/lit8 v0, v0, 0x2

    goto :goto_21

    :cond_20
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p4

    goto :goto_20

    :cond_21
    move/from16 p4, v0

    add-int/lit8 v15, v15, 0x1

    goto :goto_1f

    :cond_22
    move/from16 p4, v0

    move v15, v4

    :goto_22
    if-ge v15, v10, :cond_25

    sub-int v0, v2, v15

    mul-int/lit8 v4, v15, 0x2

    mul-int v9, v15, v3

    mul-int/2addr v9, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/2addr v4, v1

    move/from16 v11, v21

    :goto_23
    if-ge v11, v1, :cond_24

    sub-int v12, v1, v11

    add-int v13, v6, v11

    add-int/2addr v12, v6

    add-int v14, v8, v11

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v3, :cond_23

    mul-int v16, v2, p4

    mul-int v17, v2, v1

    add-int v18, v13, v4

    add-int v18, v18, v16

    add-int v19, v12, v4

    sub-int v19, v19, v1

    add-int v19, v19, v16

    add-int v17, v14, v17

    add-int v16, v17, v9

    add-int v17, v17, v0

    add-int/lit8 v20, v16, -0x1

    .line 5729
    aget v20, v7, v20

    .line 5730
    aget v16, v7, v16

    add-int/lit8 v22, v17, -0x1

    .line 5731
    aget v22, v7, v22

    .line 5732
    aget v17, v7, v17

    add-int/lit8 v23, v18, -0x1

    add-float v24, v20, v22

    .line 5734
    aput v24, v5, v23

    add-int/lit8 v23, v19, -0x1

    sub-float v20, v20, v22

    .line 5735
    aput v20, v5, v23

    add-float v20, v16, v17

    .line 5736
    aput v20, v5, v18

    sub-float v17, v17, v16

    .line 5737
    aput v17, v5, v19

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_23
    add-int/lit8 v11, v11, 0x2

    move/from16 v2, p2

    goto :goto_23

    :cond_24
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    goto :goto_22

    :cond_25
    return-void
.end method

.method radfg(JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 44

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v13, p9

    move-object/from16 v14, p12

    const v5, 0x40c90fdb

    long-to-float v6, v3

    div-float/2addr v5, v6

    float-to-double v5, v5

    .line 5754
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    double-to-float v15, v7

    .line 5755
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    double-to-float v11, v5

    const-wide/16 v16, 0x1

    add-long v5, v3, v16

    const-wide/16 v18, 0x2

    .line 5756
    div-long v20, v5, v18

    sub-long v5, v1, v16

    .line 5757
    div-long v22, v5, v18

    cmp-long v24, v1, v16

    const-wide/16 v25, 0x0

    if-eqz v24, :cond_f

    move-wide/from16 v5, v25

    :goto_0
    cmp-long v7, v5, p7

    if-gez v7, :cond_0

    add-long v7, p13, v5

    add-long v9, p10, v5

    .line 5760
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v14, v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v16

    goto :goto_0

    :cond_0
    move-wide/from16 v5, v16

    :goto_1
    cmp-long v7, v5, v3

    if-gez v7, :cond_2

    mul-long v7, v5, p5

    mul-long/2addr v7, v1

    move-wide/from16 v9, v25

    :goto_2
    cmp-long v12, v9, p5

    if-gez v12, :cond_1

    mul-long v27, v9, v1

    add-long v27, v27, v7

    move-wide/from16 v29, v7

    add-long v7, p13, v27

    move/from16 v31, v11

    add-long v11, p10, v27

    .line 5766
    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v14, v7, v8, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v9, v16

    move-wide/from16 v7, v29

    move/from16 v11, v31

    goto :goto_2

    :cond_1
    move/from16 v31, v11

    add-long v5, v5, v16

    goto :goto_1

    :cond_2
    move/from16 v31, v11

    cmp-long v5, v22, p5

    if-gtz v5, :cond_5

    neg-long v6, v1

    move-wide/from16 v8, v16

    :goto_3
    cmp-long v10, v8, v3

    if-gez v10, :cond_8

    add-long/2addr v6, v1

    sub-long v10, v6, v16

    mul-long v27, v8, p5

    mul-long v27, v27, v1

    move-wide/from16 v29, v18

    :goto_4
    cmp-long v12, v29, v1

    if-gez v12, :cond_4

    add-long v10, v10, v18

    move-wide/from16 v32, v6

    add-long v6, v10, p15

    add-long v34, p10, v29

    add-long v36, p13, v29

    .line 5780
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v38, v10

    sub-long v10, v6, v16

    invoke-virtual {v12, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 5781
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    move-wide/from16 v11, v25

    :goto_5
    cmp-long v7, v11, p5

    if-gez v7, :cond_3

    mul-long v40, v11, v1

    add-long v40, v40, v27

    add-long v3, v36, v40

    add-long v0, v34, v40

    move-wide/from16 v40, v8

    sub-long v7, v0, v16

    .line 5786
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 5787
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    sub-long v7, v3, v16

    mul-float v1, v10, v2

    mul-float v9, v6, v0

    add-float/2addr v1, v9

    .line 5789
    invoke-virtual {v14, v7, v8, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float/2addr v0, v10

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 5790
    invoke-virtual {v14, v3, v4, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v8, v40

    goto :goto_5

    :cond_3
    move-wide/from16 v40, v8

    add-long v29, v29, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v6, v32

    move-wide/from16 v10, v38

    goto :goto_4

    :cond_4
    move-wide/from16 v32, v6

    move-wide/from16 v40, v8

    add-long v8, v40, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    goto :goto_3

    :cond_5
    move-wide v0, v1

    neg-long v2, v0

    move-wide/from16 v6, v16

    :goto_6
    cmp-long v4, v6, p3

    if-gez v4, :cond_8

    add-long/2addr v2, v0

    mul-long v8, v6, p5

    mul-long/2addr v8, v0

    move-wide/from16 v10, v25

    :goto_7
    cmp-long v4, v10, p5

    if-gez v4, :cond_7

    sub-long v27, v2, v16

    mul-long v29, v10, v0

    add-long v29, v29, v8

    move-wide/from16 v32, v18

    :goto_8
    cmp-long v4, v32, v0

    if-gez v4, :cond_6

    add-long v27, v27, v18

    move-wide/from16 v34, v2

    add-long v2, v27, p15

    move-object/from16 v4, p0

    .line 5805
    iget-object v12, v4, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v36, v8

    sub-long v8, v2, v16

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 5806
    iget-object v9, v4, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    add-long v38, p13, v32

    add-long v3, v38, v29

    add-long v38, p10, v32

    add-long v0, v38, v29

    move v9, v5

    move-wide/from16 v38, v6

    sub-long v5, v0, v16

    .line 5809
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    .line 5810
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    sub-long v6, v3, v16

    mul-float v1, v8, v5

    mul-float v12, v2, v0

    add-float/2addr v1, v12

    .line 5812
    invoke-virtual {v14, v6, v7, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-float/2addr v8, v0

    mul-float/2addr v2, v5

    sub-float/2addr v8, v2

    .line 5813
    invoke-virtual {v14, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v32, v32, v18

    move-wide/from16 v0, p1

    move v5, v9

    move-wide/from16 v2, v34

    move-wide/from16 v8, v36

    move-wide/from16 v6, v38

    goto :goto_8

    :cond_6
    move-wide/from16 v34, v2

    move-wide/from16 v38, v6

    move-wide/from16 v36, v8

    move v9, v5

    add-long v10, v10, v16

    move-wide/from16 v0, p1

    move-wide/from16 v8, v36

    goto :goto_7

    :cond_7
    move-wide/from16 v34, v2

    move v9, v5

    move-wide/from16 v38, v6

    add-long v6, v38, v16

    move-wide/from16 v0, p1

    goto :goto_6

    :cond_8
    move v9, v5

    if-ltz v9, :cond_b

    move-wide/from16 v0, v16

    :goto_9
    cmp-long v2, v0, v20

    if-gez v2, :cond_e

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v25

    :goto_a
    cmp-long v8, v6, p5

    if-gez v8, :cond_a

    mul-long v8, v6, p1

    add-long v10, v8, v4

    add-long/2addr v8, v2

    move-wide/from16 v27, v18

    :goto_b
    cmp-long v12, v27, p1

    if-gez v12, :cond_9

    add-long v29, p10, v27

    add-long v32, p13, v27

    move-wide/from16 p15, v2

    add-long v2, v29, v10

    move-wide/from16 v34, v4

    add-long v4, v29, v8

    move-wide/from16 v29, v0

    add-long v0, v32, v10

    move-wide/from16 v36, v10

    add-long v10, v32, v8

    move-wide/from16 v32, v8

    sub-long v8, v0, v16

    .line 5833
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    .line 5834
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    move-wide/from16 v38, v6

    sub-long v6, v10, v16

    .line 5835
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    .line 5836
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    sub-long v9, v2, v16

    add-float v7, v8, v1

    .line 5838
    invoke-virtual {v13, v9, v10, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v7, v0, v6

    .line 5839
    invoke-virtual {v13, v2, v3, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v2, v4, v16

    sub-float/2addr v0, v6

    .line 5841
    invoke-virtual {v13, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v1, v8

    .line 5842
    invoke-virtual {v13, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v27, v27, v18

    move-wide/from16 v2, p15

    move-wide/from16 v0, v29

    move-wide/from16 v8, v32

    move-wide/from16 v4, v34

    move-wide/from16 v10, v36

    move-wide/from16 v6, v38

    goto :goto_b

    :cond_9
    move-wide/from16 v29, v0

    move-wide/from16 p15, v2

    move-wide/from16 v34, v4

    move-wide/from16 v38, v6

    add-long v6, v38, v16

    goto :goto_a

    :cond_a
    move-wide/from16 v29, v0

    add-long v0, v29, v16

    goto :goto_9

    :cond_b
    move-wide/from16 v0, v16

    :goto_c
    cmp-long v2, v0, v20

    if-gez v2, :cond_e

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v18

    :goto_d
    cmp-long v8, v6, p1

    if-gez v8, :cond_d

    add-long v8, p10, v6

    add-long v10, p13, v6

    move-wide/from16 v27, v25

    :goto_e
    cmp-long v12, v27, p5

    if-gez v12, :cond_c

    mul-long v29, v27, p1

    add-long v32, v29, v4

    add-long v29, v29, v2

    move-wide/from16 p15, v2

    add-long v2, v8, v32

    move-wide/from16 v34, v4

    add-long v4, v8, v29

    move-wide/from16 v36, v8

    add-long v8, v10, v32

    move-wide/from16 v32, v0

    add-long v0, v10, v29

    move-wide/from16 v29, v10

    sub-long v10, v8, v16

    .line 5861
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 5862
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-long v11, v0, v16

    .line 5863
    invoke-virtual {v14, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 5864
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    sub-long v11, v2, v16

    add-float v1, v10, v9

    .line 5866
    invoke-virtual {v13, v11, v12, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v1, v8, v0

    .line 5867
    invoke-virtual {v13, v2, v3, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v1, v4, v16

    sub-float/2addr v8, v0

    .line 5868
    invoke-virtual {v13, v1, v2, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v9, v10

    .line 5869
    invoke-virtual {v13, v4, v5, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v27, v27, v16

    move-wide/from16 v2, p15

    move-wide/from16 v10, v29

    move-wide/from16 v0, v32

    move-wide/from16 v4, v34

    move-wide/from16 v8, v36

    goto :goto_e

    :cond_c
    move-wide/from16 v32, v0

    move-wide/from16 p15, v2

    move-wide/from16 v34, v4

    add-long v6, v6, v18

    goto :goto_d

    :cond_d
    move-wide/from16 v32, v0

    add-long v0, v32, v16

    goto :goto_c

    :cond_e
    move/from16 v0, v31

    goto :goto_f

    :cond_f
    move/from16 v31, v11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-object/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v0, v31

    move-wide/from16 v11, p7

    .line 5875
    invoke-static/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    :goto_f
    move-wide/from16 v1, v16

    :goto_10
    cmp-long v3, v1, v20

    if-gez v3, :cond_11

    sub-long v3, p3, v1

    mul-long v5, v1, p5

    mul-long v5, v5, p1

    mul-long v3, v3, p5

    mul-long v3, v3, p1

    move-wide/from16 v7, v25

    :goto_11
    cmp-long v9, v7, p5

    if-gez v9, :cond_10

    mul-long v9, v7, p1

    add-long v11, v9, v5

    add-long/2addr v9, v3

    move-wide/from16 p15, v3

    add-long v3, p13, v11

    move-wide/from16 v27, v5

    add-long v5, p13, v9

    .line 5886
    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 5887
    invoke-virtual {v14, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-long v5, p10, v11

    add-float v11, v3, v4

    .line 5889
    invoke-virtual {v13, v5, v6, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, p10, v9

    sub-float/2addr v4, v3

    .line 5890
    invoke-virtual {v13, v5, v6, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v7, v7, v16

    move-wide/from16 v3, p15

    move-wide/from16 v5, v27

    goto :goto_11

    :cond_10
    add-long v1, v1, v16

    goto :goto_10

    :cond_11
    sub-long v1, p3, v16

    mul-long v1, v1, p7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-wide/from16 v5, v16

    :goto_12
    cmp-long v7, v5, v20

    if-gez v7, :cond_15

    sub-long v7, p3, v5

    mul-float v9, v15, v3

    mul-float v11, v0, v4

    sub-float/2addr v9, v11

    mul-float/2addr v4, v15

    mul-float v11, v0, v3

    add-float/2addr v4, v11

    mul-long v10, v5, p7

    mul-long v7, v7, p7

    move-wide/from16 v27, v25

    :goto_13
    cmp-long v3, v27, p7

    if-gez v3, :cond_12

    add-long v29, p13, v27

    move-wide/from16 p15, v5

    add-long v5, p10, v27

    move v12, v4

    add-long v3, v29, v10

    .line 5907
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v31

    move-wide/from16 v32, v10

    add-long v10, v5, p7

    invoke-virtual {v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    mul-float/2addr v10, v9

    add-float v10, v31, v10

    invoke-virtual {v14, v3, v4, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v29, v7

    add-long/2addr v5, v1

    .line 5908
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v5, v12

    invoke-virtual {v14, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v27, v27, v16

    move-wide/from16 v5, p15

    move v4, v12

    move-wide/from16 v10, v32

    goto :goto_13

    :cond_12
    move v12, v4

    move-wide/from16 p15, v5

    move-wide/from16 v32, v10

    move v5, v9

    move v6, v12

    move-wide/from16 v3, v18

    :goto_14
    cmp-long v10, v3, v20

    if-gez v10, :cond_14

    sub-long v10, p3, v3

    mul-float v27, v9, v5

    mul-float v28, v12, v6

    sub-float v27, v27, v28

    mul-float/2addr v6, v9

    mul-float/2addr v5, v12

    add-float/2addr v6, v5

    mul-long v28, v3, p7

    mul-long v10, v10, p7

    move-wide/from16 v30, v25

    :goto_15
    cmp-long v5, v30, p7

    if-gez v5, :cond_13

    add-long v34, p13, v30

    add-long v36, p10, v30

    move v5, v0

    move-wide/from16 v38, v1

    add-long v0, v34, v32

    .line 5924
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    move-wide/from16 v40, v3

    add-long v3, v36, v28

    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float v3, v3, v27

    add-float/2addr v2, v3

    invoke-virtual {v14, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v34, v7

    .line 5925
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    add-long v3, v36, v10

    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v14, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v30, v30, v16

    move v0, v5

    move-wide/from16 v1, v38

    move-wide/from16 v3, v40

    goto :goto_15

    :cond_13
    move v5, v0

    move-wide/from16 v38, v1

    move-wide/from16 v40, v3

    add-long v3, v40, v16

    move/from16 v5, v27

    goto :goto_14

    :cond_14
    move v5, v0

    move-wide/from16 v38, v1

    move-wide/from16 v0, p15

    add-long v0, v0, v16

    move v3, v9

    move v4, v12

    move-wide/from16 v42, v0

    move v0, v5

    move-wide/from16 v5, v42

    move-wide/from16 v1, v38

    goto/16 :goto_12

    :cond_15
    move-wide/from16 v0, v16

    :goto_16
    cmp-long v2, v0, v20

    if-gez v2, :cond_17

    mul-long v2, v0, p7

    move-wide/from16 v4, v25

    :goto_17
    cmp-long v6, v4, p7

    if-gez v6, :cond_16

    add-long v6, p13, v4

    .line 5932
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    add-long v9, p10, v4

    add-long/2addr v9, v2

    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v14, v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v16

    goto :goto_17

    :cond_16
    add-long v0, v0, v16

    goto :goto_16

    :cond_17
    cmp-long v0, p1, p5

    if-ltz v0, :cond_19

    move-wide/from16 v0, v25

    :goto_18
    cmp-long v2, v0, p5

    if-gez v2, :cond_1b

    mul-long v2, v0, p1

    mul-long v4, v2, p3

    move-wide/from16 v6, v25

    :goto_19
    cmp-long v8, v6, p1

    if-gez v8, :cond_18

    add-long v8, p10, v6

    add-long/2addr v8, v4

    add-long v10, p13, v6

    add-long/2addr v10, v2

    .line 5941
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v13, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v6, v6, v16

    goto :goto_19

    :cond_18
    add-long v0, v0, v16

    goto :goto_18

    :cond_19
    move-wide/from16 v0, v25

    :goto_1a
    cmp-long v2, v0, p1

    if-gez v2, :cond_1b

    move-wide/from16 v2, v25

    :goto_1b
    cmp-long v4, v2, p5

    if-gez v4, :cond_1a

    mul-long v4, v2, p1

    add-long v6, p10, v0

    mul-long v8, v4, p3

    add-long/2addr v6, v8

    add-long v8, p13, v0

    add-long/2addr v8, v4

    .line 5948
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v13, v6, v7, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v16

    goto :goto_1b

    :cond_1a
    add-long v0, v0, v16

    goto :goto_1a

    :cond_1b
    mul-long v0, p3, p1

    move-wide/from16 v2, v16

    :goto_1c
    cmp-long v4, v2, v20

    if-gez v4, :cond_1d

    sub-long v4, p3, v2

    mul-long v6, v2, v18

    mul-long v8, v2, p5

    mul-long v8, v8, p1

    mul-long v4, v4, p5

    mul-long v4, v4, p1

    mul-long v6, v6, p1

    move-wide/from16 v10, v25

    :goto_1d
    cmp-long v12, v10, p5

    if-gez v12, :cond_1c

    mul-long v27, v10, p1

    add-long v29, v27, v8

    add-long v27, v27, v4

    mul-long v31, v10, v0

    add-long v33, p10, p1

    sub-long v33, v33, v16

    add-long v33, v33, v6

    sub-long v33, v33, p1

    move-wide/from16 p7, v4

    add-long v4, v33, v31

    move-wide/from16 p15, v8

    add-long v8, p13, v29

    .line 5964
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v13, v4, v5, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, p10, v6

    add-long v4, v4, v31

    add-long v8, p13, v27

    .line 5965
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v13, v4, v5, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v16

    move-wide/from16 v4, p7

    move-wide/from16 v8, p15

    goto :goto_1d

    :cond_1c
    add-long v2, v2, v16

    goto :goto_1c

    :cond_1d
    if-nez v24, :cond_1e

    return-void

    :cond_1e
    cmp-long v2, v22, p5

    if-ltz v2, :cond_21

    move-wide/from16 v2, v16

    :goto_1e
    cmp-long v4, v2, v20

    if-gez v4, :cond_24

    sub-long v4, p3, v2

    mul-long v6, v2, v18

    mul-long v8, v2, p5

    mul-long v8, v8, p1

    mul-long v4, v4, p5

    mul-long v4, v4, p1

    mul-long v6, v6, p1

    move-wide/from16 v10, v25

    :goto_1f
    cmp-long v12, v10, p5

    if-gez v12, :cond_20

    mul-long v22, v10, v0

    mul-long v27, v10, p1

    move-wide/from16 v29, v18

    :goto_20
    cmp-long v12, v29, p1

    if-gez v12, :cond_1f

    sub-long v31, p1, v29

    add-long v33, p10, v29

    add-long v31, p10, v31

    add-long v35, p13, v29

    add-long v33, v33, v6

    move-wide/from16 p7, v0

    add-long v0, v33, v22

    add-long v31, v31, v6

    sub-long v31, v31, p1

    move-wide/from16 p15, v6

    add-long v6, v31, v22

    add-long v35, v35, v27

    move-wide/from16 v31, v2

    add-long v2, v35, v8

    move-wide/from16 v33, v8

    add-long v8, v35, v4

    move-wide/from16 v35, v4

    sub-long v4, v2, v16

    .line 5990
    invoke-virtual {v14, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 5991
    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    move-wide/from16 v37, v10

    sub-long v10, v8, v16

    .line 5992
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    .line 5993
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-long v8, v0, v16

    add-float v10, v4, v3

    .line 5995
    invoke-virtual {v13, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v8, v6, v16

    sub-float/2addr v4, v3

    .line 5996
    invoke-virtual {v13, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v3, v2, v5

    .line 5997
    invoke-virtual {v13, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v5, v2

    .line 5998
    invoke-virtual {v13, v6, v7, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v29, v29, v18

    move-wide/from16 v0, p7

    move-wide/from16 v6, p15

    move-wide/from16 v2, v31

    move-wide/from16 v8, v33

    move-wide/from16 v4, v35

    move-wide/from16 v10, v37

    goto :goto_20

    :cond_1f
    move-wide/from16 p7, v0

    move-wide/from16 v31, v2

    move-wide/from16 v35, v4

    move-wide/from16 p15, v6

    move-wide/from16 v33, v8

    move-wide/from16 v37, v10

    add-long v10, v37, v16

    goto :goto_1f

    :cond_20
    move-wide/from16 p7, v0

    move-wide/from16 v31, v2

    add-long v2, v31, v16

    goto/16 :goto_1e

    :cond_21
    move-wide/from16 p7, v0

    move-wide/from16 v0, v16

    :goto_21
    cmp-long v2, v0, v20

    if-gez v2, :cond_24

    sub-long v2, p3, v0

    mul-long v4, v0, v18

    mul-long v6, v0, p5

    mul-long v6, v6, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    mul-long v4, v4, p1

    move-wide/from16 v8, v18

    :goto_22
    cmp-long v10, v8, p1

    if-gez v10, :cond_23

    sub-long v10, p1, v8

    add-long v22, p10, v8

    add-long v10, p10, v10

    add-long v27, p13, v8

    move-wide/from16 v29, v25

    :goto_23
    cmp-long v12, v29, p5

    if-gez v12, :cond_22

    move-wide/from16 v31, p7

    mul-long v33, v29, v31

    mul-long v35, v29, p1

    add-long v37, v22, v4

    move-wide/from16 p7, v0

    add-long v0, v37, v33

    add-long v37, v10, v4

    sub-long v37, v37, p1

    move-wide/from16 p15, v4

    add-long v4, v37, v33

    add-long v35, v27, v35

    move-wide/from16 v33, v10

    add-long v10, v35, v6

    move-wide/from16 v37, v6

    add-long v6, v35, v2

    move-wide/from16 v35, v2

    sub-long v2, v10, v16

    .line 6021
    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    .line 6022
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-long v10, v6, v16

    .line 6023
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    .line 6024
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    sub-long v11, v0, v16

    add-float v7, v2, v10

    .line 6026
    invoke-virtual {v13, v11, v12, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v11, v4, v16

    sub-float/2addr v2, v10

    .line 6027
    invoke-virtual {v13, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v2, v3, v6

    .line 6028
    invoke-virtual {v13, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float/2addr v6, v3

    .line 6029
    invoke-virtual {v13, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v29, v29, v16

    move-wide/from16 v0, p7

    move-wide/from16 v4, p15

    move-wide/from16 p7, v31

    move-wide/from16 v10, v33

    move-wide/from16 v2, v35

    move-wide/from16 v6, v37

    goto :goto_23

    :cond_22
    move-wide/from16 v31, p7

    move-wide/from16 p7, v0

    move-wide/from16 v35, v2

    move-wide/from16 p15, v4

    move-wide/from16 v37, v6

    add-long v8, v8, v18

    move-wide/from16 p7, v31

    goto :goto_22

    :cond_23
    move-wide/from16 v31, p7

    add-long v0, v0, v16

    goto/16 :goto_21

    :cond_24
    return-void
.end method

.method public realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 492
    invoke-virtual {p0, p1, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    return-void
.end method

.method public realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    .line 592
    iget-boolean v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 593
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v12, v1

    if-gez v1, :cond_0

    .line 594
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v1

    long-to-int v2, v12

    invoke-virtual {v0, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    goto/16 :goto_2

    .line 596
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The data array is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v14, 0x1

    cmp-long v1, v1, v14

    if-nez v1, :cond_2

    return-void

    .line 603
    :cond_2
    sget-object v1, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_2

    .line 627
    :cond_3
    invoke-direct/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_2

    .line 618
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftf(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 619
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    :goto_0
    sub-long/2addr v1, v14

    const-wide/16 v3, 0x2

    cmp-long v3, v1, v3

    if-ltz v3, :cond_8

    add-long v3, v12, v1

    .line 621
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-long v6, v3, v14

    .line 622
    invoke-virtual {v11, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v11, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 623
    invoke-virtual {v11, v6, v7, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto :goto_0

    .line 607
    :cond_5
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    .line 608
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 609
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ncl:J

    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->rftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_1

    :cond_6
    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 611
    invoke-static/range {p1 .. p3}, Lorg/jtransforms/utils/CommonUtils;->cftx020(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 613
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    add-long v2, v12, v14

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    sub-float/2addr v1, v4

    .line 614
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v11, v12, v13, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 615
    invoke-virtual {v11, v2, v3, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :cond_8
    :goto_2
    return-void
.end method

.method public realForward([F)V
    .locals 1

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, p1, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    return-void
.end method

.method public realForward([FI)V
    .locals 6

    .line 525
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_2

    .line 528
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 532
    :cond_1
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 556
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_forward([FI)V

    goto :goto_2

    .line 547
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftf([FI)V

    .line 548
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v2, :cond_7

    add-int v1, p2, v0

    .line 550
    aget v3, p1, v1

    add-int/lit8 v4, v1, -0x1

    .line 551
    aget v5, p1, v4

    aput v5, p1, v1

    .line 552
    aput v3, p1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 536
    :cond_4
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_5

    .line 537
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 538
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nc:I

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->rftfsub(I[FII[FI)V

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    .line 540
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->cftx020([FI)V

    .line 542
    :cond_6
    :goto_1
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v2, p1, v1

    sub-float v3, v0, v2

    add-float/2addr v0, v2

    .line 543
    aput v0, p1, p2

    .line 544
    aput v3, p1, v1

    :cond_7
    :goto_2
    return-void
.end method

.method public realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 662
    invoke-virtual {p0, p1, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    return-void
.end method

.method public realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    .line 771
    const-class v16, Lorg/jtransforms/fft/FloatFFT_1D;

    iget-boolean v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-nez v0, :cond_1

    .line 772
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v14, v0

    if-gez v0, :cond_0

    .line 773
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    long-to-int v1, v14

    invoke-virtual {v12, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([FI)V

    goto/16 :goto_7

    .line 775
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_1
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v17, 0x2

    mul-long v19, v0, v17

    .line 779
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v1}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const-wide/16 v21, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    const-wide/16 v5, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 845
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_full(Lpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_7

    .line 823
    :cond_3
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftf(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 825
    iget-wide v3, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    rem-long v5, v3, v17

    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    .line 826
    div-long v3, v3, v17

    goto :goto_0

    :cond_4
    add-long v3, v3, v21

    .line 828
    div-long v3, v3, v17

    :goto_0
    move-wide/from16 v0, v21

    :goto_1
    cmp-long v2, v0, v3

    if-gez v2, :cond_5

    add-long v5, v14, v19

    mul-long v7, v0, v17

    sub-long/2addr v5, v7

    add-long/2addr v7, v14

    add-long v9, v5, v21

    .line 833
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v13, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v7, v7, v21

    .line 834
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v13, v5, v6, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v21

    goto :goto_1

    :cond_5
    move-wide/from16 v0, v21

    .line 836
    :goto_2
    iget-wide v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    add-long/2addr v2, v14

    sub-long/2addr v2, v0

    add-long v4, v2, v21

    .line 838
    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 839
    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v13, v4, v5, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 840
    invoke-virtual {v13, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v21

    goto :goto_2

    :cond_6
    add-long v0, v14, v21

    .line 842
    invoke-virtual {v13, v0, v1, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto/16 :goto_7

    .line 781
    :cond_7
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 782
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 783
    iget-wide v3, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v3, v3, v17

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    .line 784
    new-array v9, v0, [Ljava/util/concurrent/Future;

    .line 785
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v1, v1, v17

    int-to-long v3, v0

    div-long v23, v1, v3

    const/4 v1, 0x0

    move v10, v1

    :goto_3
    if-ge v10, v0, :cond_9

    int-to-long v1, v10

    mul-long v3, v1, v23

    add-int/lit8 v1, v0, -0x1

    if-ne v10, v1, :cond_8

    .line 788
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v1, v1, v17

    goto :goto_4

    :cond_8
    add-long v1, v3, v23

    :goto_4
    move-wide v5, v1

    .line 789
    new-instance v25, Lorg/jtransforms/fft/FloatFFT_1D$2;

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move-wide/from16 v7, p2

    move-object/from16 v26, v9

    move/from16 v27, v10

    move-wide/from16 v9, v19

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_1D$2;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v26, v27

    add-int/lit8 v10, v27, 0x1

    move-object/from16 v9, v26

    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v26, v9

    const/4 v1, 0x0

    .line 804
    :try_start_0
    invoke-static/range {v26 .. v26}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 808
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 806
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 812
    :cond_a
    :goto_5
    iget-wide v3, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v3, v3, v17

    cmp-long v0, v1, v3

    if-gez v0, :cond_b

    mul-long v3, v1, v17

    sub-long v5, v19, v3

    .line 814
    rem-long v5, v5, v19

    add-long/2addr v5, v14

    add-long/2addr v3, v14

    .line 815
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v13, v5, v6, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v21

    add-long v3, v3, v21

    .line 816
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v13, v5, v6, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v1, v1, v21

    goto :goto_5

    .line 819
    :cond_b
    :goto_6
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v0, v14

    add-long v2, v14, v21

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v13, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const/4 v1, 0x0

    .line 820
    invoke-virtual {v13, v2, v3, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :goto_7
    return-void
.end method

.method public realForwardFull([F)V
    .locals 1

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, p1, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([FI)V

    return-void
.end method

.method public realForwardFull([FI)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 680
    const-class v11, Lorg/jtransforms/fft/FloatFFT_1D;

    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 681
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v1, v10

    invoke-virtual {v8, v0, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto/16 :goto_7

    .line 683
    :cond_0
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v12, 0x2

    mul-int/2addr v0, v12

    .line 684
    sget-object v1, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v1, v14, :cond_6

    if-eq v1, v12, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v0, -0x1

    .line 750
    invoke-direct {v8, v9, v10, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_full([FII)V

    goto/16 :goto_7

    .line 728
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftf([FI)V

    .line 730
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    .line 731
    div-int/2addr v1, v12

    goto :goto_0

    :cond_3
    add-int/2addr v1, v14

    .line 733
    div-int/2addr v1, v12

    :goto_0
    move v2, v14

    :goto_1
    if-ge v2, v1, :cond_4

    add-int v3, v10, v0

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v4, v10

    add-int/lit8 v5, v3, 0x1

    .line 738
    aget v6, v9, v4

    neg-float v6, v6

    aput v6, v9, v5

    sub-int/2addr v4, v14

    .line 739
    aget v4, v9, v4

    aput v4, v9, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v14

    .line 741
    :goto_2
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_5

    add-int/2addr v1, v10

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 743
    aget v3, v9, v2

    .line 744
    aget v4, v9, v1

    aput v4, v9, v2

    .line 745
    aput v3, v9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v10, 0x1

    .line 747
    aput v13, v9, v0

    goto/16 :goto_7

    .line 686
    :cond_6
    invoke-virtual/range {p0 .. p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    .line 687
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v15

    const/4 v1, 0x0

    if-le v15, v14, :cond_9

    .line 688
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v2, v12

    int-to-long v2, v2

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 689
    new-array v7, v15, [Ljava/util/concurrent/Future;

    .line 690
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v2, v12

    div-int v16, v2, v15

    move v6, v1

    :goto_3
    if-ge v6, v15, :cond_8

    mul-int v3, v6, v16

    add-int/lit8 v1, v15, -0x1

    if-ne v6, v1, :cond_7

    .line 693
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v1, v12

    goto :goto_4

    :cond_7
    add-int v1, v3, v16

    :goto_4
    move v4, v1

    .line 694
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_1D$1;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v5, p2

    move/from16 v18, v6

    move v6, v0

    move-object/from16 v19, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D$1;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;IIII[F)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v18

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v7, v19

    goto :goto_3

    :cond_8
    move-object/from16 v19, v7

    const/4 v1, 0x0

    .line 709
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 713
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 711
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 717
    :cond_9
    :goto_5
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v2, v12

    if-ge v1, v2, :cond_a

    mul-int/lit8 v2, v1, 0x2

    sub-int v3, v0, v2

    .line 719
    rem-int/2addr v3, v0

    add-int/2addr v3, v10

    add-int/2addr v2, v10

    .line 720
    aget v4, v9, v2

    aput v4, v9, v3

    add-int/2addr v3, v14

    add-int/2addr v2, v14

    .line 721
    aget v2, v9, v2

    neg-float v2, v2

    aput v2, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 724
    :cond_a
    :goto_6
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v0, v10

    add-int/lit8 v1, v10, 0x1

    aget v2, v9, v1

    neg-float v2, v2

    aput v2, v9, v0

    .line 725
    aput v13, v9, v1

    :goto_7
    return-void
.end method

.method public realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move/from16 v14, p4

    .line 1024
    iget-boolean v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 1025
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v12, v1

    if-gez v1, :cond_0

    .line 1026
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v1

    long-to-int v2, v12

    invoke-virtual {v0, v1, v2, v14}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    goto/16 :goto_2

    .line 1028
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The data array is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1031
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    return-void

    .line 1034
    :cond_2
    sget-object v1, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto/16 :goto_2

    .line 1061
    :cond_3
    invoke-direct/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    if-eqz v14, :cond_9

    .line 1063
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v3, v1

    div-float v3, v15, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_2

    :cond_4
    const-wide/16 v1, 0x2

    .line 1049
    :goto_0
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_5

    add-long v5, v12, v1

    sub-long v7, v5, v3

    .line 1051
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    .line 1052
    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v11, v7, v8, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1053
    invoke-virtual {v11, v5, v6, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v3

    goto :goto_0

    .line 1055
    :cond_5
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftb(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    if-eqz v14, :cond_9

    .line 1057
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v3, v1

    div-float v3, v15, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto :goto_2

    :cond_6
    add-long v1, v12, v3

    .line 1036
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v11, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v11, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1037
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v11, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    sub-float/2addr v3, v1

    invoke-virtual {v11, v12, v13, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1038
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    .line 1039
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ncl:J

    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->rftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 1040
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_1

    :cond_7
    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    .line 1042
    invoke-static/range {p1 .. p3}, Lorg/jtransforms/utils/CommonUtils;->cftxc020(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    :cond_8
    :goto_1
    if-eqz v14, :cond_9

    .line 1045
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float v3, v15, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    :cond_9
    :goto_2
    return-void
.end method

.method public realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 916
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    return-void
.end method

.method public realInverse([FIZ)V
    .locals 8

    .line 950
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 951
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_2

    .line 953
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 956
    :cond_1
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    .line 983
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse([FI)V

    if-eqz p3, :cond_8

    .line 985
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v1, v0

    div-float/2addr v7, v1

    invoke-static {v0, v7, p1, p2, v6}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    goto :goto_2

    .line 971
    :cond_3
    :goto_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v0, :cond_4

    add-int v0, p2, v1

    add-int/lit8 v2, v0, -0x1

    .line 973
    aget v3, p1, v2

    .line 974
    aget v4, p1, v0

    aput v4, p1, v2

    .line 975
    aput v3, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 977
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftb([FI)V

    if-eqz p3, :cond_8

    .line 979
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v1, v0

    div-float/2addr v7, v1

    invoke-static {v0, v7, p1, p2, v6}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    goto :goto_2

    :cond_5
    add-int/lit8 v0, p2, 0x1

    .line 958
    aget v1, p1, p2

    aget v2, p1, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 959
    aget v0, p1, p2

    sub-float/2addr v0, v1

    aput v0, p1, p2

    .line 960
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_6

    .line 961
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nc:I

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->rftfsub(I[FII[FI)V

    .line 962
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    goto :goto_1

    :cond_6
    if-ne v0, v1, :cond_7

    .line 964
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->cftxc020([FI)V

    :cond_7
    :goto_1
    if-eqz p3, :cond_8

    .line 967
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v7, v1

    invoke-static {v0, v7, p1, p2, v6}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public realInverse([FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 882
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    return-void
.end method

.method protected realInverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move/from16 v14, p4

    .line 1364
    iget-boolean v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 1365
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v12, v1

    if-gez v1, :cond_0

    .line 1366
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v1

    long-to-int v2, v12

    invoke-virtual {v0, v1, v2, v14}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    goto/16 :goto_4

    .line 1368
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The data array is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1371
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v15, 0x1

    cmp-long v1, v1, v15

    if-nez v1, :cond_2

    return-void

    .line 1374
    :cond_2
    sget-object v1, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto/16 :goto_4

    .line 1418
    :cond_3
    invoke-direct/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    if-eqz v14, :cond_b

    .line 1420
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v3, v1

    div-float v3, v17, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_4

    .line 1392
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftf(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 1393
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    :goto_0
    sub-long/2addr v1, v15

    const-wide/16 v8, 0x2

    cmp-long v3, v1, v8

    if-ltz v3, :cond_5

    add-long v3, v12, v1

    .line 1395
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-long v6, v3, v15

    .line 1396
    invoke-virtual {v11, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v11, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1397
    invoke-virtual {v11, v6, v7, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto :goto_0

    :cond_5
    if-eqz v14, :cond_6

    .line 1400
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v3, v1

    div-float v3, v17, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1403
    :cond_6
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    rem-long v3, v1, v8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 1404
    div-long/2addr v1, v8

    move-wide v3, v15

    :goto_1
    cmp-long v5, v3, v1

    if-gez v5, :cond_b

    mul-long v5, v3, v8

    add-long/2addr v5, v12

    add-long/2addr v5, v15

    .line 1407
    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v11, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v3, v15

    goto :goto_1

    :cond_7
    sub-long/2addr v1, v15

    .line 1410
    div-long/2addr v1, v8

    :goto_2
    cmp-long v3, v5, v1

    if-gez v3, :cond_b

    mul-long v3, v5, v8

    add-long/2addr v3, v12

    add-long/2addr v3, v15

    .line 1413
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v11, v3, v4, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v15

    goto :goto_2

    .line 1378
    :cond_8
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-lez v5, :cond_9

    .line 1379
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1380
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ncl:J

    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->rftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_3

    :cond_9
    cmp-long v3, v1, v3

    if-nez v3, :cond_a

    .line 1382
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1384
    :cond_a
    :goto_3
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    add-long v2, v12, v15

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    sub-float/2addr v1, v4

    .line 1385
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v11, v12, v13, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1386
    invoke-virtual {v11, v2, v3, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    if-eqz v14, :cond_b

    .line 1388
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v3, v1

    div-float v3, v17, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    :cond_b
    :goto_4
    return-void
.end method

.method protected realInverse2([FIZ)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    move v8, p2

    move/from16 v9, p3

    .line 1303
    iget-boolean v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-eqz v1, :cond_0

    .line 1304
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v1, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v2, v8

    invoke-virtual {p0, v1, v2, v3, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_4

    .line 1306
    :cond_0
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 1309
    :cond_1
    sget-object v1, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v3}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto/16 :goto_4

    .line 1353
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse2([FI)V

    if-eqz v9, :cond_a

    .line 1355
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v2, v1

    div-float/2addr v10, v2

    invoke-static {v1, v10, p1, p2, v11}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    goto/16 :goto_4

    .line 1327
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftf([FI)V

    .line 1328
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v3, :cond_4

    add-int v4, v8, v1

    .line 1330
    aget v5, v7, v4

    add-int/lit8 v6, v4, -0x1

    .line 1331
    aget v12, v7, v6

    aput v12, v7, v4

    .line 1332
    aput v5, v7, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_5

    .line 1335
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v4, v1

    div-float/2addr v10, v4

    invoke-static {v1, v10, p1, p2, v11}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    .line 1338
    :cond_5
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_6

    .line 1339
    div-int/2addr v1, v3

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_a

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v8

    add-int/2addr v4, v2

    .line 1342
    aget v5, v7, v4

    neg-float v5, v5

    aput v5, v7, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v1, v2

    .line 1345
    div-int/2addr v1, v3

    :goto_2
    if-ge v11, v1, :cond_a

    mul-int/lit8 v3, v11, 0x2

    add-int/2addr v3, v8

    add-int/2addr v3, v2

    .line 1348
    aget v4, v7, v3

    neg-float v4, v4

    aput v4, v7, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1313
    :cond_7
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_8

    .line 1314
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 1315
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nc:I

    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->rftbsub(I[FII[FI)V

    goto :goto_3

    :cond_8
    if-ne v1, v2, :cond_9

    .line 1317
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    .line 1319
    :cond_9
    :goto_3
    aget v1, v7, v8

    add-int/lit8 v2, v8, 0x1

    aget v3, v7, v2

    sub-float v4, v1, v3

    add-float/2addr v1, v3

    .line 1320
    aput v1, v7, v8

    .line 1321
    aput v4, v7, v2

    if-eqz v9, :cond_a

    .line 1323
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v2, v1

    div-float/2addr v10, v2

    invoke-static {v1, v10, p1, p2, v11}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    :cond_a
    :goto_4
    return-void
.end method

.method public realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
    .locals 28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move/from16 v0, p4

    .line 1214
    const-class v16, Lorg/jtransforms/fft/FloatFFT_1D;

    iget-boolean v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 1215
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v14, v1

    if-gez v1, :cond_0

    .line 1216
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v1

    long-to-int v2, v14

    invoke-virtual {v12, v1, v2, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FIZ)V

    goto/16 :goto_7

    .line 1218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_1
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v17, 0x2

    mul-long v19, v1, v17

    .line 1222
    sget-object v1, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const-wide/16 v21, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto/16 :goto_7

    :cond_2
    const-wide/16 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 1292
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_full(Lpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    if-eqz v0, :cond_d

    .line 1294
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v0, v1

    div-float v3, v7, v0

    const/4 v7, 0x1

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_7

    .line 1266
    :cond_3
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftf(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    if-eqz v0, :cond_4

    .line 1268
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v0, v1

    div-float v3, v7, v0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1271
    :cond_4
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    rem-long v2, v0, v17

    cmp-long v2, v2, v8

    if-nez v2, :cond_5

    .line 1272
    div-long v0, v0, v17

    goto :goto_0

    :cond_5
    add-long v0, v0, v21

    .line 1274
    div-long v0, v0, v17

    :goto_0
    move-wide/from16 v2, v21

    :goto_1
    cmp-long v4, v2, v0

    if-gez v4, :cond_6

    mul-long v4, v2, v17

    add-long v6, v14, v4

    add-long v8, v14, v19

    sub-long/2addr v8, v4

    .line 1279
    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v13, v6, v7, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v21

    .line 1280
    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    neg-float v10, v10

    invoke-virtual {v13, v4, v5, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v6, v6, v21

    .line 1281
    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v13, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_1

    :cond_6
    move-wide/from16 v0, v21

    .line 1283
    :goto_2
    iget-wide v2, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    add-long/2addr v2, v14

    sub-long/2addr v2, v0

    add-long v4, v2, v21

    .line 1285
    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    .line 1286
    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v13, v4, v5, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1287
    invoke-virtual {v13, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v21

    goto :goto_2

    :cond_7
    add-long v0, v14, v21

    .line 1289
    invoke-virtual {v13, v0, v1, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto/16 :goto_7

    .line 1224
    :cond_8
    invoke-virtual/range {p0 .. p4}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1225
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v2, :cond_b

    .line 1226
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v1, v1, v17

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_b

    .line 1227
    new-array v9, v0, [Ljava/util/concurrent/Future;

    .line 1228
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v1, v1, v17

    int-to-long v3, v0

    div-long v23, v1, v3

    const/4 v1, 0x0

    move v10, v1

    :goto_3
    if-ge v10, v0, :cond_a

    int-to-long v1, v10

    mul-long v3, v1, v23

    add-int/lit8 v1, v0, -0x1

    if-ne v10, v1, :cond_9

    .line 1231
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v1, v1, v17

    goto :goto_4

    :cond_9
    add-long v1, v3, v23

    :goto_4
    move-wide v5, v1

    .line 1232
    new-instance v25, Lorg/jtransforms/fft/FloatFFT_1D$4;

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move-wide/from16 v7, p2

    move-object/from16 v26, v9

    move/from16 v27, v10

    move-wide/from16 v9, v19

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_1D$4;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v26, v27

    add-int/lit8 v10, v27, 0x1

    move-object/from16 v9, v26

    const/4 v11, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v26, v9

    const/4 v1, 0x0

    .line 1247
    :try_start_0
    invoke-static/range {v26 .. v26}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1251
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1249
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1255
    :cond_b
    :goto_5
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v0, v0, v17

    cmp-long v0, v8, v0

    if-gez v0, :cond_c

    mul-long v0, v8, v17

    sub-long v2, v19, v0

    .line 1257
    rem-long v2, v2, v19

    add-long/2addr v2, v14

    add-long/2addr v0, v14

    .line 1258
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v13, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    add-long v0, v0, v21

    .line 1259
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v13, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    goto :goto_5

    .line 1262
    :cond_c
    :goto_6
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long/2addr v0, v14

    add-long v2, v14, v21

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v13, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const/4 v1, 0x0

    .line 1263
    invoke-virtual {v13, v2, v3, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :cond_d
    :goto_7
    return-void
.end method

.method public realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1100
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    return-void
.end method

.method public realInverseFull([FIZ)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v0, p3

    .line 1117
    const-class v11, Lorg/jtransforms/fft/FloatFFT_1D;

    iget-boolean v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->useLargeArrays:Z

    if-eqz v1, :cond_0

    .line 1118
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v1, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v2, v10

    invoke-virtual {v8, v1, v2, v3, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_7

    .line 1120
    :cond_0
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v12, 0x2

    mul-int/lit8 v13, v1, 0x2

    .line 1121
    sget-object v1, Lorg/jtransforms/fft/FloatFFT_1D$29;->$SwitchMap$org$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, v8, Lorg/jtransforms/fft/FloatFFT_1D;->plan:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v15, 0x1

    if-eq v1, v15, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v12, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto/16 :goto_7

    .line 1191
    :cond_1
    invoke-direct {v8, v9, v10, v15}, Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_full([FII)V

    if-eqz v0, :cond_c

    .line 1193
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v1, v0

    div-float/2addr v3, v1

    invoke-static {v0, v3, v9, v10, v15}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    goto/16 :goto_7

    .line 1165
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lorg/jtransforms/fft/FloatFFT_1D;->rfftf([FI)V

    if-eqz v0, :cond_3

    .line 1167
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v1, v0

    div-float/2addr v3, v1

    invoke-static {v0, v3, v9, v10, v2}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    .line 1170
    :cond_3
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_4

    .line 1171
    div-int/2addr v0, v12

    goto :goto_0

    :cond_4
    add-int/2addr v0, v15

    .line 1173
    div-int/2addr v0, v12

    :goto_0
    move v1, v15

    :goto_1
    if-ge v1, v0, :cond_5

    mul-int/lit8 v2, v1, 0x2

    add-int v3, v10, v2

    add-int v4, v10, v13

    sub-int/2addr v4, v2

    .line 1178
    aget v2, v9, v3

    neg-float v2, v2

    aput v2, v9, v3

    add-int/lit8 v5, v4, 0x1

    neg-float v2, v2

    .line 1179
    aput v2, v9, v5

    sub-int/2addr v3, v15

    .line 1180
    aget v2, v9, v3

    aput v2, v9, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v0, v15

    .line 1182
    :goto_2
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    add-int/2addr v1, v10

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 1184
    aget v3, v9, v2

    .line 1185
    aget v4, v9, v1

    aput v4, v9, v2

    .line 1186
    aput v3, v9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v10, 0x1

    .line 1188
    aput v14, v9, v0

    goto/16 :goto_7

    .line 1123
    :cond_7
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    .line 1124
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v15, :cond_a

    .line 1125
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v1, v12

    int-to-long v3, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_a

    .line 1126
    new-array v7, v0, [Ljava/util/concurrent/Future;

    .line 1127
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v1, v12

    div-int v16, v1, v0

    move v6, v2

    :goto_3
    if-ge v6, v0, :cond_9

    mul-int v3, v6, v16

    add-int/lit8 v1, v0, -0x1

    if-ne v6, v1, :cond_8

    .line 1130
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v1, v12

    goto :goto_4

    :cond_8
    add-int v1, v3, v16

    :goto_4
    move v4, v1

    .line 1131
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_1D$3;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v5, p2

    move/from16 v18, v6

    move v6, v13

    move-object/from16 v19, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D$3;-><init>(Lorg/jtransforms/fft/FloatFFT_1D;IIII[F)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v18

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v7, v19

    goto :goto_3

    :cond_9
    move-object/from16 v19, v7

    const/4 v1, 0x0

    .line 1146
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1150
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1148
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1154
    :cond_a
    :goto_5
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v0, v12

    if-ge v2, v0, :cond_b

    mul-int/lit8 v0, v2, 0x2

    sub-int v1, v13, v0

    .line 1156
    rem-int/2addr v1, v13

    add-int/2addr v1, v10

    add-int/2addr v0, v10

    .line 1157
    aget v3, v9, v0

    aput v3, v9, v1

    add-int/2addr v1, v15

    add-int/2addr v0, v15

    .line 1158
    aget v0, v9, v0

    neg-float v0, v0

    aput v0, v9, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1161
    :cond_b
    :goto_6
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v0, v10

    add-int/lit8 v1, v10, 0x1

    aget v2, v9, v1

    neg-float v2, v2

    aput v2, v9, v0

    .line 1162
    aput v14, v9, v1

    :cond_c
    :goto_7
    return-void
.end method

.method public realInverseFull([FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1084
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FIZ)V

    return-void
.end method

.method rfftb(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 37

    move-object/from16 v15, p0

    .line 3599
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v17, 0x1

    cmp-long v0, v0, v17

    if-nez v0, :cond_0

    return-void

    .line 3604
    :cond_0
    new-instance v12, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-direct {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const-wide/16 v0, 0x2

    .line 3605
    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    mul-long v19, v2, v0

    .line 3606
    iget-object v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v1, v19, v17

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-long v10, v0

    .line 3609
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v17

    move-wide v5, v0

    move-wide/from16 v25, v21

    :goto_0
    cmp-long v2, v0, v10

    if-gtz v2, :cond_b

    .line 3611
    iget-object v2, v15, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v27, v0, v17

    add-long v0, v27, v19

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-int v9, v0

    int-to-long v3, v9

    mul-long v29, v3, v5

    .line 3613
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v31, v0, v29

    mul-long v7, v31, v5

    const/4 v0, 0x2

    if-eq v9, v0, :cond_8

    const/4 v0, 0x3

    if-eq v9, v0, :cond_6

    const/4 v0, 0x4

    if-eq v9, v0, :cond_4

    const/4 v0, 0x5

    if-eq v9, v0, :cond_2

    cmp-long v0, v25, v21

    if-nez v0, :cond_1

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move/from16 v33, v9

    move-object/from16 v9, p1

    move-wide/from16 v34, v10

    move-wide/from16 v10, p2

    move-object/from16 v36, v12

    move-wide/from16 v15, v23

    .line 3650
    invoke-virtual/range {v0 .. v16}, Lorg/jtransforms/fft/FloatFFT_1D;->radbg(JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_1

    :cond_1
    move/from16 v33, v9

    move-wide/from16 v34, v10

    move-object/from16 v36, v12

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-object/from16 v9, v36

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, v23

    .line 3652
    invoke-virtual/range {v0 .. v16}, Lorg/jtransforms/fft/FloatFFT_1D;->radbg(JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    :goto_1
    cmp-long v0, v31, v17

    if-nez v0, :cond_a

    goto/16 :goto_2

    :cond_2
    move/from16 v33, v9

    move-wide/from16 v34, v10

    move-object/from16 v36, v12

    cmp-long v0, v25, v21

    if-nez v0, :cond_3

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v5

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v36

    move-wide/from16 v11, v23

    .line 3642
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radb5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v5

    move-object/from16 v5, v36

    move-wide v6, v7

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v23

    .line 3644
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radb5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_2

    :cond_4
    move/from16 v33, v9

    move-wide/from16 v34, v10

    move-object/from16 v36, v12

    cmp-long v0, v25, v21

    if-nez v0, :cond_5

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v5

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v36

    move-wide/from16 v11, v23

    .line 3634
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radb4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_2

    :cond_5
    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v5

    move-object/from16 v5, v36

    move-wide v6, v7

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v23

    .line 3636
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radb4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_2

    :cond_6
    move/from16 v33, v9

    move-wide/from16 v34, v10

    move-object/from16 v36, v12

    cmp-long v0, v25, v21

    if-nez v0, :cond_7

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v5

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v36

    move-wide/from16 v11, v23

    .line 3626
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radb3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_2

    :cond_7
    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v5

    move-object/from16 v5, v36

    move-wide v6, v7

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v23

    .line 3628
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radb3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_2

    :cond_8
    move/from16 v33, v9

    move-wide/from16 v34, v10

    move-object/from16 v36, v12

    cmp-long v0, v25, v21

    if-nez v0, :cond_9

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v5

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v36

    move-wide/from16 v11, v23

    .line 3618
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radb2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_2

    :cond_9
    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v5

    move-object/from16 v5, v36

    move-wide v6, v7

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v23

    .line 3620
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radb2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    :goto_2
    sub-long v25, v17, v25

    :cond_a
    add-int/lit8 v9, v33, -0x1

    int-to-long v0, v9

    mul-long v0, v0, v31

    add-long v23, v23, v0

    move-object/from16 v15, p0

    move-wide/from16 v0, v27

    move-wide/from16 v5, v29

    move-wide/from16 v10, v34

    move-object/from16 v12, v36

    goto/16 :goto_0

    :cond_b
    move-object/from16 v36, v12

    cmp-long v0, v25, v21

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    .line 3665
    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    move-object/from16 v1, v36

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    return-void
.end method

.method rfftb([FI)V
    .locals 22

    move-object/from16 v10, p0

    .line 3525
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    return-void

    .line 3530
    :cond_0
    new-array v12, v0, [F

    mul-int/lit8 v13, v0, 0x2

    .line 3532
    iget-object v1, v10, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v2, v13, 0x1

    aget v1, v1, v2

    float-to-int v14, v1

    const/4 v15, 0x0

    move/from16 v16, v0

    move v0, v11

    move v3, v0

    move/from16 v17, v15

    :goto_0
    if-gt v0, v14, :cond_b

    .line 3537
    iget-object v1, v10, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v18, v0, 0x1

    add-int v0, v18, v13

    aget v0, v1, v0

    float-to-int v9, v0

    mul-int v19, v9, v3

    .line 3539
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v8, v0, v19

    mul-int v4, v8, v3

    const/4 v0, 0x2

    if-eq v9, v0, :cond_8

    const/4 v0, 0x3

    if-eq v9, v0, :cond_6

    const/4 v0, 0x4

    if-eq v9, v0, :cond_4

    const/4 v0, 0x5

    if-eq v9, v0, :cond_2

    if-nez v17, :cond_1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v21, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, v16

    .line 3576
    invoke-virtual/range {v0 .. v9}, Lorg/jtransforms/fft/FloatFFT_1D;->radbg(IIII[FI[FII)V

    goto :goto_1

    :cond_1
    move/from16 v21, v8

    move/from16 v20, v9

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    move-object v5, v12

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v16

    .line 3578
    invoke-virtual/range {v0 .. v9}, Lorg/jtransforms/fft/FloatFFT_1D;->radbg(IIII[FI[FII)V

    :goto_1
    move/from16 v8, v21

    if-ne v8, v11, :cond_a

    goto/16 :goto_2

    :cond_2
    move/from16 v20, v9

    if-nez v17, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v16

    .line 3568
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radb5(II[FI[FII)V

    goto/16 :goto_2

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v16

    .line 3570
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radb5(II[FI[FII)V

    goto/16 :goto_2

    :cond_4
    move/from16 v20, v9

    if-nez v17, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v16

    .line 3560
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radb4(II[FI[FII)V

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v16

    .line 3562
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radb4(II[FI[FII)V

    goto :goto_2

    :cond_6
    move/from16 v20, v9

    if-nez v17, :cond_7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v16

    .line 3552
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radb3(II[FI[FII)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v16

    .line 3554
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radb3(II[FI[FII)V

    goto :goto_2

    :cond_8
    move/from16 v20, v9

    if-nez v17, :cond_9

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v16

    .line 3544
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radb2(II[FI[FII)V

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v16

    .line 3546
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radb2(II[FI[FII)V

    :goto_2
    rsub-int/lit8 v17, v17, 0x1

    :cond_a
    add-int/lit8 v9, v20, -0x1

    mul-int/2addr v9, v8

    add-int v16, v16, v9

    move/from16 v0, v18

    move/from16 v3, v19

    goto/16 :goto_0

    :cond_b
    if-nez v17, :cond_c

    return-void

    .line 3591
    :cond_c
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v12, v15, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method rfftf(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 38

    move-object/from16 v15, p0

    .line 3450
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v17, 0x1

    cmp-long v0, v0, v17

    if-nez v0, :cond_0

    return-void

    .line 3456
    :cond_0
    new-instance v12, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    invoke-direct {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 3457
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v19, 0x2

    mul-long v21, v0, v19

    .line 3458
    iget-object v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v1, v21, v17

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-long v10, v0

    .line 3460
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    sub-long v2, v21, v17

    move-wide/from16 v4, v17

    move-wide/from16 v23, v4

    :goto_0
    cmp-long v6, v23, v10

    if-gtz v6, :cond_b

    sub-long v6, v10, v23

    .line 3464
    iget-object v8, v15, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v6, v6, v19

    add-long v6, v6, v21

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-int v6, v6

    int-to-long v7, v6

    .line 3465
    div-long v25, v0, v7

    .line 3466
    iget-wide v13, v15, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long v27, v13, v0

    mul-long v29, v27, v25

    add-int/lit8 v0, v6, -0x1

    int-to-long v0, v0

    mul-long v0, v0, v27

    sub-long v31, v2, v0

    sub-long v13, v17, v4

    const/4 v0, 0x2

    const-wide/16 v33, 0x0

    if-eq v6, v0, :cond_9

    const/4 v0, 0x3

    if-eq v6, v0, :cond_7

    const/4 v0, 0x4

    if-eq v6, v0, :cond_5

    const/4 v0, 0x5

    if-eq v6, v0, :cond_3

    cmp-long v0, v27, v17

    if-nez v0, :cond_1

    sub-long v13, v17, v13

    :cond_1
    cmp-long v0, v13, v33

    if-nez v0, :cond_2

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide v3, v7

    move-wide/from16 v5, v25

    move-wide/from16 v7, v29

    move-object/from16 v9, p1

    move-wide/from16 v35, v10

    move-wide/from16 v10, p2

    move-object/from16 v37, v12

    move-wide/from16 v15, v31

    .line 3504
    invoke-virtual/range {v0 .. v16}, Lorg/jtransforms/fft/FloatFFT_1D;->radfg(JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    move-wide/from16 v4, v17

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v35, v10

    move-object/from16 v37, v12

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide v3, v7

    move-wide/from16 v5, v25

    move-wide/from16 v7, v29

    move-object/from16 v9, v37

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, v31

    .line 3507
    invoke-virtual/range {v0 .. v16}, Lorg/jtransforms/fft/FloatFFT_1D;->radfg(JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    move-wide/from16 v4, v33

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v35, v10

    move-object/from16 v37, v12

    cmp-long v0, v13, v33

    if-nez v0, :cond_4

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v25

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v37

    move-wide/from16 v11, v31

    .line 3494
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radf5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_1

    :cond_4
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v25

    move-object/from16 v5, v37

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v31

    .line 3496
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radf5(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_1

    :cond_5
    move-wide/from16 v35, v10

    move-object/from16 v37, v12

    cmp-long v0, v13, v33

    if-nez v0, :cond_6

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v25

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v37

    move-wide/from16 v11, v31

    .line 3487
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radf4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_1

    :cond_6
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v25

    move-object/from16 v5, v37

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v31

    .line 3489
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radf4(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v35, v10

    move-object/from16 v37, v12

    cmp-long v0, v13, v33

    if-nez v0, :cond_8

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v25

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v37

    move-wide/from16 v11, v31

    .line 3480
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radf3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_1

    :cond_8
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v25

    move-object/from16 v5, v37

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v31

    .line 3482
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radf3(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_1

    :cond_9
    move-wide/from16 v35, v10

    move-object/from16 v37, v12

    cmp-long v0, v13, v33

    if-nez v0, :cond_a

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v25

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, v37

    move-wide/from16 v11, v31

    .line 3473
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radf2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_1

    :cond_a
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v25

    move-object/from16 v5, v37

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, v31

    .line 3475
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/FloatFFT_1D;->radf2(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    :goto_1
    move-wide v4, v13

    :goto_2
    add-long v23, v23, v17

    move-object/from16 v15, p0

    move-wide/from16 v0, v25

    move-wide/from16 v2, v31

    move-wide/from16 v10, v35

    move-object/from16 v12, v37

    goto/16 :goto_0

    :cond_b
    move-object/from16 v37, v12

    cmp-long v0, v4, v17

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    .line 3517
    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    move-object/from16 v1, v37

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    return-void
.end method

.method rfftf([FI)V
    .locals 18

    move-object/from16 v10, p0

    .line 3376
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    return-void

    .line 3381
    :cond_0
    new-array v12, v0, [F

    mul-int/lit8 v13, v0, 0x2

    .line 3383
    iget-object v1, v10, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v2, v13, 0x1

    aget v1, v1, v2

    float-to-int v14, v1

    add-int/lit8 v1, v13, -0x1

    move v2, v11

    move v15, v2

    :goto_0
    const/4 v9, 0x0

    if-gt v15, v14, :cond_b

    sub-int v3, v14, v15

    .line 3389
    iget-object v4, v10, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    const/4 v5, 0x2

    add-int/2addr v3, v5

    add-int/2addr v3, v13

    aget v3, v4, v3

    float-to-int v3, v3

    .line 3390
    div-int v16, v0, v3

    .line 3391
    iget v4, v10, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v4, v0

    mul-int v6, v4, v16

    add-int/lit8 v0, v3, -0x1

    mul-int/2addr v0, v4

    sub-int v17, v1, v0

    rsub-int/lit8 v8, v2, 0x1

    if-eq v3, v5, :cond_9

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    const/4 v0, 0x4

    if-eq v3, v0, :cond_5

    const/4 v0, 0x5

    if-eq v3, v0, :cond_3

    if-ne v4, v11, :cond_1

    rsub-int/lit8 v8, v8, 0x1

    :cond_1
    if-nez v8, :cond_2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v3

    move/from16 v3, v16

    move v4, v6

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v9, v17

    .line 3429
    invoke-virtual/range {v0 .. v9}, Lorg/jtransforms/fft/FloatFFT_1D;->radfg(IIII[FI[FII)V

    move v2, v11

    goto/16 :goto_2

    :cond_2
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v3

    move/from16 v3, v16

    move v4, v6

    move-object v5, v12

    move v6, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v17

    .line 3432
    invoke-virtual/range {v0 .. v9}, Lorg/jtransforms/fft/FloatFFT_1D;->radfg(IIII[FI[FII)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_3
    if-nez v8, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    .line 3419
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radf5(II[FI[FII)V

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object v3, v12

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    .line 3421
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radf5(II[FI[FII)V

    goto/16 :goto_1

    :cond_5
    if-nez v8, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    .line 3412
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radf4(II[FI[FII)V

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object v3, v12

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    .line 3414
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radf4(II[FI[FII)V

    goto :goto_1

    :cond_7
    if-nez v8, :cond_8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    .line 3405
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radf3(II[FI[FII)V

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object v3, v12

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    .line 3407
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radf3(II[FI[FII)V

    goto :goto_1

    :cond_9
    if-nez v8, :cond_a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    .line 3398
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radf2(II[FI[FII)V

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object v3, v12

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    .line 3400
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/FloatFFT_1D;->radf2(II[FI[FII)V

    :goto_1
    move v2, v8

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    if-ne v2, v11, :cond_c

    return-void

    .line 3442
    :cond_c
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v12, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method rffti()V
    .locals 25

    move-object/from16 v0, p0

    .line 1700
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-gt v8, v9, :cond_1

    .line 1722
    sget-object v6, Lorg/jtransforms/fft/FloatFFT_1D;->factors:[I

    aget v5, v6, v5

    move v6, v5

    goto :goto_1

    :cond_1
    add-int/2addr v6, v10

    .line 1727
    :goto_1
    div-int v5, v1, v6

    mul-int v9, v6, v5

    sub-int v9, v1, v9

    if-eqz v9, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v7, 0x1

    .line 1733
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v11, v7, 0x2

    add-int/2addr v11, v3

    int-to-float v12, v6

    aput v12, v9, v11

    if-ne v6, v10, :cond_4

    if-eq v1, v2, :cond_4

    move v9, v10

    :goto_2
    if-gt v9, v1, :cond_3

    sub-int v11, v1, v9

    add-int/2addr v11, v10

    add-int/2addr v11, v3

    .line 1740
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v13, v11, 0x1

    aget v11, v12, v11

    aput v11, v12, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1742
    :cond_3
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v11, v3, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    aput v12, v9, v11

    :cond_4
    if-ne v5, v2, :cond_9

    .line 1747
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v8, v6

    aput v8, v5, v3

    add-int/lit8 v8, v3, 0x1

    int-to-float v1, v1

    .line 1748
    aput v1, v5, v8

    const v1, 0x40c90fdb

    int-to-float v5, v6

    div-float/2addr v1, v5

    if-nez v7, :cond_5

    return-void

    :cond_5
    move v5, v2

    move v6, v5

    const/4 v8, 0x0

    :goto_3
    if-gt v5, v7, :cond_8

    .line 1757
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v5, v5, 0x1

    add-int v11, v5, v3

    aget v9, v9, v11

    float-to-int v9, v9

    mul-int v11, v6, v9

    .line 1760
    iget v12, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v12, v11

    sub-int/2addr v9, v2

    move v13, v2

    const/4 v14, 0x0

    :goto_4
    if-gt v13, v9, :cond_7

    add-int/2addr v14, v6

    int-to-float v15, v14

    mul-float/2addr v15, v1

    const/16 v16, 0x0

    const/16 v17, 0x3

    move/from16 v18, v8

    move/from16 v4, v17

    :goto_5
    if-gt v4, v12, :cond_6

    add-int/lit8 v18, v18, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v16, v16, v19

    mul-float v10, v16, v15

    .line 1772
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_1D;->n:I

    add-int v2, v18, v2

    move/from16 v20, v1

    .line 1773
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v21, v2, -0x2

    move/from16 v23, v5

    move/from16 v22, v6

    float-to-double v5, v10

    move/from16 v24, v9

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v1, v21

    .line 1774
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v1, v2

    add-int/lit8 v4, v4, 0x2

    move v2, v9

    move/from16 v1, v20

    move/from16 v6, v22

    move/from16 v5, v23

    move/from16 v9, v24

    const/4 v10, 0x2

    goto :goto_5

    :cond_6
    move/from16 v20, v1

    move/from16 v23, v5

    move/from16 v22, v6

    move/from16 v24, v9

    move v9, v2

    add-int/2addr v8, v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v24

    const/4 v10, 0x2

    goto :goto_4

    :cond_7
    move/from16 v23, v5

    move v6, v11

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    move v7, v1

    move v1, v5

    goto/16 :goto_1
.end method

.method rfftil()V
    .locals 42

    move-object/from16 v0, p0

    .line 1785
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-wide/16 v5, 0x2

    mul-long v7, v1, v5

    const-wide/16 v9, 0x0

    move-wide v11, v9

    move-wide v13, v11

    move-wide v15, v13

    :goto_0
    add-long v17, v11, v3

    const-wide/16 v19, 0x4

    cmp-long v19, v17, v19

    if-gtz v19, :cond_1

    .line 1807
    sget-object v13, Lorg/jtransforms/fft/FloatFFT_1D;->factors:[I

    long-to-int v11, v11

    aget v11, v13, v11

    int-to-long v11, v11

    move-wide v13, v11

    goto :goto_1

    :cond_1
    add-long/2addr v13, v5

    .line 1812
    :goto_1
    div-long v11, v1, v13

    mul-long v19, v13, v11

    sub-long v19, v1, v19

    cmp-long v19, v19, v9

    if-eqz v19, :cond_2

    move-wide/from16 v11, v17

    goto :goto_0

    :cond_2
    add-long v1, v15, v3

    .line 1818
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v21, v15, v5

    add-long v3, v21, v7

    long-to-float v10, v13

    invoke-virtual {v9, v3, v4, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    cmp-long v3, v13, v5

    if-nez v3, :cond_5

    const-wide/16 v3, 0x1

    cmp-long v9, v1, v3

    if-eqz v9, :cond_4

    move-wide v9, v5

    :goto_2
    cmp-long v21, v9, v1

    if-gtz v21, :cond_3

    sub-long v21, v1, v9

    add-long v21, v21, v5

    add-long v5, v21, v7

    move-wide/from16 v21, v13

    .line 1825
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v25, v15

    add-long v14, v5, v3

    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v13, v14, v15, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v9, v3

    move-wide/from16 v13, v21

    move-wide/from16 v15, v25

    const-wide/16 v5, 0x2

    goto :goto_2

    :cond_3
    move-wide/from16 v21, v13

    move-wide/from16 v25, v15

    .line 1827
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v9, 0x2

    add-long v13, v7, v9

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v13, v14, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v13

    move-wide/from16 v25, v15

    goto :goto_3

    :cond_5
    move-wide/from16 v21, v13

    move-wide/from16 v25, v15

    const-wide/16 v3, 0x1

    :goto_3
    cmp-long v5, v11, v3

    if-nez v5, :cond_a

    .line 1832
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v6, v9

    invoke-virtual {v5, v7, v8, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1833
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v9, v7, v3

    long-to-float v1, v1

    invoke-virtual {v5, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1834
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    long-to-float v1, v1

    const v2, 0x40c90fdb

    div-float/2addr v2, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v25, v3

    if-nez v1, :cond_6

    return-void

    :cond_6
    move-wide v11, v3

    const-wide/16 v5, 0x1

    const-wide/16 v9, 0x1

    :goto_4
    cmp-long v1, v9, v25

    if-gtz v1, :cond_9

    .line 1842
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    add-long v3, v9, v7

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    float-to-long v3, v1

    mul-long v15, v5, v3

    move-wide/from16 v27, v7

    .line 1845
    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    div-long/2addr v7, v15

    sub-long/2addr v3, v13

    move-wide v13, v11

    const-wide/16 v11, 0x1

    const-wide/16 v17, 0x0

    :goto_5
    cmp-long v1, v11, v3

    if-gtz v1, :cond_8

    move-wide/from16 v21, v3

    add-long v3, v17, v5

    long-to-float v1, v3

    mul-float/2addr v1, v2

    const/16 v17, 0x0

    const-wide/16 v29, 0x3

    move-wide/from16 v31, v13

    :goto_6
    cmp-long v18, v29, v7

    if-gtz v18, :cond_7

    const-wide/16 v23, 0x2

    add-long v31, v31, v23

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v17, v17, v18

    move/from16 v18, v2

    mul-float v2, v17, v1

    move-wide/from16 v33, v3

    .line 1857
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_1D;->nl:J

    add-long v3, v31, v3

    move/from16 v35, v1

    .line 1858
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v36, v5

    sub-long v5, v3, v23

    move-wide/from16 v38, v9

    float-to-double v9, v2

    move-wide/from16 v40, v11

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    double-to-float v2, v11

    invoke-virtual {v1, v5, v6, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1859
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v3, v4, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v29, v29, v23

    move/from16 v2, v18

    move-wide/from16 v3, v33

    move/from16 v1, v35

    move-wide/from16 v5, v36

    move-wide/from16 v9, v38

    move-wide/from16 v11, v40

    goto :goto_6

    :cond_7
    move/from16 v18, v2

    move-wide/from16 v33, v3

    move-wide/from16 v36, v5

    move-wide/from16 v38, v9

    move-wide/from16 v40, v11

    const-wide/16 v5, 0x1

    const-wide/16 v23, 0x2

    add-long/2addr v13, v7

    add-long v11, v40, v5

    move-wide/from16 v3, v21

    move-wide/from16 v17, v33

    move-wide/from16 v5, v36

    goto :goto_5

    :cond_8
    move-wide/from16 v38, v9

    const-wide/16 v23, 0x2

    move-wide v11, v13

    move-wide v5, v15

    move-wide/from16 v7, v27

    const-wide/16 v3, 0x0

    goto/16 :goto_4

    :cond_9
    return-void

    :cond_a
    const-wide/16 v23, 0x2

    move-wide v15, v1

    move-wide v1, v11

    move-wide/from16 v13, v21

    move-wide/from16 v5, v23

    const-wide/16 v9, 0x0

    goto/16 :goto_1
.end method
