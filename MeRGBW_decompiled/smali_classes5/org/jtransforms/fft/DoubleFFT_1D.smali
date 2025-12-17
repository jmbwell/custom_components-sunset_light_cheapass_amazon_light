.class public final Lorg/jtransforms/fft/DoubleFFT_1D;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jtransforms/fft/DoubleFFT_1D$Plans;
    }
.end annotation


# static fields
.field private static final PI:D = 3.141592653589793

.field private static final TWO_PI:D = 6.283185307179586

.field private static final factors:[I


# instance fields
.field private bk1:[D

.field private bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field private bk2:[D

.field private bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

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

.field private plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

.field private useLargeArrays:Z

.field private w:[D

.field private wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field private wtable:[D

.field private wtable_r:[D

.field private wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field private wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;


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

    sput-object v0, Lorg/jtransforms/fft/DoubleFFT_1D;->factors:[I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 13

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
    iput-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    long-to-int v6, p1

    .line 123
    iput v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    .line 124
    iput-wide p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v6, 0xd3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v12, 0x2

    if-nez v2, :cond_4

    .line 126
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    sget-object v0, Lorg/jtransforms/fft/DoubleFFT_1D;->factors:[I

    invoke-static {p1, p2, v0}, Lorg/jtransforms/utils/CommonUtils;->getReminder(J[I)J

    move-result-wide p1

    cmp-long p1, p1, v6

    if-ltz p1, :cond_2

    .line 128
    sget-object p1, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 129
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr p1, v12

    sub-int/2addr p1, v3

    invoke-static {p1}, Lorg/jtransforms/utils/CommonUtils;->nextPow2(I)I

    move-result p1

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 p2, p1, 0x2

    .line 130
    new-array p2, p2, [D

    iput-object p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int/lit8 p2, p1, 0x2

    .line 131
    new-array p2, p2, [D

    iput-object p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    int-to-double p1, p1

    add-double/2addr p1, v10

    .line 132
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    div-int/2addr p1, v12

    shl-int p1, v3, p1

    add-int/2addr p1, v12

    int-to-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v12

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    .line 133
    iget p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    new-array v0, p2, [D

    iput-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    mul-int/2addr p2, v12

    shr-int/2addr p2, v12

    .line 135
    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 136
    invoke-static {p2, p1, v0}, Lorg/jtransforms/utils/CommonUtils;->makewt(I[I[D)V

    .line 137
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    shr-int/2addr p1, v12

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 138
    iget-object p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    invoke-static {p1, p2, v0, v1}, Lorg/jtransforms/utils/CommonUtils;->makect(I[DI[I)V

    .line 139
    invoke-direct {p0}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluesteini()V

    goto/16 :goto_2

    .line 141
    :cond_2
    sget-object p1, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 142
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 p2, p1, 0x4

    add-int/lit8 p2, p2, 0xf

    new-array p2, p2, [D

    iput-object p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    mul-int/2addr p1, v12

    add-int/lit8 p1, p1, 0xf

    .line 143
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    .line 144
    invoke-virtual {p0}, Lorg/jtransforms/fft/DoubleFFT_1D;->cffti()V

    .line 145
    invoke-virtual {p0}, Lorg/jtransforms/fft/DoubleFFT_1D;->rffti()V

    goto/16 :goto_2

    .line 148
    :cond_3
    sget-object v0, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    long-to-double p1, p1

    add-double/2addr p1, v10

    .line 149
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    div-int/2addr p1, v12

    shl-int p1, v3, p1

    add-int/2addr p1, v12

    int-to-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v12

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    .line 150
    iget p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v0, p2, [D

    iput-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    mul-int/2addr p2, v12

    shr-int/2addr p2, v12

    .line 152
    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    .line 153
    invoke-static {p2, p1, v0}, Lorg/jtransforms/utils/CommonUtils;->makewt(I[I[D)V

    .line 154
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    shr-int/2addr p1, v12

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nc:I

    .line 155
    iget-object p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    invoke-static {p1, p2, v0, v1}, Lorg/jtransforms/utils/CommonUtils;->makect(I[DI[I)V

    goto/16 :goto_2

    .line 157
    :cond_4
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result p1

    if-nez p1, :cond_6

    .line 158
    iget-wide p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sget-object v2, Lorg/jtransforms/fft/DoubleFFT_1D;->factors:[I

    invoke-static {p1, p2, v2}, Lorg/jtransforms/utils/CommonUtils;->getReminder(J[I)J

    move-result-wide p1

    cmp-long p1, p1, v6

    if-ltz p1, :cond_5

    .line 159
    sget-object p1, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 160
    iget-wide p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long/2addr p1, v4

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->nextPow2(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    .line 161
    new-instance p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long/2addr v2, v4

    invoke-direct {p1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 162
    new-instance p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long/2addr v2, v4

    invoke-direct {p1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 163
    new-instance p1, Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    long-to-double v2, v2

    add-double/2addr v2, v10

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

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    .line 164
    new-instance p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    invoke-direct {p1, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 165
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long/2addr v0, v4

    shr-long/2addr v0, v12

    .line 166
    iput-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    .line 167
    iget-object p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static {v0, v1, p2, p1}, Lorg/jtransforms/utils/CommonUtils;->makewt(JLpl/edu/icm/jlargearrays/LongLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 168
    iget-wide p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    shr-long v0, p1, v12

    iput-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ncl:J

    .line 169
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->makect(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;)V

    .line 170
    invoke-direct {p0}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluesteinil()V

    goto :goto_2

    .line 172
    :cond_5
    sget-object p1, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 173
    new-instance p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long/2addr v2, v0

    const-wide/16 v0, 0xf

    add-long/2addr v2, v0

    invoke-direct {p1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 174
    new-instance p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    invoke-direct {p1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 175
    invoke-virtual {p0}, Lorg/jtransforms/fft/DoubleFFT_1D;->cfftil()V

    .line 176
    invoke-virtual {p0}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftil()V

    goto :goto_2

    .line 179
    :cond_6
    sget-object p1, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    .line 180
    new-instance p1, Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v2, v2

    add-double/2addr v2, v10

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

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    .line 181
    new-instance p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-direct {p1, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 182
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long/2addr v0, v4

    shr-long/2addr v0, v12

    .line 183
    iput-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    .line 184
    iget-object p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static {v0, v1, p2, p1}, Lorg/jtransforms/utils/CommonUtils;->makewt(JLpl/edu/icm/jlargearrays/LongLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 185
    iget-wide p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    shr-long v0, p1, v12

    iput-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ncl:J

    .line 186
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->makect(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;)V

    :goto_2
    return-void

    .line 120
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    return-object p0
.end method

.method static synthetic access$100(Lorg/jtransforms/fft/DoubleFFT_1D;)[D
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    return-object p0
.end method

.method static synthetic access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    return-object p0
.end method

.method static synthetic access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    return-object p0
.end method

.method private bluestein_complex(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JI)V
    .locals 26

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 2111
    const-class v14, Lorg/jtransforms/fft/DoubleFFT_1D;

    new-instance v15, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    invoke-direct {v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 2112
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 2113
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2115
    iget-wide v2, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v11, v1

    .line 2118
    new-array v10, v11, [Ljava/util/concurrent/Future;

    .line 2119
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

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

    .line 2122
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    goto :goto_2

    :cond_1
    add-long v1, v4, v18

    :goto_2
    move-wide v6, v1

    .line 2123
    new-instance v21, Lorg/jtransforms/fft/DoubleFFT_1D$8;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-wide/from16 v22, v8

    move-wide/from16 v8, p2

    move-object/from16 v24, v10

    move-object v10, v15

    move v13, v11

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_1D$8;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;IJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

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

    .line 2150
    :try_start_0
    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2154
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

    .line 2152
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2157
    :goto_3
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v15

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 2159
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    div-long v9, v0, v22

    move/from16 v0, v20

    :goto_4
    if-ge v0, v13, :cond_4

    int-to-long v1, v0

    mul-long v4, v1, v9

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_3

    .line 2162
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    goto :goto_5

    :cond_3
    add-long v1, v4, v9

    :goto_5
    move-wide v6, v1

    .line 2163
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_1D$9;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D$9;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;IJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2188
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

    .line 2192
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

    .line 2190
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2195
    :goto_6
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v15

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 2197
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v16, v0, v22

    move/from16 v0, v20

    :goto_7
    if-ge v0, v13, :cond_6

    int-to-long v1, v0

    mul-long v4, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_5

    .line 2200
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    goto :goto_8

    :cond_5
    add-long v1, v4, v16

    :goto_8
    move-wide v6, v1

    .line 2201
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_1D$10;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-wide/from16 v8, p2

    move-object/from16 v10, p1

    move/from16 v19, v13

    move-object v13, v11

    move-object v11, v15

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_1D$10;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;IJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v24, v0

    add-int/lit8 v0, v0, 0x1

    move-object v11, v13

    move/from16 v13, v19

    goto :goto_7

    :cond_6
    move-object v13, v11

    .line 2228
    :try_start_2
    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_10

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2232
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

    .line 2230
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

    .line 2236
    :goto_9
    iget-wide v2, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_8

    mul-long v2, v0, v16

    add-long v4, v2, v13

    add-long v6, p2, v2

    add-long v8, p2, v4

    move-object/from16 v10, p1

    .line 2241
    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    iget-object v11, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    iget-object v11, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v13, v20, v22

    invoke-virtual {v15, v2, v3, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2242
    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v11, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    mul-double/2addr v6, v13

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-object v11, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-virtual {v15, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 2245
    :goto_a
    iget-wide v4, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_a

    mul-long v4, v0, v16

    add-long v13, v4, v2

    add-long v2, p2, v4

    add-long v6, p2, v13

    .line 2250
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-object v11, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v8, v8, v20

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    iget-object v11, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v8, v8, v20

    invoke-virtual {v15, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2251
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v8, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v8, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    invoke-virtual {v15, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_a

    .line 2255
    :cond_a
    :goto_b
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v15

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    if-lez p4, :cond_b

    const-wide/16 v0, 0x0

    .line 2258
    :goto_c
    iget-wide v2, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    mul-long v2, v0, v16

    const-wide/16 v4, 0x1

    add-long v13, v2, v4

    .line 2261
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    neg-double v4, v4

    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v8, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 2262
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v8, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-object v11, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v8, v8, v20

    add-double/2addr v6, v8

    invoke-virtual {v15, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2263
    invoke-virtual {v15, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_c

    :cond_b
    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    .line 2266
    :goto_d
    iget-wide v4, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_c

    mul-long v4, v0, v16

    add-long v13, v4, v2

    .line 2269
    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v2, v6

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v8, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 2270
    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v8, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-object v11, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v8, v8, v20

    sub-double/2addr v6, v8

    invoke-virtual {v15, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2271
    invoke-virtual {v15, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_d

    .line 2275
    :cond_c
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v15

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    if-lez p4, :cond_d

    const-wide/16 v18, 0x0

    .line 2277
    :goto_e
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v0, v18, v0

    if-gez v0, :cond_e

    mul-long v0, v18, v16

    const-wide/16 v2, 0x1

    add-long v13, v0, v2

    add-long v2, p2, v0

    add-long v4, p2, v13

    .line 2282
    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v8, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v8, v8, v20

    sub-double/2addr v6, v8

    invoke-virtual {v10, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2283
    iget-object v2, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v2, v6

    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v0, v6

    add-double/2addr v2, v0

    invoke-virtual {v10, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long v18, v18, v0

    goto :goto_e

    :cond_d
    const-wide/16 v0, 0x1

    const-wide/16 v18, 0x0

    .line 2286
    :goto_f
    iget-wide v2, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v2, v18, v2

    if-gez v2, :cond_e

    mul-long v2, v18, v16

    add-long v13, v2, v0

    add-long v0, p2, v2

    add-long v4, p2, v13

    .line 2291
    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v8, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v8, v8, v20

    add-double/2addr v6, v8

    invoke-virtual {v10, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2292
    iget-object v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v0, v6

    iget-object v6, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    invoke-virtual {v10, v4, v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long v18, v18, v0

    goto :goto_f

    :cond_e
    :goto_10
    return-void
.end method

.method private bluestein_complex([DII)V
    .locals 22

    move-object/from16 v9, p0

    .line 1922
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v11, 0x2

    mul-int/2addr v0, v11

    new-array v12, v0, [D

    .line 1923
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    const/4 v13, 0x0

    if-le v0, v1, :cond_7

    .line 1924
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v1, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1926
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v11

    .line 1929
    :goto_0
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 1930
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v14

    move v8, v13

    :goto_1
    if-ge v8, v14, :cond_2

    mul-int v4, v8, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v8, v1, :cond_1

    .line 1933
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v1, v4, v0

    :goto_2
    move v5, v1

    .line 1934
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_1D$5;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v17, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D$5;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v8, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 1961
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1965
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

    .line 1963
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1968
    :goto_3
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    .line 1970
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v14

    move v7, v13

    :goto_4
    if-ge v7, v14, :cond_4

    mul-int v4, v7, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v7, v1, :cond_3

    .line 1973
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_3
    add-int v1, v4, v0

    :goto_5
    move v5, v1

    .line 1974
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_1D$6;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_1D$6;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1999
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

    .line 2003
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

    .line 2001
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2006
    :goto_6
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 2008
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v14

    :goto_7
    if-ge v13, v14, :cond_6

    mul-int v4, v13, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_5

    .line 2011
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_8

    :cond_5
    add-int v1, v4, v0

    :goto_8
    move v5, v1

    .line 2012
    new-instance v11, Lorg/jtransforms/fft/DoubleFFT_1D$7;

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object/from16 v7, p1

    move/from16 v16, v14

    move-object v14, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D$7;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    move-object v8, v14

    move/from16 v14, v16

    goto :goto_7

    :cond_6
    move-object v14, v8

    .line 2039
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_f

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2043
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

    .line 2041
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

    .line 2047
    :goto_9
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    .line 2052
    aget-wide v5, p1, v3

    iget-object v7, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v7, v1

    mul-double/2addr v5, v14

    aget-wide v14, p1, v4

    aget-wide v16, v7, v2

    mul-double v14, v14, v16

    sub-double/2addr v5, v14

    aput-wide v5, v12, v1

    .line 2053
    aget-wide v5, p1, v3

    aget-wide v14, v7, v2

    mul-double/2addr v5, v14

    aget-wide v3, p1, v4

    aget-wide v14, v7, v1

    mul-double/2addr v3, v14

    add-double/2addr v5, v3

    aput-wide v5, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v13

    .line 2056
    :goto_a
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    .line 2061
    aget-wide v5, p1, v3

    iget-object v7, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v7, v1

    mul-double/2addr v5, v14

    aget-wide v14, p1, v4

    aget-wide v16, v7, v2

    mul-double v14, v14, v16

    add-double/2addr v5, v14

    aput-wide v5, v12, v1

    .line 2062
    aget-wide v5, p1, v3

    neg-double v5, v5

    aget-wide v14, v7, v2

    mul-double/2addr v5, v14

    aget-wide v3, p1, v4

    aget-wide v14, v7, v1

    mul-double/2addr v3, v14

    add-double/2addr v5, v3

    aput-wide v5, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2066
    :cond_9
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    if-lez p3, :cond_a

    move v0, v13

    .line 2069
    :goto_b
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2072
    aget-wide v3, v12, v1

    neg-double v5, v3

    iget-object v7, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v14, v7, v2

    mul-double/2addr v5, v14

    aget-wide v16, v12, v2

    aget-wide v18, v7, v1

    mul-double v7, v16, v18

    add-double/2addr v5, v7

    mul-double v3, v3, v18

    mul-double v16, v16, v14

    add-double v3, v3, v16

    .line 2073
    aput-wide v3, v12, v1

    .line 2074
    aput-wide v5, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v13

    .line 2077
    :goto_c
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2080
    aget-wide v3, v12, v1

    iget-object v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v5, v2

    mul-double v14, v3, v6

    aget-wide v16, v12, v2

    aget-wide v18, v5, v1

    mul-double v20, v16, v18

    add-double v14, v14, v20

    mul-double v3, v3, v18

    mul-double v16, v16, v6

    sub-double v3, v3, v16

    .line 2081
    aput-wide v3, v12, v1

    .line 2082
    aput-wide v14, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2086
    :cond_b
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    if-lez p3, :cond_c

    .line 2088
    :goto_d
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v13, v0, :cond_d

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    add-int v3, p2, v1

    .line 2093
    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v0

    aget-wide v7, v12, v0

    mul-double/2addr v5, v7

    aget-wide v7, v4, v1

    aget-wide v10, v12, v1

    mul-double/2addr v7, v10

    sub-double/2addr v5, v7

    aput-wide v5, p1, v2

    .line 2094
    aget-wide v5, v4, v1

    aget-wide v7, v12, v0

    mul-double/2addr v5, v7

    aget-wide v7, v4, v0

    aget-wide v0, v12, v1

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    aput-wide v5, p1, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 2097
    :cond_c
    :goto_e
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v13, v0, :cond_d

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    add-int v3, p2, v1

    .line 2102
    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v0

    aget-wide v7, v12, v0

    mul-double/2addr v5, v7

    aget-wide v7, v4, v1

    aget-wide v10, v12, v1

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    aput-wide v5, p1, v2

    .line 2103
    aget-wide v5, v4, v1

    neg-double v5, v5

    aget-wide v7, v12, v0

    mul-double/2addr v5, v7

    aget-wide v7, v4, v0

    aget-wide v0, v12, v1

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    aput-wide v5, p1, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_d
    :goto_f
    return-void
.end method

.method private bluestein_real_forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 26

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    .line 2766
    const-class v15, Lorg/jtransforms/fft/DoubleFFT_1D;

    new-instance v10, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    invoke-direct {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 2767
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x1

    if-le v0, v1, :cond_5

    .line 2768
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2770
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v18

    cmp-long v0, v2, v18

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v9, v1

    .line 2773
    new-array v3, v9, [Ljava/util/concurrent/Future;

    .line 2774
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    int-to-long v12, v9

    div-long v18, v0, v12

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_2

    int-to-long v1, v0

    mul-long v20, v1, v18

    add-int/lit8 v1, v9, -0x1

    if-ne v0, v1, :cond_1

    .line 2777
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    goto :goto_2

    :cond_1
    add-long v1, v20, v18

    :goto_2
    move-wide/from16 v22, v1

    .line 2778
    new-instance v24, Lorg/jtransforms/fft/DoubleFFT_1D$19;

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

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_1D$19;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

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

    .line 2793
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2797
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

    .line 2795
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2800
    :goto_3
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object/from16 v3, v21

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 2802
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    div-long v8, v0, v12

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v14, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v8

    add-int/lit8 v1, v14, -0x1

    if-ne v0, v1, :cond_3

    .line 2805
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    goto :goto_5

    :cond_3
    add-long v1, v3, v8

    :goto_5
    move-wide v5, v1

    .line 2806
    new-instance v12, Lorg/jtransforms/fft/DoubleFFT_1D$20;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D$20;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2821
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

    .line 2825
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

    .line 2823
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move-wide/from16 v14, p2

    move-object/from16 v12, v21

    goto/16 :goto_9

    :cond_5
    move-object/from16 v21, v10

    const-wide/16 v7, 0x0

    .line 2830
    :goto_7
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_6

    mul-long v0, v7, v16

    const-wide/16 v12, 0x1

    add-long v5, v0, v12

    move-wide/from16 v14, p2

    add-long v2, v14, v7

    move-object/from16 v10, p1

    .line 2834
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v12, v18, v22

    move-object/from16 v9, v21

    invoke-virtual {v9, v0, v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2835
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    neg-double v0, v0

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {v9, v5, v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    goto :goto_7

    :cond_6
    move-object/from16 v10, p1

    move-wide/from16 v14, p2

    move-object/from16 v9, v21

    .line 2838
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object v12, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v7, 0x0

    .line 2840
    :goto_8
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_7

    mul-long v0, v7, v16

    const-wide/16 v2, 0x1

    add-long v5, v0, v2

    .line 2843
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    mul-double v2, v2, v18

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v2, v2, v18

    .line 2844
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v9, v18, v20

    invoke-virtual {v12, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2845
    invoke-virtual {v12, v5, v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    move-object/from16 v10, p1

    goto :goto_8

    .line 2849
    :cond_7
    :goto_9
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v12

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 2851
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    rem-long v0, v0, v16

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 2852
    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    move-object/from16 v5, p1

    invoke-virtual {v5, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v14, v3

    .line 2853
    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v8, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-wide v13, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v13, v3

    invoke-virtual {v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    mul-double/2addr v8, v13

    add-double/2addr v6, v8

    invoke-virtual {v5, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-wide v0, v3

    .line 2854
    :goto_a
    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v6, v6, v16

    cmp-long v2, v0, v6

    if-gez v2, :cond_a

    mul-long v6, v0, v16

    add-long v8, v6, v3

    move-wide/from16 v13, p2

    add-long v2, v13, v6

    .line 2857
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v18, v18, v20

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v22, v0

    add-double v0, v18, v20

    invoke-virtual {v5, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v13, v8

    .line 2858
    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    mul-double v2, v2, v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-virtual {v5, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long v0, v22, v6

    move-wide v3, v6

    goto :goto_a

    :cond_8
    move-object/from16 v5, p1

    move-wide v13, v14

    const-wide/16 v6, 0x1

    .line 2861
    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    invoke-virtual {v5, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v13, v6

    .line 2862
    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v8, v6

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    invoke-virtual {v5, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    .line 2863
    :goto_b
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v6, 0x1

    sub-long v8, v2, v6

    div-long v8, v8, v16

    cmp-long v4, v0, v8

    if-gez v4, :cond_9

    mul-long v2, v0, v16

    add-long v8, v2, v6

    add-long v6, v13, v2

    .line 2866
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v18, v18, v20

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v22, v0

    add-double v0, v18, v20

    invoke-virtual {v5, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v13, v8

    .line 2867
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    mul-double v6, v6, v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    add-double/2addr v6, v2

    invoke-virtual {v5, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long v0, v22, v6

    goto :goto_b

    :cond_9
    add-long v0, v13, v2

    sub-long/2addr v0, v6

    .line 2869
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sub-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v8, v6

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v2, v6

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-virtual {v5, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :cond_a
    return-void
.end method

.method private bluestein_real_forward([DI)V
    .locals 22

    move-object/from16 v8, p0

    .line 2656
    const-class v9, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v10, 0x2

    mul-int/2addr v0, v10

    new-array v11, v0, [D

    .line 2657
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-le v0, v13, :cond_5

    .line 2658
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v1, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2660
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v10

    .line 2663
    :goto_0
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 2664
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v14

    move v7, v12

    :goto_1
    if-ge v7, v14, :cond_2

    mul-int v3, v7, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v7, v1, :cond_1

    .line 2667
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v1, v3, v0

    :goto_2
    move v4, v1

    .line 2668
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_1D$17;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v5, p2

    move-object v6, v11

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D$17;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v7, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 2683
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2687
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

    .line 2685
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2690
    :goto_3
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    .line 2692
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v14

    move v1, v12

    :goto_4
    if-ge v1, v14, :cond_4

    mul-int v2, v1, v0

    add-int/lit8 v3, v14, -0x1

    if-ne v1, v3, :cond_3

    .line 2695
    iget v3, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_3
    add-int v3, v2, v0

    .line 2696
    :goto_5
    new-instance v4, Lorg/jtransforms/fft/DoubleFFT_1D$18;

    invoke-direct {v4, v8, v2, v3, v11}, Lorg/jtransforms/fft/DoubleFFT_1D$18;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2711
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

    .line 2715
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

    .line 2713
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_5
    move v0, v12

    .line 2720
    :goto_6
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    .line 2724
    aget-wide v4, p1, v3

    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v6, v1

    mul-double/2addr v4, v14

    aput-wide v4, v11, v1

    .line 2725
    aget-wide v3, p1, v3

    neg-double v3, v3

    aget-wide v5, v6, v2

    mul-double/2addr v3, v5

    aput-wide v3, v11, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2728
    :cond_6
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    move v0, v12

    .line 2730
    :goto_7
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2733
    aget-wide v3, v11, v1

    iget-object v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v5, v2

    mul-double v14, v3, v6

    aget-wide v16, v11, v2

    aget-wide v18, v5, v1

    mul-double v20, v16, v18

    add-double v14, v14, v20

    mul-double v3, v3, v18

    mul-double v16, v16, v6

    sub-double v3, v3, v16

    .line 2734
    aput-wide v3, v11, v1

    .line 2735
    aput-wide v14, v11, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2739
    :cond_7
    :goto_8
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 2741
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    .line 2742
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v1, v12

    aget-wide v4, v11, v12

    mul-double/2addr v2, v4

    aget-wide v4, v1, v13

    aget-wide v6, v11, v13

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 2743
    aget-wide v3, v1, v0

    aget-wide v5, v11, v0

    mul-double/2addr v3, v5

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v1, v5

    add-int/2addr v0, v13

    aget-wide v0, v11, v0

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    .line 2744
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    if-ge v13, v0, :cond_a

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    .line 2747
    iget-object v3, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v6, v11, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v1

    aget-wide v14, v11, v1

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int v2, p2, v1

    .line 2748
    aget-wide v4, v3, v1

    neg-double v4, v4

    aget-wide v6, v11, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v0

    aget-wide v0, v11, v1

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 2751
    :cond_8
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v1, v12

    aget-wide v4, v11, v12

    mul-double/2addr v2, v4

    aget-wide v4, v1, v13

    aget-wide v6, v11, v13

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 2752
    aget-wide v3, v1, v0

    neg-double v3, v3

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v11, v5

    mul-double/2addr v3, v5

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v1, v5

    aget-wide v0, v11, v0

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    move v0, v13

    .line 2753
    :goto_a
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v1, -0x1

    div-int/2addr v2, v10

    if-ge v0, v2, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    .line 2756
    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v1

    aget-wide v14, v11, v1

    mul-double/2addr v5, v14

    aget-wide v14, v4, v2

    aget-wide v16, v11, v2

    mul-double v14, v14, v16

    add-double/2addr v5, v14

    aput-wide v5, p1, v3

    add-int v3, p2, v2

    .line 2757
    aget-wide v5, v4, v2

    neg-double v5, v5

    aget-wide v14, v11, v1

    mul-double/2addr v5, v14

    aget-wide v14, v4, v1

    aget-wide v1, v11, v2

    mul-double/2addr v14, v1

    add-double/2addr v5, v14

    aput-wide v5, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    add-int v0, p2, v1

    sub-int/2addr v0, v13

    .line 2759
    iget-object v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v11, v5

    mul-double/2addr v3, v5

    aget-wide v5, v2, v1

    aget-wide v1, v11, v1

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, p1, v0

    :cond_a
    return-void
.end method

.method private bluestein_real_full(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 26

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 2478
    const-class v15, Lorg/jtransforms/fft/DoubleFFT_1D;

    new-instance v12, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    invoke-direct {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 2479
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 2480
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2482
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v11, v1

    .line 2485
    new-array v9, v11, [Ljava/util/concurrent/Future;

    .line 2486
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

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

    .line 2489
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    goto :goto_2

    :cond_1
    add-long v1, v5, v18

    :goto_2
    move-wide/from16 v21, v1

    .line 2490
    new-instance v23, Lorg/jtransforms/fft/DoubleFFT_1D$14;

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

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D$14;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

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

    .line 2515
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2519
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

    .line 2517
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2522
    :goto_3
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object/from16 v3, v22

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 2524
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    div-long v10, v0, v24

    move/from16 v0, v20

    :goto_4
    if-ge v0, v14, :cond_4

    int-to-long v1, v0

    mul-long v5, v1, v10

    add-int/lit8 v1, v14, -0x1

    if-ne v0, v1, :cond_3

    .line 2527
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    goto :goto_5

    :cond_3
    add-long v1, v5, v10

    :goto_5
    move-wide v7, v1

    .line 2528
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_1D$15;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_1D$15;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2553
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

    .line 2557
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

    .line 2555
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2560
    :goto_6
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object/from16 v3, v22

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 2562
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v16, v0, v24

    move/from16 v0, v20

    :goto_7
    if-ge v0, v14, :cond_6

    int-to-long v1, v0

    mul-long v5, v1, v16

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_5

    .line 2565
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    goto :goto_8

    :cond_5
    add-long v1, v5, v16

    :goto_8
    move-wide v7, v1

    .line 2566
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_1D$16;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v19, v14

    move-object v14, v12

    move-object/from16 v12, v22

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D$16;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    move-object v12, v14

    move/from16 v14, v19

    goto :goto_7

    :cond_6
    move-object v14, v12

    .line 2589
    :try_start_2
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_10

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2593
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

    .line 2591
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

    .line 2597
    :goto_9
    iget-wide v3, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_8

    mul-long v3, v1, v16

    add-long v5, v3, v14

    add-long v7, p2, v1

    move-object/from16 v12, p1

    .line 2601
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    iget-object v9, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v10, v18, v20

    move-object/from16 v9, v22

    invoke-virtual {v9, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2602
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    iget-object v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v3, v7

    invoke-virtual {v9, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v1, v14

    const-wide/16 v10, 0x0

    goto :goto_9

    :cond_8
    move-object/from16 v12, p1

    move-object/from16 v9, v22

    goto :goto_b

    :cond_9
    move-object/from16 v12, p1

    move-object/from16 v9, v22

    const-wide/16 v1, 0x0

    .line 2605
    :goto_a
    iget-wide v3, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_a

    mul-long v3, v1, v16

    add-long v5, v3, v14

    add-long v7, p2, v1

    .line 2609
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    iget-object v14, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    mul-double/2addr v10, v14

    invoke-virtual {v9, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2610
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    neg-double v3, v3

    iget-object v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v3, v7

    invoke-virtual {v9, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    move-wide v14, v3

    goto :goto_a

    .line 2614
    :cond_a
    :goto_b
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v1, v16

    iget-object v6, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v10, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object v11, v9

    move-object v9, v10

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    if-lez v0, :cond_b

    const-wide/16 v1, 0x0

    .line 2617
    :goto_c
    iget-wide v3, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_c

    mul-long v3, v1, v16

    const-wide/16 v5, 0x1

    add-long v14, v3, v5

    .line 2620
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    neg-double v5, v5

    iget-object v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    iget-object v9, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 2621
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    iget-object v9, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    iget-object v12, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    mul-double v9, v9, v18

    add-double/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2622
    invoke-virtual {v11, v14, v15, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    move-object/from16 v12, p1

    goto :goto_c

    :cond_b
    const-wide/16 v3, 0x1

    const-wide/16 v1, 0x0

    .line 2625
    :goto_d
    iget-wide v5, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_c

    mul-long v5, v1, v16

    add-long v14, v5, v3

    .line 2628
    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    iget-object v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v3, v7

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    iget-object v9, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 2629
    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    iget-object v9, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    iget-object v12, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    mul-double v9, v9, v18

    sub-double/2addr v7, v9

    invoke-virtual {v11, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2630
    invoke-virtual {v11, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_d

    .line 2634
    :cond_c
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v1, v16

    iget-object v6, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v11

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    if-lez v0, :cond_d

    const-wide/16 v23, 0x0

    .line 2637
    :goto_e
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v0, v23, v0

    if-gez v0, :cond_e

    mul-long v0, v23, v16

    const-wide/16 v2, 0x1

    add-long v14, v0, v2

    add-long v2, p2, v0

    .line 2640
    iget-object v4, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v11, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    move-object/from16 v6, p1

    invoke-virtual {v6, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, p2, v14

    .line 2641
    iget-object v4, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v11, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v4, v7

    iget-object v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v0, v7

    add-double/2addr v4, v0

    invoke-virtual {v6, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long v23, v23, v0

    goto :goto_e

    :cond_d
    move-object/from16 v6, p1

    const-wide/16 v0, 0x1

    const-wide/16 v23, 0x0

    .line 2644
    :goto_f
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v2, v23, v2

    if-gez v2, :cond_e

    mul-long v2, v23, v16

    add-long v14, v2, v0

    add-long v0, p2, v2

    .line 2647
    iget-object v4, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v4, v7

    iget-object v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    invoke-virtual {v6, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p2, v14

    .line 2648
    iget-object v4, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v4, v7

    iget-object v7, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v2, v7

    add-double/2addr v4, v2

    invoke-virtual {v6, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long v23, v23, v0

    goto :goto_f

    :cond_e
    :goto_10
    return-void
.end method

.method private bluestein_real_full([DII)V
    .locals 22

    move-object/from16 v9, p0

    .line 2300
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v11, 0x2

    mul-int/2addr v0, v11

    new-array v12, v0, [D

    .line 2301
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    const/4 v13, 0x0

    if-le v0, v1, :cond_7

    .line 2302
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v1, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2304
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v11

    .line 2307
    :goto_0
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 2308
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v14

    move v8, v13

    :goto_1
    if-ge v8, v14, :cond_2

    mul-int v4, v8, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v8, v1, :cond_1

    .line 2311
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v1, v4, v0

    :goto_2
    move v5, v1

    .line 2312
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_1D$11;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v17, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D$11;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v8, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 2337
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2341
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

    .line 2339
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2344
    :goto_3
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    .line 2346
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v14

    move v7, v13

    :goto_4
    if-ge v7, v14, :cond_4

    mul-int v4, v7, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v7, v1, :cond_3

    .line 2349
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_3
    add-int v1, v4, v0

    :goto_5
    move v5, v1

    .line 2350
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_1D$12;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_1D$12;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2375
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

    .line 2379
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

    .line 2377
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2382
    :goto_6
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 2384
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v14

    :goto_7
    if-ge v13, v14, :cond_6

    mul-int v4, v13, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_5

    .line 2387
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_8

    :cond_5
    add-int v1, v4, v0

    :goto_8
    move v5, v1

    .line 2388
    new-instance v11, Lorg/jtransforms/fft/DoubleFFT_1D$13;

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v16, v14

    move-object v14, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D$13;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;III[DI[D)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    move-object v8, v14

    move/from16 v14, v16

    goto :goto_7

    :cond_6
    move-object v14, v8

    .line 2411
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_f

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2415
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

    .line 2413
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

    .line 2419
    :goto_9
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    .line 2423
    aget-wide v4, p1, v3

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v7, v6, v1

    mul-double/2addr v4, v7

    aput-wide v4, v12, v1

    .line 2424
    aget-wide v3, p1, v3

    aget-wide v5, v6, v2

    mul-double/2addr v3, v5

    aput-wide v3, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v13

    .line 2427
    :goto_a
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    .line 2431
    aget-wide v4, p1, v3

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v7, v6, v1

    mul-double/2addr v4, v7

    aput-wide v4, v12, v1

    .line 2432
    aget-wide v3, p1, v3

    neg-double v3, v3

    aget-wide v5, v6, v2

    mul-double/2addr v3, v5

    aput-wide v3, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2436
    :cond_9
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    if-lez p3, :cond_a

    move v0, v13

    .line 2439
    :goto_b
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2442
    aget-wide v3, v12, v1

    neg-double v5, v3

    iget-object v7, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v14, v7, v2

    mul-double/2addr v5, v14

    aget-wide v16, v12, v2

    aget-wide v18, v7, v1

    mul-double v7, v16, v18

    add-double/2addr v5, v7

    mul-double v3, v3, v18

    mul-double v16, v16, v14

    add-double v3, v3, v16

    .line 2443
    aput-wide v3, v12, v1

    .line 2444
    aput-wide v5, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    move v0, v13

    .line 2447
    :goto_c
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2450
    aget-wide v3, v12, v1

    iget-object v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v5, v2

    mul-double v14, v3, v6

    aget-wide v16, v12, v2

    aget-wide v18, v5, v1

    mul-double v20, v16, v18

    add-double v14, v14, v20

    mul-double v3, v3, v18

    mul-double v16, v16, v6

    sub-double v3, v3, v16

    .line 2451
    aput-wide v3, v12, v1

    .line 2452
    aput-wide v14, v12, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2456
    :cond_b
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v12

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    if-lez p3, :cond_c

    .line 2459
    :goto_d
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v13, v0, :cond_d

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    .line 2462
    iget-object v3, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v6, v12, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v1

    aget-wide v10, v12, v1

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int v2, p2, v1

    .line 2463
    aget-wide v4, v3, v1

    aget-wide v6, v12, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v0

    aget-wide v0, v12, v1

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 2466
    :cond_c
    :goto_e
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v13, v0, :cond_d

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    .line 2469
    iget-object v3, v9, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v6, v12, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v1

    aget-wide v10, v12, v1

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int v2, p2, v1

    .line 2470
    aget-wide v4, v3, v1

    neg-double v4, v4

    aget-wide v6, v12, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v0

    aget-wide v0, v12, v1

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_d
    :goto_f
    return-void
.end method

.method private bluestein_real_inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 27

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 3014
    const-class v13, Lorg/jtransforms/fft/DoubleFFT_1D;

    new-instance v14, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    const-wide/16 v15, 0x2

    mul-long/2addr v0, v15

    invoke-direct {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 3015
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    rem-long/2addr v0, v15

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    const-wide/16 v7, 0x1

    if-nez v0, :cond_2

    .line 3016
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {v14, v9, v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3017
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {v14, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-wide v0, v7

    .line 3019
    :goto_0
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v4, v2, v15

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    mul-long v2, v0, v15

    add-long v4, v2, v7

    add-long v9, p2, v2

    add-long v7, p2, v4

    .line 3024
    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v21

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    mul-double v21, v21, v23

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v25

    mul-double v23, v23, v25

    move-wide/from16 v25, v0

    sub-double v0, v21, v23

    invoke-virtual {v14, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3025
    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v0, v9

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v6, v2

    add-double/2addr v0, v6

    invoke-virtual {v14, v4, v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long v2, v25, v0

    move-wide v7, v0

    move-wide v0, v2

    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, v7

    add-long v4, p2, v0

    .line 3028
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v14, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3029
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v2, v0

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v14, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3031
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long/2addr v2, v15

    add-long/2addr v2, v0

    :goto_1
    iget-wide v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    mul-long v6, v2, v15

    add-long v8, v6, v0

    mul-long/2addr v4, v15

    add-long v4, p2, v4

    sub-long/2addr v4, v6

    move-wide/from16 v21, v2

    add-long v2, v4, v0

    .line 3036
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v10, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    mul-double v0, v0, v23

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    iget-object v10, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v0, v0, v23

    invoke-virtual {v14, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3037
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-virtual {v14, v8, v9, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long v2, v21, v0

    goto :goto_1

    :cond_1
    move-wide v7, v0

    goto/16 :goto_4

    :cond_2
    move-wide v0, v7

    .line 3041
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x0

    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v14, v9, v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3042
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-wide v2, v0

    .line 3044
    :goto_2
    iget-wide v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long v6, v4, v0

    div-long/2addr v6, v15

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    mul-long v4, v2, v15

    add-long v7, v4, v0

    add-long v0, p2, v4

    add-long v9, p2, v7

    .line 3049
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v21

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    mul-double v21, v21, v23

    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v25

    mul-double v23, v23, v25

    move-wide/from16 v25, v2

    sub-double v2, v21, v23

    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3050
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {v14, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long v2, v25, v0

    const-wide/16 v9, 0x0

    goto :goto_2

    :cond_3
    sub-long v2, v4, v0

    add-long v4, p2, v4

    sub-long/2addr v4, v0

    .line 3053
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-long v6, p2, v0

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-object v10, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    mul-double/2addr v8, v0

    sub-double/2addr v4, v8

    invoke-virtual {v14, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3054
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long v2, p2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-object v10, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v21, v6

    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v6, v4

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3056
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long v7, v0, v4

    add-long v0, p2, v0

    sub-long/2addr v0, v4

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v9, v4

    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    move-wide/from16 v2, v21

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v9, v15

    invoke-virtual {v6, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v4, v9

    add-double/2addr v0, v4

    invoke-virtual {v14, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3057
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long v4, v0, v15

    add-long v0, p2, v0

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v9, v15

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v0, v8

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v9, v6

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    sub-double/2addr v0, v2

    invoke-virtual {v14, v4, v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3059
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v0, v6

    div-long/2addr v0, v15

    add-long/2addr v0, v15

    :goto_3
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    mul-long v4, v0, v15

    add-long v8, v4, v6

    mul-long/2addr v2, v15

    add-long v2, p2, v2

    sub-long/2addr v2, v4

    move-wide/from16 v21, v0

    add-long v0, v2, v6

    .line 3064
    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-object v10, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    mul-double v6, v6, v23

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    iget-object v10, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v6, v6, v23

    invoke-virtual {v14, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3065
    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v2, v6

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double/2addr v2, v0

    invoke-virtual {v14, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v7, 0x1

    add-long v0, v21, v7

    move-wide v6, v7

    goto :goto_3

    :cond_4
    move-wide v7, v6

    .line 3069
    :goto_4
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v15

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v14

    move-wide/from16 v19, v7

    move-wide v7, v9

    const-wide/16 v17, 0x0

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 3071
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 3072
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    .line 3074
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x2

    :goto_5
    move v10, v1

    .line 3077
    new-array v9, v10, [Ljava/util/concurrent/Future;

    .line 3078
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    int-to-long v7, v10

    div-long v17, v0, v7

    const/16 v19, 0x0

    move/from16 v0, v19

    :goto_6
    if-ge v0, v10, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v10, -0x1

    if-ne v0, v1, :cond_6

    .line 3081
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    goto :goto_7

    :cond_6
    add-long v1, v3, v17

    :goto_7
    move-wide v5, v1

    .line 3082
    new-instance v20, Lorg/jtransforms/fft/DoubleFFT_1D$23;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-wide/from16 v21, v7

    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D$23;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v21

    goto :goto_6

    :cond_7
    move-wide/from16 v21, v7

    const/4 v7, 0x0

    .line 3097
    :try_start_0
    invoke-static {v9}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3101
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 3099
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3104
    :goto_8
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v15

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v15, 0x0

    move-object v3, v14

    move-wide/from16 v17, v4

    move-wide v4, v15

    move-object v15, v7

    move-wide/from16 v7, v17

    move-object/from16 v16, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 3106
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v17, v0, v21

    move/from16 v0, v19

    :goto_9
    if-ge v0, v10, :cond_9

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v10, -0x1

    if-ne v0, v1, :cond_8

    .line 3109
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    goto :goto_a

    :cond_8
    add-long v1, v3, v17

    :goto_a
    move-wide v5, v1

    .line 3110
    new-instance v19, Lorg/jtransforms/fft/DoubleFFT_1D$24;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v20, v10

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_1D$24;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v16, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v20

    goto :goto_9

    .line 3123
    :cond_9
    :try_start_1
    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 3127
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 3125
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :cond_a
    move-wide/from16 v9, v17

    .line 3132
    :goto_b
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    cmp-long v2, v9, v0

    if-gez v2, :cond_b

    mul-long v0, v9, v15

    add-long v7, v0, v19

    .line 3135
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v21

    mul-double v4, v4, v21

    add-double/2addr v2, v4

    .line 3136
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v21

    mul-double v4, v4, v21

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v21

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    mul-double v21, v21, v23

    add-double v4, v4, v21

    invoke-virtual {v14, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3137
    invoke-virtual {v14, v7, v8, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v19

    goto :goto_b

    :cond_b
    mul-long v1, v0, v15

    .line 3140
    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v14

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    move-wide/from16 v9, v17

    .line 3142
    :goto_c
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v0, v9, v0

    if-gez v0, :cond_c

    mul-long v0, v9, v15

    add-long v7, v0, v19

    add-long v2, p2, v9

    .line 3145
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    mul-double/2addr v4, v0

    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v0, v6

    sub-double/2addr v4, v0

    invoke-virtual {v12, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v19

    goto :goto_c

    :cond_c
    :goto_d
    return-void
.end method

.method private bluestein_real_inverse([DI)V
    .locals 20

    move-object/from16 v8, p0

    .line 2876
    const-class v9, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    new-array v10, v0, [D

    .line 2877
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_1

    .line 2878
    aget-wide v2, p1, p2

    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v0, v11

    mul-double/2addr v2, v4

    aput-wide v2, v10, v11

    .line 2879
    aget-wide v2, p1, p2

    aget-wide v4, v0, v12

    mul-double/2addr v2, v4

    aput-wide v2, v10, v12

    move v0, v12

    .line 2881
    :goto_0
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    .line 2886
    aget-wide v6, p1, v4

    iget-object v13, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v13, v2

    mul-double/2addr v6, v14

    aget-wide v14, p1, v5

    aget-wide v16, v13, v3

    mul-double v14, v14, v16

    sub-double/2addr v6, v14

    aput-wide v6, v10, v2

    .line 2887
    aget-wide v6, p1, v4

    aget-wide v14, v13, v3

    mul-double/2addr v6, v14

    aget-wide v4, p1, v5

    aget-wide v14, v13, v2

    mul-double/2addr v4, v14

    add-double/2addr v6, v4

    aput-wide v6, v10, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 2890
    aget-wide v3, p1, v0

    iget-object v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v5, v2

    mul-double/2addr v3, v6

    aput-wide v3, v10, v2

    add-int/lit8 v3, v2, 0x1

    .line 2891
    aget-wide v6, p1, v0

    add-int/lit8 v0, v2, 0x1

    aget-wide v4, v5, v0

    mul-double/2addr v6, v4

    aput-wide v6, v10, v3

    .line 2893
    div-int/2addr v2, v1

    add-int/2addr v2, v12

    :goto_1
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int v0, p2, v0

    sub-int/2addr v0, v3

    add-int/lit8 v5, v0, 0x1

    .line 2898
    aget-wide v6, p1, v0

    iget-object v13, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v13, v3

    mul-double/2addr v6, v14

    aget-wide v14, p1, v5

    aget-wide v16, v13, v4

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    aput-wide v6, v10, v3

    .line 2899
    aget-wide v6, p1, v0

    aget-wide v14, v13, v4

    mul-double/2addr v6, v14

    aget-wide v14, p1, v5

    aget-wide v16, v13, v3

    mul-double v14, v14, v16

    sub-double/2addr v6, v14

    aput-wide v6, v10, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2903
    :cond_1
    aget-wide v2, p1, p2

    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v0, v11

    mul-double/2addr v2, v4

    aput-wide v2, v10, v11

    .line 2904
    aget-wide v2, p1, p2

    aget-wide v4, v0, v12

    mul-double/2addr v2, v4

    aput-wide v2, v10, v12

    move v0, v12

    .line 2906
    :goto_2
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v2, -0x1

    div-int/2addr v3, v1

    if-ge v0, v3, :cond_2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    .line 2911
    aget-wide v6, p1, v4

    iget-object v13, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v13, v2

    mul-double/2addr v6, v14

    aget-wide v14, p1, v5

    aget-wide v16, v13, v3

    mul-double v14, v14, v16

    sub-double/2addr v6, v14

    aput-wide v6, v10, v2

    .line 2912
    aget-wide v6, p1, v4

    aget-wide v14, v13, v3

    mul-double/2addr v6, v14

    aget-wide v4, p1, v5

    aget-wide v14, v13, v2

    mul-double/2addr v4, v14

    add-double/2addr v6, v4

    aput-wide v6, v10, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, -0x1

    add-int v3, p2, v2

    sub-int/2addr v3, v12

    .line 2915
    aget-wide v3, p1, v3

    iget-object v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v6, v2, -0x1

    aget-wide v6, v5, v6

    mul-double/2addr v3, v6

    add-int/lit8 v6, p2, 0x1

    aget-wide v13, p1, v6

    aget-wide v15, v5, v2

    mul-double/2addr v13, v15

    sub-double/2addr v3, v13

    aput-wide v3, v10, v0

    add-int v0, p2, v2

    sub-int/2addr v0, v12

    .line 2916
    aget-wide v3, p1, v0

    aget-wide v13, v5, v2

    mul-double/2addr v3, v13

    aget-wide v13, p1, v6

    add-int/lit8 v0, v2, -0x1

    aget-wide v15, v5, v0

    mul-double/2addr v13, v15

    add-double/2addr v3, v13

    aput-wide v3, v10, v2

    add-int/lit8 v0, v2, 0x1

    add-int v3, p2, v2

    sub-int/2addr v3, v12

    .line 2918
    aget-wide v3, p1, v3

    add-int/lit8 v7, v2, 0x1

    aget-wide v13, v5, v7

    mul-double/2addr v3, v13

    aget-wide v13, p1, v6

    add-int/lit8 v7, v2, 0x2

    aget-wide v15, v5, v7

    mul-double/2addr v13, v15

    add-double/2addr v3, v13

    aput-wide v3, v10, v0

    add-int/lit8 v0, v2, 0x2

    add-int v3, p2, v2

    sub-int/2addr v3, v12

    .line 2919
    aget-wide v3, p1, v3

    add-int/lit8 v7, v2, 0x2

    aget-wide v13, v5, v7

    mul-double/2addr v3, v13

    aget-wide v6, p1, v6

    add-int/lit8 v13, v2, 0x1

    aget-wide v13, v5, v13

    mul-double/2addr v6, v13

    sub-double/2addr v3, v6

    aput-wide v3, v10, v0

    sub-int/2addr v2, v12

    .line 2921
    div-int/2addr v2, v1

    add-int/2addr v2, v1

    :goto_3
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int v0, p2, v0

    sub-int/2addr v0, v3

    add-int/lit8 v5, v0, 0x1

    .line 2926
    aget-wide v6, p1, v0

    iget-object v13, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v13, v3

    mul-double/2addr v6, v14

    aget-wide v14, p1, v5

    aget-wide v16, v13, v4

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    aput-wide v6, v10, v3

    .line 2927
    aget-wide v6, p1, v0

    aget-wide v14, v13, v4

    mul-double/2addr v6, v14

    aget-wide v14, p1, v5

    aget-wide v16, v13, v3

    mul-double v14, v14, v16

    sub-double/2addr v6, v14

    aput-wide v6, v10, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2931
    :cond_3
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v0, 0x2

    iget-object v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v7, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v4, 0x0

    move-object v3, v10

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    .line 2933
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v12, :cond_9

    .line 2934
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v2, v2

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    const/4 v2, 0x4

    if-lt v0, v2, :cond_4

    .line 2936
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v3, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    move v12, v2

    goto :goto_4

    :cond_4
    move v12, v1

    .line 2939
    :goto_4
    new-array v13, v12, [Ljava/util/concurrent/Future;

    .line 2940
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v12

    move v2, v11

    :goto_5
    if-ge v2, v12, :cond_6

    mul-int v3, v2, v0

    add-int/lit8 v4, v12, -0x1

    if-ne v2, v4, :cond_5

    .line 2943
    iget v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_6

    :cond_5
    add-int v4, v3, v0

    .line 2944
    :goto_6
    new-instance v5, Lorg/jtransforms/fft/DoubleFFT_1D$21;

    invoke-direct {v5, v8, v3, v4, v10}, Lorg/jtransforms/fft/DoubleFFT_1D$21;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    .line 2959
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2963
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

    .line 2961
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v14, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2966
    :goto_7
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v0, 0x2

    iget-object v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v7, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v4, 0x0

    move-object v3, v10

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 2968
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v12

    :goto_8
    if-ge v11, v12, :cond_8

    mul-int v3, v11, v0

    add-int/lit8 v1, v12, -0x1

    if-ne v11, v1, :cond_7

    .line 2971
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_9

    :cond_7
    add-int v1, v3, v0

    :goto_9
    move v4, v1

    .line 2972
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_1D$22;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D$22;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;II[DI[D)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 2985
    :cond_8
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2989
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

    .line 2987
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_9
    move v0, v11

    .line 2994
    :goto_a
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v2, :cond_a

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 2997
    aget-wide v4, v10, v2

    neg-double v6, v4

    iget-object v9, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v9, v3

    mul-double/2addr v6, v12

    aget-wide v14, v10, v3

    aget-wide v16, v9, v2

    mul-double v18, v14, v16

    add-double v6, v6, v18

    mul-double v4, v4, v16

    mul-double/2addr v14, v12

    add-double/2addr v4, v14

    .line 2998
    aput-wide v4, v10, v2

    .line 2999
    aput-wide v6, v10, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    mul-int/2addr v2, v1

    .line 3002
    iget-object v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v7, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v4, 0x0

    move-object v3, v10

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 3004
    :goto_b
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v11, v0, :cond_b

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v11

    .line 3007
    iget-object v3, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v6, v10, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v1

    aget-wide v0, v10, v1

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_b
    :goto_c
    return-void
.end method

.method private bluestein_real_inverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 26

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    .line 3261
    const-class v15, Lorg/jtransforms/fft/DoubleFFT_1D;

    new-instance v10, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    const-wide/16 v16, 0x2

    mul-long v0, v0, v16

    invoke-direct {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 3262
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x1

    if-le v0, v1, :cond_5

    .line 3263
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 3265
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v18

    cmp-long v0, v2, v18

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v9, v1

    .line 3268
    new-array v3, v9, [Ljava/util/concurrent/Future;

    .line 3269
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    int-to-long v12, v9

    div-long v18, v0, v12

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_2

    int-to-long v1, v0

    mul-long v20, v1, v18

    add-int/lit8 v1, v9, -0x1

    if-ne v0, v1, :cond_1

    .line 3272
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    goto :goto_2

    :cond_1
    add-long v1, v20, v18

    :goto_2
    move-wide/from16 v22, v1

    .line 3273
    new-instance v24, Lorg/jtransforms/fft/DoubleFFT_1D$27;

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

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_1D$27;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

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

    .line 3288
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3292
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

    .line 3290
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3295
    :goto_3
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object/from16 v3, v21

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 3297
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    div-long v8, v0, v12

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v14, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v8

    add-int/lit8 v1, v14, -0x1

    if-ne v0, v1, :cond_3

    .line 3300
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    goto :goto_5

    :cond_3
    add-long v1, v3, v8

    :goto_5
    move-wide v5, v1

    .line 3301
    new-instance v12, Lorg/jtransforms/fft/DoubleFFT_1D$28;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D$28;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3316
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

    .line 3320
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

    .line 3318
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move-wide/from16 v14, p2

    move-object/from16 v12, v21

    goto/16 :goto_9

    :cond_5
    move-object/from16 v21, v10

    const-wide/16 v7, 0x0

    .line 3325
    :goto_7
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_6

    mul-long v0, v7, v16

    const-wide/16 v12, 0x1

    add-long v5, v0, v12

    move-wide/from16 v14, p2

    add-long v2, v14, v7

    move-object/from16 v10, p1

    .line 3329
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v12, v18, v22

    move-object/from16 v9, v21

    invoke-virtual {v9, v0, v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3330
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {v9, v5, v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    goto :goto_7

    :cond_6
    move-object/from16 v10, p1

    move-wide/from16 v14, p2

    move-object/from16 v9, v21

    .line 3333
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v9

    move-object v12, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v7, 0x0

    .line 3335
    :goto_8
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_7

    mul-long v0, v7, v16

    const-wide/16 v2, 0x1

    add-long v5, v0, v2

    .line 3338
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    mul-double v2, v2, v18

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v2, v2, v18

    .line 3339
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-virtual {v12, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v9, v18, v20

    invoke-virtual {v12, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3340
    invoke-virtual {v12, v5, v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    move-object/from16 v10, p1

    goto :goto_8

    .line 3344
    :cond_7
    :goto_9
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v1, v0, v16

    iget-object v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x0

    move-object v3, v12

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 3346
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    rem-long v0, v0, v16

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 3347
    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double/2addr v0, v5

    move-object/from16 v5, p1

    invoke-virtual {v5, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v14, v3

    .line 3348
    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v8, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-wide v13, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v13, v3

    invoke-virtual {v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    mul-double/2addr v8, v13

    sub-double/2addr v6, v8

    invoke-virtual {v5, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-wide v0, v3

    .line 3349
    :goto_a
    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v6, v6, v16

    cmp-long v2, v0, v6

    if-gez v2, :cond_a

    mul-long v6, v0, v16

    add-long v8, v6, v3

    move-wide/from16 v13, p2

    add-long v2, v13, v6

    .line 3352
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v18, v18, v20

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v22, v0

    sub-double v0, v18, v20

    invoke-virtual {v5, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v13, v8

    .line 3353
    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    mul-double v2, v2, v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-virtual {v5, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long v0, v22, v6

    move-wide v3, v6

    goto :goto_a

    :cond_8
    move-object/from16 v5, p1

    move-wide v13, v14

    const-wide/16 v6, 0x1

    .line 3356
    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    sub-double/2addr v0, v2

    invoke-virtual {v5, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v13, v6

    .line 3357
    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v8, v6

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    invoke-virtual {v5, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    .line 3358
    :goto_b
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v6, 0x1

    sub-long v8, v2, v6

    div-long v8, v8, v16

    cmp-long v4, v0, v8

    if-gez v4, :cond_9

    mul-long v2, v0, v16

    add-long v8, v2, v6

    add-long v6, v13, v2

    .line 3361
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    mul-double v18, v18, v20

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v22, v0

    sub-double v0, v18, v20

    invoke-virtual {v5, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v13, v8

    .line 3362
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    mul-double v6, v6, v18

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    add-double/2addr v6, v2

    invoke-virtual {v5, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long v0, v22, v6

    goto :goto_b

    :cond_9
    add-long v0, v13, v2

    sub-long/2addr v0, v6

    .line 3364
    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sub-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long/2addr v8, v6

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v2, v6

    iget-object v4, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    invoke-virtual {v5, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :cond_a
    return-void
.end method

.method private bluestein_real_inverse2([DI)V
    .locals 22

    move-object/from16 v8, p0

    .line 3152
    const-class v9, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v10, 0x2

    mul-int/2addr v0, v10

    new-array v11, v0, [D

    .line 3153
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-le v0, v13, :cond_5

    .line 3154
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v1, v1

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 3156
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_4Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    move v14, v1

    goto :goto_0

    :cond_0
    move v14, v10

    .line 3159
    :goto_0
    new-array v15, v14, [Ljava/util/concurrent/Future;

    .line 3160
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v14

    move v7, v12

    :goto_1
    if-ge v7, v14, :cond_2

    mul-int v3, v7, v0

    add-int/lit8 v1, v14, -0x1

    if-ne v7, v1, :cond_1

    .line 3163
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v1, v3, v0

    :goto_2
    move v4, v1

    .line 3164
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_1D$25;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v5, p2

    move-object v6, v11

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D$25;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v7, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 3179
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3183
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

    .line 3181
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3186
    :goto_3
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    .line 3188
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v14

    move v1, v12

    :goto_4
    if-ge v1, v14, :cond_4

    mul-int v2, v1, v0

    add-int/lit8 v3, v14, -0x1

    if-ne v1, v3, :cond_3

    .line 3191
    iget v3, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_5

    :cond_3
    add-int v3, v2, v0

    .line 3192
    :goto_5
    new-instance v4, Lorg/jtransforms/fft/DoubleFFT_1D$26;

    invoke-direct {v4, v8, v2, v3, v11}, Lorg/jtransforms/fft/DoubleFFT_1D$26;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3207
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

    .line 3211
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

    .line 3209
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_5
    move v0, v12

    .line 3216
    :goto_6
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    .line 3220
    aget-wide v4, p1, v3

    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v14, v6, v1

    mul-double/2addr v4, v14

    aput-wide v4, v11, v1

    .line 3221
    aget-wide v3, p1, v3

    aget-wide v5, v6, v2

    mul-double/2addr v3, v5

    aput-wide v3, v11, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3224
    :cond_6
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    move v0, v12

    .line 3226
    :goto_7
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 3229
    aget-wide v3, v11, v1

    neg-double v5, v3

    iget-object v7, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v14, v7, v2

    mul-double/2addr v5, v14

    aget-wide v16, v11, v2

    aget-wide v18, v7, v1

    mul-double v20, v16, v18

    add-double v5, v5, v20

    mul-double v3, v3, v18

    mul-double v16, v16, v14

    add-double v3, v3, v16

    .line 3230
    aput-wide v3, v11, v1

    .line 3231
    aput-wide v5, v11, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3235
    :cond_7
    :goto_8
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x0

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 3237
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    .line 3238
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v1, v12

    aget-wide v4, v11, v12

    mul-double/2addr v2, v4

    aget-wide v4, v1, v13

    aget-wide v6, v11, v13

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 3239
    aget-wide v3, v1, v0

    aget-wide v5, v11, v0

    mul-double/2addr v3, v5

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v1, v5

    add-int/2addr v0, v13

    aget-wide v0, v11, v0

    mul-double/2addr v5, v0

    sub-double/2addr v3, v5

    aput-wide v3, p1, v2

    .line 3240
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    if-ge v13, v0, :cond_a

    mul-int/lit8 v0, v13, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    .line 3243
    iget-object v3, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v6, v11, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v1

    aget-wide v14, v11, v1

    mul-double/2addr v6, v14

    sub-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int v2, p2, v1

    .line 3244
    aget-wide v4, v3, v1

    aget-wide v6, v11, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v0

    aget-wide v0, v11, v1

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 3247
    :cond_8
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v1, v12

    aget-wide v4, v11, v12

    mul-double/2addr v2, v4

    aget-wide v4, v1, v13

    aget-wide v6, v11, v13

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 3248
    aget-wide v3, v1, v0

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v11, v5

    mul-double/2addr v3, v5

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v1, v5

    aget-wide v0, v11, v0

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    move v0, v13

    .line 3249
    :goto_a
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v1, -0x1

    div-int/2addr v2, v10

    if-ge v0, v2, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    .line 3252
    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v1

    aget-wide v14, v11, v1

    mul-double/2addr v5, v14

    aget-wide v14, v4, v2

    aget-wide v16, v11, v2

    mul-double v14, v14, v16

    sub-double/2addr v5, v14

    aput-wide v5, p1, v3

    add-int v3, p2, v2

    .line 3253
    aget-wide v5, v4, v2

    aget-wide v14, v11, v1

    mul-double/2addr v5, v14

    aget-wide v14, v4, v1

    aget-wide v1, v11, v2

    mul-double/2addr v14, v1

    add-double/2addr v5, v14

    aput-wide v5, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    add-int v0, p2, v1

    sub-int/2addr v0, v13

    .line 3255
    iget-object v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v11, v5

    mul-double/2addr v3, v5

    aget-wide v5, v2, v1

    aget-wide v1, v11, v1

    mul-double/2addr v5, v1

    sub-double/2addr v3, v5

    aput-wide v3, p1, v0

    :cond_a
    return-void
.end method

.method private bluesteini()V
    .locals 14

    .line 1868
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v0

    .line 1869
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v0, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 1870
    aput-wide v6, v0, v8

    move v6, v1

    move v0, v8

    .line 1871
    :goto_0
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v7, :cond_1

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v10, v9, -0x1

    add-int/2addr v6, v10

    mul-int/lit8 v10, v7, 0x2

    if-lt v6, v10, :cond_0

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    :cond_0
    int-to-double v10, v6

    mul-double/2addr v10, v2

    .line 1877
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v12

    aput-wide v12, v7, v9

    .line 1878
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v9, v9, 0x1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v10

    aput-wide v10, v7, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1880
    :cond_1
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v2, v0

    div-double/2addr v4, v2

    .line 1881
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v2, v1

    mul-double/2addr v6, v4

    aput-wide v6, v0, v1

    .line 1882
    aget-wide v1, v2, v8

    mul-double/2addr v1, v4

    aput-wide v1, v0, v8

    const/4 v0, 0x2

    move v1, v0

    .line 1883
    :goto_1
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    .line 1884
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v3, v1

    mul-double/2addr v6, v4

    aput-wide v6, v2, v1

    add-int/lit8 v6, v1, 0x1

    .line 1885
    aget-wide v9, v3, v6

    mul-double/2addr v9, v4

    aput-wide v9, v2, v6

    .line 1886
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v7, v1

    aget-wide v9, v2, v1

    aput-wide v9, v2, v7

    mul-int/2addr v3, v0

    sub-int/2addr v3, v1

    add-int/2addr v3, v8

    .line 1887
    aget-wide v6, v2, v6

    aput-wide v6, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1889
    :cond_2
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    return-void
.end method

.method private bluesteinil()V
    .locals 16

    move-object/from16 v0, p0

    .line 1896
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v1

    .line 1897
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1898
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x1

    invoke-virtual {v1, v11, v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const/4 v1, 0x1

    move-wide v9, v5

    :goto_0
    int-to-long v13, v1

    .line 1899
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v2, v13, v11

    const-wide/16 v13, 0x2

    if-gez v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v15, v2, -0x1

    int-to-long v5, v15

    add-long/2addr v9, v5

    mul-long v5, v11, v13

    cmp-long v5, v9, v5

    if-ltz v5, :cond_0

    mul-long/2addr v11, v13

    sub-long/2addr v9, v11

    :cond_0
    long-to-double v5, v9

    mul-double/2addr v5, v3

    .line 1905
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    int-to-long v12, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1906
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-int/lit8 v2, v2, 0x1

    int-to-long v12, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    invoke-virtual {v11, v12, v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v11, 0x1

    goto :goto_0

    .line 1908
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    long-to-double v1, v1

    div-double/2addr v7, v1

    .line 1909
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    mul-double/2addr v5, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1910
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    mul-double/2addr v5, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const/4 v1, 0x2

    :goto_1
    int-to-long v2, v1

    .line 1911
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long/2addr v4, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 1912
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    mul-double/2addr v5, v7

    invoke-virtual {v4, v2, v3, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1913
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-int/lit8 v5, v1, 0x1

    int-to-long v5, v5

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk1l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-virtual {v4, v5, v6, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1914
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long/2addr v9, v13

    sub-long/2addr v9, v2

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v4, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1915
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long/2addr v9, v13

    sub-long/2addr v9, v2

    const-wide/16 v2, 0x1

    add-long/2addr v9, v2

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v4, v9, v10, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1917
    :cond_2
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nBluesteinl:J

    mul-long v3, v1, v13

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->bk2l:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x0

    invoke-static/range {v3 .. v11}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    return-void
.end method


# virtual methods
.method cfftf(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JI)V
    .locals 46

    move-object/from16 v13, p0

    move/from16 v11, p4

    .line 6717
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v2, 0x2

    mul-long v8, v0, v2

    .line 6721
    new-instance v12, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const-wide/16 v0, 0x4

    .line 6724
    iget-wide v4, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long v20, v4, v0

    const/16 v22, 0x0

    .line 6725
    filled-new-array/range {v22 .. v22}, [I

    move-result-object v23

    .line 6726
    iget-object v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v24, 0x1

    add-long v4, v20, v24

    invoke-virtual {v0, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    double-to-long v6, v0

    const-wide/16 v26, 0x0

    move-wide/from16 v28, v2

    move-wide/from16 v32, v8

    move-wide/from16 v16, v24

    move-wide/from16 v30, v26

    :goto_0
    add-long v0, v6, v24

    cmp-long v0, v28, v0

    if-gtz v0, :cond_a

    .line 6731
    iget-object v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v1, v28, v20

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    double-to-int v10, v0

    int-to-long v4, v10

    mul-long v34, v4, v16

    .line 6733
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

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

    .line 6771
    invoke-virtual/range {v0 .. v19}, Lorg/jtransforms/fft/DoubleFFT_1D;->passfg([IJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V

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

    .line 6773
    invoke-virtual/range {v0 .. v19}, Lorg/jtransforms/fft/DoubleFFT_1D;->passfg([IJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V

    .line 6775
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

    .line 6763
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V

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

    .line 6765
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V

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

    .line 6739
    invoke-virtual/range {v0 .. v13}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJI)V

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

    .line 6741
    invoke-virtual/range {v0 .. v13}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJI)V

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

    .line 6755
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V

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

    .line 6757
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V

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

    .line 6747
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V

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

    .line 6749
    invoke-virtual/range {v0 .. v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V

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

    .line 6786
    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    return-void
.end method

.method cfftf([DII)V
    .locals 27

    move-object/from16 v12, p0

    .line 6636
    iget v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v13, v0, 0x2

    .line 6639
    new-array v14, v13, [D

    const/4 v15, 0x4

    mul-int/lit8 v16, v0, 0x4

    const/4 v11, 0x0

    .line 6643
    filled-new-array {v11}, [I

    move-result-object v17

    .line 6644
    iget-object v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v1, v16, 0x1

    aget-wide v1, v0, v1

    double-to-int v10, v1

    const/4 v9, 0x2

    const/16 v18, 0x1

    move v8, v9

    move/from16 v19, v11

    move/from16 v20, v13

    move/from16 v4, v18

    :goto_0
    add-int/lit8 v0, v10, 0x1

    if-gt v8, v0, :cond_a

    .line 6649
    iget-object v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v1, v8, v16

    aget-wide v1, v0, v1

    double-to-int v7, v1

    mul-int v21, v7, v4

    .line 6651
    iget v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

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

    .line 6689
    invoke-virtual/range {v0 .. v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

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

    .line 6691
    invoke-virtual/range {v0 .. v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    .line 6693
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

    .line 6681
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

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

    .line 6683
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

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

    .line 6657
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

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

    .line 6659
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

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

    .line 6673
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

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

    .line 6675
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

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

    .line 6665
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

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

    .line 6667
    invoke-virtual/range {v0 .. v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

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

    .line 6704
    invoke-static {v14, v15, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final cffti()V
    .locals 32

    move-object/from16 v0, p0

    .line 1520
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

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

    .line 1543
    sget-object v7, Lorg/jtransforms/fft/DoubleFFT_1D;->factors:[I

    aget v6, v7, v6

    move v7, v6

    goto :goto_1

    :cond_1
    add-int/2addr v7, v11

    .line 1548
    :goto_1
    div-int v6, v1, v7

    mul-int v12, v7, v6

    sub-int v12, v1, v12

    if-eqz v12, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v8, 0x1

    .line 1554
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    int-to-double v13, v7

    aput-wide v13, v12, v8

    if-ne v7, v11, :cond_4

    if-eq v1, v2, :cond_4

    move v8, v11

    :goto_2
    if-gt v8, v1, :cond_3

    sub-int v12, v1, v8

    add-int/2addr v12, v11

    add-int/2addr v12, v4

    .line 1560
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v14, v12, 0x1

    aget-wide v15, v13, v12

    aput-wide v15, v13, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1562
    :cond_3
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v12, v4, 0x2

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    aput-wide v13, v8, v12

    :cond_4
    if-ne v6, v2, :cond_9

    .line 1567
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v8, v7

    aput-wide v8, v6, v4

    add-int/lit8 v8, v4, 0x1

    int-to-double v12, v1

    .line 1568
    aput-wide v12, v6, v8

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v7

    div-double/2addr v8, v6

    move v6, v2

    move v7, v6

    move v12, v7

    :goto_3
    if-gt v6, v1, :cond_8

    .line 1573
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v6, v6, 0x1

    add-int v14, v6, v4

    aget-wide v14, v13, v14

    double-to-int v13, v14

    mul-int v14, v7, v13

    .line 1576
    iget v15, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v15, v14

    add-int/2addr v15, v15

    add-int/2addr v15, v11

    add-int/lit8 v2, v13, -0x1

    const/4 v5, 0x1

    const/16 v17, 0x0

    :goto_4
    if-gt v5, v2, :cond_7

    .line 1581
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v18, v12, -0x1

    add-int v18, v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    aput-wide v19, v10, v18

    add-int v18, v12, v3

    const-wide/16 v21, 0x0

    .line 1582
    aput-wide v21, v10, v18

    add-int v10, v17, v7

    move/from16 v23, v12

    int-to-double v11, v10

    mul-double/2addr v11, v8

    move/from16 v24, v1

    const/4 v1, 0x4

    :goto_5
    if-gt v1, v15, :cond_5

    add-int/lit8 v23, v23, 0x2

    add-double v21, v21, v19

    mul-double v25, v21, v11

    add-int v27, v23, v3

    move/from16 v28, v2

    .line 1591
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v29, v27, -0x1

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v30

    aput-wide v30, v2, v29

    .line 1592
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v25

    aput-wide v25, v2, v27

    add-int/lit8 v1, v1, 0x2

    move/from16 v2, v28

    goto :goto_5

    :cond_5
    move/from16 v28, v2

    const/4 v1, 0x5

    if-le v13, v1, :cond_6

    add-int v1, v23, v3

    .line 1597
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v11, v18, -0x1

    add-int/lit8 v12, v1, -0x1

    aget-wide v19, v2, v12

    aput-wide v19, v2, v11

    .line 1598
    aget-wide v11, v2, v1

    aput-wide v11, v2, v18

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v10

    move/from16 v12, v23

    move/from16 v1, v24

    move/from16 v2, v28

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto :goto_4

    :cond_7
    move/from16 v23, v12

    move v7, v14

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    move/from16 v24, v1

    move v1, v6

    move/from16 v8, v24

    goto/16 :goto_1
.end method

.method cffti(II)V
    .locals 33

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

    .line 1455
    sget-object v7, Lorg/jtransforms/fft/DoubleFFT_1D;->factors:[I

    aget v6, v7, v6

    move v7, v6

    goto :goto_1

    :cond_1
    add-int/2addr v7, v12

    .line 1460
    :goto_1
    div-int v6, v9, v7

    mul-int v13, v7, v6

    sub-int v13, v9, v13

    if-eqz v13, :cond_2

    move v6, v10

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 1466
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v13, p2, v8

    add-int/2addr v13, v2

    add-int/2addr v13, v4

    int-to-double v14, v7

    aput-wide v14, v9, v13

    if-ne v7, v12, :cond_4

    if-eq v8, v2, :cond_4

    move v9, v12

    :goto_2
    if-gt v9, v8, :cond_3

    sub-int v13, v8, v9

    add-int/2addr v13, v12

    add-int/2addr v13, v4

    .line 1472
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v13, p2, v13

    add-int/lit8 v15, v13, 0x1

    aget-wide v16, v14, v13

    aput-wide v16, v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1474
    :cond_3
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v13, p2, 0x2

    add-int/2addr v13, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    aput-wide v14, v9, v13

    :cond_4
    if-ne v6, v2, :cond_9

    .line 1479
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v7, p2, v4

    int-to-double v9, v1

    aput-wide v9, v6, v7

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v4

    int-to-double v13, v8

    .line 1480
    aput-wide v13, v6, v7

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v9

    move v9, v2

    move v10, v9

    move v13, v10

    :goto_3
    if-gt v9, v8, :cond_8

    .line 1485
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v15, p2, v9

    add-int/2addr v15, v2

    add-int/2addr v15, v4

    move-wide/from16 v17, v6

    aget-wide v5, v14, v15

    double-to-int v5, v5

    mul-int v6, v10, v5

    .line 1488
    div-int v7, v1, v6

    add-int/2addr v7, v7

    add-int/2addr v7, v12

    add-int/lit8 v14, v5, -0x1

    move v15, v2

    const/16 v19, 0x0

    :goto_4
    if-gt v15, v14, :cond_7

    .line 1493
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v20, p2, v13

    add-int/lit8 v21, v20, -0x1

    add-int v21, v21, v3

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    aput-wide v22, v2, v21

    add-int v20, v20, v3

    const-wide/16 v24, 0x0

    .line 1494
    aput-wide v24, v2, v20

    add-int v2, v19, v10

    int-to-double v11, v2

    mul-double v11, v11, v17

    move/from16 v21, v13

    const/4 v1, 0x4

    :goto_5
    if-gt v1, v7, :cond_5

    add-int/lit8 v21, v21, 0x2

    add-double v24, v24, v22

    mul-double v26, v24, v11

    add-int v28, v21, v3

    move/from16 v29, v2

    .line 1503
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v28, p2, v28

    add-int/lit8 v30, v28, -0x1

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v31

    aput-wide v31, v2, v30

    .line 1504
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v26

    aput-wide v26, v2, v28

    add-int/lit8 v1, v1, 0x2

    move/from16 v2, v29

    goto :goto_5

    :cond_5
    move/from16 v29, v2

    const/4 v1, 0x5

    if-le v5, v1, :cond_6

    add-int/2addr v13, v3

    add-int v1, v21, v3

    .line 1509
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v11, p2, v13

    add-int/lit8 v12, v11, -0x1

    add-int v1, p2, v1

    add-int/lit8 v13, v1, -0x1

    aget-wide v22, v2, v13

    aput-wide v22, v2, v12

    .line 1510
    aget-wide v12, v2, v1

    aput-wide v12, v2, v11

    :cond_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v13, v21

    move/from16 v19, v29

    const/4 v2, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x2

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    move v10, v6

    move-wide/from16 v6, v17

    const/4 v2, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x2

    goto/16 :goto_3

    :cond_8
    return-void

    :cond_9
    move/from16 v1, p1

    move v9, v6

    goto/16 :goto_1
.end method

.method final cfftil()V
    .locals 52

    move-object/from16 v0, p0

    .line 1608
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

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

    .line 1631
    sget-object v17, Lorg/jtransforms/fft/DoubleFFT_1D;->factors:[I

    long-to-int v13, v13

    aget v13, v17, v13

    int-to-long v13, v13

    goto :goto_1

    :cond_1
    add-long v17, v17, v5

    move-wide/from16 v13, v17

    .line 1636
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

    .line 1642
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v19, v19, v5

    add-long v3, v19, v11

    move-wide/from16 v19, v7

    long-to-double v7, v13

    invoke-virtual {v9, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    cmp-long v3, v13, v5

    const-wide/16 v25, 0x1

    if-nez v3, :cond_4

    cmp-long v3, v1, v25

    if-eqz v3, :cond_4

    move-wide v3, v5

    :goto_2
    cmp-long v7, v3, v1

    if-gtz v7, :cond_3

    sub-long v7, v1, v3

    add-long/2addr v7, v5

    add-long/2addr v7, v11

    .line 1648
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v5, v7, v25

    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v9, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v25

    const-wide/16 v5, 0x2

    goto :goto_2

    .line 1650
    :cond_3
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x2

    add-long v6, v11, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {v3, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :cond_4
    cmp-long v3, v17, v25

    if-nez v3, :cond_9

    .line 1655
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v4, v4

    invoke-virtual {v3, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1656
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v4, v11, v25

    long-to-double v6, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1657
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v3

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v5, v3

    move-wide/from16 v3, v25

    move-wide v7, v3

    move-wide v9, v7

    :goto_3
    cmp-long v13, v3, v1

    if-gtz v13, :cond_8

    .line 1661
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v3, v3, v25

    move-wide/from16 v29, v1

    add-long v1, v3, v11

    invoke-virtual {v13, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    double-to-long v1, v1

    mul-long v13, v9, v1

    move-wide/from16 v17, v3

    .line 1664
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long/2addr v3, v13

    add-long/2addr v3, v3

    const-wide/16 v21, 0x2

    add-long v3, v3, v21

    sub-long v21, v1, v25

    move-wide/from16 v33, v15

    move-wide/from16 v31, v25

    :goto_4
    cmp-long v35, v31, v21

    if-gtz v35, :cond_7

    .line 1669
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sub-long v36, v7, v25

    move-wide/from16 v38, v11

    add-long v11, v36, v19

    move-wide/from16 v36, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v15, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1670
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v13, v7, v19

    move-wide/from16 v40, v7

    const-wide/16 v7, 0x0

    invoke-virtual {v11, v13, v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v33, v9

    long-to-double v7, v11

    mul-double/2addr v7, v5

    const-wide/16 v33, 0x0

    const-wide/16 v42, 0x4

    :goto_5
    cmp-long v44, v42, v3

    if-gtz v44, :cond_5

    const-wide/16 v27, 0x2

    add-long v40, v40, v27

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double v33, v33, v15

    mul-double v44, v33, v7

    move-wide/from16 v46, v3

    add-long v3, v40, v19

    .line 1679
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v48, v5

    const-wide/16 v25, 0x1

    sub-long v5, v3, v25

    move-wide/from16 v50, v7

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    invoke-virtual {v15, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1680
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    invoke-virtual {v5, v3, v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v42, v42, v27

    move-wide/from16 v3, v46

    move-wide/from16 v5, v48

    move-wide/from16 v7, v50

    goto :goto_5

    :cond_5
    move-wide/from16 v46, v3

    move-wide/from16 v48, v5

    const-wide/16 v27, 0x2

    const-wide/16 v3, 0x5

    cmp-long v3, v1, v3

    if-lez v3, :cond_6

    add-long v7, v40, v19

    .line 1685
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide v15, v1

    const-wide/16 v4, 0x1

    sub-long v1, v13, v4

    move-wide/from16 v25, v9

    sub-long v9, v7, v4

    invoke-virtual {v3, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v3, v1, v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1686
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto :goto_6

    :cond_6
    move-wide v15, v1

    move-wide/from16 v25, v9

    const-wide/16 v4, 0x1

    :goto_6
    add-long v31, v31, v4

    move-wide/from16 v33, v11

    move-wide v1, v15

    move-wide/from16 v9, v25

    move-wide/from16 v13, v36

    move-wide/from16 v11, v38

    move-wide/from16 v7, v40

    const-wide/16 v15, 0x0

    move-wide/from16 v25, v4

    move-wide/from16 v3, v46

    move-wide/from16 v5, v48

    goto/16 :goto_4

    :cond_7
    move-wide/from16 v40, v7

    move-wide/from16 v36, v13

    const-wide/16 v27, 0x2

    move-wide/from16 v3, v17

    move-wide/from16 v1, v29

    move-wide/from16 v9, v36

    goto/16 :goto_3

    :cond_8
    return-void

    :cond_9
    move-wide/from16 v29, v1

    const-wide/16 v27, 0x2

    move-wide/from16 v1, v17

    move-wide/from16 v7, v19

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    move-wide/from16 v19, v29

    const-wide/16 v9, 0x4

    goto/16 :goto_1
.end method

.method public complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    return-void
.end method

.method public complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 9

    .line 282
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 284
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v0

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v5, 0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    return-void

    .line 292
    :cond_2
    sget-object v0, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

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
    invoke-direct {p0, p1, p2, p3, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_complex(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JI)V

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->cfftf(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JI)V

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x2

    .line 294
    iget-wide v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long/2addr v0, v5

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v8}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    :goto_0
    return-void
.end method

.method public complexForward([D)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    return-void
.end method

.method public complexForward([DI)V
    .locals 9

    .line 245
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto :goto_0

    .line 248
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 251
    :cond_1
    sget-object v0, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

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
    invoke-direct {p0, p1, p2, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_0

    .line 253
    :cond_4
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v3, v0, 0x2

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v4, p1

    move v5, p2

    invoke-static/range {v3 .. v8}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    :goto_0
    return-void
.end method

.method public complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
    .locals 14

    move-object v0, p0

    move-object v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    .line 405
    iget-boolean v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 406
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v11, v1

    if-gez v1, :cond_0

    .line 407
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v1

    long-to-int v2, v11

    invoke-virtual {p0, v1, v2, v13}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    goto :goto_1

    .line 409
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The data array is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    return-void

    .line 415
    :cond_2
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

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
    invoke-direct {p0, p1, v11, v12, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_complex(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JI)V

    goto :goto_0

    .line 420
    :cond_4
    invoke-virtual {p0, p1, v11, v12, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->cfftf(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JI)V

    goto :goto_0

    :cond_5
    const-wide/16 v1, 0x2

    .line 417
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long/2addr v1, v3

    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    :goto_0
    if-eqz v13, :cond_6

    .line 427
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    long-to-double v5, v1

    div-double/2addr v3, v5

    const/4 v8, 0x1

    move-object v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    return-void
.end method

.method public complexInverse([DIZ)V
    .locals 6

    .line 364
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto :goto_1

    .line 367
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 370
    :cond_1
    sget-object v0, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

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
    invoke-direct {p0, p1, p2, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_0

    .line 375
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_0

    .line 372
    :cond_4
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v0, v2

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    :goto_0
    if-eqz p3, :cond_5

    .line 382
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, v0

    div-double/2addr v1, v3

    const/4 v5, 0x1

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public complexInverse([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    return-void
.end method

.method passf2(II[DI[DIII)V
    .locals 23

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

    .line 6805
    aget-wide v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    .line 6806
    aget-wide v9, p3, v5

    .line 6807
    aget-wide v11, p3, v6

    add-int/lit8 v6, v6, 0x1

    .line 6808
    aget-wide v5, p3, v6

    add-int v3, p6, v3

    add-int v13, v3, v2

    add-double v14, v7, v11

    .line 6812
    aput-wide v14, p5, v3

    add-int/lit8 v3, v3, 0x1

    add-double v14, v9, v5

    .line 6813
    aput-wide v14, p5, v3

    sub-double/2addr v7, v11

    .line 6814
    aput-wide v7, p5, v13

    add-int/lit8 v13, v13, 0x1

    sub-double/2addr v9, v5

    .line 6815
    aput-wide v9, p5, v13

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

    .line 6823
    aget-wide v9, p3, v7

    add-int/lit8 v7, v7, 0x1

    .line 6824
    aget-wide v11, p3, v7

    .line 6825
    aget-wide v13, p3, v8

    add-int/lit8 v8, v8, 0x1

    .line 6826
    aget-wide v7, p3, v8

    add-int v15, v5, p7

    move-object/from16 v4, p0

    .line 6829
    iget-object v0, v4, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v16, v0, v15

    move/from16 v1, p8

    move/from16 v18, v3

    int-to-double v3, v1

    add-int/lit8 v15, v15, 0x1

    .line 6830
    aget-wide v19, v0, v15

    mul-double v3, v3, v19

    sub-double v19, v9, v13

    sub-double v21, v11, v7

    add-int v0, p6, v5

    add-int/2addr v0, v6

    add-int v6, v0, v2

    add-double/2addr v9, v13

    .line 6837
    aput-wide v9, p5, v0

    add-int/lit8 v0, v0, 0x1

    add-double/2addr v11, v7

    .line 6838
    aput-wide v11, p5, v0

    mul-double v7, v16, v19

    mul-double v9, v3, v21

    sub-double/2addr v7, v9

    .line 6839
    aput-wide v7, p5, v6

    add-int/lit8 v6, v6, 0x1

    mul-double v16, v16, v21

    mul-double v3, v3, v19

    add-double v16, v16, v3

    .line 6840
    aput-wide v16, p5, v6

    add-int/lit8 v5, v5, 0x2

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v3, v18

    goto :goto_2

    :cond_1
    move/from16 v1, p8

    move/from16 v18, v3

    add-int/lit8 v3, v18, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_1

    :cond_2
    return-void
.end method

.method passf2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V
    .locals 36

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

    .line 6861
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    add-long/2addr v14, v10

    .line 6862
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    .line 6863
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    add-long/2addr v5, v10

    .line 6864
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    add-long v12, p9, v12

    add-long v10, v12, v3

    move-wide/from16 v24, v3

    add-double v3, v18, v20

    .line 6868
    invoke-virtual {v2, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v12, v3

    add-double v3, v14, v5

    .line 6869
    invoke-virtual {v2, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v3, v18, v20

    .line 6870
    invoke-virtual {v2, v10, v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v10, v3

    sub-double/2addr v14, v5

    .line 6871
    invoke-virtual {v2, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v3

    move-wide v10, v3

    move-wide/from16 v3, v24

    const-wide/16 v5, 0x2

    goto :goto_0

    :cond_0
    move-wide/from16 v24, v3

    move-wide v3, v10

    const-wide/16 v5, 0x0

    :goto_1
    cmp-long v7, v5, p3

    if-gez v7, :cond_2

    const-wide/16 v10, 0x0

    :goto_2
    sub-long v12, p1, v3

    cmp-long v7, v10, v12

    if-gez v7, :cond_1

    mul-long v12, v5, p1

    add-long v14, p6, v10

    const-wide/16 v16, 0x2

    mul-long v18, v12, v16

    add-long v14, v14, v18

    add-long v8, v14, p1

    .line 6879
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    add-long/2addr v14, v3

    .line 6880
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    .line 6881
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    add-long/2addr v8, v3

    .line 6882
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-long v3, v10, p11

    .line 6885
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v28

    move-wide/from16 v30, v5

    move-wide/from16 v5, p13

    long-to-double v1, v5

    .line 6886
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v26, 0x1

    add-long v3, v3, v26

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    mul-double/2addr v1, v3

    sub-double v3, v20, v22

    sub-double v32, v14, v7

    add-long v34, p9, v10

    add-long v12, v34, v12

    add-long v5, v12, v24

    move-wide/from16 v34, v10

    add-double v9, v20, v22

    move-object/from16 v11, p8

    .line 6893
    invoke-virtual {v11, v12, v13, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v26

    add-double/2addr v14, v7

    .line 6894
    invoke-virtual {v11, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v7, v28, v3

    mul-double v9, v1, v32

    sub-double/2addr v7, v9

    .line 6895
    invoke-virtual {v11, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v26

    mul-double v28, v28, v32

    mul-double/2addr v1, v3

    add-double v1, v28, v1

    .line 6896
    invoke-virtual {v11, v5, v6, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x2

    add-long v3, v34, v1

    move-object/from16 v1, p5

    move-object v2, v11

    move-wide/from16 v5, v30

    move-wide v10, v3

    move-wide/from16 v3, v26

    goto :goto_2

    :cond_1
    move-object v11, v2

    move-wide/from16 v26, v3

    move-wide/from16 v30, v5

    const-wide/16 v1, 0x2

    add-long v5, v30, v26

    move-object/from16 v1, p5

    move-object v2, v11

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method passf3(II[DI[DIII)V
    .locals 43

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p8

    add-int v3, p7, v0

    mul-int v4, v1, v0

    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v0, v10, :cond_0

    move v3, v9

    :goto_0
    if-gt v3, v1, :cond_2

    mul-int/lit8 v11, v3, 0x3

    sub-int/2addr v11, v10

    mul-int/2addr v11, v0

    add-int v11, p4, v11

    add-int v12, v11, v0

    sub-int v13, v11, v0

    .line 6923
    aget-wide v14, p3, v11

    add-int/2addr v11, v9

    .line 6924
    aget-wide v16, p3, v11

    .line 6925
    aget-wide v18, p3, v12

    add-int/2addr v12, v9

    .line 6926
    aget-wide v11, p3, v12

    .line 6927
    aget-wide v20, p3, v13

    add-int/2addr v13, v9

    .line 6928
    aget-wide v22, p3, v13

    add-double v24, v14, v18

    mul-double v26, v24, v7

    add-double v26, v20, v26

    add-double v28, v16, v11

    mul-double v30, v28, v7

    add-double v30, v22, v30

    int-to-double v7, v2

    mul-double/2addr v7, v5

    sub-double v14, v14, v18

    mul-double/2addr v14, v7

    sub-double v16, v16, v11

    mul-double v7, v7, v16

    add-int/lit8 v11, v3, -0x1

    mul-int/2addr v11, v0

    add-int v11, p6, v11

    add-int v12, v11, v4

    add-int v13, v12, v4

    add-double v20, v20, v24

    .line 6940
    aput-wide v20, p5, v11

    add-int/2addr v11, v9

    add-double v22, v22, v28

    .line 6941
    aput-wide v22, p5, v11

    sub-double v16, v26, v7

    .line 6942
    aput-wide v16, p5, v12

    add-int/2addr v12, v9

    add-double v16, v30, v14

    .line 6943
    aput-wide v16, p5, v12

    add-double v26, v26, v7

    .line 6944
    aput-wide v26, p5, v13

    add-int/2addr v13, v9

    sub-double v30, v30, v14

    .line 6945
    aput-wide v30, p5, v13

    add-int/lit8 v3, v3, 0x1

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_1
    if-gt v7, v1, :cond_2

    mul-int/lit8 v8, v7, 0x3

    sub-int/2addr v8, v10

    mul-int/2addr v8, v0

    add-int v8, p4, v8

    add-int/lit8 v11, v7, -0x1

    mul-int/2addr v11, v0

    add-int v11, p6, v11

    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v13, v0, -0x1

    if-ge v12, v13, :cond_1

    add-int v13, v12, v8

    add-int v14, v13, v0

    sub-int v15, v13, v0

    .line 6955
    aget-wide v16, p3, v13

    add-int/2addr v13, v9

    .line 6956
    aget-wide v18, p3, v13

    .line 6957
    aget-wide v20, p3, v14

    add-int/2addr v14, v9

    .line 6958
    aget-wide v13, p3, v14

    .line 6959
    aget-wide v22, p3, v15

    add-int/2addr v15, v9

    .line 6960
    aget-wide v24, p3, v15

    add-double v26, v16, v20

    const-wide/high16 v28, -0x4020000000000000L    # -0.5

    mul-double v30, v26, v28

    add-double v30, v22, v30

    add-double v32, v18, v13

    mul-double v34, v32, v28

    add-double v34, v24, v34

    move/from16 v36, v11

    int-to-double v10, v2

    mul-double v37, v10, v5

    sub-double v16, v16, v20

    mul-double v16, v16, v37

    sub-double v18, v18, v13

    mul-double v37, v37, v18

    sub-double v13, v30, v37

    add-double v30, v30, v37

    add-double v18, v34, v16

    sub-double v34, v34, v16

    add-int v16, v12, p7

    add-int v17, v12, v3

    move-object/from16 v5, p0

    .line 6975
    iget-object v6, v5, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v37, v6, v16

    add-int/lit8 v16, v16, 0x1

    .line 6976
    aget-wide v39, v6, v16

    mul-double v39, v39, v10

    .line 6977
    aget-wide v41, v6, v17

    add-int/lit8 v17, v17, 0x1

    .line 6978
    aget-wide v16, v6, v17

    mul-double v10, v10, v16

    add-int v6, v12, v36

    add-int v16, v6, v4

    add-int v17, v16, v4

    add-double v22, v22, v26

    .line 6983
    aput-wide v22, p5, v6

    add-int/2addr v6, v9

    add-double v24, v24, v32

    .line 6984
    aput-wide v24, p5, v6

    mul-double v22, v37, v13

    mul-double v24, v39, v18

    sub-double v22, v22, v24

    .line 6985
    aput-wide v22, p5, v16

    add-int/lit8 v16, v16, 0x1

    mul-double v37, v37, v18

    mul-double v39, v39, v13

    add-double v37, v37, v39

    .line 6986
    aput-wide v37, p5, v16

    mul-double v13, v41, v30

    mul-double v18, v10, v34

    sub-double v13, v13, v18

    .line 6987
    aput-wide v13, p5, v17

    add-int/lit8 v17, v17, 0x1

    mul-double v41, v41, v34

    mul-double v10, v10, v30

    add-double v41, v41, v10

    .line 6988
    aput-wide v41, p5, v17

    add-int/lit8 v12, v12, 0x2

    move/from16 v11, v36

    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    const/4 v10, 0x2

    goto/16 :goto_2

    :cond_1
    const-wide/high16 v28, -0x4020000000000000L    # -0.5

    move-object/from16 v5, p0

    add-int/lit8 v7, v7, 0x1

    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    const/4 v10, 0x2

    goto/16 :goto_1

    :cond_2
    move-object/from16 v5, p0

    return-void
.end method

.method passf3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move-wide/from16 v3, p13

    add-long v5, p11, p1

    mul-long v7, p3, p1

    const-wide/16 v9, 0x2

    cmp-long v11, p1, v9

    const-wide/16 v14, 0x3

    const-wide/high16 v16, -0x4020000000000000L    # -0.5

    const-wide/16 v18, 0x1

    if-nez v11, :cond_0

    move-wide/from16 v5, v18

    :goto_0
    cmp-long v11, v5, p3

    if-gtz v11, :cond_2

    mul-long v20, v5, v14

    sub-long v20, v20, v9

    mul-long v20, v20, p1

    add-long v9, p6, v20

    add-long v14, v9, p1

    sub-long v12, v9, p1

    .line 7015
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v24

    add-long v9, v9, v18

    .line 7016
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 7017
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v26

    add-long v14, v14, v18

    .line 7018
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    .line 7019
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v28

    move-wide/from16 v30, v7

    add-long v7, v12, v18

    .line 7020
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-double v32, v24, v26

    mul-double v34, v32, v16

    add-double v28, v28, v34

    add-double v34, v9, v14

    mul-double v36, v34, v16

    add-double v36, v7, v36

    move-wide/from16 p11, v7

    long-to-double v7, v3

    const-wide v22, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v7, v7, v22

    sub-double v24, v24, v26

    mul-double v24, v24, v7

    sub-double/2addr v9, v14

    mul-double/2addr v7, v9

    sub-long v9, v5, v18

    mul-long v9, v9, p1

    add-long v9, p9, v9

    add-long v14, v9, v30

    add-long v3, v14, v30

    .line 7032
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    add-double v11, v11, v32

    invoke-virtual {v2, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v18

    move-wide/from16 v11, p11

    add-double v11, v11, v34

    .line 7033
    invoke-virtual {v2, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v9, v28, v7

    .line 7034
    invoke-virtual {v2, v14, v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v18

    add-double v9, v36, v24

    .line 7035
    invoke-virtual {v2, v14, v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v7, v28, v7

    .line 7036
    invoke-virtual {v2, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v18

    sub-double v7, v36, v24

    .line 7037
    invoke-virtual {v2, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v18

    move-wide/from16 v3, p13

    move-wide/from16 v7, v30

    const-wide/16 v9, 0x2

    const-wide/16 v14, 0x3

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v30, v7

    move-wide/from16 v3, v18

    :goto_1
    cmp-long v7, v3, p3

    if-gtz v7, :cond_2

    const-wide/16 v7, 0x3

    mul-long v14, v3, v7

    const-wide/16 v9, 0x2

    sub-long/2addr v14, v9

    mul-long v14, v14, p1

    add-long v9, p6, v14

    sub-long v11, v3, v18

    mul-long v11, v11, p1

    add-long v11, p9, v11

    const-wide/16 v13, 0x0

    :goto_2
    sub-long v20, p1, v18

    cmp-long v15, v13, v20

    if-gez v15, :cond_1

    add-long v7, v13, v9

    move-wide/from16 v24, v9

    add-long v9, v7, p1

    move-wide/from16 v26, v3

    sub-long v3, v7, p1

    .line 7047
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v28

    add-long v7, v7, v18

    .line 7048
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 7049
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v32

    add-long v9, v9, v18

    .line 7050
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 7051
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v34

    add-long v3, v3, v18

    .line 7052
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    add-double v36, v28, v32

    mul-double v38, v36, v16

    add-double v38, v34, v38

    add-double v40, v7, v9

    mul-double v42, v40, v16

    add-double v42, v3, v42

    move-wide/from16 v44, v3

    move-wide/from16 v3, p13

    long-to-double v1, v3

    const-wide v22, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v46, v1, v22

    sub-double v28, v28, v32

    mul-double v28, v28, v46

    sub-double/2addr v7, v9

    mul-double v46, v46, v7

    sub-double v7, v38, v46

    add-double v38, v38, v46

    add-double v9, v42, v28

    sub-double v42, v42, v28

    add-long v3, v13, p11

    move-wide/from16 v28, v9

    add-long v9, v13, v5

    .line 7067
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v32

    .line 7068
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v3, v3, v18

    invoke-virtual {v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    mul-double/2addr v3, v1

    .line 7069
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v46

    .line 7070
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v9, v9, v18

    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v1, v9

    add-long v9, v13, v11

    move-wide/from16 v48, v5

    add-long v5, v9, v30

    move-wide/from16 v50, v11

    add-long v11, v5, v30

    move-wide/from16 v52, v13

    add-double v13, v34, v36

    move-object/from16 v15, p8

    .line 7075
    invoke-virtual {v15, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v18

    add-double v13, v44, v40

    .line 7076
    invoke-virtual {v15, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v9, v32, v7

    mul-double v13, v3, v28

    sub-double/2addr v9, v13

    .line 7077
    invoke-virtual {v15, v5, v6, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v18

    mul-double v32, v32, v28

    mul-double/2addr v3, v7

    add-double v3, v32, v3

    .line 7078
    invoke-virtual {v15, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v3, v46, v38

    mul-double v5, v1, v42

    sub-double/2addr v3, v5

    .line 7079
    invoke-virtual {v15, v11, v12, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v18

    mul-double v46, v46, v42

    mul-double v1, v1, v38

    add-double v1, v46, v1

    .line 7080
    invoke-virtual {v15, v11, v12, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x2

    add-long v13, v52, v1

    move-object/from16 v1, p5

    move-object v2, v15

    move-wide/from16 v9, v24

    move-wide/from16 v3, v26

    move-wide/from16 v5, v48

    move-wide/from16 v11, v50

    const-wide/16 v7, 0x3

    goto/16 :goto_2

    :cond_1
    move-object v15, v2

    move-wide/from16 v26, v3

    move-wide/from16 v48, v5

    const-wide/16 v1, 0x2

    const-wide v22, 0x3febb67ae8584cabL    # 0.8660254037844387

    add-long v3, v26, v18

    move-object/from16 v1, p5

    move-object v2, v15

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method passf4(II[DI[DIII)V
    .locals 44

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

    .line 7107
    aget-wide v11, p3, v4

    .line 7108
    aget-wide v13, p3, v6

    add-int/lit8 v4, v8, -0x1

    .line 7109
    aget-wide v15, p3, v4

    .line 7110
    aget-wide v17, p3, v8

    add-int/lit8 v4, v9, -0x1

    .line 7111
    aget-wide v19, p3, v4

    .line 7112
    aget-wide v8, p3, v9

    add-int/lit8 v4, v10, -0x1

    .line 7113
    aget-wide v21, p3, v4

    .line 7114
    aget-wide v23, p3, v10

    sub-double v25, v13, v8

    add-double/2addr v13, v8

    sub-double v8, v23, v17

    add-double v17, v17, v23

    sub-double v23, v11, v19

    add-double v11, v11, v19

    sub-double v19, v15, v21

    add-double v15, v15, v21

    add-int v3, p6, v3

    add-int v4, v3, v5

    add-int v6, v4, v5

    add-int v10, v6, v5

    add-double v21, v11, v15

    .line 7129
    aput-wide v21, p5, v3

    add-int/lit8 v3, v3, 0x1

    add-double v21, v13, v17

    .line 7130
    aput-wide v21, p5, v3

    int-to-double v0, v2

    mul-double/2addr v8, v0

    add-double v21, v23, v8

    .line 7131
    aput-wide v21, p5, v4

    add-int/lit8 v4, v4, 0x1

    mul-double v0, v0, v19

    add-double v19, v25, v0

    .line 7132
    aput-wide v19, p5, v4

    sub-double/2addr v11, v15

    .line 7133
    aput-wide v11, p5, v6

    add-int/lit8 v6, v6, 0x1

    sub-double v13, v13, v17

    .line 7134
    aput-wide v13, p5, v6

    sub-double v23, v23, v8

    .line 7135
    aput-wide v23, p5, v10

    add-int/lit8 v10, v10, 0x1

    sub-double v25, v25, v0

    .line 7136
    aput-wide v25, p5, v10

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    mul-int v6, v1, p1

    add-int/lit8 v8, p4, 0x1

    mul-int/lit8 v9, v6, 0x4

    add-int/2addr v8, v9

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v10, p1, -0x1

    if-ge v9, v10, :cond_1

    add-int v10, v9, v8

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v13, v12, p1

    add-int/lit8 v14, v10, -0x1

    .line 7147
    aget-wide v14, p3, v14

    .line 7148
    aget-wide v16, p3, v10

    add-int/lit8 v10, v11, -0x1

    .line 7149
    aget-wide v18, p3, v10

    .line 7150
    aget-wide v10, p3, v11

    add-int/lit8 v20, v12, -0x1

    .line 7151
    aget-wide v20, p3, v20

    .line 7152
    aget-wide v22, p3, v12

    add-int/lit8 v12, v13, -0x1

    .line 7153
    aget-wide v24, p3, v12

    .line 7154
    aget-wide v12, p3, v13

    sub-double v26, v16, v22

    add-double v16, v16, v22

    add-double v22, v10, v12

    sub-double/2addr v12, v10

    sub-double v10, v14, v20

    add-double v14, v14, v20

    sub-double v20, v18, v24

    add-double v18, v18, v24

    sub-double v24, v14, v18

    sub-double v28, v16, v22

    move/from16 v30, v8

    int-to-double v7, v2

    mul-double/2addr v12, v7

    add-double v31, v10, v12

    sub-double/2addr v10, v12

    mul-double v20, v20, v7

    add-double v12, v26, v20

    sub-double v26, v26, v20

    add-int v20, v9, p7

    add-int v21, v9, v3

    add-int v33, v9, v4

    move-object/from16 v0, p0

    .line 7174
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v34, v2, v20

    add-int/lit8 v20, v20, 0x1

    .line 7175
    aget-wide v36, v2, v20

    mul-double v36, v36, v7

    .line 7176
    aget-wide v38, v2, v21

    add-int/lit8 v21, v21, 0x1

    .line 7177
    aget-wide v20, v2, v21

    mul-double v20, v20, v7

    .line 7178
    aget-wide v40, v2, v33

    add-int/lit8 v33, v33, 0x1

    .line 7179
    aget-wide v42, v2, v33

    mul-double v7, v7, v42

    add-int v2, p6, v9

    add-int/2addr v2, v6

    add-int v33, v2, v5

    add-int v42, v33, v5

    add-int v43, v42, v5

    add-double v14, v14, v18

    .line 7185
    aput-wide v14, p5, v2

    add-int/lit8 v2, v2, 0x1

    add-double v16, v16, v22

    .line 7186
    aput-wide v16, p5, v2

    mul-double v14, v34, v31

    mul-double v16, v36, v12

    sub-double v14, v14, v16

    .line 7187
    aput-wide v14, p5, v33

    add-int/lit8 v33, v33, 0x1

    mul-double v34, v34, v12

    mul-double v36, v36, v31

    add-double v34, v34, v36

    .line 7188
    aput-wide v34, p5, v33

    mul-double v12, v38, v24

    mul-double v14, v20, v28

    sub-double/2addr v12, v14

    .line 7189
    aput-wide v12, p5, v42

    add-int/lit8 v42, v42, 0x1

    mul-double v38, v38, v28

    mul-double v20, v20, v24

    add-double v38, v38, v20

    .line 7190
    aput-wide v38, p5, v42

    mul-double v12, v40, v10

    mul-double v14, v7, v26

    sub-double/2addr v12, v14

    .line 7191
    aput-wide v12, p5, v43

    add-int/lit8 v43, v43, 0x1

    mul-double v40, v40, v26

    mul-double/2addr v7, v10

    add-double v40, v40, v7

    .line 7192
    aput-wide v40, p5, v43

    add-int/lit8 v9, v9, 0x2

    move/from16 v0, p2

    move/from16 v2, p8

    move/from16 v8, v30

    goto/16 :goto_2

    :cond_1
    move-object/from16 v0, p0

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p2

    move/from16 v2, p8

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    return-void
.end method

.method passf4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJI)V
    .locals 65

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

    .line 7219
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 7220
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    move-wide/from16 p11, v4

    sub-long v4, v13, v17

    .line 7221
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    .line 7222
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    move-wide/from16 v23, v15

    sub-long v14, v2, v17

    .line 7223
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    .line 7224
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    move-wide/from16 v25, v4

    sub-long v4, v8, v17

    .line 7225
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    .line 7226
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    sub-double v27, v10, v2

    add-double/2addr v10, v2

    sub-double v2, v8, v12

    add-double/2addr v12, v8

    sub-double v8, v6, v14

    add-double/2addr v6, v14

    sub-double v14, v25, v4

    add-double v4, v25, v4

    move-wide/from16 v25, p11

    add-long v0, p9, v25

    move-wide/from16 p11, v14

    add-long v14, v0, v21

    move-wide/from16 v25, v8

    add-long v8, v14, v21

    move-wide/from16 v29, v14

    add-long v14, v8, v21

    move-wide/from16 v31, v14

    add-double v14, v6, v4

    move-wide/from16 v33, v8

    move-object/from16 v8, p8

    .line 7241
    invoke-virtual {v8, v0, v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v17

    add-double v14, v10, v12

    .line 7242
    invoke-virtual {v8, v0, v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move/from16 v0, p13

    int-to-double v14, v0

    mul-double/2addr v2, v14

    add-double v0, v25, v2

    move-wide/from16 v35, v2

    move-wide/from16 v2, v29

    .line 7243
    invoke-virtual {v8, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v2, v17

    move-wide/from16 v2, p11

    mul-double/2addr v14, v2

    add-double v2, v27, v14

    .line 7244
    invoke-virtual {v8, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v6, v4

    move-wide/from16 v0, v33

    .line 7245
    invoke-virtual {v8, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v17

    sub-double/2addr v10, v12

    .line 7246
    invoke-virtual {v8, v0, v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v0, v25, v35

    move-wide/from16 v2, v31

    .line 7247
    invoke-virtual {v8, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v2, v17

    sub-double v2, v27, v14

    .line 7248
    invoke-virtual {v8, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v15, v23, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v3, p13

    move-object v2, v8

    move-wide/from16 v8, v21

    const-wide/16 v13, 0x4

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v21, v8

    move-object v8, v2

    const-wide/16 v0, 0x0

    :goto_1
    cmp-long v2, v0, p3

    if-gez v2, :cond_2

    mul-long v2, v0, p1

    add-long v12, p6, v17

    const-wide/16 v19, 0x4

    mul-long v23, v2, v19

    add-long v12, v12, v23

    const-wide/16 v23, 0x0

    :goto_2
    sub-long v25, p1, v17

    cmp-long v9, v23, v25

    if-gez v9, :cond_1

    add-long v10, v23, v12

    move-wide/from16 v27, v12

    add-long v12, v10, p1

    add-long v14, v12, p1

    move-wide/from16 v31, v0

    add-long v0, v14, p1

    sub-long v8, v10, v17

    move-wide/from16 v33, v2

    move-object/from16 v2, p5

    .line 7259
    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    .line 7260
    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    move-wide/from16 v35, v6

    sub-long v6, v12, v17

    .line 7261
    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 7262
    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    move-wide/from16 v37, v4

    sub-long v3, v14, v17

    .line 7263
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    .line 7264
    invoke-virtual {v2, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    move-wide/from16 v39, v6

    sub-long v5, v0, v17

    .line 7265
    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 7266
    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    sub-double v41, v10, v14

    add-double/2addr v10, v14

    add-double v14, v12, v0

    sub-double/2addr v0, v12

    sub-double v12, v8, v3

    add-double/2addr v8, v3

    sub-double v3, v39, v5

    add-double v6, v39, v5

    sub-double v39, v8, v6

    sub-double v43, v10, v14

    move/from16 v5, p13

    move-wide/from16 v45, v10

    int-to-double v10, v5

    mul-double/2addr v0, v10

    add-double v47, v12, v0

    sub-double/2addr v12, v0

    mul-double/2addr v3, v10

    add-double v0, v41, v3

    sub-double v41, v41, v3

    add-long v3, v23, p11

    move-wide/from16 v49, v12

    add-long v12, v23, v37

    move-wide/from16 v51, v0

    add-long v0, v23, v35

    move-object/from16 v2, p0

    .line 7286
    iget-object v5, v2, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v53

    .line 7287
    iget-object v5, v2, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v3, v3, v17

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    mul-double/2addr v3, v10

    .line 7288
    iget-object v5, v2, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v55

    .line 7289
    iget-object v5, v2, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v12, v12, v17

    invoke-virtual {v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    mul-double/2addr v12, v10

    .line 7290
    iget-object v5, v2, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v57

    .line 7291
    iget-object v5, v2, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v0, v0, v17

    invoke-virtual {v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    mul-double/2addr v10, v0

    add-long v0, p9, v23

    add-long v0, v0, v33

    move-wide/from16 v59, v10

    add-long v10, v0, v21

    move-wide/from16 v61, v12

    add-long v12, v10, v21

    move-wide/from16 v63, v10

    add-long v10, v12, v21

    add-double/2addr v8, v6

    move-object/from16 v5, p8

    .line 7297
    invoke-virtual {v5, v0, v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v17

    add-double v6, v45, v14

    .line 7298
    invoke-virtual {v5, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v0, v53, v47

    mul-double v6, v3, v51

    sub-double/2addr v0, v6

    move-wide/from16 v6, v63

    .line 7299
    invoke-virtual {v5, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v6, v17

    mul-double v53, v53, v51

    mul-double v3, v3, v47

    add-double v3, v53, v3

    .line 7300
    invoke-virtual {v5, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v0, v55, v39

    mul-double v3, v61, v43

    sub-double/2addr v0, v3

    .line 7301
    invoke-virtual {v5, v12, v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v17

    mul-double v55, v55, v43

    mul-double v0, v61, v39

    add-double v0, v55, v0

    .line 7302
    invoke-virtual {v5, v12, v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v12, v57, v49

    mul-double v0, v59, v41

    sub-double/2addr v12, v0

    .line 7303
    invoke-virtual {v5, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v17

    mul-double v57, v57, v41

    mul-double v0, v59, v49

    add-double v0, v57, v0

    .line 7304
    invoke-virtual {v5, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v23, v23, v0

    move-wide v10, v0

    move-object v8, v5

    move-wide/from16 v12, v27

    move-wide/from16 v0, v31

    move-wide/from16 v2, v33

    move-wide/from16 v6, v35

    move-wide/from16 v4, v37

    goto/16 :goto_2

    :cond_1
    move-object/from16 v2, p0

    move-wide/from16 v31, v0

    move-wide/from16 v37, v4

    move-wide/from16 v35, v6

    move-object v5, v8

    move-wide v0, v10

    add-long v3, v31, v17

    move-wide v0, v3

    move-wide/from16 v4, v37

    goto/16 :goto_1

    :cond_2
    move-object/from16 v2, p0

    return-void
.end method

.method passf5(II[DI[DIII)V
    .locals 70

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p8

    add-int v3, p7, v0

    add-int v4, v3, v0

    add-int v5, v4, v0

    mul-int v6, v1, v0

    const/4 v7, 0x2

    const-wide v8, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v12, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const/16 v16, 0x1

    if-ne v0, v7, :cond_0

    move/from16 v3, v16

    :goto_0
    if-gt v3, v1, :cond_2

    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, -0x4

    mul-int/2addr v4, v0

    add-int v4, p4, v4

    add-int/lit8 v5, v4, 0x1

    add-int v7, v5, v0

    sub-int v17, v5, v0

    add-int v18, v7, v0

    add-int v19, v18, v0

    .line 7337
    aget-wide v20, p3, v4

    .line 7338
    aget-wide v4, p3, v5

    add-int/lit8 v22, v7, -0x1

    .line 7339
    aget-wide v22, p3, v22

    .line 7340
    aget-wide v24, p3, v7

    add-int/lit8 v7, v17, -0x1

    .line 7341
    aget-wide v26, p3, v7

    .line 7342
    aget-wide v28, p3, v17

    add-int/lit8 v7, v18, -0x1

    .line 7343
    aget-wide v30, p3, v7

    .line 7344
    aget-wide v17, p3, v18

    add-int/lit8 v7, v19, -0x1

    .line 7345
    aget-wide v32, p3, v7

    .line 7346
    aget-wide v34, p3, v19

    sub-double v36, v4, v34

    add-double v4, v4, v34

    sub-double v34, v24, v17

    add-double v24, v24, v17

    sub-double v17, v20, v32

    add-double v20, v20, v32

    sub-double v32, v22, v30

    add-double v22, v22, v30

    mul-double v30, v20, v14

    add-double v30, v26, v30

    mul-double v38, v22, v12

    add-double v30, v30, v38

    mul-double v38, v4, v14

    add-double v38, v28, v38

    mul-double v40, v24, v12

    add-double v38, v38, v40

    mul-double v40, v20, v12

    add-double v40, v26, v40

    mul-double v42, v22, v14

    add-double v40, v40, v42

    mul-double v42, v4, v12

    add-double v42, v28, v42

    mul-double v44, v24, v14

    add-double v42, v42, v44

    int-to-double v12, v2

    mul-double v46, v17, v10

    mul-double v48, v32, v8

    add-double v46, v46, v48

    mul-double v46, v46, v12

    mul-double v48, v36, v10

    mul-double v50, v34, v8

    add-double v48, v48, v50

    mul-double v48, v48, v12

    mul-double v17, v17, v8

    mul-double v32, v32, v10

    sub-double v17, v17, v32

    mul-double v17, v17, v12

    mul-double v36, v36, v8

    mul-double v34, v34, v10

    sub-double v36, v36, v34

    mul-double v12, v12, v36

    add-int/lit8 v7, v3, -0x1

    mul-int/2addr v7, v0

    add-int v7, p6, v7

    add-int v19, v7, v6

    add-int v32, v19, v6

    add-int v33, v32, v6

    add-int v34, v33, v6

    add-double v26, v26, v20

    add-double v26, v26, v22

    .line 7370
    aput-wide v26, p5, v7

    add-int/lit8 v7, v7, 0x1

    add-double v28, v28, v4

    add-double v28, v28, v24

    .line 7371
    aput-wide v28, p5, v7

    sub-double v4, v30, v48

    .line 7372
    aput-wide v4, p5, v19

    add-int/lit8 v19, v19, 0x1

    add-double v4, v38, v46

    .line 7373
    aput-wide v4, p5, v19

    sub-double v4, v40, v12

    .line 7374
    aput-wide v4, p5, v32

    add-int/lit8 v32, v32, 0x1

    add-double v4, v42, v17

    .line 7375
    aput-wide v4, p5, v32

    add-double v40, v40, v12

    .line 7376
    aput-wide v40, p5, v33

    add-int/lit8 v33, v33, 0x1

    sub-double v42, v42, v17

    .line 7377
    aput-wide v42, p5, v33

    add-double v30, v30, v48

    .line 7378
    aput-wide v30, p5, v34

    add-int/lit8 v34, v34, 0x1

    sub-double v38, v38, v46

    .line 7379
    aput-wide v38, p5, v34

    add-int/lit8 v3, v3, 0x1

    const-wide v12, -0x40161c8864680b59L    # -0.8090169943749473

    goto/16 :goto_0

    :cond_0
    move/from16 v7, v16

    :goto_1
    if-gt v7, v1, :cond_2

    add-int/lit8 v12, p4, 0x1

    mul-int/lit8 v13, v7, 0x5

    add-int/lit8 v13, v13, -0x4

    mul-int/2addr v13, v0

    add-int/2addr v12, v13

    add-int/lit8 v13, v7, -0x1

    mul-int/2addr v13, v0

    add-int v13, p6, v13

    const/16 v17, 0x0

    move/from16 v8, v17

    :goto_2
    add-int/lit8 v9, v0, -0x1

    if-ge v8, v9, :cond_1

    add-int v9, v8, v12

    add-int v17, v9, v0

    sub-int v20, v9, v0

    add-int v21, v17, v0

    add-int v22, v21, v0

    add-int/lit8 v23, v9, -0x1

    .line 7391
    aget-wide v23, p3, v23

    .line 7392
    aget-wide v25, p3, v9

    add-int/lit8 v9, v17, -0x1

    .line 7393
    aget-wide v27, p3, v9

    .line 7394
    aget-wide v29, p3, v17

    add-int/lit8 v9, v20, -0x1

    .line 7395
    aget-wide v31, p3, v9

    .line 7396
    aget-wide v33, p3, v20

    add-int/lit8 v9, v21, -0x1

    .line 7397
    aget-wide v35, p3, v9

    .line 7398
    aget-wide v20, p3, v21

    add-int/lit8 v9, v22, -0x1

    .line 7399
    aget-wide v37, p3, v9

    .line 7400
    aget-wide v39, p3, v22

    sub-double v41, v25, v39

    add-double v25, v25, v39

    sub-double v39, v29, v20

    add-double v29, v29, v20

    sub-double v20, v23, v37

    add-double v23, v23, v37

    sub-double v37, v27, v35

    add-double v27, v27, v35

    mul-double v35, v23, v14

    add-double v35, v31, v35

    const-wide v43, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v45, v27, v43

    add-double v35, v35, v45

    mul-double v45, v25, v14

    add-double v45, v33, v45

    mul-double v47, v29, v43

    add-double v45, v45, v47

    mul-double v47, v23, v43

    add-double v47, v31, v47

    mul-double v49, v27, v14

    add-double v47, v47, v49

    mul-double v49, v25, v43

    add-double v49, v33, v49

    mul-double v51, v29, v14

    add-double v49, v49, v51

    int-to-double v14, v2

    mul-double v53, v20, v10

    const-wide v17, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v55, v37, v17

    add-double v53, v53, v55

    mul-double v53, v53, v14

    mul-double v55, v41, v10

    mul-double v57, v39, v17

    add-double v55, v55, v57

    mul-double v55, v55, v14

    mul-double v20, v20, v17

    mul-double v37, v37, v10

    sub-double v20, v20, v37

    mul-double v20, v20, v14

    mul-double v41, v41, v17

    mul-double v39, v39, v10

    sub-double v41, v41, v39

    mul-double v41, v41, v14

    sub-double v37, v47, v41

    add-double v47, v47, v41

    add-double v39, v49, v20

    sub-double v49, v49, v20

    add-double v19, v35, v55

    sub-double v35, v35, v55

    sub-double v21, v45, v53

    add-double v45, v45, v53

    add-int v9, v8, p7

    add-int v41, v8, v3

    add-int v42, v8, v4

    add-int v53, v8, v5

    move-object/from16 v10, p0

    .line 7431
    iget-object v11, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v56, v11, v9

    add-int/lit8 v9, v9, 0x1

    .line 7432
    aget-wide v58, v11, v9

    mul-double v58, v58, v14

    .line 7433
    aget-wide v60, v11, v41

    add-int/lit8 v41, v41, 0x1

    .line 7434
    aget-wide v62, v11, v41

    mul-double v62, v62, v14

    .line 7435
    aget-wide v64, v11, v42

    add-int/lit8 v42, v42, 0x1

    .line 7436
    aget-wide v41, v11, v42

    mul-double v41, v41, v14

    .line 7437
    aget-wide v66, v11, v53

    add-int/lit8 v53, v53, 0x1

    .line 7438
    aget-wide v68, v11, v53

    mul-double v14, v14, v68

    add-int v9, v8, v13

    add-int v11, v9, v6

    add-int v53, v11, v6

    add-int v68, v53, v6

    add-int v69, v68, v6

    add-double v31, v31, v23

    add-double v31, v31, v27

    .line 7445
    aput-wide v31, p5, v9

    add-int/lit8 v9, v9, 0x1

    add-double v33, v33, v25

    add-double v33, v33, v29

    .line 7446
    aput-wide v33, p5, v9

    mul-double v23, v56, v35

    mul-double v25, v58, v45

    sub-double v23, v23, v25

    .line 7447
    aput-wide v23, p5, v11

    add-int/lit8 v11, v11, 0x1

    mul-double v56, v56, v45

    mul-double v58, v58, v35

    add-double v56, v56, v58

    .line 7448
    aput-wide v56, p5, v11

    mul-double v23, v60, v37

    mul-double v25, v62, v39

    sub-double v23, v23, v25

    .line 7449
    aput-wide v23, p5, v53

    add-int/lit8 v53, v53, 0x1

    mul-double v60, v60, v39

    mul-double v62, v62, v37

    add-double v60, v60, v62

    .line 7450
    aput-wide v60, p5, v53

    mul-double v23, v64, v47

    mul-double v25, v41, v49

    sub-double v23, v23, v25

    .line 7451
    aput-wide v23, p5, v68

    add-int/lit8 v68, v68, 0x1

    mul-double v64, v64, v49

    mul-double v41, v41, v47

    add-double v64, v64, v41

    .line 7452
    aput-wide v64, p5, v68

    mul-double v23, v66, v19

    mul-double v25, v14, v21

    sub-double v23, v23, v25

    .line 7453
    aput-wide v23, p5, v69

    add-int/lit8 v69, v69, 0x1

    mul-double v66, v66, v21

    mul-double v14, v14, v19

    add-double v66, v66, v14

    .line 7454
    aput-wide v66, p5, v69

    add-int/lit8 v8, v8, 0x2

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    goto/16 :goto_2

    :cond_1
    const-wide v17, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v43, -0x40161c8864680b59L    # -0.8090169943749473

    move-object/from16 v10, p0

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v8, v17

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    goto/16 :goto_1

    :cond_2
    move-object/from16 v10, p0

    return-void
.end method

.method passf5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V
    .locals 88

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

    const-wide v20, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v22, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v24, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v26, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const-wide/16 v28, 0x1

    if-nez v15, :cond_0

    move-wide/from16 v5, v28

    :goto_0
    cmp-long v7, v5, p3

    if-gtz v7, :cond_2

    mul-long v7, v5, v18

    sub-long v7, v7, v16

    mul-long v7, v7, p1

    add-long v7, p6, v7

    add-long v9, v7, v28

    add-long v13, v9, p1

    move-wide/from16 v30, v11

    sub-long v11, v9, p1

    move-wide/from16 p11, v5

    add-long v5, v13, p1

    add-long v2, v5, p1

    .line 7487
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 7488
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    move-wide/from16 v32, v7

    sub-long v7, v13, v28

    .line 7489
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 7490
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    move-wide/from16 v34, v7

    sub-long v7, v11, v28

    .line 7491
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 7492
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    move-wide/from16 v36, v11

    sub-long v11, v5, v28

    .line 7493
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 7494
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v38, v7

    sub-long v6, v2, v28

    .line 7495
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 7496
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    sub-double v40, v9, v2

    add-double/2addr v9, v2

    sub-double v2, v13, v4

    add-double/2addr v13, v4

    sub-double v4, v32, v6

    add-double v7, v32, v6

    sub-double v32, v34, v11

    add-double v11, v34, v11

    mul-double v34, v7, v26

    add-double v34, v38, v34

    mul-double v42, v11, v24

    add-double v34, v34, v42

    mul-double v42, v9, v26

    add-double v42, v36, v42

    mul-double v44, v13, v24

    add-double v42, v42, v44

    mul-double v44, v7, v24

    add-double v44, v38, v44

    mul-double v46, v11, v26

    add-double v44, v44, v46

    mul-double v46, v9, v24

    add-double v46, v36, v46

    mul-double v48, v13, v26

    add-double v46, v46, v48

    move-wide/from16 v0, p13

    move-wide/from16 v48, v13

    long-to-double v13, v0

    mul-double v50, v4, v22

    mul-double v52, v32, v20

    add-double v50, v50, v52

    mul-double v50, v50, v13

    mul-double v52, v40, v22

    mul-double v54, v2, v20

    add-double v52, v52, v54

    mul-double v52, v52, v13

    mul-double v4, v4, v20

    mul-double v32, v32, v22

    sub-double v4, v4, v32

    mul-double/2addr v4, v13

    mul-double v40, v40, v20

    mul-double v2, v2, v22

    sub-double v40, v40, v2

    mul-double v13, v13, v40

    move-wide/from16 v2, p11

    sub-long v32, v2, v28

    mul-long v32, v32, p1

    add-long v0, p9, v32

    add-long v2, v0, v30

    move-wide/from16 v32, v4

    add-long v4, v2, v30

    move-wide/from16 v40, v13

    add-long v13, v4, v30

    move-wide/from16 v54, v4

    add-long v4, v13, v30

    add-double v7, v38, v7

    add-double/2addr v7, v11

    move-object/from16 v11, p8

    .line 7520
    invoke-virtual {v11, v0, v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v28

    add-double v6, v36, v9

    add-double v6, v6, v48

    .line 7521
    invoke-virtual {v11, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v0, v34, v52

    .line 7522
    invoke-virtual {v11, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v28

    add-double v0, v42, v50

    .line 7523
    invoke-virtual {v11, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v0, v44, v40

    move-wide/from16 v2, v54

    .line 7524
    invoke-virtual {v11, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v2, v28

    add-double v2, v46, v32

    .line 7525
    invoke-virtual {v11, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v0, v44, v40

    .line 7526
    invoke-virtual {v11, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v13, v28

    sub-double v0, v46, v32

    .line 7527
    invoke-virtual {v11, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v0, v34, v52

    .line 7528
    invoke-virtual {v11, v4, v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v28

    sub-double v0, v42, v50

    .line 7529
    invoke-virtual {v11, v4, v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-wide/from16 v0, p11

    add-long v5, v0, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v3, p13

    move-object v2, v11

    move-wide/from16 v11, v30

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v30, v11

    move-object v11, v2

    move-wide/from16 v0, v28

    :goto_1
    cmp-long v2, v0, p3

    if-gtz v2, :cond_2

    add-long v2, p6, v28

    mul-long v32, v0, v18

    sub-long v32, v32, v16

    mul-long v32, v32, p1

    add-long v2, v2, v32

    sub-long v32, v0, v28

    mul-long v32, v32, p1

    add-long v32, p9, v32

    const-wide/16 v34, 0x0

    :goto_2
    sub-long v36, p1, v28

    cmp-long v4, v34, v36

    if-gez v4, :cond_1

    add-long v13, v34, v2

    move-wide/from16 v38, v2

    add-long v2, v13, p1

    move-wide/from16 v40, v0

    sub-long v0, v13, p1

    add-long v11, v2, p1

    move-wide/from16 v42, v9

    add-long v9, v11, p1

    move-wide/from16 v44, v7

    sub-long v7, v13, v28

    move-object/from16 v4, p5

    move-wide/from16 v46, v5

    move-wide/from16 v5, p13

    .line 7541
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 7542
    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    sub-long v5, v2, v28

    .line 7543
    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 7544
    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    move-wide/from16 v48, v5

    sub-long v5, v0, v28

    .line 7545
    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 7546
    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v50, v0

    sub-long v0, v11, v28

    .line 7547
    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 7548
    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    move-wide/from16 v52, v5

    sub-long v5, v9, v28

    .line 7549
    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 7550
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    sub-double v54, v13, v9

    add-double/2addr v13, v9

    sub-double v9, v2, v11

    add-double/2addr v2, v11

    sub-double v11, v7, v5

    add-double/2addr v7, v5

    sub-double v5, v48, v0

    add-double v0, v48, v0

    mul-double v48, v7, v26

    add-double v48, v52, v48

    mul-double v56, v0, v24

    add-double v48, v48, v56

    mul-double v56, v13, v26

    add-double v56, v50, v56

    mul-double v58, v2, v24

    add-double v56, v56, v58

    mul-double v58, v7, v24

    add-double v58, v52, v58

    mul-double v60, v0, v26

    add-double v58, v58, v60

    mul-double v60, v13, v24

    add-double v60, v50, v60

    mul-double v62, v2, v26

    add-double v60, v60, v62

    move-wide/from16 v62, v2

    move-wide/from16 v64, v13

    move-wide/from16 v2, p13

    long-to-double v13, v2

    mul-double v66, v11, v22

    mul-double v68, v5, v20

    add-double v66, v66, v68

    mul-double v66, v66, v13

    mul-double v68, v54, v22

    mul-double v70, v9, v20

    add-double v68, v68, v70

    mul-double v68, v68, v13

    mul-double v11, v11, v20

    mul-double v5, v5, v22

    sub-double/2addr v11, v5

    mul-double/2addr v11, v13

    mul-double v54, v54, v20

    mul-double v9, v9, v22

    sub-double v54, v54, v9

    mul-double v54, v54, v13

    sub-double v5, v58, v54

    add-double v58, v58, v54

    add-double v9, v60, v11

    sub-double v60, v60, v11

    add-double v11, v48, v68

    sub-double v48, v48, v68

    sub-double v54, v56, v66

    add-double v56, v56, v66

    add-long v2, v34, p11

    move-wide/from16 v66, v11

    add-long v11, v34, v46

    move-wide/from16 v68, v9

    add-long v9, v34, v44

    move-wide/from16 v70, v5

    add-long v4, v34, v42

    move-object/from16 v6, p0

    .line 7581
    iget-object v15, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v72

    .line 7582
    iget-object v15, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v2, v2, v28

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v2, v13

    .line 7583
    iget-object v15, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v15, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v74

    .line 7584
    iget-object v15, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v11, v11, v28

    invoke-virtual {v15, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    mul-double/2addr v11, v13

    .line 7585
    iget-object v15, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v76

    .line 7586
    iget-object v15, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v9, v9, v28

    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v9, v13

    .line 7587
    iget-object v15, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v78

    .line 7588
    iget-object v15, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v4, v4, v28

    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v13, v4

    add-long v4, v34, v32

    move-wide/from16 v80, v13

    add-long v13, v4, v30

    move-wide/from16 v82, v9

    add-long v9, v13, v30

    move-wide/from16 v84, v11

    add-long v11, v9, v30

    move-wide/from16 v86, v9

    add-long v9, v11, v30

    add-double v7, v52, v7

    add-double/2addr v7, v0

    move-object/from16 v0, p8

    .line 7595
    invoke-virtual {v0, v4, v5, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v28

    add-double v7, v50, v64

    add-double v7, v7, v62

    .line 7596
    invoke-virtual {v0, v4, v5, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v4, v72, v48

    mul-double v7, v2, v56

    sub-double/2addr v4, v7

    .line 7597
    invoke-virtual {v0, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v13, v28

    mul-double v72, v72, v56

    mul-double v2, v2, v48

    add-double v1, v72, v2

    .line 7598
    invoke-virtual {v0, v13, v14, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v1, v74, v70

    mul-double v3, v84, v68

    sub-double/2addr v1, v3

    move-wide/from16 v13, v86

    .line 7599
    invoke-virtual {v0, v13, v14, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v1, v13, v28

    mul-double v74, v74, v68

    mul-double v3, v84, v70

    add-double v3, v74, v3

    .line 7600
    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v1, v76, v58

    mul-double v3, v82, v60

    sub-double/2addr v1, v3

    .line 7601
    invoke-virtual {v0, v11, v12, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v28

    mul-double v76, v76, v60

    mul-double v1, v82, v58

    add-double v1, v76, v1

    .line 7602
    invoke-virtual {v0, v11, v12, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v11, v78, v66

    mul-double v13, v80, v54

    sub-double/2addr v11, v13

    .line 7603
    invoke-virtual {v0, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v28

    mul-double v78, v78, v54

    mul-double v13, v80, v66

    add-double v1, v78, v13

    .line 7604
    invoke-virtual {v0, v9, v10, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x2

    add-long v34, v34, v1

    move-object v11, v0

    move-wide v13, v1

    move-wide/from16 v2, v38

    move-wide/from16 v0, v40

    move-wide/from16 v9, v42

    move-wide/from16 v7, v44

    move-wide/from16 v5, v46

    goto/16 :goto_2

    :cond_1
    move-wide/from16 v40, v0

    move-wide/from16 v46, v5

    move-wide/from16 v44, v7

    move-wide/from16 v42, v9

    move-object v0, v11

    move-wide v1, v13

    move-object/from16 v6, p0

    add-long v3, v40, v28

    move-wide v0, v3

    move-wide/from16 v5, v46

    goto/16 :goto_1

    :cond_2
    move-object/from16 v6, p0

    return-void
.end method

.method passfg([IIIII[DI[DIII)V
    .locals 40

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

    .line 7621
    div-int/lit8 v10, v1, 0x2

    add-int/lit8 v11, v2, 0x1

    const/4 v12, 0x2

    .line 7622
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

    mul-int v20, v14, v1

    mul-int v21, v18, v3

    add-int v21, v20, v21

    mul-int v22, v17, v3

    add-int v22, v20, v22

    mul-int v20, v20, v2

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v1, :cond_0

    add-int v24, v8, v15

    add-int v25, v6, v15

    add-int v26, v25, v18

    add-int v26, v26, v20

    .line 7636
    aget-wide v26, v5, v26

    add-int v25, v25, v17

    add-int v25, v25, v20

    .line 7637
    aget-wide v28, v5, v25

    add-int v25, v24, v21

    add-double v30, v26, v28

    .line 7638
    aput-wide v30, v7, v25

    add-int v24, v24, v22

    sub-double v26, v26, v28

    .line 7639
    aput-wide v26, v7, v24

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

    add-int v20, v6, v10

    add-int v20, v20, v15

    .line 7647
    aget-wide v20, v5, v20

    aput-wide v20, v7, v18

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v17

    goto :goto_3

    :cond_4
    move/from16 v17, v10

    move/from16 v20, v13

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

    move/from16 v20, v13

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v1, :cond_7

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v3, :cond_6

    mul-int v21, v9, v1

    mul-int v22, v21, v2

    add-int v24, v8, v13

    add-int v25, v6, v13

    add-int v26, v25, v18

    add-int v26, v26, v22

    .line 7663
    aget-wide v26, v5, v26

    add-int v25, v25, v12

    add-int v25, v25, v22

    .line 7664
    aget-wide v28, v5, v25

    add-int v24, v24, v21

    add-int v21, v24, v14

    add-double v30, v26, v28

    .line 7665
    aput-wide v30, v7, v21

    add-int v24, v24, v15

    sub-double v26, v26, v28

    .line 7666
    aput-wide v26, v7, v24

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, p11

    goto :goto_6

    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p11

    move/from16 v13, v20

    goto :goto_5

    :cond_8
    move/from16 v20, v13

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

    .line 7673
    aget-wide v14, v5, v14

    aput-wide v14, v7, v13

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

    add-int v21, v13, p10

    move/from16 v22, v9

    .line 7687
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v24, v21, -0x2

    aget-wide v24, v9, v24

    move/from16 v26, v13

    move/from16 v13, p11

    int-to-double v2, v13

    const/16 v23, 0x1

    add-int/lit8 v21, v21, -0x1

    .line 7688
    aget-wide v27, v9, v21

    mul-double v27, v27, v2

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v4, :cond_b

    add-int v21, v6, v9

    add-int v29, v8, v9

    add-int v30, v21, v18

    .line 7692
    aget-wide v31, v7, v29

    add-int v33, v29, v4

    aget-wide v33, v7, v33

    mul-double v33, v33, v24

    add-double v31, v31, v33

    aput-wide v31, v5, v30

    add-int v21, v21, v15

    add-int v29, v29, v10

    .line 7693
    aget-wide v29, v7, v29

    mul-double v29, v29, v27

    aput-wide v29, v5, v21

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_b
    add-int/2addr v14, v1

    move/from16 v21, v26

    const/4 v9, 0x2

    :goto_d
    if-ge v9, v11, :cond_e

    move-wide/from16 v24, v2

    move/from16 v2, p3

    sub-int v3, v2, v9

    move/from16 v27, v10

    add-int v10, v21, v14

    move/from16 v21, v14

    move/from16 v14, v20

    if-le v10, v14, :cond_c

    sub-int/2addr v10, v14

    :cond_c
    add-int v20, v10, p10

    move/from16 v28, v10

    .line 7704
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v29, v20, -0x2

    aget-wide v29, v10, v29

    const/16 v23, 0x1

    add-int/lit8 v20, v20, -0x1

    .line 7705
    aget-wide v31, v10, v20

    mul-double v31, v31, v24

    mul-int v10, v9, v4

    mul-int/2addr v3, v4

    move/from16 v20, v14

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v4, :cond_d

    add-int v33, v6, v14

    add-int v34, v8, v14

    add-int v35, v33, v18

    .line 7711
    aget-wide v36, v5, v35

    add-int v38, v34, v10

    aget-wide v38, v7, v38

    mul-double v38, v38, v29

    add-double v36, v36, v38

    aput-wide v36, v5, v35

    add-int v33, v33, v15

    .line 7712
    aget-wide v35, v5, v33

    add-int v34, v34, v3

    aget-wide v37, v7, v34

    mul-double v37, v37, v31

    add-double v35, v35, v37

    aput-wide v35, v5, v33

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v21

    move-wide/from16 v2, v24

    move/from16 v10, v27

    move/from16 v21, v28

    goto :goto_d

    :cond_e
    move/from16 v2, p3

    move/from16 v27, v10

    move/from16 v21, v14

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p4

    move/from16 v9, v22

    move/from16 v13, v26

    goto/16 :goto_b

    :cond_f
    move/from16 v13, p11

    move/from16 v22, v9

    const/4 v3, 0x1

    :goto_f
    if-ge v3, v11, :cond_11

    mul-int v9, v3, v4

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v4, :cond_10

    add-int v12, v8, v10

    .line 7720
    aget-wide v14, v7, v12

    add-int v18, v12, v9

    aget-wide v20, v7, v18

    add-double v14, v14, v20

    aput-wide v14, v7, v12

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

    add-int v14, v8, v12

    add-int v15, v6, v12

    add-int v18, v15, v10

    add-int/2addr v15, v9

    add-int/lit8 v20, v18, -0x1

    .line 7732
    aget-wide v20, v5, v20

    .line 7733
    aget-wide v24, v5, v18

    add-int/lit8 v18, v15, -0x1

    .line 7734
    aget-wide v26, v5, v18

    .line 7735
    aget-wide v28, v5, v15

    add-int v15, v14, v10

    add-int/2addr v14, v9

    add-int/lit8 v18, v15, -0x1

    sub-double v30, v20, v28

    .line 7739
    aput-wide v30, v7, v18

    add-int/lit8 v18, v14, -0x1

    add-double v20, v20, v28

    .line 7740
    aput-wide v20, v7, v18

    add-double v20, v24, v26

    .line 7741
    aput-wide v20, v7, v15

    sub-double v24, v24, v26

    .line 7742
    aput-wide v24, v7, v14

    add-int/lit8 v12, v12, 0x2

    goto :goto_12

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_13
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 7745
    aput v9, p1, v3

    const/4 v9, 0x2

    if-ne v1, v9, :cond_14

    return-void

    .line 7749
    :cond_14
    aput v3, p1, v3

    .line 7750
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

    mul-int v14, v12, v1

    add-int v15, v8, v14

    add-int/2addr v15, v11

    add-int/2addr v14, v6

    add-int/2addr v14, v11

    .line 7758
    aget-wide v18, v7, v15

    aput-wide v18, v5, v14

    const/16 v18, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 7759
    aget-wide v18, v7, v15

    aput-wide v18, v5, v14

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

    const/4 v14, 0x3

    :goto_16
    if-ge v14, v1, :cond_18

    add-int/lit8 v10, v10, 0x2

    add-int v16, v10, p10

    add-int/lit8 v17, v16, -0x1

    .line 7770
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v16, v16, -0x2

    aget-wide v20, v3, v16

    move/from16 p5, v10

    int-to-double v9, v13

    .line 7771
    aget-wide v16, v3, v17

    mul-double v9, v9, v16

    add-int v3, v6, v14

    add-int v16, v8, v14

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v4, :cond_17

    mul-int v18, v11, v1

    add-int v18, v18, v12

    add-int v22, v3, v18

    add-int v18, v16, v18

    add-int/lit8 v23, v18, -0x1

    .line 7778
    aget-wide v23, v7, v23

    .line 7779
    aget-wide v25, v7, v18

    add-int/lit8 v18, v22, -0x1

    mul-double v27, v20, v23

    mul-double v29, v9, v25

    sub-double v27, v27, v29

    .line 7780
    aput-wide v27, v5, v18

    mul-double v25, v25, v20

    mul-double v23, v23, v9

    add-double v25, v25, v23

    .line 7781
    aput-wide v25, v5, v22

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_17
    add-int/lit8 v14, v14, 0x2

    move/from16 v10, p5

    const/4 v3, 0x0

    const/4 v11, 0x2

    goto :goto_16

    :cond_18
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_15

    :cond_19
    move/from16 v9, v22

    const/4 v3, 0x1

    :goto_18
    if-ge v3, v2, :cond_1c

    add-int/2addr v9, v1

    mul-int v10, v3, v4

    mul-int/2addr v10, v1

    const/4 v11, 0x0

    :goto_19
    if-ge v11, v4, :cond_1b

    mul-int v12, v11, v1

    add-int/2addr v12, v10

    move v15, v9

    const/4 v14, 0x3

    :goto_1a
    if-ge v14, v1, :cond_1a

    add-int/lit8 v16, v15, 0x2

    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    add-int v15, v15, p10

    .line 7796
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v18, v15, -0x1

    aget-wide v20, v1, v18

    move/from16 p5, v9

    move/from16 v18, v10

    int-to-double v9, v13

    .line 7797
    aget-wide v22, v1, v15

    mul-double v9, v9, v22

    add-int v1, v6, v14

    add-int/2addr v1, v12

    add-int v15, v8, v14

    add-int/2addr v15, v12

    add-int/lit8 v22, v15, -0x1

    .line 7800
    aget-wide v22, v7, v22

    .line 7801
    aget-wide v24, v7, v15

    add-int/lit8 v15, v1, -0x1

    mul-double v26, v20, v22

    mul-double v28, v9, v24

    sub-double v26, v26, v28

    .line 7802
    aput-wide v26, v5, v15

    mul-double v20, v20, v24

    mul-double v9, v9, v22

    add-double v20, v20, v9

    .line 7803
    aput-wide v20, v5, v1

    add-int/lit8 v14, v14, 0x2

    move/from16 v1, p2

    move/from16 v9, p5

    move/from16 v15, v16

    move/from16 v10, v18

    goto :goto_1a

    :cond_1a
    move/from16 p5, v9

    move/from16 v18, v10

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    goto :goto_19

    :cond_1b
    move/from16 p5, v9

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p2

    goto :goto_18

    :cond_1c
    return-void
.end method

.method passfg([IJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJJ)V
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v9, p10

    move-object/from16 v10, p13

    move-wide/from16 v11, p18

    const-wide/16 v13, 0x2

    .line 7821
    div-long v15, p2, v13

    const-wide/16 v17, 0x1

    add-long v1, p4, v17

    .line 7822
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

    .line 7836
    invoke-virtual {v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    add-long v35, v35, v7

    move-wide/from16 v37, v7

    add-long v7, v35, v25

    .line 7837
    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    move-wide/from16 v35, v3

    add-long v3, v33, v27

    add-double v11, v13, v7

    .line 7838
    invoke-virtual {v10, v3, v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v33, v29

    sub-double/2addr v13, v7

    .line 7839
    invoke-virtual {v10, v3, v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v31, v31, v17

    move-wide/from16 v11, p18

    move-wide/from16 v3, v35

    move-wide/from16 v7, v37

    const-wide/16 v13, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v35, v3

    move-wide/from16 v37, v7

    add-long v23, v23, v17

    move-wide/from16 v11, p18

    const-wide/16 v13, 0x2

    goto :goto_1

    :cond_1
    move-wide/from16 v35, v3

    add-long v5, v5, v17

    move-wide/from16 v11, p18

    const-wide/16 v13, 0x2

    goto :goto_0

    :cond_2
    move-wide/from16 v35, v3

    move-wide/from16 v3, v19

    :goto_3
    cmp-long v5, v3, p6

    if-gez v5, :cond_4

    mul-long v5, v3, p2

    mul-long v7, v5, p4

    move-wide/from16 v11, v19

    :goto_4
    cmp-long v13, v11, p2

    if-gez v13, :cond_3

    add-long v13, p14, v11

    add-long/2addr v13, v5

    add-long v21, p11, v11

    move-wide/from16 v23, v5

    add-long v5, v21, v7

    .line 7847
    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v10, v13, v14, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v17

    move-wide/from16 v5, v23

    goto :goto_4

    :cond_3
    add-long v3, v3, v17

    goto :goto_3

    :cond_4
    move-wide/from16 v25, v1

    goto/16 :goto_a

    :cond_5
    move-wide/from16 v35, v3

    move-wide/from16 v3, v17

    :goto_5
    cmp-long v5, v3, v1

    if-gez v5, :cond_8

    sub-long v5, p4, v3

    mul-long v7, v3, p6

    mul-long v7, v7, p2

    mul-long v11, v5, p6

    mul-long v11, v11, p2

    mul-long v13, v3, p2

    mul-long v5, v5, p2

    move-wide/from16 v21, v19

    :goto_6
    cmp-long v23, v21, p2

    if-gez v23, :cond_7

    move-wide/from16 v23, v19

    :goto_7
    cmp-long v25, v23, p6

    if-gez v25, :cond_6

    mul-long v25, v23, p2

    mul-long v27, v25, p4

    add-long v29, p14, v21

    add-long v31, p11, v21

    add-long v33, v31, v13

    move-wide/from16 v37, v13

    add-long v13, v33, v27

    .line 7863
    invoke-virtual {v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    add-long v31, v31, v5

    move-wide/from16 v33, v5

    add-long v5, v31, v27

    .line 7864
    invoke-virtual {v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    add-long v29, v29, v25

    move-wide/from16 v25, v1

    add-long v0, v29, v7

    move-wide/from16 v27, v7

    add-double v7, v13, v5

    .line 7865
    invoke-virtual {v10, v0, v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v29, v11

    sub-double/2addr v13, v5

    .line 7866
    invoke-virtual {v10, v0, v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v23, v23, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    move-wide/from16 v7, v27

    move-wide/from16 v5, v33

    move-wide/from16 v13, v37

    goto :goto_7

    :cond_6
    move-wide/from16 v25, v1

    move-wide/from16 v33, v5

    move-wide/from16 v27, v7

    move-wide/from16 v37, v13

    add-long v21, v21, v17

    move-object/from16 v0, p0

    goto :goto_6

    :cond_7
    move-wide/from16 v25, v1

    add-long v3, v3, v17

    move-object/from16 v0, p0

    goto :goto_5

    :cond_8
    move-wide/from16 v25, v1

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

    .line 7873
    invoke-virtual {v9, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v10, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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
    cmp-long v8, v2, v25

    if-gez v8, :cond_f

    sub-long v11, p4, v2

    add-long v4, v4, p2

    mul-long v21, v2, p8

    mul-long v11, v11, p8

    add-long v23, v4, p16

    move-object/from16 v8, p0

    move-wide/from16 v27, v4

    .line 7887
    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v31, v13

    const-wide/16 v29, 0x2

    sub-long v13, v23, v29

    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v13, p18

    move-wide/from16 v29, v2

    long-to-double v2, v13

    .line 7888
    iget-object v13, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v33, v15

    sub-long v14, v23, v17

    invoke-virtual {v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    mul-double/2addr v13, v2

    move-wide/from16 v15, v19

    :goto_c
    cmp-long v23, v15, p8

    if-gez v23, :cond_b

    add-long v23, p11, v15

    move-wide/from16 v37, v2

    add-long v2, p14, v15

    move-wide/from16 v41, v6

    add-long v6, v23, v21

    .line 7892
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v43

    move-wide/from16 v45, v13

    add-long v13, v2, p8

    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    mul-double/2addr v13, v4

    add-double v13, v43, v13

    invoke-virtual {v9, v6, v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v23, v11

    add-long/2addr v2, v0

    .line 7893
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double v13, v45, v2

    invoke-virtual {v9, v6, v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v15, v15, v17

    move-wide/from16 v2, v37

    move-wide/from16 v6, v41

    move-wide/from16 v13, v45

    goto :goto_c

    :cond_b
    move-wide/from16 v37, v2

    move-wide/from16 v41, v6

    add-long v6, v41, p2

    move-wide/from16 v4, v27

    const-wide/16 v2, 0x2

    :goto_d
    cmp-long v13, v2, v25

    if-gez v13, :cond_e

    sub-long v13, p4, v2

    add-long/2addr v4, v6

    cmp-long v15, v4, v35

    if-lez v15, :cond_c

    sub-long v4, v4, v35

    :cond_c
    add-long v15, v4, p16

    move-wide/from16 v23, v0

    .line 7904
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v41, v4

    const-wide/16 v39, 0x2

    sub-long v4, v15, v39

    invoke-virtual {v0, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 7905
    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v43, v6

    sub-long v5, v15, v17

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double v4, v4, v37

    mul-long v6, v2, p8

    mul-long v13, v13, p8

    move-wide/from16 v15, v19

    :goto_e
    cmp-long v45, v15, p8

    if-gez v45, :cond_d

    add-long v45, p11, v15

    add-long v47, p14, v15

    move-wide/from16 v49, v2

    add-long v2, v45, v21

    .line 7911
    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v51

    move-wide/from16 v53, v4

    add-long v4, v47, v6

    invoke-virtual {v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v4, v0

    add-double v4, v51, v4

    invoke-virtual {v9, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v45, v11

    .line 7912
    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v45, v0

    add-long v0, v47, v13

    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    mul-double v0, v0, v53

    add-double/2addr v4, v0

    invoke-virtual {v9, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v15, v15, v17

    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    move-wide/from16 v4, v53

    goto :goto_e

    :cond_d
    move-wide/from16 v49, v2

    add-long v2, v49, v17

    move-wide/from16 v0, v23

    move-wide/from16 v4, v41

    move-wide/from16 v6, v43

    goto :goto_d

    :cond_e
    move-wide/from16 v23, v0

    move-wide/from16 v43, v6

    add-long v2, v29, v17

    move-wide/from16 v4, v27

    move-wide/from16 v13, v31

    move-wide/from16 v15, v33

    goto/16 :goto_b

    :cond_f
    move-object/from16 v8, p0

    move-wide/from16 v31, v13

    move-wide/from16 v33, v15

    move-wide/from16 v0, v17

    :goto_f
    cmp-long v2, v0, v25

    if-gez v2, :cond_11

    mul-long v2, v0, p8

    move-wide/from16 v4, v19

    :goto_10
    cmp-long v6, v4, p8

    if-gez v6, :cond_10

    add-long v6, p14, v4

    .line 7920
    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    add-long v13, v6, v2

    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    add-double/2addr v11, v13

    invoke-virtual {v10, v6, v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v17

    goto :goto_10

    :cond_10
    add-long v0, v0, v17

    goto :goto_f

    :cond_11
    move-wide/from16 v0, v17

    :goto_11
    cmp-long v2, v0, v25

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

    .line 7932
    invoke-virtual {v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 7933
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v23, v0

    sub-long v0, v13, v17

    .line 7934
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 7935
    invoke-virtual {v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    add-long v8, v11, v4

    add-long/2addr v11, v2

    move-wide/from16 v27, v2

    sub-long v2, v8, v17

    move-wide/from16 v29, v4

    sub-double v4, v6, v13

    .line 7939
    invoke-virtual {v10, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v2, v11, v17

    add-double/2addr v6, v13

    .line 7940
    invoke-virtual {v10, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v2, v23, v0

    .line 7941
    invoke-virtual {v10, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v0, v23, v0

    .line 7942
    invoke-virtual {v10, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v6, v21, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p10

    move-wide v0, v15

    move-wide/from16 v2, v27

    move-wide/from16 v4, v29

    goto :goto_12

    :cond_12
    move-wide v15, v0

    const-wide/16 v0, 0x2

    add-long v2, v15, v17

    move-object/from16 v8, p0

    move-object/from16 v9, p10

    move-wide v0, v2

    goto :goto_11

    :cond_13
    const-wide/16 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7945
    aput v2, p1, v3

    cmp-long v2, p2, v0

    if-nez v2, :cond_14

    return-void

    .line 7949
    :cond_14
    aput v3, p1, v3

    move-object/from16 v1, p13

    move-wide/from16 v2, p14

    move-object/from16 v4, p10

    move-wide/from16 v5, p11

    move-object/from16 v0, p0

    move-wide/from16 v7, p8

    .line 7950
    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    mul-long v1, p6, p2

    move-wide/from16 v3, v17

    :goto_13
    cmp-long v5, v3, p4

    if-gez v5, :cond_16

    mul-long v5, v3, v1

    move-wide/from16 v7, v19

    :goto_14
    cmp-long v9, v7, p6

    if-gez v9, :cond_15

    mul-long v11, v7, p2

    add-long v13, p14, v11

    add-long/2addr v13, v5

    add-long v11, p11, v11

    add-long/2addr v11, v5

    move-wide/from16 p8, v1

    .line 7958
    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    move-object/from16 v9, p10

    invoke-virtual {v9, v11, v12, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v17

    add-long v13, v13, v17

    .line 7959
    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v9, v11, v12, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v7, v7, v17

    move-wide/from16 v1, p8

    goto :goto_14

    :cond_15
    move-object/from16 v9, p10

    move-wide/from16 p8, v1

    add-long v3, v3, v17

    goto :goto_13

    :cond_16
    move-object/from16 v9, p10

    cmp-long v1, v33, p6

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

    .line 7970
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v23, v6

    sub-long v6, v21, v11

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    move-wide/from16 v11, p18

    move-wide/from16 v21, v4

    long-to-double v4, v11

    .line 7971
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    mul-double/2addr v4, v1

    add-long v1, p11, v15

    add-long v25, p14, v15

    move-wide/from16 v27, v19

    :goto_17
    cmp-long v3, v27, p6

    if-gez v3, :cond_17

    mul-long v29, v27, p2

    add-long v29, v29, v13

    move-wide/from16 v31, v13

    add-long v13, v1, v29

    move-wide/from16 v33, v1

    add-long v1, v25, v29

    sub-long v11, v1, v17

    .line 7978
    invoke-virtual {v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 7979
    invoke-virtual {v10, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    sub-long v8, v13, v17

    mul-double v29, v6, v11

    mul-double v35, v4, v1

    move-wide/from16 v37, v8

    sub-double v8, v29, v35

    move-object/from16 v3, p10

    move-wide/from16 v29, v13

    move-wide/from16 v13, v37

    .line 7980
    invoke-virtual {v3, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double/2addr v1, v6

    mul-double/2addr v11, v4

    add-double/2addr v1, v11

    move-wide/from16 v8, v29

    .line 7981
    invoke-virtual {v3, v8, v9, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v27, v27, v17

    move-wide/from16 v11, p18

    move-object v9, v3

    move-wide/from16 v13, v31

    move-wide/from16 v1, v33

    goto :goto_17

    :cond_17
    move-object v3, v9

    move-wide/from16 v31, v13

    const-wide/16 v1, 0x2

    add-long/2addr v15, v1

    move-wide v11, v1

    move-wide/from16 v4, v21

    move-wide/from16 v6, v23

    goto :goto_16

    :cond_18
    move-wide/from16 v21, v4

    move-object v3, v9

    add-long v4, v21, v17

    goto/16 :goto_15

    :cond_19
    move-object v3, v9

    move-wide/from16 v1, v17

    move-wide/from16 v13, v31

    :goto_18
    cmp-long v4, v1, p4

    if-gez v4, :cond_1c

    add-long v13, v13, p2

    mul-long v4, v1, p6

    mul-long v4, v4, p2

    move-wide/from16 v6, v19

    :goto_19
    cmp-long v8, v6, p6

    if-gez v8, :cond_1b

    mul-long v8, v6, p2

    add-long/2addr v8, v4

    move-wide v15, v13

    const-wide/16 v11, 0x3

    :goto_1a
    cmp-long v21, v11, p2

    if-gez v21, :cond_1a

    const-wide/16 v21, 0x2

    add-long v23, v15, v21

    add-long v15, v15, v17

    move-wide/from16 v21, v4

    add-long v4, v15, p16

    .line 7996
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v25, v13

    sub-long v13, v4, v17

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    move-wide v15, v1

    move-wide/from16 v27, v6

    move-wide/from16 v1, p18

    long-to-double v6, v1

    .line 7997
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtablel:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    mul-double/2addr v6, v1

    add-long v1, p11, v11

    add-long/2addr v1, v8

    add-long v4, p14, v11

    add-long/2addr v4, v8

    move-wide/from16 v29, v8

    sub-long v8, v4, v17

    .line 8000
    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    .line 8001
    invoke-virtual {v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v31, v11

    sub-long v10, v1, v17

    mul-double v33, v13, v8

    mul-double v35, v6, v4

    move-wide/from16 v37, v1

    sub-double v0, v33, v35

    .line 8002
    invoke-virtual {v3, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double/2addr v13, v4

    mul-double/2addr v6, v8

    add-double/2addr v13, v6

    move-wide/from16 v1, v37

    .line 8003
    invoke-virtual {v3, v1, v2, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v11, v31, v0

    move-object/from16 v0, p0

    move-object/from16 v10, p13

    move-wide v1, v15

    move-wide/from16 v4, v21

    move-wide/from16 v15, v23

    move-wide/from16 v13, v25

    move-wide/from16 v6, v27

    move-wide/from16 v8, v29

    goto :goto_1a

    :cond_1a
    move-wide v15, v1

    move-wide/from16 v21, v4

    move-wide/from16 v27, v6

    move-wide/from16 v25, v13

    const-wide/16 v0, 0x2

    add-long v6, v27, v17

    move-object/from16 v0, p0

    move-object/from16 v10, p13

    move-wide v1, v15

    goto :goto_19

    :cond_1b
    move-wide v15, v1

    move-wide/from16 v25, v13

    const-wide/16 v0, 0x2

    add-long v4, v15, v17

    move-object/from16 v0, p0

    move-object/from16 v10, p13

    move-wide v1, v4

    goto/16 :goto_18

    :cond_1c
    return-void
.end method

.method radb2(II[DI[DII)V
    .locals 30

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

    .line 3828
    aget-wide v7, p3, v7

    .line 3829
    aget-wide v9, p3, v9

    add-double v11, v7, v9

    .line 3830
    aput-wide v11, p5, v6

    add-int/2addr v6, v2

    sub-double/2addr v7, v9

    .line 3831
    aput-wide v7, p5, v6

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

    .line 3848
    iget-object v4, v3, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v16, v13, -0x1

    aget-wide v16, v4, v16

    .line 3849
    aget-wide v18, v4, v13

    add-int/2addr v15, v8

    add-int/2addr v12, v9

    add-int v4, v14, v7

    add-int/2addr v14, v10

    add-int/lit8 v13, v15, -0x1

    .line 3854
    aget-wide v20, p3, v13

    add-int/lit8 v13, v12, -0x1

    aget-wide v22, p3, v13

    sub-double v24, v20, v22

    .line 3855
    aget-wide v26, p3, v15

    aget-wide v12, p3, v12

    add-double v28, v26, v12

    add-int/lit8 v15, v4, -0x1

    add-double v20, v20, v22

    .line 3861
    aput-wide v20, p5, v15

    sub-double v26, v26, v12

    .line 3862
    aput-wide v26, p5, v4

    add-int/lit8 v4, v14, -0x1

    mul-double v12, v16, v24

    mul-double v20, v18, v28

    sub-double v12, v12, v20

    .line 3863
    aput-wide v12, p5, v4

    mul-double v16, v16, v28

    mul-double v18, v18, v24

    add-double v16, v16, v18

    .line 3864
    aput-wide v16, p5, v14

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

    .line 3867
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

    .line 3876
    aget-wide v9, p3, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v11

    aput-wide v9, p5, v8

    add-int/2addr v8, v2

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    .line 3877
    aget-wide v6, p3, v6

    mul-double/2addr v6, v9

    aput-wide v6, p5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 42

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

    .line 3898
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 3899
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    add-double v12, v9, v5

    .line 3900
    invoke-virtual {v2, v14, v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v3

    sub-double/2addr v9, v5

    .line 3901
    invoke-virtual {v2, v14, v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

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

    mul-long v12, v7, v10

    add-long v14, v12, p1

    add-long v18, v7, v3

    move-wide/from16 v20, v10

    :goto_2
    cmp-long v9, v20, p1

    if-gez v9, :cond_2

    sub-long v22, p1, v20

    const-wide/16 v16, 0x1

    sub-long v24, v20, v16

    add-long v10, v24, p11

    add-long v24, p9, v20

    add-long v26, p6, v20

    add-long v22, p6, v22

    .line 3918
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v28, v3

    sub-long v3, v10, v16

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    .line 3919
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    move-wide/from16 v30, v5

    add-long v5, v26, v12

    move-wide/from16 v26, v12

    add-long v11, v22, v14

    move-wide/from16 v22, v14

    add-long v13, v24, v7

    move-wide/from16 v32, v7

    add-long v7, v24, v18

    move-wide/from16 v24, v9

    sub-long v9, v5, v16

    .line 3924
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v34

    move-wide/from16 v36, v3

    sub-long v3, v11, v16

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v38

    sub-double v34, v34, v38

    .line 3925
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v38

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v40

    add-double v38, v38, v40

    .line 3926
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 3927
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 3928
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 3929
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    sub-long v0, v13, v16

    add-double/2addr v9, v3

    .line 3931
    invoke-virtual {v2, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v5, v11

    .line 3932
    invoke-virtual {v2, v13, v14, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v7, v16

    mul-double v3, v36, v34

    mul-double v9, v24, v38

    sub-double/2addr v3, v9

    .line 3933
    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v3, v36, v38

    mul-double v9, v24, v34

    add-double/2addr v3, v9

    .line 3934
    invoke-virtual {v2, v7, v8, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v20, v20, v0

    move-wide v10, v0

    move-wide/from16 v14, v22

    move-wide/from16 v12, v26

    move-wide/from16 v3, v28

    move-wide/from16 v5, v30

    move-wide/from16 v7, v32

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    move-wide v0, v10

    const-wide/16 v16, 0x1

    add-long v5, v30, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v28, v3

    move-wide v0, v10

    const-wide/16 v16, 0x1

    .line 3937
    rem-long v3, p1, v0

    cmp-long v3, v3, v16

    if-nez v3, :cond_5

    return-void

    :cond_4
    move-wide/from16 v28, v3

    move-wide v0, v10

    const-wide/16 v16, 0x1

    :cond_5
    const-wide/16 v5, 0x0

    :goto_3
    cmp-long v3, v5, p3

    if-gez v3, :cond_6

    mul-long v3, v5, p1

    mul-long v10, v3, v0

    add-long v7, p9, p1

    sub-long v7, v7, v16

    add-long/2addr v7, v3

    add-long v3, p6, v10

    add-long v3, v3, p1

    sub-long v9, v3, v16

    move-object/from16 v11, p5

    .line 3946
    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v12

    invoke-virtual {v2, v7, v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v7, v7, v28

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    .line 3947
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    mul-double/2addr v3, v9

    invoke-virtual {v2, v7, v8, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v16

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb3(II[DI[DII)V
    .locals 43

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    if-ge v4, v1, :cond_0

    mul-int v7, v4, v0

    mul-int/lit8 v8, v7, 0x3

    add-int v8, p4, v8

    mul-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v8

    .line 4144
    aget-wide v10, p3, v8

    add-int/lit8 v8, v9, -0x1

    .line 4146
    aget-wide v12, p3, v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    mul-double/2addr v5, v12

    add-double/2addr v5, v10

    const-wide v14, 0x3ffbb67ae8584cabL    # 1.7320508075688774

    .line 4148
    aget-wide v8, p3, v9

    mul-double/2addr v8, v14

    add-int v7, p6, v7

    add-double/2addr v10, v12

    .line 4150
    aput-wide v10, p5, v7

    add-int v7, v4, v1

    mul-int/2addr v7, v0

    add-int v7, p6, v7

    sub-double v10, v5, v8

    .line 4151
    aput-wide v10, p5, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v4

    mul-int/2addr v7, v0

    add-int v7, p6, v7

    add-double/2addr v5, v8

    .line 4152
    aput-wide v5, p5, v7

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

    mul-int v7, v3, v0

    mul-int/lit8 v8, v7, 0x3

    add-int v9, v8, v0

    add-int v10, v9, v0

    add-int v11, v7, v4

    add-int v12, v11, v4

    const/4 v13, 0x2

    :goto_2
    if-ge v13, v0, :cond_2

    sub-int v14, v0, v13

    add-int v15, p4, v13

    add-int v14, p4, v14

    add-int v16, p6, v13

    add-int v17, v15, v8

    add-int/2addr v15, v10

    add-int/2addr v14, v9

    add-int/lit8 v18, v17, -0x1

    .line 4174
    aget-wide v18, p3, v18

    .line 4175
    aget-wide v20, p3, v17

    add-int/lit8 v17, v15, -0x1

    .line 4176
    aget-wide v22, p3, v17

    .line 4177
    aget-wide v24, p3, v15

    add-int/lit8 v15, v14, -0x1

    .line 4178
    aget-wide v26, p3, v15

    .line 4179
    aget-wide v14, p3, v14

    add-double v28, v22, v26

    mul-double v30, v28, v5

    add-double v30, v18, v30

    sub-double v32, v24, v14

    mul-double v34, v32, v5

    add-double v34, v20, v34

    sub-double v22, v22, v26

    const-wide v26, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v22, v22, v26

    add-double v24, v24, v14

    mul-double v24, v24, v26

    sub-double v14, v30, v24

    add-double v30, v30, v24

    add-double v24, v34, v22

    sub-double v34, v34, v22

    add-int/lit8 v17, v13, -0x1

    add-int v22, v17, p7

    add-int v17, v17, v2

    move-object/from16 v5, p0

    .line 4195
    iget-object v6, v5, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v22, -0x1

    aget-wide v36, v6, v23

    .line 4196
    aget-wide v22, v6, v22

    add-int/lit8 v38, v17, -0x1

    .line 4197
    aget-wide v38, v6, v38

    .line 4198
    aget-wide v40, v6, v17

    add-int v6, v16, v7

    add-int v17, v16, v11

    add-int v16, v16, v12

    add-int/lit8 v42, v6, -0x1

    add-double v18, v18, v28

    .line 4204
    aput-wide v18, p5, v42

    add-double v20, v20, v32

    .line 4205
    aput-wide v20, p5, v6

    add-int/lit8 v6, v17, -0x1

    mul-double v18, v36, v14

    mul-double v20, v22, v24

    sub-double v18, v18, v20

    .line 4206
    aput-wide v18, p5, v6

    mul-double v36, v36, v24

    mul-double v22, v22, v14

    add-double v36, v36, v22

    .line 4207
    aput-wide v36, p5, v17

    add-int/lit8 v6, v16, -0x1

    mul-double v14, v38, v30

    mul-double v17, v40, v34

    sub-double v14, v14, v17

    .line 4208
    aput-wide v14, p5, v6

    mul-double v38, v38, v34

    mul-double v40, v40, v30

    add-double v38, v38, v40

    .line 4209
    aput-wide v38, p5, v16

    add-int/lit8 v13, v13, 0x2

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    goto/16 :goto_2

    :cond_2
    move-object/from16 v5, p0

    add-int/lit8 v3, v3, 0x1

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    goto/16 :goto_1

    :cond_3
    move-object/from16 v5, p0

    return-void
.end method

.method radb3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 60

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    add-long v3, p11, p1

    const-wide/16 v7, 0x0

    :goto_0
    cmp-long v9, v7, p3

    const-wide/16 v10, 0x3

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    const-wide/16 v14, 0x2

    const-wide/16 v16, 0x1

    if-gez v9, :cond_0

    mul-long v18, v7, p1

    mul-long v10, v10, v18

    add-long v9, p6, v10

    mul-long v20, p1, v14

    add-long v5, v9, v20

    .line 4231
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    sub-long v14, v5, v16

    .line 4233
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v24

    mul-double/2addr v12, v14

    add-double/2addr v12, v9

    const-wide v24, 0x3ffbb67ae8584cabL    # 1.7320508075688774

    .line 4235
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    mul-double v5, v5, v24

    move-wide/from16 v24, v3

    add-long v3, p9, v18

    add-double/2addr v9, v14

    .line 4237
    invoke-virtual {v2, v3, v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v7, p3

    mul-long v3, v3, p1

    add-long v3, p9, v3

    sub-double v9, v12, v5

    .line 4238
    invoke-virtual {v2, v3, v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x2

    mul-long v3, v3, p3

    add-long/2addr v3, v7

    mul-long v3, v3, p1

    add-long v3, p9, v3

    add-double/2addr v12, v5

    .line 4239
    invoke-virtual {v2, v3, v4, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v7, v7, v16

    move-wide/from16 v3, v24

    goto :goto_0

    :cond_0
    move-wide/from16 v24, v3

    cmp-long v3, p1, v16

    if-nez v3, :cond_1

    return-void

    :cond_1
    mul-long v3, p3, p1

    const-wide/16 v5, 0x0

    :goto_1
    cmp-long v7, v5, p3

    if-gez v7, :cond_3

    mul-long v7, v5, p1

    mul-long v14, v7, v10

    add-long v18, v14, p1

    add-long v22, v18, p1

    add-long v26, v7, v3

    add-long v28, v26, v3

    const-wide/16 v30, 0x2

    :goto_2
    cmp-long v9, v30, p1

    if-gez v9, :cond_2

    sub-long v32, p1, v30

    add-long v34, p6, v30

    add-long v32, p6, v32

    add-long v36, p9, v30

    add-long v10, v34, v14

    add-long v12, v34, v22

    move-wide/from16 v34, v3

    add-long v3, v32, v18

    move-wide/from16 v32, v14

    sub-long v14, v10, v16

    .line 4261
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    .line 4262
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    move-wide/from16 v40, v5

    sub-long v5, v12, v16

    .line 4263
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 4264
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    move-wide/from16 v42, v7

    sub-long v7, v3, v16

    .line 4265
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 4266
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    add-double v44, v5, v7

    const-wide/high16 v38, -0x4020000000000000L    # -0.5

    mul-double v46, v44, v38

    add-double v46, v14, v46

    sub-double v48, v11, v3

    mul-double v50, v48, v38

    add-double v50, v9, v50

    sub-double/2addr v5, v7

    const-wide v7, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double/2addr v5, v7

    add-double/2addr v11, v3

    mul-double/2addr v11, v7

    sub-double v3, v46, v11

    add-double v46, v46, v11

    add-double v7, v50, v5

    sub-double v50, v50, v5

    sub-long v5, v30, v16

    add-long v11, v5, p11

    add-long v5, v5, v24

    .line 4282
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v52, v7

    sub-long v7, v11, v16

    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 4283
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 4284
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v54, v11

    sub-long v11, v5, v16

    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 4285
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    add-long v0, v36, v42

    move-wide/from16 v56, v5

    add-long v5, v36, v26

    move-wide/from16 v58, v11

    add-long v11, v36, v28

    move-wide/from16 v36, v11

    sub-long v11, v0, v16

    add-double v14, v14, v44

    .line 4291
    invoke-virtual {v2, v11, v12, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v9, v9, v48

    .line 4292
    invoke-virtual {v2, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v5, v16

    mul-double v9, v7, v3

    mul-double v11, v54, v52

    sub-double/2addr v9, v11

    .line 4293
    invoke-virtual {v2, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v7, v7, v52

    mul-double v11, v54, v3

    add-double/2addr v7, v11

    .line 4294
    invoke-virtual {v2, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v11, v36, v16

    mul-double v0, v58, v46

    mul-double v5, v56, v50

    sub-double/2addr v0, v5

    .line 4295
    invoke-virtual {v2, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v11, v58, v50

    mul-double v5, v56, v46

    add-double/2addr v11, v5

    move-wide/from16 v0, v36

    .line 4296
    invoke-virtual {v2, v0, v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v30, v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v14, v32

    move-wide/from16 v3, v34

    move-wide/from16 v12, v38

    move-wide/from16 v5, v40

    move-wide/from16 v7, v42

    const-wide/16 v10, 0x3

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v34, v3

    move-wide/from16 v40, v5

    move-wide/from16 v38, v12

    const-wide/16 v0, 0x2

    add-long v5, v40, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-wide/16 v10, 0x3

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radb4(II[DI[DII)V
    .locals 56

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

    .line 4604
    aget-wide v16, p3, v9

    add-int v9, p4, v14

    .line 4605
    aget-wide v18, p3, v9

    add-int v9, p4, v0

    sub-int/2addr v9, v7

    add-int/2addr v15, v9

    .line 4606
    aget-wide v14, p3, v15

    add-int/2addr v9, v13

    .line 4607
    aget-wide v20, p3, v9

    sub-double v22, v16, v14

    add-double v16, v16, v14

    add-double v20, v20, v20

    add-double v18, v18, v18

    add-int v7, p6, v8

    add-double v8, v16, v20

    .line 4614
    aput-wide v8, p5, v7

    add-int v7, p6, v10

    sub-double v8, v22, v18

    .line 4615
    aput-wide v8, p5, v7

    add-int v7, p6, v11

    sub-double v16, v16, v20

    .line 4616
    aput-wide v16, p5, v7

    add-int v7, p6, v12

    add-double v22, v22, v18

    .line 4617
    aput-wide v22, p5, v7

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

    sub-int v18, v0, v5

    add-int/lit8 v19, v5, -0x1

    add-int v20, v19, p7

    add-int v21, v19, v2

    add-int v19, v19, v3

    move-object/from16 v6, p0

    .line 4637
    iget-object v7, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v20, -0x1

    aget-wide v24, v7, v24

    .line 4638
    aget-wide v26, v7, v20

    add-int/lit8 v20, v21, -0x1

    .line 4639
    aget-wide v28, v7, v20

    .line 4640
    aget-wide v20, v7, v21

    add-int/lit8 v30, v19, -0x1

    .line 4641
    aget-wide v30, v7, v30

    .line 4642
    aget-wide v32, v7, v19

    add-int v7, p4, v5

    add-int v18, p4, v18

    add-int v19, p6, v5

    add-int v34, v7, v13

    add-int v35, v18, v14

    add-int/2addr v7, v15

    add-int v18, v18, v16

    add-int/lit8 v36, v34, -0x1

    .line 4653
    aget-wide v36, p3, v36

    .line 4654
    aget-wide v38, p3, v34

    add-int/lit8 v34, v35, -0x1

    .line 4655
    aget-wide v40, p3, v34

    .line 4656
    aget-wide v34, p3, v35

    add-int/lit8 v42, v7, -0x1

    .line 4657
    aget-wide v42, p3, v42

    .line 4658
    aget-wide v44, p3, v7

    add-int/lit8 v7, v18, -0x1

    .line 4659
    aget-wide v46, p3, v7

    .line 4660
    aget-wide v48, p3, v18

    add-double v50, v38, v48

    sub-double v38, v38, v48

    sub-double v48, v44, v34

    add-double v44, v44, v34

    sub-double v34, v36, v46

    add-double v36, v36, v46

    sub-double v46, v42, v40

    add-double v42, v42, v40

    sub-double v40, v36, v42

    sub-double v52, v38, v48

    sub-double v54, v34, v44

    add-double v34, v34, v44

    add-double v44, v50, v46

    sub-double v50, v50, v46

    add-int v7, v19, v9

    add-int v18, v19, v10

    add-int v46, v19, v11

    add-int v19, v19, v12

    add-int/lit8 v47, v7, -0x1

    add-double v36, v36, v42

    .line 4682
    aput-wide v36, p5, v47

    add-double v38, v38, v48

    .line 4683
    aput-wide v38, p5, v7

    add-int/lit8 v7, v18, -0x1

    mul-double v36, v24, v54

    mul-double v38, v26, v44

    sub-double v36, v36, v38

    .line 4684
    aput-wide v36, p5, v7

    mul-double v24, v24, v44

    mul-double v26, v26, v54

    add-double v24, v24, v26

    .line 4685
    aput-wide v24, p5, v18

    add-int/lit8 v7, v46, -0x1

    mul-double v24, v28, v40

    mul-double v26, v20, v52

    sub-double v24, v24, v26

    .line 4686
    aput-wide v24, p5, v7

    mul-double v28, v28, v52

    mul-double v20, v20, v40

    add-double v28, v28, v20

    .line 4687
    aput-wide v28, p5, v46

    add-int/lit8 v7, v19, -0x1

    mul-double v20, v30, v34

    mul-double v24, v32, v50

    sub-double v20, v20, v24

    .line 4688
    aput-wide v20, p5, v7

    mul-double v30, v30, v50

    mul-double v32, v32, v34

    add-double v30, v30, v32

    .line 4689
    aput-wide v30, p5, v19

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

    .line 4692
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

    .line 4708
    aget-wide v15, p3, v3

    add-int/2addr v13, v11

    .line 4709
    aget-wide v17, p3, v13

    add-int v3, p4, v10

    .line 4710
    aget-wide v10, p3, v3

    add-int v3, p4, v12

    .line 4711
    aget-wide v12, p3, v3

    add-double v19, v10, v12

    sub-double/2addr v12, v10

    sub-double v10, v15, v17

    add-double v15, v15, v17

    const/4 v3, 0x1

    sub-int/2addr v14, v3

    add-int/2addr v2, v14

    add-double/2addr v15, v15

    .line 4718
    aput-wide v15, p5, v2

    add-int/2addr v7, v14

    const-wide v15, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    sub-double v17, v10, v19

    mul-double v17, v17, v15

    .line 4719
    aput-wide v17, p5, v7

    add-int/2addr v8, v14

    add-double/2addr v12, v12

    .line 4720
    aput-wide v12, p5, v8

    add-int/2addr v14, v9

    const-wide v7, -0x40095f619980c433L    # -1.4142135623730951

    add-double v10, v10, v19

    mul-double/2addr v10, v7

    .line 4721
    aput-wide v10, p5, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 74

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

    .line 4750
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    add-long v9, p6, v28

    .line 4751
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    add-long v28, p6, p1

    sub-long v28, v28, v16

    move-wide/from16 v34, v5

    add-long v5, v28, v30

    .line 4752
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    move-wide/from16 v30, v3

    add-long v3, v28, v26

    .line 4753
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    sub-double v26, v13, v5

    add-double/2addr v13, v5

    add-double/2addr v3, v3

    add-double/2addr v9, v9

    add-long v5, p9, v18

    add-double v0, v13, v3

    .line 4760
    invoke-virtual {v2, v5, v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, v20

    sub-double v5, v26, v9

    .line 4761
    invoke-virtual {v2, v0, v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, v22

    sub-double/2addr v13, v3

    .line 4762
    invoke-virtual {v2, v0, v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, v24

    add-double v3, v26, v9

    .line 4763
    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v3, v30

    move-wide/from16 v5, v34

    goto :goto_0

    :cond_0
    move-wide/from16 v30, v3

    move-wide/from16 v34, v5

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

    add-long v9, v5, v7

    add-long v11, v9, v7

    add-long v18, v11, v7

    mul-long v20, v5, v14

    add-long v22, v20, p1

    add-long v24, v22, p1

    add-long v26, v24, p1

    move-wide/from16 v28, v0

    :goto_2
    cmp-long v13, v28, p1

    if-gez v13, :cond_2

    sub-long v36, p1, v28

    sub-long v38, v28, v16

    add-long v14, v38, p11

    add-long v0, v38, v30

    move-wide/from16 v40, v7

    add-long v7, v38, v34

    move-object/from16 v13, p0

    move-wide/from16 v38, v3

    .line 4783
    iget-object v3, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v42, v11

    sub-long v11, v14, v16

    invoke-virtual {v3, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    .line 4784
    iget-object v11, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 4785
    iget-object v14, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v44, v11

    sub-long v11, v0, v16

    invoke-virtual {v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 4786
    iget-object v14, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 4787
    iget-object v14, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v46, v0

    sub-long v0, v7, v16

    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 4788
    iget-object v14, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-long v14, p6, v28

    add-long v36, p6, v36

    add-long v48, p9, v28

    move-wide/from16 v50, v7

    add-long v7, v14, v20

    move-wide/from16 v52, v0

    add-long v0, v36, v22

    add-long v14, v14, v24

    move-wide/from16 v54, v11

    add-long v11, v36, v26

    move-wide/from16 v36, v3

    sub-long v3, v7, v16

    move-object/from16 v13, p5

    .line 4799
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    .line 4800
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    move-wide/from16 v56, v9

    sub-long v9, v0, v16

    .line 4801
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 4802
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v58, v5

    sub-long v5, v14, v16

    .line 4803
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 4804
    invoke-virtual {v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    move-wide/from16 v60, v5

    sub-long v5, v11, v16

    .line 4805
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 4806
    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    add-double v62, v7, v11

    sub-double/2addr v7, v11

    sub-double v11, v14, v0

    add-double/2addr v14, v0

    sub-double v0, v3, v5

    add-double/2addr v3, v5

    sub-double v5, v60, v9

    add-double v9, v60, v9

    sub-double v60, v3, v9

    sub-double v64, v7, v11

    sub-double v66, v0, v14

    add-double/2addr v0, v14

    add-double v14, v62, v5

    sub-double v62, v62, v5

    add-long v5, v48, v58

    move-wide/from16 v68, v0

    add-long v0, v48, v56

    move-wide/from16 v70, v14

    add-long v13, v48, v42

    move-wide/from16 v72, v13

    add-long v13, v48, v18

    move-wide/from16 v48, v13

    sub-long v13, v5, v16

    add-double/2addr v3, v9

    .line 4828
    invoke-virtual {v2, v13, v14, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double/2addr v7, v11

    .line 4829
    invoke-virtual {v2, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v3, v0, v16

    mul-double v5, v36, v66

    mul-double v11, v44, v70

    sub-double/2addr v5, v11

    .line 4830
    invoke-virtual {v2, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v3, v36, v70

    mul-double v11, v44, v66

    add-double/2addr v3, v11

    .line 4831
    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v13, v72, v16

    mul-double v11, v54, v60

    mul-double v0, v46, v64

    sub-double/2addr v11, v0

    .line 4832
    invoke-virtual {v2, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v11, v54, v64

    mul-double v0, v46, v60

    add-double/2addr v11, v0

    move-wide/from16 v0, v72

    .line 4833
    invoke-virtual {v2, v0, v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v13, v48, v16

    mul-double v0, v52, v68

    mul-double v7, v50, v62

    sub-double/2addr v0, v7

    .line 4834
    invoke-virtual {v2, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v0, v52, v62

    mul-double v7, v50, v68

    add-double/2addr v0, v7

    move-wide/from16 v3, v48

    .line 4835
    invoke-virtual {v2, v3, v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v28, v28, v0

    move-wide/from16 v3, v38

    move-wide/from16 v7, v40

    move-wide/from16 v11, v42

    move-wide/from16 v9, v56

    move-wide/from16 v5, v58

    const-wide/16 v14, 0x4

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v38, v3

    move-wide/from16 v40, v7

    add-long v3, v38, v16

    const-wide/16 v14, 0x4

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v40, v7

    .line 4838
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

    .line 4854
    invoke-virtual {v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-long v3, v24, v20

    .line 4855
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    move-wide/from16 p11, v9

    add-long v9, p6, v18

    .line 4856
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    move-wide/from16 v18, v11

    add-long v11, p6, v22

    .line 4857
    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    add-double v20, v9, v11

    sub-double/2addr v11, v9

    sub-double v9, v14, v3

    add-double/2addr v14, v3

    sub-long v26, v26, v16

    add-long v0, v26, v0

    add-double/2addr v14, v14

    .line 4864
    invoke-virtual {v2, v0, v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v7, v26, v7

    const-wide v0, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    sub-double v3, v9, v20

    mul-double/2addr v3, v0

    .line 4865
    invoke-virtual {v2, v7, v8, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v26, v5

    add-double/2addr v11, v11

    .line 4866
    invoke-virtual {v2, v5, v6, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v26, v18

    const-wide v3, -0x40095f619980c433L    # -1.4142135623730951

    add-double v9, v9, v20

    mul-double/2addr v9, v3

    .line 4867
    invoke-virtual {v2, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-wide/from16 v32, p11

    add-long v9, v32, v16

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb5(II[DI[DII)V
    .locals 81

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    add-int v4, v3, v0

    mul-int v5, v1, v0

    const/4 v7, 0x0

    :goto_0
    const-wide v8, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v12, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const/4 v6, 0x1

    if-ge v7, v1, :cond_0

    mul-int v17, v7, v0

    mul-int/lit8 v18, v17, 0x5

    add-int v19, v18, v0

    add-int v20, v19, v0

    add-int v21, v20, v0

    add-int v22, v21, v0

    add-int v23, v17, v5

    add-int v24, v23, v5

    add-int v25, v24, v5

    add-int v26, v25, v5

    add-int v27, p4, v0

    add-int/lit8 v27, v27, -0x1

    add-int v6, p4, v18

    .line 5192
    aget-wide v28, p3, v6

    add-int v6, p4, v20

    .line 5194
    aget-wide v30, p3, v6

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v32

    add-int v6, p4, v22

    .line 5195
    aget-wide v34, p3, v6

    mul-double v34, v34, v32

    add-int v19, v27, v19

    .line 5196
    aget-wide v18, p3, v19

    mul-double v18, v18, v32

    add-int v27, v27, v21

    .line 5197
    aget-wide v20, p3, v27

    mul-double v20, v20, v32

    mul-double v32, v18, v14

    add-double v32, v28, v32

    mul-double v36, v20, v12

    add-double v32, v32, v36

    mul-double v12, v12, v18

    add-double v12, v28, v12

    mul-double v14, v14, v20

    add-double/2addr v12, v14

    mul-double v14, v30, v10

    mul-double v36, v34, v8

    add-double v14, v14, v36

    mul-double v30, v30, v8

    mul-double v34, v34, v10

    sub-double v30, v30, v34

    add-int v6, p6, v17

    add-double v28, v28, v18

    add-double v28, v28, v20

    .line 5203
    aput-wide v28, p5, v6

    add-int v6, p6, v23

    sub-double v8, v32, v14

    .line 5204
    aput-wide v8, p5, v6

    add-int v6, p6, v24

    sub-double v8, v12, v30

    .line 5205
    aput-wide v8, p5, v6

    add-int v6, p6, v25

    add-double v12, v12, v30

    .line 5206
    aput-wide v12, p5, v6

    add-int v6, p6, v26

    add-double v32, v32, v14

    .line 5207
    aput-wide v32, p5, v6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_0
    if-ne v0, v6, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    mul-int v7, v6, v0

    mul-int/lit8 v16, v7, 0x5

    add-int v17, v16, v0

    add-int v18, v17, v0

    add-int v19, v18, v0

    add-int v20, v19, v0

    add-int v21, v7, v5

    add-int v22, v21, v5

    add-int v23, v22, v5

    add-int v24, v23, v5

    const/16 v25, 0x2

    move/from16 v8, v25

    :goto_2
    if-ge v8, v0, :cond_2

    sub-int v9, v0, v8

    add-int/lit8 v25, v8, -0x1

    add-int v28, v25, p7

    add-int v29, v25, v2

    add-int v30, v25, v3

    add-int v25, v25, v4

    move-object/from16 v10, p0

    .line 5229
    iget-object v11, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v33, v28, -0x1

    aget-wide v33, v11, v33

    .line 5230
    aget-wide v35, v11, v28

    add-int/lit8 v28, v29, -0x1

    .line 5231
    aget-wide v37, v11, v28

    .line 5232
    aget-wide v28, v11, v29

    add-int/lit8 v39, v30, -0x1

    .line 5233
    aget-wide v39, v11, v39

    .line 5234
    aget-wide v41, v11, v30

    add-int/lit8 v30, v25, -0x1

    .line 5235
    aget-wide v43, v11, v30

    .line 5236
    aget-wide v45, v11, v25

    add-int v11, p4, v8

    add-int v9, p4, v9

    add-int v25, p6, v8

    add-int v30, v11, v16

    add-int v47, v9, v17

    add-int v48, v11, v18

    add-int v9, v9, v19

    add-int v11, v11, v20

    add-int/lit8 v49, v30, -0x1

    .line 5248
    aget-wide v49, p3, v49

    .line 5249
    aget-wide v51, p3, v30

    add-int/lit8 v30, v47, -0x1

    .line 5250
    aget-wide v53, p3, v30

    .line 5251
    aget-wide v55, p3, v47

    add-int/lit8 v30, v48, -0x1

    .line 5252
    aget-wide v57, p3, v30

    .line 5253
    aget-wide v47, p3, v48

    add-int/lit8 v30, v9, -0x1

    .line 5254
    aget-wide v59, p3, v30

    .line 5255
    aget-wide v61, p3, v9

    add-int/lit8 v9, v11, -0x1

    .line 5256
    aget-wide v63, p3, v9

    .line 5257
    aget-wide v65, p3, v11

    add-double v67, v47, v55

    sub-double v47, v47, v55

    add-double v55, v65, v61

    sub-double v65, v65, v61

    sub-double v61, v57, v53

    add-double v57, v57, v53

    sub-double v53, v63, v59

    add-double v63, v63, v59

    mul-double v59, v57, v14

    add-double v59, v49, v59

    mul-double v69, v63, v12

    add-double v59, v59, v69

    mul-double v69, v47, v14

    add-double v69, v51, v69

    mul-double v71, v65, v12

    add-double v69, v69, v71

    mul-double v71, v57, v12

    add-double v71, v49, v71

    mul-double v73, v63, v14

    add-double v71, v71, v73

    mul-double v73, v47, v12

    add-double v73, v51, v73

    mul-double v75, v65, v14

    add-double v73, v73, v75

    const-wide v30, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v75, v61, v30

    const-wide v26, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v77, v53, v26

    add-double v75, v75, v77

    mul-double v77, v67, v30

    mul-double v79, v55, v26

    add-double v77, v77, v79

    mul-double v61, v61, v26

    mul-double v53, v53, v30

    sub-double v61, v61, v53

    mul-double v67, v67, v26

    mul-double v55, v55, v30

    sub-double v67, v67, v55

    sub-double v53, v71, v67

    add-double v71, v71, v67

    add-double v55, v73, v61

    sub-double v73, v73, v61

    add-double v61, v59, v77

    sub-double v59, v59, v77

    sub-double v67, v69, v75

    add-double v69, v69, v75

    add-int v9, v25, v7

    add-int v11, v25, v21

    add-int v32, v25, v22

    add-int v75, v25, v23

    add-int v25, v25, v24

    add-int/lit8 v76, v9, -0x1

    add-double v49, v49, v57

    add-double v49, v49, v63

    .line 5291
    aput-wide v49, p5, v76

    add-double v51, v51, v47

    add-double v51, v51, v65

    .line 5292
    aput-wide v51, p5, v9

    add-int/lit8 v9, v11, -0x1

    mul-double v47, v33, v59

    mul-double v49, v35, v69

    sub-double v47, v47, v49

    .line 5293
    aput-wide v47, p5, v9

    mul-double v33, v33, v69

    mul-double v35, v35, v59

    add-double v33, v33, v35

    .line 5294
    aput-wide v33, p5, v11

    add-int/lit8 v9, v32, -0x1

    mul-double v33, v37, v53

    mul-double v35, v28, v55

    sub-double v33, v33, v35

    .line 5295
    aput-wide v33, p5, v9

    mul-double v37, v37, v55

    mul-double v28, v28, v53

    add-double v37, v37, v28

    .line 5296
    aput-wide v37, p5, v32

    add-int/lit8 v9, v75, -0x1

    mul-double v28, v39, v71

    mul-double v32, v41, v73

    sub-double v28, v28, v32

    .line 5297
    aput-wide v28, p5, v9

    mul-double v39, v39, v73

    mul-double v41, v41, v71

    add-double v39, v39, v41

    .line 5298
    aput-wide v39, p5, v75

    add-int/lit8 v9, v25, -0x1

    mul-double v28, v43, v61

    mul-double v32, v45, v67

    sub-double v28, v28, v32

    .line 5299
    aput-wide v28, p5, v9

    mul-double v43, v43, v67

    mul-double v45, v45, v61

    add-double v43, v43, v45

    .line 5300
    aput-wide v43, p5, v25

    add-int/lit8 v8, v8, 0x2

    move-wide/from16 v10, v30

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v30, v10

    const-wide v26, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    move-object/from16 v10, p0

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v26

    move-wide/from16 v10, v30

    goto/16 :goto_1

    :cond_3
    move-object/from16 v10, p0

    return-void
.end method

.method radb5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 104

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

    const-wide v18, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v20, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v22, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v24, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const-wide/16 v26, 0x1

    if-gez v15, :cond_0

    mul-long v28, v13, p1

    mul-long v16, v16, v28

    add-long v30, v16, p1

    add-long v32, v30, p1

    add-long v34, v32, p1

    add-long v36, v34, p1

    add-long v38, v28, v9

    add-long v40, v38, v9

    add-long v42, v40, v9

    add-long v44, v42, v9

    add-long v46, p6, p1

    sub-long v46, v46, v26

    add-long v11, p6, v16

    .line 5336
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    move-wide/from16 v50, v7

    add-long v7, p6, v32

    .line 5338
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v15

    move-wide/from16 v32, v5

    add-long v5, p6, v36

    .line 5339
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    mul-double/2addr v5, v15

    move-wide/from16 v36, v3

    add-long v3, v46, v30

    .line 5340
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    mul-double/2addr v3, v15

    move-wide/from16 v30, v9

    add-long v9, v46, v34

    .line 5341
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v9, v15

    mul-double v15, v3, v24

    add-double/2addr v15, v11

    mul-double v34, v9, v22

    add-double v15, v15, v34

    mul-double v22, v22, v3

    add-double v22, v11, v22

    mul-double v24, v24, v9

    add-double v22, v22, v24

    mul-double v24, v7, v20

    mul-double v34, v5, v18

    add-double v24, v24, v34

    mul-double v7, v7, v18

    mul-double v5, v5, v20

    sub-double/2addr v7, v5

    add-long v5, p9, v28

    add-double/2addr v11, v3

    add-double/2addr v11, v9

    .line 5347
    invoke-virtual {v2, v5, v6, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, p9, v38

    sub-double v5, v15, v24

    .line 5348
    invoke-virtual {v2, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, p9, v40

    sub-double v5, v22, v7

    .line 5349
    invoke-virtual {v2, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, p9, v42

    add-double v5, v22, v7

    .line 5350
    invoke-virtual {v2, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, p9, v44

    add-double v5, v15, v24

    .line 5351
    invoke-virtual {v2, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v13, v26

    move-wide/from16 v9, v30

    move-wide/from16 v5, v32

    move-wide/from16 v3, v36

    move-wide/from16 v7, v50

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v36, v3

    move-wide/from16 v32, v5

    move-wide/from16 v50, v7

    move-wide/from16 v30, v9

    cmp-long v3, p1, v26

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

    add-long v28, v13, p1

    add-long v34, v3, v30

    add-long v38, v34, v30

    add-long v40, v38, v30

    add-long v42, v40, v30

    const-wide/16 v44, 0x2

    move-wide/from16 v46, v44

    :goto_2
    cmp-long v15, v46, p1

    if-gez v15, :cond_2

    sub-long v48, p1, v46

    sub-long v52, v46, v26

    move-wide/from16 v54, v11

    add-long v11, v52, p11

    move-wide/from16 v56, v3

    add-long v2, v52, v36

    move-wide/from16 v58, v13

    add-long v13, v52, v32

    move-wide/from16 v60, v9

    add-long v9, v52, v50

    .line 5373
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v52, v7

    sub-long v7, v11, v26

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 5374
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 5375
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v62, v11

    sub-long v11, v2, v26

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 5376
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 5377
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v64, v2

    sub-long v2, v13, v26

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 5378
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    .line 5379
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v66, v13

    sub-long v13, v9, v26

    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    .line 5380
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    add-long v68, p6, v46

    add-long v48, p6, v48

    add-long v70, p9, v46

    move-wide/from16 v72, v9

    add-long v9, v68, v5

    move-wide/from16 v74, v5

    add-long v4, v48, v52

    move-wide/from16 v76, v13

    add-long v13, v68, v60

    move-wide/from16 v78, v2

    add-long v2, v48, v58

    move-wide/from16 v48, v11

    add-long v11, v68, v28

    move-wide/from16 v68, v7

    sub-long v6, v9, v26

    .line 5392
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 5393
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    move-wide/from16 v80, v8

    sub-long v8, v4, v26

    .line 5394
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    .line 5395
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v82, v6

    sub-long v6, v13, v26

    .line 5396
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 5397
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    move-wide/from16 v84, v6

    sub-long v6, v2, v26

    .line 5398
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 5399
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    move-wide/from16 v86, v6

    sub-long v6, v11, v26

    .line 5400
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 5401
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    add-double v88, v13, v4

    sub-double/2addr v13, v4

    add-double v4, v10, v2

    sub-double/2addr v10, v2

    sub-double v2, v84, v8

    add-double v8, v84, v8

    sub-double v84, v6, v86

    add-double v6, v6, v86

    mul-double v86, v8, v24

    add-double v86, v82, v86

    mul-double v90, v6, v22

    add-double v86, v86, v90

    mul-double v90, v13, v24

    add-double v90, v80, v90

    mul-double v92, v10, v22

    add-double v90, v90, v92

    mul-double v92, v8, v22

    add-double v92, v82, v92

    mul-double v94, v6, v24

    add-double v92, v92, v94

    mul-double v94, v13, v22

    add-double v94, v80, v94

    mul-double v96, v10, v24

    add-double v94, v94, v96

    mul-double v96, v2, v20

    mul-double v98, v84, v18

    add-double v96, v96, v98

    mul-double v98, v88, v20

    mul-double v100, v4, v18

    add-double v98, v98, v100

    mul-double v2, v2, v18

    mul-double v84, v84, v20

    sub-double v2, v2, v84

    mul-double v88, v88, v18

    mul-double v4, v4, v20

    sub-double v88, v88, v4

    sub-double v4, v92, v88

    add-double v92, v92, v88

    add-double v84, v94, v2

    sub-double v94, v94, v2

    add-double v2, v86, v98

    sub-double v86, v86, v98

    sub-double v88, v90, v96

    add-double v90, v90, v96

    add-long v0, v70, v56

    move-wide/from16 v96, v2

    add-long v2, v70, v34

    move-wide/from16 v98, v4

    add-long v4, v70, v38

    move-wide/from16 v100, v4

    add-long v4, v70, v40

    move-wide/from16 v102, v4

    add-long v4, v70, v42

    move-wide/from16 v70, v4

    sub-long v4, v0, v26

    add-double v8, v82, v8

    add-double/2addr v8, v6

    move-object/from16 v6, p8

    .line 5435
    invoke-virtual {v6, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v8, v80, v13

    add-double/2addr v8, v10

    .line 5436
    invoke-virtual {v6, v0, v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v2, v26

    mul-double v7, v68, v86

    mul-double v11, v62, v90

    sub-double/2addr v7, v11

    .line 5437
    invoke-virtual {v6, v0, v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v7, v68, v90

    mul-double v11, v62, v86

    add-double/2addr v7, v11

    .line 5438
    invoke-virtual {v6, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v4, v100, v26

    mul-double v11, v48, v98

    mul-double v2, v64, v84

    sub-double/2addr v11, v2

    .line 5439
    invoke-virtual {v6, v4, v5, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v11, v48, v84

    mul-double v2, v64, v98

    add-double/2addr v11, v2

    move-wide/from16 v0, v100

    .line 5440
    invoke-virtual {v6, v0, v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v4, v102, v26

    mul-double v2, v78, v92

    mul-double v13, v66, v94

    sub-double/2addr v2, v13

    .line 5441
    invoke-virtual {v6, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v2, v78, v94

    mul-double v13, v66, v92

    add-double/2addr v2, v13

    move-wide/from16 v0, v102

    .line 5442
    invoke-virtual {v6, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v4, v70, v26

    mul-double v13, v76, v96

    mul-double v9, v72, v88

    sub-double/2addr v13, v9

    .line 5443
    invoke-virtual {v6, v4, v5, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double v13, v76, v88

    mul-double v9, v72, v96

    add-double/2addr v13, v9

    move-wide/from16 v0, v70

    .line 5444
    invoke-virtual {v6, v0, v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v46, v46, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v6

    move-wide/from16 v7, v52

    move-wide/from16 v11, v54

    move-wide/from16 v3, v56

    move-wide/from16 v13, v58

    move-wide/from16 v9, v60

    move-wide/from16 v5, v74

    goto/16 :goto_2

    :cond_2
    move-object v6, v2

    move-wide/from16 v54, v11

    add-long v11, v54, v26

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method radbg(IIII[DI[DII)V
    .locals 39

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v11, v2

    div-double/2addr v9, v11

    .line 6045
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    .line 6046
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    add-int/lit8 v13, v1, -0x1

    const/4 v14, 0x2

    .line 6047
    div-int/2addr v13, v14

    add-int/lit8 v15, v2, 0x1

    .line 6048
    div-int/2addr v15, v14

    mul-int v16, v2, v1

    const/16 v17, 0x0

    if-lt v1, v3, :cond_1

    move/from16 v14, v17

    :goto_0
    if-ge v14, v3, :cond_3

    mul-int v18, v14, v1

    mul-int v19, v14, v16

    move/from16 v0, v17

    :goto_1
    if-ge v0, v1, :cond_0

    add-int v20, v8, v0

    add-int v20, v20, v18

    add-int v21, v6, v0

    add-int v21, v21, v19

    .line 6055
    aget-wide v21, v5, v21

    aput-wide v21, v7, v20

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    move/from16 v0, v17

    :goto_2
    if-ge v0, v1, :cond_3

    add-int v14, v8, v0

    add-int v18, v6, v0

    move-wide/from16 v19, v9

    move/from16 v9, v17

    :goto_3
    if-ge v9, v3, :cond_2

    mul-int v10, v9, v1

    add-int/2addr v10, v14

    mul-int v21, v9, v16

    add-int v21, v18, v21

    .line 6063
    aget-wide v21, v5, v21

    aput-wide v21, v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v9, v19

    goto :goto_2

    :cond_3
    move-wide/from16 v19, v9

    add-int v0, v6, v1

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    move v10, v9

    :goto_4
    if-ge v10, v15, :cond_5

    sub-int v14, v2, v10

    mul-int/lit8 v16, v10, 0x2

    mul-int v18, v10, v3

    mul-int v18, v18, v1

    mul-int/2addr v14, v3

    mul-int/2addr v14, v1

    mul-int v16, v16, v1

    move/from16 v9, v17

    :goto_5
    if-ge v9, v3, :cond_4

    mul-int v22, v9, v1

    mul-int v23, v22, v2

    add-int v24, v0, v16

    add-int v24, v24, v23

    sub-int v24, v24, v1

    add-int v25, v6, v16

    add-int v25, v25, v23

    .line 6079
    aget-wide v23, v5, v24

    .line 6080
    aget-wide v25, v5, v25

    add-int v22, v8, v22

    add-int v27, v22, v18

    add-double v23, v23, v23

    .line 6082
    aput-wide v23, v7, v27

    add-int v22, v22, v14

    add-double v25, v25, v25

    .line 6083
    aput-wide v25, v7, v22

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    if-eq v1, v9, :cond_b

    if-lt v13, v3, :cond_8

    const/4 v9, 0x1

    :goto_6
    if-ge v9, v15, :cond_b

    sub-int v0, v2, v9

    mul-int v10, v9, v3

    mul-int/2addr v10, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/lit8 v14, v9, 0x2

    mul-int/2addr v14, v1

    move/from16 v16, v13

    move/from16 v13, v17

    :goto_7
    if-ge v13, v3, :cond_7

    mul-int v18, v13, v1

    add-int v22, v18, v10

    add-int v18, v18, v0

    mul-int v23, v13, v2

    mul-int v23, v23, v1

    add-int v23, v23, v14

    move/from16 v24, v0

    const/4 v0, 0x2

    :goto_8
    if-ge v0, v1, :cond_6

    sub-int v25, v1, v0

    add-int v26, v8, v0

    add-int v25, v6, v25

    add-int v27, v6, v0

    add-int v28, v26, v22

    add-int v26, v26, v18

    add-int v27, v27, v23

    add-int v25, v25, v23

    sub-int v25, v25, v1

    add-int/lit8 v29, v27, -0x1

    .line 6107
    aget-wide v29, v5, v29

    .line 6108
    aget-wide v31, v5, v27

    add-int/lit8 v27, v25, -0x1

    .line 6109
    aget-wide v33, v5, v27

    .line 6110
    aget-wide v35, v5, v25

    add-int/lit8 v25, v28, -0x1

    add-double v37, v29, v33

    .line 6112
    aput-wide v37, v7, v25

    add-int/lit8 v25, v26, -0x1

    sub-double v29, v29, v33

    .line 6113
    aput-wide v29, v7, v25

    sub-double v29, v31, v35

    .line 6114
    aput-wide v29, v7, v28

    add-double v31, v31, v35

    .line 6115
    aput-wide v31, v7, v26

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v24

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v16

    goto :goto_6

    :cond_8
    move/from16 v16, v13

    const/4 v9, 0x1

    :goto_9
    if-ge v9, v15, :cond_c

    sub-int v0, v2, v9

    mul-int v10, v9, v3

    mul-int/2addr v10, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/lit8 v13, v9, 0x2

    mul-int/2addr v13, v1

    const/4 v14, 0x2

    :goto_a
    if-ge v14, v1, :cond_a

    sub-int v18, v1, v14

    add-int v22, v8, v14

    add-int v18, v6, v18

    add-int v23, v6, v14

    move/from16 v8, v17

    :goto_b
    if-ge v8, v3, :cond_9

    mul-int v24, v8, v1

    add-int v25, v24, v10

    add-int v24, v24, v0

    mul-int v26, v8, v2

    mul-int v26, v26, v1

    add-int v26, v26, v13

    add-int v25, v22, v25

    add-int v24, v22, v24

    add-int v27, v23, v26

    add-int v26, v18, v26

    sub-int v26, v26, v1

    add-int/lit8 v28, v27, -0x1

    .line 6138
    aget-wide v28, v5, v28

    .line 6139
    aget-wide v30, v5, v27

    add-int/lit8 v27, v26, -0x1

    .line 6140
    aget-wide v32, v5, v27

    .line 6141
    aget-wide v26, v5, v26

    add-int/lit8 v34, v25, -0x1

    add-double v35, v28, v32

    .line 6143
    aput-wide v35, v7, v34

    add-int/lit8 v34, v24, -0x1

    sub-double v28, v28, v32

    .line 6144
    aput-wide v28, v7, v34

    sub-double v28, v30, v26

    .line 6145
    aput-wide v28, v7, v25

    add-double v30, v30, v26

    .line 6146
    aput-wide v30, v7, v24

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v14, v14, 0x2

    move/from16 v8, p8

    goto :goto_a

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, p8

    goto :goto_9

    :cond_b
    move/from16 v16, v13

    :cond_c
    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    const/4 v10, 0x1

    :goto_c
    if-ge v10, v15, :cond_10

    sub-int v18, v2, v10

    mul-double v22, v11, v8

    mul-double v24, v19, v13

    sub-double v22, v22, v24

    mul-double/2addr v13, v11

    mul-double v8, v8, v19

    add-double/2addr v13, v8

    mul-int v8, v10, v4

    mul-int v18, v18, v4

    move/from16 v9, v17

    :goto_d
    if-ge v9, v4, :cond_d

    add-int v24, v6, v9

    move-wide/from16 v25, v11

    move/from16 v11, p8

    add-int v12, v11, v9

    add-int v27, v24, v8

    .line 6166
    aget-wide v28, v7, v12

    add-int v30, v12, v4

    aget-wide v30, v7, v30

    mul-double v30, v30, v22

    add-double v28, v28, v30

    aput-wide v28, v5, v27

    add-int v24, v24, v18

    add-int/2addr v12, v0

    .line 6167
    aget-wide v27, v7, v12

    mul-double v27, v27, v13

    aput-wide v27, v5, v24

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v11, v25

    goto :goto_d

    :cond_d
    move-wide/from16 v25, v11

    move/from16 v11, p8

    move-wide/from16 v29, v13

    move-wide/from16 v27, v22

    const/4 v9, 0x2

    :goto_e
    if-ge v9, v15, :cond_f

    sub-int v12, v2, v9

    mul-double v31, v22, v27

    mul-double v33, v13, v29

    sub-double v31, v31, v33

    mul-double v29, v29, v22

    mul-double v27, v27, v13

    add-double v29, v29, v27

    mul-int v24, v9, v4

    mul-int/2addr v12, v4

    move/from16 v27, v0

    move/from16 v0, v17

    :goto_f
    if-ge v0, v4, :cond_e

    add-int v28, v6, v0

    add-int v33, v11, v0

    add-int v34, v28, v8

    .line 6183
    aget-wide v35, v5, v34

    add-int v37, v33, v24

    aget-wide v37, v7, v37

    mul-double v37, v37, v31

    add-double v35, v35, v37

    aput-wide v35, v5, v34

    add-int v28, v28, v18

    .line 6184
    aget-wide v34, v5, v28

    add-int v33, v33, v12

    aget-wide v36, v7, v33

    mul-double v36, v36, v29

    add-double v34, v34, v36

    aput-wide v34, v5, v28

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v27

    move-wide/from16 v27, v31

    goto :goto_e

    :cond_f
    move/from16 v27, v0

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v22

    move-wide/from16 v11, v25

    goto/16 :goto_c

    :cond_10
    move/from16 v11, p8

    const/4 v9, 0x1

    :goto_10
    if-ge v9, v15, :cond_12

    mul-int v0, v9, v4

    move/from16 v8, v17

    :goto_11
    if-ge v8, v4, :cond_11

    add-int v10, v11, v8

    .line 6192
    aget-wide v12, v7, v10

    add-int v14, v10, v0

    aget-wide v18, v7, v14

    add-double v12, v12, v18

    aput-wide v12, v7, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_12
    const/4 v9, 0x1

    :goto_12
    if-ge v9, v15, :cond_14

    sub-int v0, v2, v9

    mul-int v8, v9, v3

    mul-int/2addr v8, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    move/from16 v10, v17

    :goto_13
    if-ge v10, v3, :cond_13

    mul-int v12, v10, v1

    add-int v13, v11, v12

    add-int/2addr v12, v6

    add-int v14, v12, v8

    add-int/2addr v12, v0

    .line 6204
    aget-wide v18, v5, v14

    .line 6205
    aget-wide v22, v5, v12

    add-int v12, v13, v8

    sub-double v24, v18, v22

    .line 6207
    aput-wide v24, v7, v12

    add-int/2addr v13, v0

    add-double v18, v18, v22

    .line 6208
    aput-wide v18, v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_14
    const/4 v9, 0x1

    if-ne v1, v9, :cond_15

    return-void

    :cond_15
    move/from16 v13, v16

    if-lt v13, v3, :cond_18

    move v0, v9

    :goto_14
    if-ge v0, v15, :cond_1b

    sub-int v8, v2, v0

    mul-int v10, v0, v3

    mul-int/2addr v10, v1

    mul-int/2addr v8, v3

    mul-int/2addr v8, v1

    move/from16 v12, v17

    :goto_15
    if-ge v12, v3, :cond_17

    mul-int v14, v12, v1

    const/4 v9, 0x2

    :goto_16
    if-ge v9, v1, :cond_16

    add-int v16, v11, v9

    add-int v18, v6, v9

    add-int v16, v16, v14

    add-int v19, v16, v10

    add-int v16, v16, v8

    add-int v18, v18, v14

    add-int v20, v18, v10

    add-int v18, v18, v8

    add-int/lit8 v22, v20, -0x1

    .line 6229
    aget-wide v22, v5, v22

    .line 6230
    aget-wide v24, v5, v20

    add-int/lit8 v20, v18, -0x1

    .line 6231
    aget-wide v26, v5, v20

    .line 6232
    aget-wide v28, v5, v18

    add-int/lit8 v18, v19, -0x1

    sub-double v30, v22, v28

    .line 6234
    aput-wide v30, v7, v18

    add-int/lit8 v18, v16, -0x1

    add-double v22, v22, v28

    .line 6235
    aput-wide v22, v7, v18

    add-double v22, v24, v26

    .line 6236
    aput-wide v22, v7, v19

    sub-double v24, v24, v26

    .line 6237
    aput-wide v24, v7, v16

    add-int/lit8 v9, v9, 0x2

    goto :goto_16

    :cond_16
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto :goto_15

    :cond_17
    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x1

    goto :goto_14

    :cond_18
    const/4 v9, 0x1

    :goto_17
    if-ge v9, v15, :cond_1b

    sub-int v0, v2, v9

    mul-int v8, v9, v3

    mul-int/2addr v8, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    const/4 v10, 0x2

    :goto_18
    if-ge v10, v1, :cond_1a

    add-int v12, v11, v10

    add-int v14, v6, v10

    move/from16 v16, v15

    move/from16 v15, v17

    :goto_19
    if-ge v15, v3, :cond_19

    mul-int v18, v15, v1

    add-int v19, v12, v18

    add-int v20, v19, v8

    add-int v19, v19, v0

    add-int v18, v14, v18

    add-int v22, v18, v8

    add-int v18, v18, v0

    add-int/lit8 v23, v22, -0x1

    .line 6255
    aget-wide v23, v5, v23

    .line 6256
    aget-wide v25, v5, v22

    add-int/lit8 v22, v18, -0x1

    .line 6257
    aget-wide v27, v5, v22

    .line 6258
    aget-wide v29, v5, v18

    add-int/lit8 v18, v20, -0x1

    sub-double v31, v23, v29

    .line 6260
    aput-wide v31, v7, v18

    add-int/lit8 v18, v19, -0x1

    add-double v23, v23, v29

    .line 6261
    aput-wide v23, v7, v18

    add-double v22, v25, v27

    .line 6262
    aput-wide v22, v7, v20

    sub-double v25, v25, v27

    .line 6263
    aput-wide v25, v7, v19

    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :cond_19
    add-int/lit8 v10, v10, 0x2

    move/from16 v15, v16

    goto :goto_18

    :cond_1a
    move/from16 v16, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 6268
    :cond_1b
    invoke-static {v7, v11, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x1

    :goto_1a
    if-ge v9, v2, :cond_1d

    mul-int v0, v9, v3

    mul-int/2addr v0, v1

    move/from16 v4, v17

    :goto_1b
    if-ge v4, v3, :cond_1c

    mul-int v8, v4, v1

    add-int/2addr v8, v0

    add-int v10, v6, v8

    add-int/2addr v8, v11

    .line 6273
    aget-wide v14, v7, v8

    aput-wide v14, v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_1d
    if-gt v13, v3, :cond_21

    neg-int v0, v1

    const/4 v9, 0x1

    :goto_1c
    if-ge v9, v2, :cond_20

    add-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    mul-int v8, v9, v3

    mul-int/2addr v8, v1

    const/4 v10, 0x2

    :goto_1d
    if-ge v10, v1, :cond_1f

    const/4 v12, 0x2

    add-int/2addr v4, v12

    add-int v12, v4, p9

    move-object/from16 v13, p0

    .line 6285
    iget-object v14, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v15, v12, -0x1

    aget-wide v15, v14, v15

    .line 6286
    aget-wide v18, v14, v12

    add-int v12, v6, v10

    add-int v14, v11, v10

    move/from16 p4, v0

    move/from16 v0, v17

    :goto_1e
    if-ge v0, v3, :cond_1e

    mul-int v20, v0, v1

    add-int v20, v20, v8

    add-int v21, v12, v20

    add-int v20, v14, v20

    add-int/lit8 v22, v20, -0x1

    .line 6293
    aget-wide v22, v7, v22

    .line 6294
    aget-wide v24, v7, v20

    add-int/lit8 v20, v21, -0x1

    mul-double v26, v15, v22

    mul-double v28, v18, v24

    sub-double v26, v26, v28

    .line 6296
    aput-wide v26, v5, v20

    mul-double v24, v24, v15

    mul-double v22, v22, v18

    add-double v24, v24, v22

    .line 6297
    aput-wide v24, v5, v21

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_1e
    add-int/lit8 v10, v10, 0x2

    move/from16 v0, p4

    goto :goto_1d

    :cond_1f
    move-object/from16 v13, p0

    move/from16 p4, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_20
    move-object/from16 v13, p0

    goto :goto_22

    :cond_21
    move-object/from16 v13, p0

    neg-int v0, v1

    const/4 v9, 0x1

    :goto_1f
    if-ge v9, v2, :cond_24

    add-int/2addr v0, v1

    mul-int v4, v9, v3

    mul-int/2addr v4, v1

    move/from16 v8, v17

    :goto_20
    if-ge v8, v3, :cond_23

    add-int/lit8 v10, v0, -0x1

    mul-int v12, v8, v1

    add-int/2addr v12, v4

    const/4 v14, 0x2

    :goto_21
    if-ge v14, v1, :cond_22

    const/4 v15, 0x2

    add-int/2addr v10, v15

    add-int v16, v10, p9

    .line 6312
    iget-object v15, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v18, v16, -0x1

    aget-wide v18, v15, v18

    .line 6313
    aget-wide v20, v15, v16

    add-int v15, v6, v14

    add-int v16, v11, v14

    add-int/2addr v15, v12

    add-int v16, v16, v12

    add-int/lit8 v22, v16, -0x1

    .line 6318
    aget-wide v22, v7, v22

    .line 6319
    aget-wide v24, v7, v16

    add-int/lit8 v16, v15, -0x1

    mul-double v26, v18, v22

    mul-double v28, v20, v24

    sub-double v26, v26, v28

    .line 6321
    aput-wide v26, v5, v16

    mul-double v18, v18, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    .line 6322
    aput-wide v18, v5, v15

    add-int/lit8 v14, v14, 0x2

    goto :goto_21

    :cond_22
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :cond_24
    :goto_22
    return-void
.end method

.method radbg(JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 52

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v13, p9

    move-object/from16 v14, p12

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    long-to-double v7, v3

    div-double/2addr v5, v7

    .line 6342
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    .line 6343
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    const-wide/16 v15, 0x1

    sub-long v9, v1, v15

    const-wide/16 v17, 0x2

    .line 6344
    div-long v9, v9, v17

    add-long v11, v3, v15

    .line 6345
    div-long v11, v11, v17

    mul-long v19, v3, v1

    cmp-long v21, v1, p5

    const-wide/16 v22, 0x0

    if-ltz v21, :cond_2

    move-wide/from16 v24, v22

    :goto_0
    cmp-long v21, v24, p5

    if-gez v21, :cond_1

    mul-long v26, v24, v1

    mul-long v28, v24, v19

    move-wide/from16 v30, v22

    :goto_1
    cmp-long v21, v30, v1

    if-gez v21, :cond_0

    add-long v32, p13, v30

    move-wide/from16 v34, v5

    add-long v5, v32, v26

    add-long v32, p10, v30

    move-wide/from16 v36, v7

    add-long v7, v32, v28

    .line 6352
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v14, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v30, v30, v15

    move-wide/from16 v5, v34

    move-wide/from16 v7, v36

    goto :goto_1

    :cond_0
    move-wide/from16 v34, v5

    move-wide/from16 v36, v7

    add-long v24, v24, v15

    goto :goto_0

    :cond_1
    move-wide/from16 v34, v5

    move-wide/from16 v36, v7

    goto :goto_4

    :cond_2
    move-wide/from16 v34, v5

    move-wide/from16 v36, v7

    move-wide/from16 v5, v22

    :goto_2
    cmp-long v7, v5, v1

    if-gez v7, :cond_4

    add-long v7, p13, v5

    add-long v24, p10, v5

    move-wide/from16 v26, v22

    :goto_3
    cmp-long v21, v26, p5

    if-gez v21, :cond_3

    mul-long v28, v26, v1

    move-wide/from16 v30, v9

    add-long v9, v7, v28

    mul-long v28, v26, v19

    move-wide/from16 v32, v7

    add-long v7, v24, v28

    .line 6360
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v14, v9, v10, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v26, v26, v15

    move-wide/from16 v9, v30

    move-wide/from16 v7, v32

    goto :goto_3

    :cond_3
    move-wide/from16 v30, v9

    add-long/2addr v5, v15

    goto :goto_2

    :cond_4
    :goto_4
    move-wide/from16 v30, v9

    add-long v5, p10, v1

    sub-long/2addr v5, v15

    move-wide v7, v15

    :goto_5
    cmp-long v9, v7, v11

    if-gez v9, :cond_6

    sub-long v9, v3, v7

    mul-long v19, v7, v17

    mul-long v24, v7, p5

    mul-long v24, v24, v1

    mul-long v9, v9, p5

    mul-long/2addr v9, v1

    mul-long v19, v19, v1

    move-wide/from16 v26, v22

    :goto_6
    cmp-long v21, v26, p5

    if-gez v21, :cond_5

    mul-long v28, v26, v1

    mul-long v32, v28, v3

    add-long v38, v5, v19

    add-long v38, v38, v32

    move-wide/from16 v40, v5

    sub-long v5, v38, v1

    add-long v38, p10, v19

    add-long v3, v38, v32

    .line 6376
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 6377
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    add-long v28, p13, v28

    move-wide/from16 v32, v11

    add-long v11, v28, v24

    add-double/2addr v5, v5

    .line 6379
    invoke-virtual {v14, v11, v12, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v28, v9

    add-double/2addr v3, v3

    .line 6380
    invoke-virtual {v14, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v26, v26, v15

    move-wide/from16 v3, p3

    move-wide/from16 v11, v32

    move-wide/from16 v5, v40

    goto :goto_6

    :cond_5
    move-wide/from16 v40, v5

    move-wide/from16 v32, v11

    add-long/2addr v7, v15

    move-wide/from16 v3, p3

    goto :goto_5

    :cond_6
    move-wide/from16 v32, v11

    cmp-long v3, v1, v15

    if-eqz v3, :cond_c

    cmp-long v4, v30, p5

    if-ltz v4, :cond_9

    move-wide v4, v15

    :goto_7
    cmp-long v6, v4, v32

    if-gez v6, :cond_c

    sub-long v6, p3, v4

    mul-long v8, v4, p5

    mul-long/2addr v8, v1

    mul-long v6, v6, p5

    mul-long/2addr v6, v1

    mul-long v10, v4, v17

    mul-long/2addr v10, v1

    move-wide/from16 v19, v22

    :goto_8
    cmp-long v12, v19, p5

    if-gez v12, :cond_8

    mul-long v24, v19, v1

    add-long v26, v24, v8

    add-long v24, v24, v6

    mul-long v28, v19, p3

    mul-long v28, v28, v1

    add-long v28, v28, v10

    move-wide/from16 v38, v17

    :goto_9
    cmp-long v12, v38, v1

    if-gez v12, :cond_7

    sub-long v40, v1, v38

    add-long v42, p13, v38

    add-long v40, p10, v40

    add-long v44, p10, v38

    move-wide/from16 v46, v6

    add-long v6, v42, v26

    move-wide/from16 v48, v8

    add-long v8, v42, v24

    move-wide/from16 v42, v10

    add-long v10, v44, v28

    add-long v40, v40, v28

    move v12, v3

    move-wide/from16 v44, v4

    sub-long v3, v40, v1

    sub-long v0, v10, v15

    .line 6404
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 6405
    invoke-virtual {v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    move-wide/from16 v40, v10

    sub-long v10, v3, v15

    .line 6406
    invoke-virtual {v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    .line 6407
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    sub-long v4, v6, v15

    move/from16 v21, v12

    add-double v12, v0, v10

    .line 6409
    invoke-virtual {v14, v4, v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v4, v8, v15

    sub-double/2addr v0, v10

    .line 6410
    invoke-virtual {v14, v4, v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v10, v40, v2

    .line 6411
    invoke-virtual {v14, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v10, v40, v2

    .line 6412
    invoke-virtual {v14, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v38, v38, v17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v13, p9

    move/from16 v3, v21

    move-wide/from16 v10, v42

    move-wide/from16 v4, v44

    move-wide/from16 v6, v46

    move-wide/from16 v8, v48

    goto :goto_9

    :cond_7
    move/from16 v21, v3

    move-wide/from16 v44, v4

    move-wide/from16 v46, v6

    move-wide/from16 v48, v8

    move-wide/from16 v42, v10

    add-long v19, v19, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v13, p9

    goto/16 :goto_8

    :cond_8
    move/from16 v21, v3

    move-wide/from16 v44, v4

    add-long v4, v44, v15

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v13, p9

    goto/16 :goto_7

    :cond_9
    move/from16 v21, v3

    move-wide v0, v15

    :goto_a
    cmp-long v2, v0, v32

    if-gez v2, :cond_d

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    move-wide/from16 v11, p1

    mul-long/2addr v4, v11

    mul-long v2, v2, p5

    mul-long/2addr v2, v11

    mul-long v6, v0, v17

    mul-long/2addr v6, v11

    move-wide/from16 v8, v17

    :goto_b
    cmp-long v10, v8, v11

    if-gez v10, :cond_b

    sub-long v19, v11, v8

    add-long v24, p13, v8

    add-long v19, p10, v19

    add-long v26, p10, v8

    move-wide/from16 v28, v22

    :goto_c
    cmp-long v10, v28, p5

    if-gez v10, :cond_a

    mul-long v38, v28, v11

    add-long v40, v38, v4

    add-long v38, v38, v2

    mul-long v42, v28, p3

    mul-long v42, v42, v11

    add-long v42, v42, v6

    move-wide/from16 v44, v2

    add-long v2, v24, v40

    move-wide/from16 v40, v4

    add-long v4, v24, v38

    move-wide/from16 v38, v6

    add-long v6, v26, v42

    add-long v42, v19, v42

    move-wide/from16 v46, v0

    sub-long v0, v42, v11

    sub-long v10, v6, v15

    move-object/from16 v13, p9

    .line 6435
    invoke-virtual {v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    .line 6436
    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    move-wide/from16 v42, v8

    sub-long v8, v0, v15

    .line 6437
    invoke-virtual {v13, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    .line 6438
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    sub-long v12, v2, v15

    move-wide/from16 v48, v2

    add-double v2, v10, v8

    .line 6440
    invoke-virtual {v14, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v2, v4, v15

    sub-double/2addr v10, v8

    .line 6441
    invoke-virtual {v14, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v2, v6, v0

    move-wide/from16 v8, v48

    .line 6442
    invoke-virtual {v14, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double/2addr v6, v0

    .line 6443
    invoke-virtual {v14, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v28, v28, v15

    move-wide/from16 v11, p1

    move-wide/from16 v6, v38

    move-wide/from16 v4, v40

    move-wide/from16 v8, v42

    move-wide/from16 v2, v44

    move-wide/from16 v0, v46

    goto :goto_c

    :cond_a
    move-wide/from16 v46, v0

    move-wide/from16 v44, v2

    move-wide/from16 v40, v4

    move-wide/from16 v38, v6

    move-wide/from16 v42, v8

    add-long v8, v42, v17

    move-wide/from16 v11, p1

    goto :goto_b

    :cond_b
    move-wide/from16 v46, v0

    add-long v0, v46, v15

    goto/16 :goto_a

    :cond_c
    move/from16 v21, v3

    :cond_d
    sub-long v0, p3, v15

    mul-long v0, v0, p7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    move-wide v6, v15

    :goto_d
    cmp-long v8, v6, v32

    if-gez v8, :cond_11

    sub-long v8, p3, v6

    mul-double v10, v36, v2

    mul-double v12, v34, v4

    sub-double/2addr v10, v12

    mul-double v4, v4, v36

    mul-double v2, v2, v34

    add-double/2addr v4, v2

    mul-long v2, v6, p7

    mul-long v8, v8, p7

    move-wide/from16 v12, v22

    :goto_e
    cmp-long v19, v12, p7

    if-gez v19, :cond_e

    add-long v19, p10, v12

    move-wide/from16 v24, v6

    add-long v6, p13, v12

    move-wide/from16 v26, v12

    add-long v12, v19, v2

    .line 6463
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v28

    move-wide/from16 v38, v2

    add-long v2, v6, p7

    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double v2, v28, v2

    move-object/from16 v15, p9

    invoke-virtual {v15, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v19, v8

    add-long/2addr v6, v0

    .line 6464
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-virtual {v15, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long v12, v26, v2

    move-wide v15, v2

    move-wide/from16 v6, v24

    move-wide/from16 v2, v38

    goto :goto_e

    :cond_e
    move-object/from16 v15, p9

    move-wide/from16 v38, v2

    move-wide/from16 v24, v6

    move-wide v12, v4

    move-wide v6, v10

    move-wide/from16 v2, v17

    :goto_f
    cmp-long v16, v2, v32

    if-gez v16, :cond_10

    sub-long v19, p3, v2

    mul-double v26, v10, v6

    mul-double v40, v4, v12

    sub-double v26, v26, v40

    mul-double/2addr v12, v10

    mul-double/2addr v6, v4

    add-double/2addr v12, v6

    mul-long v6, v2, p7

    mul-long v19, v19, p7

    move-wide/from16 v40, v22

    :goto_10
    cmp-long v16, v40, p7

    if-gez v16, :cond_f

    add-long v42, p10, v40

    add-long v44, p13, v40

    move-wide/from16 v46, v0

    add-long v0, v42, v38

    .line 6480
    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v48

    move-wide/from16 v50, v4

    add-long v4, v44, v6

    invoke-virtual {v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double v4, v4, v26

    add-double v4, v48, v4

    invoke-virtual {v15, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v42, v8

    .line 6481
    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v42, v6

    add-long v6, v44, v19

    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    invoke-virtual {v15, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long v40, v40, v0

    move-wide/from16 v6, v42

    move-wide/from16 v0, v46

    move-wide/from16 v4, v50

    goto :goto_10

    :cond_f
    move-wide/from16 v46, v0

    move-wide/from16 v50, v4

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    move-wide/from16 v6, v26

    move-wide/from16 v0, v46

    goto :goto_f

    :cond_10
    move-wide/from16 v46, v0

    move-wide/from16 v50, v4

    const-wide/16 v0, 0x1

    add-long v6, v24, v0

    move-wide v15, v0

    move-wide v2, v10

    move-wide/from16 v0, v46

    goto/16 :goto_d

    :cond_11
    move-object/from16 v15, p9

    const-wide/16 v0, 0x1

    :goto_11
    cmp-long v2, v0, v32

    if-gez v2, :cond_13

    mul-long v2, v0, p7

    move-wide/from16 v4, v22

    :goto_12
    cmp-long v6, v4, p7

    if-gez v6, :cond_12

    add-long v6, p13, v4

    .line 6489
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    add-long v10, v6, v2

    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v14, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_12

    :cond_12
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_11

    :cond_13
    const-wide/16 v0, 0x1

    :goto_13
    cmp-long v2, v0, v32

    if-gez v2, :cond_15

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v22

    :goto_14
    cmp-long v8, v6, p5

    if-gez v8, :cond_14

    mul-long v8, v6, p1

    add-long v10, p13, v8

    add-long v8, p10, v8

    add-long v12, v8, v4

    add-long/2addr v8, v2

    .line 6501
    invoke-virtual {v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    .line 6502
    invoke-virtual {v15, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    move-wide/from16 v19, v0

    add-long v0, v10, v4

    move-wide/from16 v24, v4

    sub-double v4, v12, v8

    .line 6504
    invoke-virtual {v14, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v10, v2

    add-double/2addr v12, v8

    .line 6505
    invoke-virtual {v14, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    move-wide/from16 v0, v19

    move-wide/from16 v4, v24

    goto :goto_14

    :cond_14
    move-wide/from16 v19, v0

    const-wide/16 v0, 0x1

    add-long v2, v19, v0

    move-wide v0, v2

    goto :goto_13

    :cond_15
    if-nez v21, :cond_16

    return-void

    :cond_16
    cmp-long v0, v30, p5

    if-ltz v0, :cond_1a

    const-wide/16 v1, 0x1

    :goto_15
    cmp-long v3, v1, v32

    if-gez v3, :cond_19

    sub-long v3, p3, v1

    mul-long v5, v1, p5

    mul-long v5, v5, p1

    mul-long v3, v3, p5

    mul-long v3, v3, p1

    move-wide/from16 v7, v22

    :goto_16
    cmp-long v9, v7, p5

    if-gez v9, :cond_18

    mul-long v9, v7, p1

    move-wide/from16 v11, v17

    :goto_17
    cmp-long v13, v11, p1

    if-gez v13, :cond_17

    add-long v19, p13, v11

    add-long v24, p10, v11

    add-long v19, v19, v9

    move v13, v0

    move-wide/from16 v26, v1

    add-long v0, v19, v5

    move-wide/from16 v30, v7

    add-long v7, v19, v3

    add-long v24, v24, v9

    move-wide/from16 v19, v9

    add-long v9, v24, v5

    move-wide/from16 v34, v5

    add-long v5, v24, v3

    move-wide/from16 v28, v3

    const-wide/16 v24, 0x1

    sub-long v2, v9, v24

    .line 6526
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 6527
    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    move-wide/from16 v36, v11

    sub-long v11, v5, v24

    .line 6528
    invoke-virtual {v15, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 6529
    invoke-virtual {v15, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v38, v9

    sub-long v9, v0, v24

    move-wide/from16 v40, v0

    sub-double v0, v2, v4

    .line 6531
    invoke-virtual {v14, v9, v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v7, v24

    add-double/2addr v2, v4

    .line 6532
    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v9, v38, v11

    move-wide/from16 v0, v40

    .line 6533
    invoke-virtual {v14, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v9, v38, v11

    .line 6534
    invoke-virtual {v14, v7, v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v36, v17

    move v0, v13

    move-wide/from16 v9, v19

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    move-wide/from16 v7, v30

    move-wide/from16 v5, v34

    goto :goto_17

    :cond_17
    move v13, v0

    move-wide/from16 v26, v1

    move-wide/from16 v28, v3

    move-wide/from16 v34, v5

    move-wide/from16 v30, v7

    const-wide/16 v24, 0x1

    add-long v7, v30, v24

    goto :goto_16

    :cond_18
    move v13, v0

    move-wide/from16 v26, v1

    const-wide/16 v24, 0x1

    add-long v1, v26, v24

    goto/16 :goto_15

    :cond_19
    move/from16 v16, v0

    goto/16 :goto_1b

    :cond_1a
    move v13, v0

    const-wide/16 v0, 0x1

    :goto_18
    cmp-long v2, v0, v32

    if-gez v2, :cond_1d

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v17

    :goto_19
    cmp-long v8, v6, p1

    if-gez v8, :cond_1c

    add-long v8, p13, v6

    add-long v10, p10, v6

    move-wide/from16 v19, v22

    :goto_1a
    cmp-long v12, v19, p5

    if-gez v12, :cond_1b

    mul-long v24, v19, p1

    add-long v26, v8, v24

    move-wide/from16 v30, v8

    add-long v8, v26, v4

    move/from16 v16, v13

    add-long v12, v26, v2

    add-long v24, v10, v24

    move-wide/from16 v26, v10

    add-long v10, v24, v4

    move-wide/from16 v34, v4

    add-long v4, v24, v2

    move-wide/from16 v28, v2

    const-wide/16 v24, 0x1

    sub-long v2, v10, v24

    .line 6552
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 6553
    invoke-virtual {v15, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    move-wide/from16 v36, v0

    sub-long v0, v4, v24

    .line 6554
    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 6555
    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v38, v6

    sub-long v6, v8, v24

    move-wide/from16 v40, v8

    sub-double v8, v2, v4

    .line 6557
    invoke-virtual {v14, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v6, v12, v24

    add-double/2addr v2, v4

    .line 6558
    invoke-virtual {v14, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v2, v10, v0

    move-wide/from16 v4, v40

    .line 6559
    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v10, v0

    .line 6560
    invoke-virtual {v14, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v19, v19, v24

    move/from16 v13, v16

    move-wide/from16 v10, v26

    move-wide/from16 v2, v28

    move-wide/from16 v8, v30

    move-wide/from16 v4, v34

    move-wide/from16 v0, v36

    move-wide/from16 v6, v38

    goto :goto_1a

    :cond_1b
    move-wide/from16 v36, v0

    move-wide/from16 v28, v2

    move-wide/from16 v34, v4

    move-wide/from16 v38, v6

    move/from16 v16, v13

    const-wide/16 v24, 0x1

    add-long v6, v38, v17

    goto :goto_19

    :cond_1c
    move-wide/from16 v36, v0

    move/from16 v16, v13

    const-wide/16 v24, 0x1

    add-long v0, v36, v24

    goto/16 :goto_18

    :cond_1d
    move/from16 v16, v13

    :goto_1b
    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-object/from16 v8, p9

    move-wide/from16 v9, p10

    move-wide/from16 v0, p1

    move-wide/from16 v11, p7

    .line 6565
    invoke-static/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    const-wide/16 v2, 0x1

    :goto_1c
    cmp-long v4, v2, p3

    if-gez v4, :cond_1f

    mul-long v4, v2, p5

    mul-long/2addr v4, v0

    move-wide/from16 v6, v22

    :goto_1d
    cmp-long v8, v6, p5

    if-gez v8, :cond_1e

    mul-long v8, v6, v0

    add-long/2addr v8, v4

    add-long v10, p10, v8

    add-long v8, p13, v8

    .line 6570
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v15, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v28, 0x1

    add-long v6, v6, v28

    goto :goto_1d

    :cond_1e
    const-wide/16 v28, 0x1

    add-long v2, v2, v28

    goto :goto_1c

    :cond_1f
    const-wide/16 v28, 0x1

    if-gtz v16, :cond_22

    neg-long v2, v0

    move-wide/from16 v4, v28

    :goto_1e
    cmp-long v6, v4, p3

    if-gez v6, :cond_25

    add-long/2addr v2, v0

    sub-long v6, v2, v28

    mul-long v8, v4, p5

    mul-long/2addr v8, v0

    move-wide/from16 v10, v17

    :goto_1f
    cmp-long v12, v10, v0

    if-gez v12, :cond_21

    add-long v6, v6, v17

    add-long v12, v6, p15

    move-wide/from16 p7, v2

    move-object/from16 v2, p0

    .line 6582
    iget-object v3, v2, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v19, v6

    sub-long v6, v12, v28

    invoke-virtual {v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 6583
    iget-object v3, v2, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v3, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    add-long v24, p10, v10

    add-long v26, p13, v10

    move-wide/from16 v30, v22

    :goto_20
    cmp-long v3, v30, p5

    if-gez v3, :cond_20

    mul-long v32, v30, v0

    add-long v32, v32, v8

    move-wide/from16 v34, v8

    add-long v8, v24, v32

    add-long v2, v26, v32

    const-wide/16 v28, 0x1

    sub-long v0, v2, v28

    .line 6590
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 6591
    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    move-wide/from16 v32, v4

    sub-long v4, v8, v28

    mul-double v36, v6, v0

    mul-double v38, v12, v2

    move-wide/from16 v40, v10

    sub-double v10, v36, v38

    .line 6593
    invoke-virtual {v15, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double/2addr v2, v6

    mul-double/2addr v0, v12

    add-double/2addr v2, v0

    .line 6594
    invoke-virtual {v15, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v30, v30, v28

    move-object/from16 v2, p0

    move-wide/from16 v0, p1

    move-wide/from16 v4, v32

    move-wide/from16 v8, v34

    move-wide/from16 v10, v40

    goto :goto_20

    :cond_20
    move-wide/from16 v32, v4

    move-wide/from16 v34, v8

    move-wide/from16 v40, v10

    const-wide/16 v28, 0x1

    add-long v10, v40, v17

    move-wide/from16 v0, p1

    move-wide/from16 v2, p7

    move-wide/from16 v6, v19

    goto :goto_1f

    :cond_21
    move-wide/from16 p7, v2

    move-wide/from16 v32, v4

    add-long v4, v32, v28

    move-wide/from16 v0, p1

    const-wide/16 v28, 0x1

    goto/16 :goto_1e

    :cond_22
    neg-long v2, v0

    move-wide v4, v2

    const-wide/16 v2, 0x1

    :goto_21
    cmp-long v6, v2, p3

    if-gez v6, :cond_25

    add-long/2addr v4, v0

    mul-long v6, v2, p5

    mul-long/2addr v6, v0

    move-wide/from16 v8, v22

    :goto_22
    cmp-long v10, v8, p5

    if-gez v10, :cond_24

    const-wide/16 v10, 0x1

    sub-long v12, v4, v10

    mul-long v19, v8, v0

    add-long v19, v19, v6

    move-wide/from16 v24, v17

    :goto_23
    cmp-long v16, v24, v0

    if-gez v16, :cond_23

    add-long v12, v12, v17

    add-long v0, v12, p15

    move-wide/from16 p7, v4

    move-object/from16 v4, p0

    .line 6609
    iget-object v5, v4, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v26, v6

    sub-long v6, v0, v10

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 6610
    iget-object v7, v4, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    add-long v28, p10, v24

    add-long v30, p13, v24

    move-wide/from16 v32, v12

    add-long v12, v28, v19

    move-wide/from16 v28, v2

    add-long v2, v30, v19

    move-wide/from16 v30, v8

    sub-long v7, v2, v10

    .line 6615
    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 6616
    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    sub-long v14, v12, v10

    mul-double v34, v5, v7

    mul-double v36, v0, v2

    sub-double v10, v34, v36

    move-object/from16 v9, p9

    .line 6618
    invoke-virtual {v9, v14, v15, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double/2addr v5, v2

    mul-double/2addr v0, v7

    add-double/2addr v5, v0

    .line 6619
    invoke-virtual {v9, v12, v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v24, v24, v17

    move-wide/from16 v0, p1

    move-wide/from16 v4, p7

    move-object/from16 v14, p12

    move-object v15, v9

    move-wide/from16 v6, v26

    move-wide/from16 v2, v28

    move-wide/from16 v8, v30

    move-wide/from16 v12, v32

    const-wide/16 v10, 0x1

    goto :goto_23

    :cond_23
    move-wide/from16 v28, v2

    move-wide/from16 p7, v4

    move-wide/from16 v26, v6

    move-wide/from16 v30, v8

    move-wide v0, v10

    move-object v9, v15

    move-object/from16 v4, p0

    add-long v2, v30, v0

    move-wide/from16 v0, p1

    move-wide/from16 v4, p7

    move-object/from16 v14, p12

    move-wide v8, v2

    move-wide/from16 v2, v28

    goto/16 :goto_22

    :cond_24
    move-wide/from16 v28, v2

    move-wide/from16 p7, v4

    move-object v9, v15

    const-wide/16 v0, 0x1

    move-object/from16 v4, p0

    add-long v2, v28, v0

    move-wide/from16 v0, p1

    move-wide/from16 v4, p7

    move-object/from16 v14, p12

    goto/16 :goto_21

    :cond_25
    move-object/from16 v4, p0

    return-void
.end method

.method radf2(II[DI[DII)V
    .locals 31

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

    .line 3682
    aget-wide v10, p3, v6

    .line 3683
    aget-wide v12, p3, v9

    add-double v14, v10, v12

    .line 3685
    aput-wide v14, p5, v7

    sub-double/2addr v10, v12

    .line 3686
    aput-wide v10, p5, v8

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

    .line 3705
    aget-wide v17, p3, v17

    .line 3706
    aget-wide v19, p3, v16

    add-int/lit8 v16, v15, -0x1

    .line 3707
    aget-wide v21, p3, v16

    .line 3708
    aget-wide v15, p3, v15

    move-object/from16 v4, p0

    .line 3710
    iget-object v5, v4, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v13, -0x1

    aget-wide v23, v5, v23

    .line 3711
    aget-wide v25, v5, v13

    mul-double v27, v23, v21

    mul-double v29, v25, v15

    add-double v27, v27, v29

    mul-double v23, v23, v15

    mul-double v25, v25, v21

    sub-double v23, v23, v25

    add-double v15, v19, v23

    .line 3716
    aput-wide v15, p5, v14

    sub-int/2addr v14, v6

    add-double v15, v17, v27

    .line 3717
    aput-wide v15, p5, v14

    sub-double v23, v23, v19

    .line 3719
    aput-wide v23, p5, v12

    sub-int/2addr v12, v6

    sub-double v17, v17, v27

    .line 3720
    aput-wide v17, p5, v12

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

    .line 3723
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

    .line 3733
    aget-wide v10, p3, v7

    neg-double v10, v10

    aput-wide v10, p5, v8

    sub-int/2addr v8, v6

    .line 3734
    aget-wide v9, p3, v9

    aput-wide v9, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method radf2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 38

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

    .line 3755
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    .line 3756
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-double v0, v13, v7

    .line 3758
    invoke-virtual {v2, v9, v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v13, v7

    .line 3759
    invoke-virtual {v2, v5, v6, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long/2addr v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v7, v16

    const-wide/16 v5, 0x2

    goto :goto_0

    :cond_0
    move-wide v0, v5

    move-wide/from16 v16, v7

    cmp-long v5, p1, v0

    if-gez v5, :cond_1

    return-void

    :cond_1
    if-eqz v5, :cond_4

    move-wide/from16 v7, v16

    const-wide/16 v5, 0x0

    :goto_1
    cmp-long v9, v5, p3

    if-gez v9, :cond_3

    mul-long v7, v5, p1

    mul-long v9, v7, v0

    add-long v0, v9, p1

    add-long v11, v7, v3

    const-wide/16 v13, 0x2

    :goto_2
    cmp-long v15, v13, p1

    if-gez v15, :cond_2

    sub-long v15, p1, v13

    const-wide/16 v18, 0x1

    sub-long v20, v13, v18

    move-wide/from16 v22, v3

    add-long v3, v20, p11

    add-long v20, p9, v13

    move-wide/from16 v24, v5

    add-long v5, v20, v9

    add-long v15, p9, v15

    move-wide/from16 v20, v9

    add-long v9, v15, v0

    add-long v15, p6, v13

    move-wide/from16 v26, v0

    add-long v0, v15, v7

    move-wide/from16 v28, v7

    add-long v7, v15, v11

    move-wide v15, v11

    sub-long v11, v0, v18

    move-wide/from16 v30, v15

    move-object/from16 v15, p5

    .line 3778
    invoke-virtual {v15, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 3779
    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v16, v13

    sub-long v13, v7, v18

    .line 3780
    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    .line 3781
    invoke-virtual {v15, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    move-object/from16 v15, p0

    move-wide/from16 v32, v9

    .line 3783
    iget-object v9, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v34, v11

    sub-long v10, v3, v18

    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 3784
    iget-object v11, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    mul-double v11, v9, v13

    mul-double v36, v3, v7

    add-double v11, v11, v36

    mul-double/2addr v9, v7

    mul-double/2addr v3, v13

    sub-double/2addr v9, v3

    add-double v3, v0, v9

    .line 3789
    invoke-virtual {v2, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    sub-long/2addr v5, v3

    add-double v7, v34, v11

    .line 3790
    invoke-virtual {v2, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v9, v0

    move-wide/from16 v0, v32

    .line 3792
    invoke-virtual {v2, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v9, v0, v3

    sub-double v11, v34, v11

    .line 3793
    invoke-virtual {v2, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v13, v16, v0

    move-wide/from16 v9, v20

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v0, v26

    move-wide/from16 v7, v28

    move-wide/from16 v11, v30

    goto/16 :goto_2

    :cond_2
    move-object/from16 v15, p0

    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v28, v7

    const-wide/16 v0, 0x2

    const-wide/16 v3, 0x1

    add-long v5, v24, v3

    move-wide/from16 v3, v22

    goto/16 :goto_1

    :cond_3
    move-object/from16 v15, p0

    move-wide/from16 v22, v3

    const-wide/16 v3, 0x1

    .line 3796
    rem-long v5, p1, v0

    cmp-long v5, v5, v3

    if-nez v5, :cond_5

    return-void

    :cond_4
    move-object/from16 v15, p0

    move-wide/from16 v22, v3

    move-wide/from16 v7, v16

    :cond_5
    mul-long/2addr v7, v0

    const-wide/16 v9, 0x0

    :goto_3
    cmp-long v0, v9, p3

    if-gez v0, :cond_6

    mul-long v0, v9, p1

    add-long v3, p9, v7

    add-long v3, v3, p1

    add-long v5, p6, p1

    const-wide/16 v11, 0x1

    sub-long/2addr v5, v11

    add-long/2addr v5, v0

    add-long v0, v5, v22

    move-object/from16 v13, p5

    .line 3806
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {v2, v3, v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long/2addr v3, v11

    .line 3807
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v3, v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v9, v11

    move-object/from16 v15, p0

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf3(II[DI[DII)V
    .locals 44

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    mul-int v3, v1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const-wide v8, 0x3febb67ae8584cabL    # 0.8660254037844387

    const/4 v10, 0x1

    if-ge v5, v1, :cond_0

    mul-int v11, v5, v0

    mul-int/lit8 v12, v3, 0x2

    mul-int/lit8 v13, v5, 0x3

    add-int/2addr v13, v10

    mul-int/2addr v13, v0

    add-int v14, p4, v11

    add-int v15, v14, v3

    add-int/2addr v12, v14

    .line 3972
    aget-wide v16, p3, v14

    .line 3973
    aget-wide v14, p3, v15

    .line 3974
    aget-wide v18, p3, v12

    add-double v20, v14, v18

    mul-int/lit8 v11, v11, 0x3

    add-int v11, p6, v11

    add-double v22, v16, v20

    .line 3976
    aput-wide v22, p5, v11

    add-int v11, p6, v13

    add-int/2addr v11, v0

    sub-double v18, v18, v14

    mul-double v18, v18, v8

    .line 3977
    aput-wide v18, p5, v11

    add-int v8, p6, v0

    sub-int/2addr v8, v10

    add-int/2addr v8, v13

    mul-double v20, v20, v6

    add-double v16, v16, v20

    .line 3978
    aput-wide v16, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v10, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge v4, v1, :cond_3

    mul-int v5, v4, v0

    mul-int/lit8 v10, v5, 0x3

    add-int v11, v5, v3

    add-int v12, v11, v3

    add-int v13, v10, v0

    add-int v14, v13, v0

    const/4 v15, 0x2

    :goto_2
    if-ge v15, v0, :cond_2

    sub-int v16, v0, v15

    add-int/lit8 v17, v15, -0x1

    add-int v18, v17, p7

    add-int v17, v17, v2

    move-object/from16 v8, p0

    .line 3995
    iget-object v9, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v21, v18, -0x1

    aget-wide v21, v9, v21

    .line 3996
    aget-wide v23, v9, v18

    add-int/lit8 v18, v17, -0x1

    .line 3997
    aget-wide v25, v9, v18

    .line 3998
    aget-wide v17, v9, v17

    add-int v9, p4, v15

    add-int v27, p6, v15

    add-int v16, p6, v16

    add-int v28, v9, v5

    add-int v29, v9, v11

    add-int/2addr v9, v12

    add-int/lit8 v30, v28, -0x1

    .line 4007
    aget-wide v30, p3, v30

    .line 4008
    aget-wide v32, p3, v28

    add-int/lit8 v28, v29, -0x1

    .line 4009
    aget-wide v34, p3, v28

    .line 4010
    aget-wide v28, p3, v29

    add-int/lit8 v36, v9, -0x1

    .line 4011
    aget-wide v36, p3, v36

    .line 4012
    aget-wide v38, p3, v9

    mul-double v40, v21, v34

    mul-double v42, v23, v28

    add-double v40, v40, v42

    mul-double v21, v21, v28

    mul-double v23, v23, v34

    sub-double v21, v21, v23

    mul-double v23, v25, v36

    mul-double v28, v17, v38

    add-double v23, v23, v28

    mul-double v25, v25, v38

    mul-double v17, v17, v36

    sub-double v25, v25, v17

    add-double v17, v40, v23

    add-double v28, v21, v25

    mul-double v34, v17, v6

    add-double v34, v30, v34

    mul-double v36, v28, v6

    add-double v36, v32, v36

    sub-double v21, v21, v25

    const-wide v19, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v21, v21, v19

    sub-double v23, v23, v40

    mul-double v23, v23, v19

    add-int v9, v27, v10

    add-int v16, v16, v13

    add-int v27, v27, v14

    add-int/lit8 v25, v9, -0x1

    add-double v30, v30, v17

    .line 4029
    aput-wide v30, p5, v25

    add-double v32, v32, v28

    .line 4030
    aput-wide v32, p5, v9

    add-int/lit8 v9, v16, -0x1

    sub-double v17, v34, v21

    .line 4031
    aput-wide v17, p5, v9

    sub-double v17, v23, v36

    .line 4032
    aput-wide v17, p5, v16

    add-int/lit8 v9, v27, -0x1

    add-double v34, v34, v21

    .line 4033
    aput-wide v34, p5, v9

    add-double v36, v36, v23

    .line 4034
    aput-wide v36, p5, v27

    add-int/lit8 v15, v15, 0x2

    move-wide/from16 v8, v19

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v19, v8

    move-object/from16 v8, p0

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v8, v19

    goto/16 :goto_1

    :cond_3
    move-object/from16 v8, p0

    return-void
.end method

.method radf3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 58

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    add-long v3, p11, p1

    mul-long v5, p3, p1

    const-wide/16 v9, 0x0

    :goto_0
    cmp-long v11, v9, p3

    const-wide/16 v16, 0x3

    const-wide/16 v18, 0x2

    const-wide/16 v20, 0x1

    if-gez v11, :cond_0

    mul-long v22, v9, p1

    mul-long v18, v18, v5

    mul-long v24, v9, v16

    add-long v24, v24, v20

    mul-long v24, v24, p1

    add-long v7, p6, v22

    add-long v12, v7, v5

    add-long v14, v7, v18

    .line 4060
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 4061
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 4062
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    add-double v18, v11, v13

    mul-long v22, v22, v16

    add-long v0, p9, v22

    move-wide/from16 v22, v3

    add-double v3, v7, v18

    .line 4064
    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, v24

    add-long v0, v0, p1

    sub-double/2addr v13, v11

    const-wide v3, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double/2addr v13, v3

    .line 4065
    invoke-virtual {v2, v0, v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, p1

    sub-long v0, v0, v20

    add-long v0, v0, v24

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    mul-double v18, v18, v3

    add-double v7, v7, v18

    .line 4066
    invoke-virtual {v2, v0, v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v3, v22

    goto :goto_0

    :cond_0
    move-wide/from16 v22, v3

    cmp-long v0, p1, v20

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v7, 0x0

    :goto_1
    cmp-long v0, v7, p3

    if-gez v0, :cond_3

    mul-long v0, v7, p1

    mul-long v3, v0, v16

    add-long v9, v0, v5

    add-long v11, v9, v5

    add-long v13, v3, p1

    add-long v24, v13, p1

    move-wide/from16 v26, v18

    :goto_2
    cmp-long v15, v26, p1

    if-gez v15, :cond_2

    sub-long v30, p1, v26

    sub-long v32, v26, v20

    move-wide/from16 v34, v5

    add-long v5, v32, p11

    move-wide/from16 v36, v7

    add-long v7, v32, v22

    move-object/from16 v15, p0

    .line 4083
    iget-object v2, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v32, v13

    sub-long v13, v5, v20

    invoke-virtual {v2, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    .line 4084
    iget-object v2, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 4085
    iget-object v2, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v38, v3

    sub-long v3, v7, v20

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 4086
    iget-object v4, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-long v40, p6, v26

    add-long v42, p9, v26

    add-long v30, p9, v30

    move-wide/from16 v44, v7

    add-long v7, v40, v0

    move-wide/from16 v46, v0

    add-long v0, v40, v9

    move-wide/from16 v48, v9

    add-long v9, v40, v11

    move-wide/from16 v40, v11

    sub-long v11, v7, v20

    move-object/from16 v4, p5

    .line 4095
    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 4096
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    move-wide/from16 v50, v7

    sub-long v7, v0, v20

    .line 4097
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 4098
    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v52, v11

    sub-long v11, v9, v20

    .line 4099
    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 4100
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double v54, v13, v7

    mul-double v56, v5, v0

    add-double v54, v54, v56

    mul-double/2addr v13, v0

    mul-double/2addr v5, v7

    sub-double/2addr v13, v5

    mul-double v0, v2, v11

    mul-double v7, v44, v9

    add-double/2addr v0, v7

    mul-double/2addr v2, v9

    mul-double v7, v44, v11

    sub-double/2addr v2, v7

    add-double v5, v54, v0

    add-double v7, v13, v2

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    mul-double v11, v5, v9

    add-double v11, v52, v11

    mul-double v28, v7, v9

    add-double v28, v50, v28

    sub-double/2addr v13, v2

    const-wide v2, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double/2addr v13, v2

    sub-double v0, v0, v54

    mul-double/2addr v0, v2

    add-long v2, v42, v38

    add-long v9, v30, v32

    move-wide/from16 v30, v0

    add-long v0, v42, v24

    move-wide/from16 v42, v0

    sub-long v0, v2, v20

    add-double v5, v52, v5

    move-object/from16 v4, p8

    .line 4117
    invoke-virtual {v4, v0, v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v7, v50, v7

    .line 4118
    invoke-virtual {v4, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v9, v20

    sub-double v2, v11, v13

    .line 4119
    invoke-virtual {v4, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v0, v30, v28

    .line 4120
    invoke-virtual {v4, v9, v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v42, v20

    add-double/2addr v11, v13

    .line 4121
    invoke-virtual {v4, v0, v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v0, v28, v30

    move-wide/from16 v2, v42

    .line 4122
    invoke-virtual {v4, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v26, v26, v18

    move-object v2, v4

    move-wide/from16 v13, v32

    move-wide/from16 v5, v34

    move-wide/from16 v7, v36

    move-wide/from16 v3, v38

    move-wide/from16 v11, v40

    move-wide/from16 v0, v46

    move-wide/from16 v9, v48

    goto/16 :goto_2

    :cond_2
    move-object/from16 v15, p0

    move-object v4, v2

    move-wide/from16 v34, v5

    move-wide/from16 v36, v7

    add-long v7, v36, v20

    goto/16 :goto_1

    :cond_3
    move-object/from16 v15, p0

    return-void
.end method

.method radf4(II[DI[DII)V
    .locals 54

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

    .line 4321
    aget-wide v13, p3, v7

    add-int v7, p4, v9

    .line 4322
    aget-wide v15, p3, v7

    add-int v7, p4, v10

    .line 4323
    aget-wide v9, p3, v7

    add-int v7, p4, v11

    .line 4324
    aget-wide v17, p3, v7

    add-double v19, v15, v17

    add-double v21, v13, v9

    add-int v7, p6, v8

    add-int v8, p6, v12

    add-int/2addr v8, v0

    add-double v11, v19, v21

    .line 4332
    aput-wide v11, p5, v7

    add-int/lit8 v7, v8, -0x1

    add-int v11, v7, v0

    add-int/2addr v11, v0

    sub-double v21, v21, v19

    .line 4333
    aput-wide v21, p5, v11

    sub-double/2addr v13, v9

    .line 4334
    aput-wide v13, p5, v7

    sub-double v17, v17, v15

    .line 4335
    aput-wide v17, p5, v8

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

    sub-int v18, v0, v5

    add-int/lit8 v19, v5, -0x1

    add-int v20, v19, p7

    add-int v21, v19, v2

    add-int v19, v19, v3

    move-object/from16 v6, p0

    .line 4355
    iget-object v7, v6, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v20, -0x1

    aget-wide v23, v7, v23

    .line 4356
    aget-wide v25, v7, v20

    add-int/lit8 v20, v21, -0x1

    .line 4357
    aget-wide v27, v7, v20

    .line 4358
    aget-wide v20, v7, v21

    add-int/lit8 v29, v19, -0x1

    .line 4359
    aget-wide v29, v7, v29

    .line 4360
    aget-wide v31, v7, v19

    add-int v7, p4, v5

    add-int v19, p6, v5

    add-int v18, p6, v18

    add-int v33, v7, v9

    add-int v34, v7, v10

    add-int v35, v7, v11

    add-int/2addr v7, v12

    add-int/lit8 v36, v33, -0x1

    .line 4370
    aget-wide v36, p3, v36

    .line 4371
    aget-wide v38, p3, v33

    add-int/lit8 v33, v34, -0x1

    .line 4372
    aget-wide v40, p3, v33

    .line 4373
    aget-wide v33, p3, v34

    add-int/lit8 v42, v35, -0x1

    .line 4374
    aget-wide v42, p3, v42

    .line 4375
    aget-wide v44, p3, v35

    add-int/lit8 v35, v7, -0x1

    .line 4376
    aget-wide v46, p3, v35

    .line 4377
    aget-wide v48, p3, v7

    mul-double v50, v23, v40

    mul-double v52, v25, v33

    add-double v50, v50, v52

    mul-double v23, v23, v33

    mul-double v25, v25, v40

    sub-double v23, v23, v25

    mul-double v25, v27, v42

    mul-double v33, v20, v44

    add-double v25, v25, v33

    mul-double v27, v27, v44

    mul-double v20, v20, v42

    sub-double v27, v27, v20

    mul-double v20, v29, v46

    mul-double v33, v31, v48

    add-double v20, v20, v33

    mul-double v29, v29, v48

    mul-double v31, v31, v46

    sub-double v29, v29, v31

    add-double v31, v50, v20

    sub-double v20, v20, v50

    add-double v33, v23, v29

    sub-double v23, v23, v29

    add-double v29, v38, v27

    sub-double v38, v38, v27

    add-double v27, v36, v25

    sub-double v36, v36, v25

    add-int v7, v19, v13

    add-int v25, v18, v14

    add-int v19, v19, v15

    add-int v18, v18, v16

    add-int/lit8 v26, v7, -0x1

    add-double v40, v31, v27

    .line 4399
    aput-wide v40, p5, v26

    add-int/lit8 v26, v18, -0x1

    sub-double v27, v27, v31

    .line 4400
    aput-wide v27, p5, v26

    add-double v26, v33, v29

    .line 4401
    aput-wide v26, p5, v7

    sub-double v33, v33, v29

    .line 4402
    aput-wide v33, p5, v18

    add-int/lit8 v7, v19, -0x1

    add-double v26, v23, v36

    .line 4403
    aput-wide v26, p5, v7

    add-int/lit8 v7, v25, -0x1

    sub-double v36, v36, v23

    .line 4404
    aput-wide v36, p5, v7

    add-double v23, v20, v38

    .line 4405
    aput-wide v23, p5, v19

    sub-double v20, v20, v38

    .line 4406
    aput-wide v20, p5, v25

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

    .line 4409
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

    .line 4425
    aget-wide v15, p3, v2

    add-int/2addr v7, v13

    .line 4426
    aget-wide v17, p3, v7

    add-int/2addr v8, v13

    .line 4427
    aget-wide v7, p3, v8

    add-int/2addr v13, v9

    .line 4428
    aget-wide v19, p3, v13

    const-wide v21, -0x40195f619980c433L    # -0.7071067811865476

    add-double v23, v17, v19

    mul-double v23, v23, v21

    const-wide v21, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    sub-double v17, v17, v19

    mul-double v17, v17, v21

    const/4 v2, 0x1

    sub-int/2addr v14, v2

    add-int/2addr v3, v14

    add-double v19, v17, v15

    .line 4433
    aput-wide v19, p5, v3

    add-int/2addr v14, v11

    sub-double v15, v15, v17

    .line 4434
    aput-wide v15, p5, v14

    add-int v3, p6, v10

    sub-double v9, v23, v7

    .line 4435
    aput-wide v9, p5, v3

    add-int v3, p6, v12

    add-double v23, v23, v7

    .line 4436
    aput-wide v23, p5, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 68

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

    .line 4460
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    move-wide/from16 v18, v5

    add-long v5, p6, v20

    .line 4461
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    move-wide/from16 v20, v3

    add-long v3, p6, v22

    .line 4462
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    move-wide/from16 v22, v7

    add-long v7, p6, v24

    .line 4463
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-double v24, v5, v7

    add-double v30, v9, v3

    add-long v13, p9, v14

    add-long v26, p9, v26

    add-long v0, v26, p1

    move-wide/from16 v26, v11

    add-double v11, v24, v30

    .line 4471
    invoke-virtual {v2, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v11, v0, v16

    add-long v13, v11, p1

    add-long v13, v13, p1

    move-wide/from16 v32, v0

    sub-double v0, v30, v24

    .line 4472
    invoke-virtual {v2, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v9, v3

    .line 4473
    invoke-virtual {v2, v11, v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v7, v5

    move-wide/from16 v0, v32

    .line 4474
    invoke-virtual {v2, v0, v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4494
    iget-object v2, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v38, v11

    sub-long v11, v14, v16

    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 4495
    iget-object v2, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    .line 4496
    iget-object v2, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v42, v14

    sub-long v14, v0, v16

    invoke-virtual {v2, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    .line 4497
    iget-object v2, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 4498
    iget-object v2, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v44, v0

    sub-long v0, v3, v16

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 4499
    iget-object v2, v13, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    add-long v46, p6, v34

    add-long v48, p9, v34

    add-long v36, p9, v36

    move-wide/from16 v50, v2

    add-long v2, v46, v5

    move-wide/from16 v52, v5

    add-long v4, v46, v7

    move-wide/from16 v54, v7

    add-long v6, v46, v9

    move-wide/from16 v56, v9

    add-long v8, v46, v38

    move-wide/from16 v46, v0

    sub-long v0, v2, v16

    move-object/from16 v10, p5

    .line 4509
    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 4510
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    move-wide/from16 v58, v0

    sub-long v0, v4, v16

    .line 4511
    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 4512
    invoke-virtual {v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v60, v2

    sub-long v2, v6, v16

    .line 4513
    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 4514
    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    move-wide/from16 v62, v6

    sub-long v6, v8, v16

    .line 4515
    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 4516
    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double v64, v11, v0

    mul-double v66, v42, v4

    add-double v64, v64, v66

    mul-double/2addr v11, v4

    mul-double v0, v0, v42

    sub-double/2addr v11, v0

    mul-double v0, v14, v2

    mul-double v4, v44, v62

    add-double/2addr v0, v4

    mul-double v14, v14, v62

    mul-double v2, v2, v44

    sub-double/2addr v14, v2

    mul-double v2, v46, v6

    mul-double v4, v50, v8

    add-double/2addr v2, v4

    mul-double v4, v46, v8

    mul-double v6, v6, v50

    sub-double/2addr v4, v6

    add-double v6, v64, v2

    sub-double v2, v2, v64

    add-double v8, v11, v4

    sub-double/2addr v11, v4

    add-double v4, v60, v14

    sub-double v14, v60, v14

    add-double v42, v58, v0

    sub-double v0, v58, v0

    move-wide/from16 v44, v2

    add-long v2, v48, v24

    move-wide/from16 v46, v14

    add-long v13, v36, v26

    move-wide/from16 v50, v13

    add-long v13, v48, v30

    move-wide/from16 v48, v0

    add-long v0, v36, v32

    move-wide/from16 v36, v11

    sub-long v10, v2, v16

    move-wide/from16 v58, v13

    add-double v12, v6, v42

    move-object/from16 v14, p8

    .line 4538
    invoke-virtual {v14, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v10, v0, v16

    sub-double v6, v42, v6

    .line 4539
    invoke-virtual {v14, v10, v11, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v6, v8, v4

    .line 4540
    invoke-virtual {v14, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v8, v4

    .line 4541
    invoke-virtual {v14, v0, v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v58, v16

    add-double v11, v36, v48

    .line 4542
    invoke-virtual {v14, v0, v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v50, v16

    sub-double v2, v48, v36

    .line 4543
    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v2, v44, v46

    move-wide/from16 v0, v58

    .line 4544
    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v2, v44, v46

    move-wide/from16 v0, v50

    .line 4545
    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v34, v34, v0

    move-object v2, v14

    move-wide/from16 v11, v38

    move-wide/from16 v3, v40

    move-wide/from16 v5, v52

    move-wide/from16 v7, v54

    move-wide/from16 v9, v56

    const-wide/16 v14, 0x4

    goto/16 :goto_2

    :cond_2
    move-object v14, v2

    move-wide/from16 v40, v3

    add-long v3, v40, v16

    const-wide/16 v14, 0x4

    goto/16 :goto_1

    :cond_3
    move-object v14, v2

    .line 4548
    rem-long v0, p1, v0

    cmp-long v0, v0, v16

    if-nez v0, :cond_5

    return-void

    :cond_4
    move-object v14, v2

    :cond_5
    const-wide/16 v9, 0x0

    :goto_3
    cmp-long v0, v9, p3

    if-gez v0, :cond_6

    mul-long v0, v9, p1

    const-wide/16 v2, 0x4

    mul-long v4, v0, v2

    add-long v7, v0, v22

    add-long v11, v7, v22

    add-long v18, v11, v22

    add-long v20, v4, p1

    add-long v24, v20, p1

    add-long v26, v24, p1

    add-long v28, p6, p1

    add-long v30, p9, p1

    sub-long v28, v28, v16

    add-long v0, v28, v0

    move-object/from16 v6, p5

    .line 4564
    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    add-long v7, v28, v7

    .line 4565
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-long v11, v28, v11

    .line 4566
    invoke-virtual {v6, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    add-long v2, v28, v18

    .line 4567
    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    const-wide v18, -0x40195f619980c433L    # -0.7071067811865476

    add-double v28, v7, v2

    mul-double v28, v28, v18

    const-wide v18, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    sub-double/2addr v7, v2

    mul-double v7, v7, v18

    sub-long v30, v30, v16

    add-long v4, v30, v4

    add-double v2, v7, v0

    .line 4572
    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v30, v24

    sub-double/2addr v0, v7

    .line 4573
    invoke-virtual {v14, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, v20

    sub-double v2, v28, v11

    .line 4574
    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, v26

    add-double v2, v28, v11

    .line 4575
    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v16

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf5(II[DI[DII)V
    .locals 70

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    add-int v4, v3, v0

    mul-int v5, v1, v0

    const/4 v7, 0x0

    :goto_0
    const-wide v8, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v12, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const/4 v6, 0x1

    if-ge v7, v1, :cond_0

    mul-int v17, v7, v0

    mul-int/lit8 v18, v17, 0x5

    add-int v19, v18, v0

    add-int v20, v19, v0

    add-int v21, v20, v0

    add-int v22, v21, v0

    add-int v23, v17, v5

    add-int v24, v23, v5

    add-int v25, v24, v5

    add-int v26, v25, v5

    add-int v27, p6, v0

    add-int/lit8 v27, v27, -0x1

    add-int v6, p4, v17

    .line 4902
    aget-wide v28, p3, v6

    add-int v6, p4, v23

    .line 4903
    aget-wide v30, p3, v6

    add-int v6, p4, v24

    .line 4904
    aget-wide v23, p3, v6

    add-int v6, p4, v25

    .line 4905
    aget-wide v32, p3, v6

    add-int v6, p4, v26

    .line 4906
    aget-wide v25, p3, v6

    add-double v34, v25, v30

    sub-double v25, v25, v30

    add-double v30, v32, v23

    sub-double v32, v32, v23

    add-int v6, p6, v18

    add-double v17, v28, v34

    add-double v17, v17, v30

    .line 4913
    aput-wide v17, p5, v6

    add-int v19, v27, v19

    mul-double v17, v34, v14

    add-double v17, v28, v17

    mul-double v23, v30, v12

    add-double v17, v17, v23

    .line 4914
    aput-wide v17, p5, v19

    add-int v6, p6, v20

    mul-double v17, v25, v10

    mul-double v19, v32, v8

    add-double v17, v17, v19

    .line 4915
    aput-wide v17, p5, v6

    add-int v27, v27, v21

    mul-double v34, v34, v12

    add-double v28, v28, v34

    mul-double v30, v30, v14

    add-double v28, v28, v30

    .line 4916
    aput-wide v28, p5, v27

    add-int v6, p6, v22

    mul-double v25, v25, v8

    mul-double v32, v32, v10

    sub-double v25, v25, v32

    .line 4917
    aput-wide v25, p5, v6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_0
    if-ne v0, v6, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    mul-int v7, v6, v0

    mul-int/lit8 v16, v7, 0x5

    add-int v17, v16, v0

    add-int v18, v17, v0

    add-int v19, v18, v0

    add-int v20, v19, v0

    add-int v21, v7, v5

    add-int v22, v21, v5

    add-int v23, v22, v5

    add-int v24, v23, v5

    const/16 v25, 0x2

    move/from16 v8, v25

    :goto_2
    if-ge v8, v0, :cond_2

    add-int/lit8 v9, v8, -0x1

    add-int v25, v9, p7

    add-int v28, v9, v2

    add-int v29, v9, v3

    add-int/2addr v9, v4

    move-object/from16 v10, p0

    .line 4938
    iget-object v11, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v32, v25, -0x1

    aget-wide v32, v11, v32

    .line 4939
    aget-wide v34, v11, v25

    add-int/lit8 v25, v28, -0x1

    .line 4940
    aget-wide v36, v11, v25

    .line 4941
    aget-wide v38, v11, v28

    add-int/lit8 v25, v29, -0x1

    .line 4942
    aget-wide v40, v11, v25

    .line 4943
    aget-wide v28, v11, v29

    add-int/lit8 v25, v9, -0x1

    .line 4944
    aget-wide v42, v11, v25

    .line 4945
    aget-wide v44, v11, v9

    sub-int v9, v0, v8

    add-int v11, p4, v8

    add-int v25, p6, v8

    add-int v9, p6, v9

    add-int v46, v11, v7

    add-int v47, v11, v21

    add-int v48, v11, v22

    add-int v49, v11, v23

    add-int v11, v11, v24

    add-int/lit8 v50, v46, -0x1

    .line 4958
    aget-wide v50, p3, v50

    .line 4959
    aget-wide v52, p3, v46

    add-int/lit8 v46, v47, -0x1

    .line 4960
    aget-wide v54, p3, v46

    .line 4961
    aget-wide v46, p3, v47

    add-int/lit8 v56, v48, -0x1

    .line 4962
    aget-wide v56, p3, v56

    .line 4963
    aget-wide v58, p3, v48

    add-int/lit8 v48, v49, -0x1

    .line 4964
    aget-wide v60, p3, v48

    .line 4965
    aget-wide v48, p3, v49

    add-int/lit8 v62, v11, -0x1

    .line 4966
    aget-wide v62, p3, v62

    .line 4967
    aget-wide v64, p3, v11

    mul-double v66, v32, v54

    mul-double v68, v34, v46

    add-double v66, v66, v68

    mul-double v32, v32, v46

    mul-double v34, v34, v54

    sub-double v32, v32, v34

    mul-double v34, v36, v56

    mul-double v46, v38, v58

    add-double v34, v34, v46

    mul-double v36, v36, v58

    mul-double v38, v38, v56

    sub-double v36, v36, v38

    mul-double v38, v40, v60

    mul-double v46, v28, v48

    add-double v38, v38, v46

    mul-double v40, v40, v48

    mul-double v28, v28, v60

    sub-double v40, v40, v28

    mul-double v28, v42, v62

    mul-double v46, v44, v64

    add-double v28, v28, v46

    mul-double v42, v42, v64

    mul-double v44, v44, v62

    sub-double v42, v42, v44

    add-double v44, v66, v28

    sub-double v28, v28, v66

    sub-double v46, v32, v42

    add-double v32, v32, v42

    add-double v42, v34, v38

    sub-double v38, v38, v34

    sub-double v34, v36, v40

    add-double v36, v36, v40

    mul-double v40, v44, v14

    add-double v40, v50, v40

    mul-double v48, v42, v12

    add-double v40, v40, v48

    mul-double v48, v32, v14

    add-double v48, v52, v48

    mul-double v54, v36, v12

    add-double v48, v48, v54

    mul-double v54, v44, v12

    add-double v54, v50, v54

    mul-double v56, v42, v14

    add-double v54, v54, v56

    mul-double v56, v32, v12

    add-double v56, v52, v56

    mul-double v58, v36, v14

    add-double v56, v56, v58

    const-wide v30, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v58, v46, v30

    const-wide v26, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v60, v34, v26

    add-double v58, v58, v60

    mul-double v60, v28, v30

    mul-double v62, v38, v26

    add-double v60, v60, v62

    mul-double v46, v46, v26

    mul-double v34, v34, v30

    sub-double v46, v46, v34

    mul-double v28, v28, v26

    mul-double v38, v38, v30

    sub-double v28, v28, v38

    add-int v11, v25, v16

    add-int v34, v9, v17

    add-int v35, v25, v18

    add-int v9, v9, v19

    add-int v25, v25, v20

    add-int/lit8 v38, v11, -0x1

    add-double v50, v50, v44

    add-double v50, v50, v42

    .line 5002
    aput-wide v50, p5, v38

    add-double v52, v52, v32

    add-double v52, v52, v36

    .line 5003
    aput-wide v52, p5, v11

    add-int/lit8 v11, v35, -0x1

    add-double v32, v40, v58

    .line 5004
    aput-wide v32, p5, v11

    add-int/lit8 v11, v34, -0x1

    sub-double v40, v40, v58

    .line 5005
    aput-wide v40, p5, v11

    add-double v32, v48, v60

    .line 5006
    aput-wide v32, p5, v35

    sub-double v60, v60, v48

    .line 5007
    aput-wide v60, p5, v34

    add-int/lit8 v11, v25, -0x1

    add-double v32, v54, v46

    .line 5008
    aput-wide v32, p5, v11

    add-int/lit8 v11, v9, -0x1

    sub-double v54, v54, v46

    .line 5009
    aput-wide v54, p5, v11

    add-double v32, v56, v28

    .line 5010
    aput-wide v32, p5, v25

    sub-double v28, v28, v56

    .line 5011
    aput-wide v28, p5, v9

    add-int/lit8 v8, v8, 0x2

    move-wide/from16 v10, v30

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v30, v10

    const-wide v26, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    move-object/from16 v10, p0

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v26

    move-wide/from16 v10, v30

    goto/16 :goto_1

    :cond_3
    move-object/from16 v10, p0

    return-void
.end method

.method radf5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 92

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

    const-wide v18, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v20, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v22, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v24, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const-wide/16 v26, 0x1

    if-gez v15, :cond_0

    mul-long v28, v13, p1

    mul-long v16, v16, v28

    add-long v30, v16, p1

    add-long v32, v30, p1

    add-long v34, v32, p1

    add-long v36, v34, p1

    add-long v38, v28, v9

    add-long v40, v38, v9

    add-long v42, v40, v9

    add-long v44, v42, v9

    add-long v46, p9, p1

    sub-long v46, v46, v26

    add-long v11, p6, v28

    .line 5047
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    move-wide/from16 v28, v7

    add-long v7, p6, v38

    .line 5048
    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    move-wide/from16 v38, v5

    add-long v5, p6, v40

    .line 5049
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    move-wide/from16 v40, v3

    add-long v3, p6, v42

    .line 5050
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    move-wide/from16 v42, v9

    add-long v9, p6, v44

    .line 5051
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    add-double v44, v9, v7

    sub-double/2addr v9, v7

    add-double v7, v3, v5

    sub-double/2addr v3, v5

    add-long v5, p9, v16

    add-double v15, v11, v44

    add-double v0, v15, v7

    .line 5058
    invoke-virtual {v2, v5, v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v46, v30

    mul-double v5, v44, v24

    add-double/2addr v5, v11

    mul-double v15, v7, v22

    add-double/2addr v5, v15

    .line 5059
    invoke-virtual {v2, v0, v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, v32

    mul-double v5, v9, v20

    mul-double v15, v3, v18

    add-double/2addr v5, v15

    .line 5060
    invoke-virtual {v2, v0, v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v46, v34

    mul-double v44, v44, v22

    add-double v11, v11, v44

    mul-double v7, v7, v24

    add-double/2addr v11, v7

    .line 5061
    invoke-virtual {v2, v0, v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, p9, v36

    mul-double v9, v9, v18

    mul-double v3, v3, v20

    sub-double/2addr v9, v3

    .line 5062
    invoke-virtual {v2, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v13, v26

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v7, v28

    move-wide/from16 v5, v38

    move-wide/from16 v3, v40

    move-wide/from16 v9, v42

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v40, v3

    move-wide/from16 v38, v5

    move-wide/from16 v28, v7

    move-wide/from16 v42, v9

    cmp-long v0, p1, v26

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v11, 0x0

    :goto_1
    cmp-long v0, v11, p3

    if-gez v0, :cond_3

    mul-long v0, v11, p1

    mul-long v3, v0, v16

    add-long v5, v3, p1

    add-long v7, v5, p1

    add-long v9, v7, p1

    add-long v13, v9, p1

    add-long v30, v0, v42

    add-long v32, v30, v42

    add-long v34, v32, v42

    add-long v36, v34, v42

    const-wide/16 v44, 0x2

    move-wide/from16 v46, v44

    :goto_2
    cmp-long v15, v46, p1

    if-gez v15, :cond_2

    sub-long v48, v46, v26

    move-wide/from16 v50, v11

    add-long v11, v48, p11

    move-wide/from16 v52, v13

    add-long v13, v48, v40

    move-wide/from16 v54, v9

    add-long v9, v48, v38

    move-wide/from16 v56, v7

    add-long v7, v48, v28

    move-object/from16 v15, p0

    .line 5083
    iget-object v2, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v48, v5

    sub-long v5, v11, v26

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    .line 5084
    iget-object v2, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 5085
    iget-object v2, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v58, v3

    sub-long v3, v13, v26

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 5086
    iget-object v4, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    .line 5087
    iget-object v4, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v60, v13

    sub-long v13, v9, v26

    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    .line 5088
    iget-object v4, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 5089
    iget-object v4, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v62, v9

    sub-long v9, v7, v26

    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 5090
    iget-object v4, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    sub-long v64, p1, v46

    add-long v66, p6, v46

    add-long v68, p9, v46

    add-long v64, p9, v64

    move-wide/from16 v70, v7

    add-long v7, v66, v0

    move-wide/from16 v72, v0

    add-long v0, v66, v30

    move-wide/from16 v74, v9

    add-long v9, v66, v32

    move-wide/from16 v76, v13

    add-long v13, v66, v34

    move-wide/from16 v78, v2

    add-long v2, v66, v36

    move-wide/from16 v66, v11

    sub-long v11, v7, v26

    move-object/from16 v4, p5

    .line 5103
    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 5104
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    move-wide/from16 v80, v7

    sub-long v7, v0, v26

    .line 5105
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    .line 5106
    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v82, v11

    sub-long v11, v9, v26

    .line 5107
    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    .line 5108
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    move-wide/from16 v84, v9

    sub-long v9, v13, v26

    .line 5109
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 5110
    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    move-wide/from16 v86, v13

    sub-long v13, v2, v26

    .line 5111
    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    .line 5112
    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double v88, v5, v7

    mul-double v90, v66, v0

    add-double v88, v88, v90

    mul-double/2addr v5, v0

    mul-double v0, v66, v7

    sub-double/2addr v5, v0

    mul-double v0, v78, v11

    mul-double v7, v60, v84

    add-double/2addr v0, v7

    mul-double v7, v78, v84

    mul-double v11, v11, v60

    sub-double/2addr v7, v11

    mul-double v11, v76, v9

    mul-double v60, v62, v86

    add-double v11, v11, v60

    mul-double v60, v76, v86

    mul-double v9, v9, v62

    sub-double v60, v60, v9

    mul-double v9, v74, v13

    mul-double v62, v70, v2

    add-double v9, v9, v62

    mul-double v2, v2, v74

    mul-double v13, v13, v70

    sub-double/2addr v2, v13

    add-double v13, v88, v9

    sub-double v9, v9, v88

    sub-double v62, v5, v2

    add-double/2addr v5, v2

    add-double v2, v0, v11

    sub-double/2addr v11, v0

    sub-double v0, v7, v60

    add-double v7, v7, v60

    mul-double v60, v13, v24

    add-double v60, v82, v60

    mul-double v66, v2, v22

    add-double v60, v60, v66

    mul-double v66, v5, v24

    add-double v66, v80, v66

    mul-double v70, v7, v22

    add-double v66, v66, v70

    mul-double v70, v13, v22

    add-double v70, v82, v70

    mul-double v74, v2, v24

    add-double v70, v70, v74

    mul-double v74, v5, v22

    add-double v74, v80, v74

    mul-double v76, v7, v24

    add-double v74, v74, v76

    mul-double v76, v62, v20

    mul-double v78, v0, v18

    add-double v76, v76, v78

    mul-double v78, v9, v20

    mul-double v84, v11, v18

    add-double v78, v78, v84

    mul-double v62, v62, v18

    mul-double v0, v0, v20

    sub-double v62, v62, v0

    mul-double v9, v9, v18

    mul-double v11, v11, v20

    sub-double/2addr v9, v11

    add-long v0, v68, v58

    add-long v11, v64, v48

    move-wide/from16 v84, v9

    add-long v9, v68, v56

    move-wide/from16 v86, v11

    add-long v11, v64, v54

    move-wide/from16 v64, v11

    add-long v11, v68, v52

    move-wide/from16 v68, v11

    sub-long v11, v0, v26

    add-double v13, v82, v13

    add-double/2addr v13, v2

    move-object/from16 v2, p8

    .line 5147
    invoke-virtual {v2, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v5, v80, v5

    add-double/2addr v5, v7

    .line 5148
    invoke-virtual {v2, v0, v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v9, v26

    add-double v5, v60, v76

    .line 5149
    invoke-virtual {v2, v0, v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v11, v86, v26

    sub-double v0, v60, v76

    .line 5150
    invoke-virtual {v2, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v0, v66, v78

    .line 5151
    invoke-virtual {v2, v9, v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v0, v78, v66

    move-wide/from16 v5, v86

    .line 5152
    invoke-virtual {v2, v5, v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v11, v68, v26

    add-double v0, v70, v62

    .line 5153
    invoke-virtual {v2, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v11, v64, v26

    sub-double v0, v70, v62

    .line 5154
    invoke-virtual {v2, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v9, v74, v84

    move-wide/from16 v0, v68

    .line 5155
    invoke-virtual {v2, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double v9, v84, v74

    move-wide/from16 v0, v64

    .line 5156
    invoke-virtual {v2, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v46, v46, v44

    move-wide/from16 v5, v48

    move-wide/from16 v11, v50

    move-wide/from16 v13, v52

    move-wide/from16 v9, v54

    move-wide/from16 v7, v56

    move-wide/from16 v3, v58

    move-wide/from16 v0, v72

    goto/16 :goto_2

    :cond_2
    move-object/from16 v15, p0

    move-object/from16 v4, p5

    move-wide/from16 v50, v11

    add-long v11, v50, v26

    goto/16 :goto_1

    :cond_3
    move-object/from16 v15, p0

    return-void
.end method

.method radfg(IIII[DI[DII)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v11, v2

    div-double/2addr v9, v11

    .line 5459
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v11

    .line 5460
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    add-int/lit8 v13, v2, 0x1

    const/4 v14, 0x2

    .line 5461
    div-int/2addr v13, v14

    add-int/lit8 v15, v1, -0x1

    .line 5462
    div-int/2addr v15, v14

    const/16 v16, 0x0

    const/4 v14, 0x1

    if-eq v1, v14, :cond_f

    move/from16 v14, v16

    :goto_0
    if-ge v14, v4, :cond_0

    add-int v19, v8, v14

    add-int v20, v6, v14

    .line 5465
    aget-wide v20, v5, v20

    aput-wide v20, v7, v19

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x1

    :goto_1
    if-ge v14, v2, :cond_2

    mul-int v19, v14, v3

    mul-int v19, v19, v1

    move-wide/from16 v20, v9

    move/from16 v9, v16

    :goto_2
    if-ge v9, v3, :cond_1

    mul-int v10, v9, v1

    add-int v10, v10, v19

    add-int v22, v8, v10

    add-int/2addr v10, v6

    .line 5471
    aget-wide v23, v5, v10

    aput-wide v23, v7, v22

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v20

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v9

    if-gt v15, v3, :cond_5

    neg-int v9, v1

    const/4 v10, 0x1

    :goto_3
    if-ge v10, v2, :cond_8

    add-int/2addr v9, v1

    add-int/lit8 v14, v9, -0x1

    mul-int v19, v10, v3

    mul-int v19, v19, v1

    move/from16 v22, v9

    const/4 v9, 0x2

    :goto_4
    if-ge v9, v1, :cond_4

    const/16 v17, 0x2

    add-int/lit8 v14, v14, 0x2

    add-int v23, v14, p9

    add-int v24, v6, v9

    add-int v25, v8, v9

    move/from16 v26, v14

    .line 5485
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v27, v23, -0x1

    aget-wide v27, v14, v27

    .line 5486
    aget-wide v29, v14, v23

    move/from16 v14, v16

    :goto_5
    if-ge v14, v3, :cond_3

    mul-int v23, v14, v1

    add-int v23, v23, v19

    add-int v31, v25, v23

    add-int v23, v24, v23

    add-int/lit8 v32, v23, -0x1

    .line 5491
    aget-wide v32, v5, v32

    .line 5492
    aget-wide v34, v5, v23

    add-int/lit8 v23, v31, -0x1

    mul-double v36, v27, v32

    mul-double v38, v29, v34

    add-double v36, v36, v38

    .line 5494
    aput-wide v36, v7, v23

    mul-double v34, v34, v27

    mul-double v32, v32, v29

    sub-double v34, v34, v32

    .line 5495
    aput-wide v34, v7, v31

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x2

    move/from16 v14, v26

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v22

    goto :goto_3

    :cond_5
    neg-int v9, v1

    const/4 v10, 0x1

    :goto_6
    if-ge v10, v2, :cond_8

    add-int/2addr v9, v1

    mul-int v14, v10, v3

    mul-int/2addr v14, v1

    move-wide/from16 v22, v11

    move/from16 v11, v16

    :goto_7
    if-ge v11, v3, :cond_7

    add-int/lit8 v12, v9, -0x1

    mul-int v19, v11, v1

    add-int v19, v19, v14

    move/from16 v24, v9

    const/4 v9, 0x2

    :goto_8
    if-ge v9, v1, :cond_6

    const/16 v17, 0x2

    add-int/lit8 v12, v12, 0x2

    add-int v25, v12, p9

    move/from16 v26, v12

    .line 5510
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v27, v25, -0x1

    aget-wide v27, v12, v27

    .line 5511
    aget-wide v29, v12, v25

    add-int v12, v8, v9

    add-int v12, v12, v19

    add-int v25, v6, v9

    add-int v25, v25, v19

    add-int/lit8 v31, v25, -0x1

    .line 5514
    aget-wide v31, v5, v31

    .line 5515
    aget-wide v33, v5, v25

    add-int/lit8 v25, v12, -0x1

    mul-double v35, v27, v31

    mul-double v37, v29, v33

    add-double v35, v35, v37

    .line 5517
    aput-wide v35, v7, v25

    mul-double v27, v27, v33

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    .line 5518
    aput-wide v27, v7, v12

    add-int/lit8 v9, v9, 0x2

    move/from16 v12, v26

    goto :goto_8

    :cond_6
    const/16 v17, 0x2

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v24

    goto :goto_7

    :cond_7
    move/from16 v24, v9

    const/16 v17, 0x2

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v11, v22

    goto :goto_6

    :cond_8
    move-wide/from16 v22, v11

    const/16 v17, 0x2

    if-lt v15, v3, :cond_b

    const/4 v9, 0x1

    :goto_9
    if-ge v9, v13, :cond_e

    sub-int v10, v2, v9

    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    mul-int/2addr v10, v3

    mul-int/2addr v10, v1

    move/from16 v12, v16

    :goto_a
    if-ge v12, v3, :cond_a

    mul-int v14, v12, v1

    add-int v19, v14, v11

    add-int/2addr v14, v10

    move/from16 v0, v17

    :goto_b
    if-ge v0, v1, :cond_9

    add-int v24, v6, v0

    add-int v25, v8, v0

    add-int v26, v24, v19

    add-int v24, v24, v14

    add-int v27, v25, v19

    add-int v25, v25, v14

    add-int/lit8 v28, v27, -0x1

    .line 5538
    aget-wide v28, v7, v28

    .line 5539
    aget-wide v30, v7, v27

    add-int/lit8 v27, v25, -0x1

    .line 5540
    aget-wide v32, v7, v27

    .line 5541
    aget-wide v34, v7, v25

    add-int/lit8 v25, v26, -0x1

    add-double v36, v28, v32

    .line 5543
    aput-wide v36, v5, v25

    add-double v36, v30, v34

    .line 5544
    aput-wide v36, v5, v26

    add-int/lit8 v25, v24, -0x1

    sub-double v30, v30, v34

    .line 5546
    aput-wide v30, v5, v25

    sub-double v32, v32, v28

    .line 5547
    aput-wide v32, v5, v24

    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    :cond_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_9

    :cond_b
    const/4 v0, 0x1

    :goto_c
    if-ge v0, v13, :cond_e

    sub-int v9, v2, v0

    mul-int v10, v0, v3

    mul-int/2addr v10, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    move/from16 v11, v17

    :goto_d
    if-ge v11, v1, :cond_d

    add-int v12, v6, v11

    add-int v14, v8, v11

    move/from16 v19, v15

    move/from16 v15, v16

    :goto_e
    if-ge v15, v3, :cond_c

    mul-int v24, v15, v1

    add-int v25, v24, v10

    add-int v24, v24, v9

    add-int v26, v12, v25

    add-int v27, v12, v24

    add-int v25, v14, v25

    add-int v24, v14, v24

    add-int/lit8 v28, v25, -0x1

    .line 5566
    aget-wide v28, v7, v28

    .line 5567
    aget-wide v30, v7, v25

    add-int/lit8 v25, v24, -0x1

    .line 5568
    aget-wide v32, v7, v25

    .line 5569
    aget-wide v24, v7, v24

    add-int/lit8 v34, v26, -0x1

    add-double v35, v28, v32

    .line 5571
    aput-wide v35, v5, v34

    add-double v34, v30, v24

    .line 5572
    aput-wide v34, v5, v26

    add-int/lit8 v26, v27, -0x1

    sub-double v30, v30, v24

    .line 5573
    aput-wide v30, v5, v26

    sub-double v32, v32, v28

    .line 5574
    aput-wide v32, v5, v27

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v11, v11, 0x2

    move/from16 v15, v19

    goto :goto_d

    :cond_d
    move/from16 v19, v15

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_e
    move/from16 v19, v15

    goto :goto_f

    :cond_f
    move-wide/from16 v20, v9

    move-wide/from16 v22, v11

    move/from16 v19, v15

    const/16 v17, 0x2

    .line 5580
    invoke-static {v7, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-ge v0, v13, :cond_11

    sub-int v9, v2, v0

    mul-int v10, v0, v3

    mul-int/2addr v10, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    move/from16 v11, v16

    :goto_11
    if-ge v11, v3, :cond_10

    mul-int v12, v11, v1

    add-int v14, v12, v10

    add-int/2addr v12, v9

    add-int v15, v8, v14

    add-int v24, v8, v12

    .line 5591
    aget-wide v25, v7, v15

    .line 5592
    aget-wide v27, v7, v24

    add-int/2addr v14, v6

    add-double v29, v25, v27

    .line 5594
    aput-wide v29, v5, v14

    add-int/2addr v12, v6

    sub-double v27, v27, v25

    .line 5595
    aput-wide v27, v5, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    :goto_12
    if-ge v14, v13, :cond_15

    sub-int v15, v2, v14

    mul-double v24, v22, v9

    mul-double v26, v20, v11

    sub-double v24, v24, v26

    mul-double v11, v11, v22

    mul-double v9, v9, v20

    add-double/2addr v11, v9

    mul-int v9, v14, v4

    mul-int/2addr v15, v4

    move/from16 v10, v16

    :goto_13
    if-ge v10, v4, :cond_12

    add-int v26, v8, v10

    add-int v27, v6, v10

    add-int v28, v26, v9

    .line 5612
    aget-wide v29, v5, v27

    add-int v31, v27, v4

    aget-wide v31, v5, v31

    mul-double v31, v31, v24

    add-double v29, v29, v31

    aput-wide v29, v7, v28

    add-int v26, v26, v15

    add-int v27, v27, v0

    .line 5613
    aget-wide v27, v5, v27

    mul-double v27, v27, v11

    aput-wide v27, v7, v26

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_12
    move-wide/from16 v28, v11

    move/from16 v10, v17

    move-wide/from16 v26, v24

    :goto_14
    if-ge v10, v13, :cond_14

    sub-int v30, v2, v10

    mul-double v31, v24, v26

    mul-double v33, v11, v28

    sub-double v31, v31, v33

    mul-double v28, v28, v24

    mul-double v26, v26, v11

    add-double v28, v28, v26

    mul-int v26, v10, v4

    mul-int v30, v30, v4

    move/from16 p9, v0

    move/from16 v0, v16

    :goto_15
    if-ge v0, v4, :cond_13

    add-int v27, v8, v0

    add-int v33, v6, v0

    add-int v34, v27, v9

    .line 5629
    aget-wide v35, v7, v34

    add-int v37, v33, v26

    aget-wide v37, v5, v37

    mul-double v37, v37, v31

    add-double v35, v35, v37

    aput-wide v35, v7, v34

    add-int v27, v27, v15

    .line 5630
    aget-wide v34, v7, v27

    add-int v33, v33, v30

    aget-wide v36, v5, v33

    mul-double v36, v36, v28

    add-double v34, v34, v36

    aput-wide v34, v7, v27

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p9

    move-wide/from16 v26, v31

    goto :goto_14

    :cond_14
    move/from16 p9, v0

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v24

    goto/16 :goto_12

    :cond_15
    const/4 v0, 0x1

    :goto_16
    if-ge v0, v13, :cond_17

    mul-int v9, v0, v4

    move/from16 v10, v16

    :goto_17
    if-ge v10, v4, :cond_16

    add-int v11, v8, v10

    .line 5637
    aget-wide v14, v7, v11

    add-int v12, v6, v10

    add-int/2addr v12, v9

    aget-wide v20, v5, v12

    add-double v14, v14, v20

    aput-wide v14, v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_17
    if-lt v1, v3, :cond_19

    move/from16 v0, v16

    :goto_18
    if-ge v0, v3, :cond_1b

    mul-int v4, v0, v1

    mul-int v9, v4, v2

    move/from16 v10, v16

    :goto_19
    if-ge v10, v1, :cond_18

    add-int v11, v6, v10

    add-int/2addr v11, v9

    add-int v12, v8, v10

    add-int/2addr v12, v4

    .line 5646
    aget-wide v14, v7, v12

    aput-wide v14, v5, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_19
    move/from16 v0, v16

    :goto_1a
    if-ge v0, v1, :cond_1b

    move/from16 v4, v16

    :goto_1b
    if-ge v4, v3, :cond_1a

    mul-int v9, v4, v1

    add-int v10, v6, v0

    mul-int v11, v9, v2

    add-int/2addr v10, v11

    add-int v11, v8, v0

    add-int/2addr v11, v9

    .line 5653
    aget-wide v11, v7, v11

    aput-wide v11, v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_1b
    mul-int v0, v2, v1

    const/4 v4, 0x1

    :goto_1c
    if-ge v4, v13, :cond_1d

    sub-int v9, v2, v4

    mul-int/lit8 v10, v4, 0x2

    mul-int v11, v4, v3

    mul-int/2addr v11, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    mul-int/2addr v10, v1

    move/from16 v12, v16

    :goto_1d
    if-ge v12, v3, :cond_1c

    mul-int v14, v12, v1

    add-int v15, v14, v11

    add-int/2addr v14, v9

    mul-int v20, v12, v0

    add-int v21, v6, v1

    const/16 v18, 0x1

    add-int/lit8 v21, v21, -0x1

    add-int v21, v21, v10

    sub-int v21, v21, v1

    add-int v21, v21, v20

    add-int/2addr v15, v8

    .line 5669
    aget-wide v22, v7, v15

    aput-wide v22, v5, v21

    add-int v15, v6, v10

    add-int v15, v15, v20

    add-int/2addr v14, v8

    .line 5670
    aget-wide v20, v7, v14

    aput-wide v20, v5, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_1d
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1e

    return-void

    :cond_1e
    move/from16 v15, v19

    if-lt v15, v3, :cond_21

    move v14, v4

    :goto_1e
    if-ge v14, v13, :cond_24

    sub-int v4, v2, v14

    mul-int/lit8 v9, v14, 0x2

    mul-int v10, v14, v3

    mul-int/2addr v10, v1

    mul-int/2addr v4, v3

    mul-int/2addr v4, v1

    mul-int/2addr v9, v1

    move/from16 v11, v16

    :goto_1f
    if-ge v11, v3, :cond_20

    mul-int v12, v11, v0

    mul-int v15, v11, v1

    move/from16 p4, v0

    move/from16 v0, v17

    :goto_20
    if-ge v0, v1, :cond_1f

    sub-int v18, v1, v0

    add-int v19, v6, v0

    add-int v18, v6, v18

    add-int v20, v8, v0

    add-int v19, v19, v9

    add-int v19, v19, v12

    add-int v18, v18, v9

    sub-int v18, v18, v1

    add-int v18, v18, v12

    add-int v20, v20, v15

    add-int v21, v20, v10

    add-int v20, v20, v4

    add-int/lit8 v22, v21, -0x1

    .line 5695
    aget-wide v22, v7, v22

    .line 5696
    aget-wide v24, v7, v21

    add-int/lit8 v21, v20, -0x1

    .line 5697
    aget-wide v26, v7, v21

    .line 5698
    aget-wide v20, v7, v20

    add-int/lit8 v28, v19, -0x1

    add-double v29, v22, v26

    .line 5700
    aput-wide v29, v5, v28

    add-int/lit8 v28, v18, -0x1

    sub-double v22, v22, v26

    .line 5701
    aput-wide v22, v5, v28

    add-double v22, v24, v20

    .line 5702
    aput-wide v22, v5, v19

    sub-double v20, v20, v24

    .line 5703
    aput-wide v20, v5, v18

    add-int/lit8 v0, v0, 0x2

    goto :goto_20

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p4

    goto :goto_1f

    :cond_20
    move/from16 p4, v0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    :cond_21
    move/from16 p4, v0

    move v14, v4

    :goto_21
    if-ge v14, v13, :cond_24

    sub-int v0, v2, v14

    mul-int/lit8 v4, v14, 0x2

    mul-int v9, v14, v3

    mul-int/2addr v9, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/2addr v4, v1

    move/from16 v10, v17

    :goto_22
    if-ge v10, v1, :cond_23

    sub-int v11, v1, v10

    add-int v12, v6, v10

    add-int/2addr v11, v6

    add-int v15, v8, v10

    move/from16 v2, v16

    :goto_23
    if-ge v2, v3, :cond_22

    mul-int v18, v2, p4

    mul-int v19, v2, v1

    add-int v20, v12, v4

    add-int v20, v20, v18

    add-int v21, v11, v4

    sub-int v21, v21, v1

    add-int v21, v21, v18

    add-int v19, v15, v19

    add-int v18, v19, v9

    add-int v19, v19, v0

    add-int/lit8 v22, v18, -0x1

    .line 5726
    aget-wide v22, v7, v22

    .line 5727
    aget-wide v24, v7, v18

    add-int/lit8 v18, v19, -0x1

    .line 5728
    aget-wide v26, v7, v18

    .line 5729
    aget-wide v18, v7, v19

    add-int/lit8 v28, v20, -0x1

    add-double v29, v22, v26

    .line 5731
    aput-wide v29, v5, v28

    add-int/lit8 v28, v21, -0x1

    sub-double v22, v22, v26

    .line 5732
    aput-wide v22, v5, v28

    add-double v22, v24, v18

    .line 5733
    aput-wide v22, v5, v20

    sub-double v18, v18, v24

    .line 5734
    aput-wide v18, v5, v21

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_22
    add-int/lit8 v10, v10, 0x2

    move/from16 v2, p2

    goto :goto_22

    :cond_23
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p2

    goto :goto_21

    :cond_24
    return-void
.end method

.method radfg(JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 52

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v13, p9

    move-object/from16 v14, p12

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    long-to-double v7, v3

    div-double/2addr v5, v7

    .line 5751
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v15

    .line 5752
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v17

    const-wide/16 v19, 0x1

    add-long v5, v3, v19

    const-wide/16 v21, 0x2

    .line 5753
    div-long v23, v5, v21

    sub-long v5, v1, v19

    .line 5754
    div-long v25, v5, v21

    cmp-long v27, v1, v19

    const-wide/16 v28, 0x0

    if-eqz v27, :cond_e

    move-wide/from16 v5, v28

    :goto_0
    cmp-long v7, v5, p7

    if-gez v7, :cond_0

    add-long v7, p13, v5

    add-long v9, p10, v5

    .line 5757
    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v14, v7, v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v19

    goto :goto_0

    :cond_0
    move-wide/from16 v5, v19

    :goto_1
    cmp-long v7, v5, v3

    if-gez v7, :cond_2

    mul-long v7, v5, p5

    mul-long/2addr v7, v1

    move-wide/from16 v9, v28

    :goto_2
    cmp-long v11, v9, p5

    if-gez v11, :cond_1

    mul-long v11, v9, v1

    add-long/2addr v11, v7

    move-wide/from16 v30, v7

    add-long v7, p13, v11

    add-long v11, p10, v11

    .line 5763
    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v14, v7, v8, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v19

    move-wide/from16 v7, v30

    goto :goto_2

    :cond_1
    add-long v5, v5, v19

    goto :goto_1

    :cond_2
    cmp-long v5, v25, p5

    if-gtz v5, :cond_5

    neg-long v6, v1

    move-wide/from16 v8, v19

    :goto_3
    cmp-long v10, v8, v3

    if-gez v10, :cond_8

    add-long/2addr v6, v1

    sub-long v10, v6, v19

    mul-long v30, v8, p5

    mul-long v30, v30, v1

    move-wide/from16 v32, v21

    :goto_4
    cmp-long v12, v32, v1

    if-gez v12, :cond_4

    add-long v10, v10, v21

    move-wide/from16 v34, v6

    add-long v6, v10, p15

    add-long v36, p10, v32

    add-long v38, p13, v32

    .line 5777
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v40, v10

    sub-long v10, v6, v19

    invoke-virtual {v12, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    .line 5778
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    move-wide/from16 v42, v28

    :goto_5
    cmp-long v12, v42, p5

    if-gez v12, :cond_3

    mul-long v44, v42, v1

    add-long v44, v44, v30

    add-long v3, v38, v44

    add-long v0, v36, v44

    move-wide/from16 v44, v8

    sub-long v8, v0, v19

    .line 5783
    invoke-virtual {v13, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    .line 5784
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    sub-long v12, v3, v19

    mul-double v46, v10, v8

    mul-double v48, v6, v0

    move-wide/from16 v50, v3

    add-double v2, v46, v48

    .line 5786
    invoke-virtual {v14, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double/2addr v0, v10

    mul-double/2addr v8, v6

    sub-double/2addr v0, v8

    move-wide/from16 v2, v50

    .line 5787
    invoke-virtual {v14, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v42, v42, v19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v13, p9

    move-wide/from16 v8, v44

    goto :goto_5

    :cond_3
    move-wide/from16 v44, v8

    add-long v32, v32, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v13, p9

    move-wide/from16 v6, v34

    move-wide/from16 v10, v40

    goto :goto_4

    :cond_4
    move-wide/from16 v34, v6

    move-wide/from16 v44, v8

    add-long v8, v44, v19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v13, p9

    goto/16 :goto_3

    :cond_5
    move-wide v0, v1

    neg-long v2, v0

    move-wide/from16 v6, v19

    :goto_6
    cmp-long v4, v6, p3

    if-gez v4, :cond_8

    add-long/2addr v2, v0

    mul-long v8, v6, p5

    mul-long/2addr v8, v0

    move-wide/from16 v10, v28

    :goto_7
    cmp-long v4, v10, p5

    if-gez v4, :cond_7

    sub-long v12, v2, v19

    mul-long v30, v10, v0

    add-long v30, v30, v8

    move-wide/from16 v32, v21

    :goto_8
    cmp-long v4, v32, v0

    if-gez v4, :cond_6

    add-long v12, v12, v21

    move-wide/from16 v34, v2

    add-long v2, v12, p15

    move-object/from16 v4, p0

    move-wide/from16 v36, v8

    .line 5802
    iget-object v8, v4, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v38, v12

    sub-long v12, v2, v19

    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    .line 5803
    iget-object v12, v4, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    add-long v12, p13, v32

    add-long v12, v12, v30

    add-long v40, p10, v32

    add-long v0, v40, v30

    move/from16 v40, v5

    sub-long v4, v0, v19

    move-wide/from16 v41, v15

    move-object/from16 v15, p9

    .line 5806
    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    .line 5807
    invoke-virtual {v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v43, v6

    sub-long v6, v12, v19

    mul-double v45, v8, v4

    mul-double v47, v2, v0

    move-wide/from16 v49, v10

    add-double v10, v45, v47

    .line 5809
    invoke-virtual {v14, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-double/2addr v8, v0

    mul-double/2addr v2, v4

    sub-double/2addr v8, v2

    .line 5810
    invoke-virtual {v14, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v32, v32, v21

    move-wide/from16 v0, p1

    move-wide/from16 v2, v34

    move-wide/from16 v8, v36

    move-wide/from16 v12, v38

    move/from16 v5, v40

    move-wide/from16 v15, v41

    move-wide/from16 v6, v43

    move-wide/from16 v10, v49

    goto :goto_8

    :cond_6
    move-wide/from16 v34, v2

    move/from16 v40, v5

    move-wide/from16 v43, v6

    move-wide/from16 v36, v8

    move-wide/from16 v49, v10

    move-wide/from16 v41, v15

    move-object/from16 v15, p9

    add-long v10, v49, v19

    move-wide/from16 v0, p1

    move-wide/from16 v15, v41

    goto :goto_7

    :cond_7
    move-wide/from16 v34, v2

    move/from16 v40, v5

    move-wide/from16 v43, v6

    move-wide/from16 v41, v15

    move-object/from16 v15, p9

    add-long v6, v43, v19

    move-wide/from16 v0, p1

    move-wide/from16 v15, v41

    goto/16 :goto_6

    :cond_8
    move/from16 v40, v5

    move-wide/from16 v41, v15

    move-object/from16 v15, p9

    if-ltz v40, :cond_b

    move-wide/from16 v0, v19

    :goto_9
    cmp-long v2, v0, v23

    if-gez v2, :cond_f

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v28

    :goto_a
    cmp-long v8, v6, p5

    if-gez v8, :cond_a

    mul-long v8, v6, p1

    add-long v10, v8, v4

    add-long/2addr v8, v2

    move-wide/from16 v12, v21

    :goto_b
    cmp-long v16, v12, p1

    if-gez v16, :cond_9

    add-long v30, p10, v12

    add-long v32, p13, v12

    move-wide/from16 p15, v2

    add-long v2, v30, v10

    move-wide/from16 v34, v4

    add-long v4, v30, v8

    move-wide/from16 v30, v0

    add-long v0, v32, v10

    move-wide/from16 v36, v10

    add-long v10, v32, v8

    move-wide/from16 v32, v8

    sub-long v8, v0, v19

    .line 5830
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    .line 5831
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v38, v6

    sub-long v6, v10, v19

    .line 5832
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 5833
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    move-wide/from16 v43, v12

    sub-long v12, v2, v19

    move-wide/from16 v45, v4

    add-double v4, v8, v6

    .line 5835
    invoke-virtual {v15, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v4, v0, v10

    .line 5836
    invoke-virtual {v15, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v4, v45, v19

    sub-double/2addr v0, v10

    .line 5838
    invoke-virtual {v15, v4, v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v6, v8

    move-wide/from16 v0, v45

    .line 5839
    invoke-virtual {v15, v0, v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v43, v21

    move-wide/from16 v2, p15

    move-wide/from16 v0, v30

    move-wide/from16 v8, v32

    move-wide/from16 v4, v34

    move-wide/from16 v10, v36

    move-wide/from16 v6, v38

    goto :goto_b

    :cond_9
    move-wide/from16 v30, v0

    move-wide/from16 p15, v2

    move-wide/from16 v34, v4

    move-wide/from16 v38, v6

    add-long v6, v38, v19

    goto :goto_a

    :cond_a
    move-wide/from16 v30, v0

    add-long v0, v30, v19

    goto/16 :goto_9

    :cond_b
    move-wide/from16 v0, v19

    :goto_c
    cmp-long v2, v0, v23

    if-gez v2, :cond_f

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v21

    :goto_d
    cmp-long v8, v6, p1

    if-gez v8, :cond_d

    add-long v8, p10, v6

    add-long v10, p13, v6

    move-wide/from16 v12, v28

    :goto_e
    cmp-long v16, v12, p5

    if-gez v16, :cond_c

    mul-long v30, v12, p1

    add-long v32, v30, v4

    add-long v30, v30, v2

    move-wide/from16 p15, v2

    add-long v2, v8, v32

    move-wide/from16 v34, v4

    add-long v4, v8, v30

    move-wide/from16 v36, v8

    add-long v8, v10, v32

    move-wide/from16 v32, v0

    add-long v0, v10, v30

    move-wide/from16 v30, v10

    sub-long v10, v8, v19

    .line 5858
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    .line 5859
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    move-wide/from16 v38, v6

    sub-long v6, v0, v19

    .line 5860
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 5861
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    move-wide/from16 v43, v12

    sub-long v12, v2, v19

    move-wide/from16 v45, v4

    add-double v4, v10, v6

    .line 5863
    invoke-virtual {v15, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v4, v8, v0

    .line 5864
    invoke-virtual {v15, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v4, v45, v19

    sub-double/2addr v8, v0

    .line 5865
    invoke-virtual {v15, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v6, v10

    move-wide/from16 v8, v45

    .line 5866
    invoke-virtual {v15, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v43, v19

    move-wide/from16 v2, p15

    move-wide/from16 v10, v30

    move-wide/from16 v0, v32

    move-wide/from16 v4, v34

    move-wide/from16 v8, v36

    move-wide/from16 v6, v38

    goto :goto_e

    :cond_c
    move-wide/from16 v32, v0

    move-wide/from16 p15, v2

    move-wide/from16 v34, v4

    move-wide/from16 v38, v6

    add-long v6, v38, v21

    goto :goto_d

    :cond_d
    move-wide/from16 v32, v0

    add-long v0, v32, v19

    goto/16 :goto_c

    :cond_e
    move-wide/from16 v41, v15

    move-object v15, v13

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-object/from16 v8, p9

    move-wide/from16 v9, p10

    move-wide/from16 v11, p7

    .line 5872
    invoke-static/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    :cond_f
    move-wide/from16 v0, v19

    :goto_f
    cmp-long v2, v0, v23

    if-gez v2, :cond_11

    sub-long v2, p3, v0

    mul-long v4, v0, p5

    mul-long v4, v4, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    move-wide/from16 v6, v28

    :goto_10
    cmp-long v8, v6, p5

    if-gez v8, :cond_10

    mul-long v8, v6, p1

    add-long v10, v8, v4

    add-long/2addr v8, v2

    add-long v12, p13, v10

    move-wide/from16 p15, v2

    add-long v2, p13, v8

    .line 5883
    invoke-virtual {v14, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    .line 5884
    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    add-long v10, p10, v10

    move-wide/from16 v30, v4

    add-double v4, v12, v2

    .line 5886
    invoke-virtual {v15, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, p10, v8

    sub-double/2addr v2, v12

    .line 5887
    invoke-virtual {v15, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    move-wide/from16 v2, p15

    move-wide/from16 v4, v30

    goto :goto_10

    :cond_10
    add-long v0, v0, v19

    goto :goto_f

    :cond_11
    sub-long v0, p3, v19

    mul-long v0, v0, p7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    move-wide/from16 v6, v19

    :goto_11
    cmp-long v8, v6, v23

    if-gez v8, :cond_15

    sub-long v8, p3, v6

    mul-double v10, v41, v2

    mul-double v12, v17, v4

    sub-double/2addr v10, v12

    mul-double v4, v4, v41

    mul-double v2, v2, v17

    add-double/2addr v4, v2

    mul-long v2, v6, p7

    mul-long v8, v8, p7

    move-wide/from16 v12, v28

    :goto_12
    cmp-long v16, v12, p7

    if-gez v16, :cond_12

    add-long v30, p13, v12

    move-wide/from16 p15, v6

    add-long v6, p10, v12

    move-wide/from16 v32, v12

    add-long v12, v30, v2

    .line 5904
    invoke-virtual {v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v34

    move-wide/from16 v36, v2

    add-long v2, v6, p7

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double v2, v34, v2

    invoke-virtual {v14, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v30, v8

    add-long/2addr v6, v0

    .line 5905
    invoke-virtual {v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-virtual {v14, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v32, v19

    move-wide/from16 v6, p15

    move-wide/from16 v2, v36

    goto :goto_12

    :cond_12
    move-wide/from16 v36, v2

    move-wide/from16 p15, v6

    move-wide v12, v4

    move-wide v6, v10

    move-wide/from16 v2, v21

    :goto_13
    cmp-long v16, v2, v23

    if-gez v16, :cond_14

    sub-long v30, p3, v2

    mul-double v32, v10, v6

    mul-double v34, v4, v12

    sub-double v32, v32, v34

    mul-double/2addr v12, v10

    mul-double/2addr v6, v4

    add-double/2addr v12, v6

    mul-long v6, v2, p7

    mul-long v30, v30, p7

    move-wide/from16 v34, v28

    :goto_14
    cmp-long v16, v34, p7

    if-gez v16, :cond_13

    add-long v38, p13, v34

    add-long v43, p10, v34

    move-wide/from16 v45, v0

    add-long v0, v38, v36

    .line 5921
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v47

    move-wide/from16 v49, v4

    add-long v4, v43, v6

    invoke-virtual {v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double v4, v4, v32

    add-double v4, v47, v4

    invoke-virtual {v14, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v38, v8

    .line 5922
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v38, v6

    add-long v6, v43, v30

    invoke-virtual {v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    invoke-virtual {v14, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v34, v34, v19

    move-wide/from16 v6, v38

    move-wide/from16 v0, v45

    move-wide/from16 v4, v49

    goto :goto_14

    :cond_13
    move-wide/from16 v45, v0

    move-wide/from16 v49, v4

    add-long v2, v2, v19

    move-wide/from16 v6, v32

    goto :goto_13

    :cond_14
    move-wide/from16 v45, v0

    move-wide/from16 v49, v4

    move-wide/from16 v0, p15

    add-long v6, v0, v19

    move-wide v2, v10

    move-wide/from16 v0, v45

    goto/16 :goto_11

    :cond_15
    move-wide/from16 v0, v19

    :goto_15
    cmp-long v2, v0, v23

    if-gez v2, :cond_17

    mul-long v2, v0, p7

    move-wide/from16 v4, v28

    :goto_16
    cmp-long v6, v4, p7

    if-gez v6, :cond_16

    add-long v6, p13, v4

    .line 5929
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    add-long v10, p10, v4

    add-long/2addr v10, v2

    invoke-virtual {v15, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v14, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v19

    goto :goto_16

    :cond_16
    add-long v0, v0, v19

    goto :goto_15

    :cond_17
    cmp-long v0, p1, p5

    if-ltz v0, :cond_19

    move-wide/from16 v0, v28

    :goto_17
    cmp-long v2, v0, p5

    if-gez v2, :cond_1b

    mul-long v2, v0, p1

    mul-long v4, v2, p3

    move-wide/from16 v6, v28

    :goto_18
    cmp-long v8, v6, p1

    if-gez v8, :cond_18

    add-long v8, p10, v6

    add-long/2addr v8, v4

    add-long v10, p13, v6

    add-long/2addr v10, v2

    .line 5938
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v15, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    goto :goto_18

    :cond_18
    add-long v0, v0, v19

    goto :goto_17

    :cond_19
    move-wide/from16 v0, v28

    :goto_19
    cmp-long v2, v0, p1

    if-gez v2, :cond_1b

    move-wide/from16 v2, v28

    :goto_1a
    cmp-long v4, v2, p5

    if-gez v4, :cond_1a

    mul-long v4, v2, p1

    add-long v6, p10, v0

    mul-long v8, v4, p3

    add-long/2addr v6, v8

    add-long v8, p13, v0

    add-long/2addr v8, v4

    .line 5945
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v15, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v19

    goto :goto_1a

    :cond_1a
    add-long v0, v0, v19

    goto :goto_19

    :cond_1b
    mul-long v0, p3, p1

    move-wide/from16 v2, v19

    :goto_1b
    cmp-long v4, v2, v23

    if-gez v4, :cond_1d

    sub-long v4, p3, v2

    mul-long v6, v2, v21

    mul-long v8, v2, p5

    mul-long v8, v8, p1

    mul-long v4, v4, p5

    mul-long v4, v4, p1

    mul-long v6, v6, p1

    move-wide/from16 v10, v28

    :goto_1c
    cmp-long v12, v10, p5

    if-gez v12, :cond_1c

    mul-long v12, v10, p1

    add-long v16, v12, v8

    add-long/2addr v12, v4

    mul-long v30, v10, v0

    add-long v32, p10, p1

    sub-long v32, v32, v19

    add-long v32, v32, v6

    sub-long v32, v32, p1

    move-wide/from16 p7, v4

    add-long v4, v32, v30

    move-wide/from16 p15, v8

    add-long v8, p13, v16

    .line 5961
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v15, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, p10, v6

    add-long v4, v4, v30

    add-long v8, p13, v12

    .line 5962
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v15, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    move-wide/from16 v4, p7

    move-wide/from16 v8, p15

    goto :goto_1c

    :cond_1c
    add-long v2, v2, v19

    goto :goto_1b

    :cond_1d
    if-nez v27, :cond_1e

    return-void

    :cond_1e
    cmp-long v2, v25, p5

    if-ltz v2, :cond_21

    move-wide/from16 v2, v19

    :goto_1d
    cmp-long v4, v2, v23

    if-gez v4, :cond_24

    sub-long v4, p3, v2

    mul-long v6, v2, v21

    mul-long v8, v2, p5

    mul-long v8, v8, p1

    mul-long v4, v4, p5

    mul-long v4, v4, p1

    mul-long v6, v6, p1

    move-wide/from16 v10, v28

    :goto_1e
    cmp-long v12, v10, p5

    if-gez v12, :cond_20

    mul-long v12, v10, v0

    mul-long v16, v10, p1

    move-wide/from16 v25, v21

    :goto_1f
    cmp-long v18, v25, p1

    if-gez v18, :cond_1f

    sub-long v30, p1, v25

    add-long v32, p10, v25

    add-long v30, p10, v30

    add-long v34, p13, v25

    add-long v32, v32, v6

    move-wide/from16 p7, v0

    add-long v0, v32, v12

    add-long v30, v30, v6

    sub-long v30, v30, p1

    move-wide/from16 p15, v6

    add-long v6, v30, v12

    add-long v34, v34, v16

    move-wide/from16 v30, v12

    add-long v12, v34, v8

    move-wide/from16 v32, v8

    add-long v8, v34, v4

    move-wide/from16 v34, v4

    sub-long v4, v12, v19

    .line 5987
    invoke-virtual {v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    .line 5988
    invoke-virtual {v14, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    move-wide/from16 v36, v2

    sub-long v2, v8, v19

    .line 5989
    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 5990
    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    move-wide/from16 v38, v10

    sub-long v10, v0, v19

    move-wide/from16 v40, v0

    add-double v0, v4, v2

    .line 5992
    invoke-virtual {v15, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v0, v6, v19

    sub-double/2addr v4, v2

    .line 5993
    invoke-virtual {v15, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v0, v12, v8

    move-wide/from16 v2, v40

    .line 5994
    invoke-virtual {v15, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v8, v12

    .line 5995
    invoke-virtual {v15, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v25, v25, v21

    move-wide/from16 v0, p7

    move-wide/from16 v6, p15

    move-wide/from16 v12, v30

    move-wide/from16 v8, v32

    move-wide/from16 v4, v34

    move-wide/from16 v2, v36

    move-wide/from16 v10, v38

    goto :goto_1f

    :cond_1f
    move-wide/from16 p7, v0

    move-wide/from16 v36, v2

    move-wide/from16 v34, v4

    move-wide/from16 p15, v6

    move-wide/from16 v32, v8

    move-wide/from16 v38, v10

    add-long v10, v38, v19

    goto/16 :goto_1e

    :cond_20
    move-wide/from16 p7, v0

    move-wide/from16 v36, v2

    add-long v2, v36, v19

    goto/16 :goto_1d

    :cond_21
    move-wide/from16 p7, v0

    move-wide/from16 v0, v19

    :goto_20
    cmp-long v2, v0, v23

    if-gez v2, :cond_24

    sub-long v2, p3, v0

    mul-long v4, v0, v21

    mul-long v6, v0, p5

    mul-long v6, v6, p1

    mul-long v2, v2, p5

    mul-long v2, v2, p1

    mul-long v4, v4, p1

    move-wide/from16 v8, v21

    :goto_21
    cmp-long v10, v8, p1

    if-gez v10, :cond_23

    sub-long v10, p1, v8

    add-long v12, p10, v8

    add-long v10, p10, v10

    add-long v16, p13, v8

    move-wide/from16 v25, v28

    :goto_22
    cmp-long v18, v25, p5

    if-gez v18, :cond_22

    move-wide/from16 v30, p7

    mul-long v32, v25, v30

    mul-long v34, v25, p1

    add-long v36, v12, v4

    move-wide/from16 p7, v12

    add-long v12, v36, v32

    add-long v36, v10, v4

    sub-long v36, v36, p1

    move-wide/from16 p15, v4

    add-long v4, v36, v32

    add-long v34, v16, v34

    move-wide/from16 v32, v10

    add-long v10, v34, v6

    move-wide/from16 v36, v6

    add-long v6, v34, v2

    move-wide/from16 v34, v2

    sub-long v2, v10, v19

    .line 6018
    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    .line 6019
    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    move-wide/from16 v38, v0

    sub-long v0, v6, v19

    .line 6020
    invoke-virtual {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 6021
    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    move-wide/from16 v40, v8

    sub-long v8, v12, v19

    move-wide/from16 v42, v12

    add-double v12, v2, v0

    .line 6023
    invoke-virtual {v15, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v8, v4, v19

    sub-double/2addr v2, v0

    .line 6024
    invoke-virtual {v15, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v0, v10, v6

    move-wide/from16 v2, v42

    .line 6025
    invoke-virtual {v15, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-double/2addr v6, v10

    .line 6026
    invoke-virtual {v15, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v25, v25, v19

    move-wide/from16 v12, p7

    move-wide/from16 v4, p15

    move-wide/from16 p7, v30

    move-wide/from16 v10, v32

    move-wide/from16 v2, v34

    move-wide/from16 v6, v36

    move-wide/from16 v0, v38

    move-wide/from16 v8, v40

    goto :goto_22

    :cond_22
    move-wide/from16 v30, p7

    move-wide/from16 v38, v0

    move-wide/from16 v34, v2

    move-wide/from16 p15, v4

    move-wide/from16 v36, v6

    move-wide/from16 v40, v8

    add-long v8, v40, v21

    goto/16 :goto_21

    :cond_23
    move-wide/from16 v30, p7

    move-wide/from16 v38, v0

    add-long v0, v38, v19

    goto/16 :goto_20

    :cond_24
    return-void
.end method

.method public realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 493
    invoke-virtual {p0, p1, v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    return-void
.end method

.method public realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    .line 593
    iget-boolean v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 594
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v12, v1

    if-gez v1, :cond_0

    .line 595
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v1

    long-to-int v2, v12

    invoke-virtual {v0, v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    goto/16 :goto_2

    .line 597
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The data array is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v14, 0x1

    cmp-long v1, v1, v14

    if-nez v1, :cond_2

    return-void

    .line 604
    :cond_2
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_2

    .line 628
    :cond_3
    invoke-direct/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto :goto_2

    .line 619
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftf(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 620
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    :goto_0
    sub-long/2addr v1, v14

    const-wide/16 v3, 0x2

    cmp-long v3, v1, v3

    if-ltz v3, :cond_8

    add-long v3, v12, v1

    .line 622
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    sub-long v7, v3, v14

    .line 623
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v11, v3, v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 624
    invoke-virtual {v11, v7, v8, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto :goto_0

    .line 608
    :cond_5
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    .line 609
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 610
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ncl:J

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->rftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto :goto_1

    :cond_6
    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 612
    invoke-static/range {p1 .. p3}, Lorg/jtransforms/utils/CommonUtils;->cftx020(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 614
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    add-long v3, v12, v14

    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    sub-double/2addr v1, v5

    .line 615
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v11, v12, v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 616
    invoke-virtual {v11, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :cond_8
    :goto_2
    return-void
.end method

.method public realForward([D)V
    .locals 1

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, p1, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    return-void
.end method

.method public realForward([DI)V
    .locals 8

    .line 526
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto :goto_2

    .line 529
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 533
    :cond_1
    sget-object v0, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 557
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_forward([DI)V

    goto :goto_2

    .line 548
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 549
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v2, :cond_7

    add-int v1, p2, v0

    .line 551
    aget-wide v3, p1, v1

    add-int/lit8 v5, v1, -0x1

    .line 552
    aget-wide v6, p1, v5

    aput-wide v6, p1, v1

    .line 553
    aput-wide v3, p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 537
    :cond_4
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_5

    .line 538
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 539
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->rftfsub(I[DII[DI)V

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    .line 541
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->cftx020([DI)V

    .line 543
    :cond_6
    :goto_1
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, p1, v2

    sub-double v6, v0, v3

    add-double/2addr v0, v3

    .line 544
    aput-wide v0, p1, p2

    .line 545
    aput-wide v6, p1, v2

    :cond_7
    :goto_2
    return-void
.end method

.method public realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 663
    invoke-virtual {p0, p1, v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    return-void
.end method

.method public realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    .line 772
    const-class v16, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-boolean v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-nez v0, :cond_1

    .line 773
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v14, v0

    if-gez v0, :cond_0

    .line 774
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v0

    long-to-int v1, v14

    invoke-virtual {v12, v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V

    goto/16 :goto_7

    .line 776
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_1
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v17, 0x2

    mul-long v19, v0, v17

    .line 780
    sget-object v0, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

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

    .line 846
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    goto/16 :goto_7

    .line 824
    :cond_3
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftf(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 826
    iget-wide v3, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    rem-long v5, v3, v17

    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    .line 827
    div-long v3, v3, v17

    goto :goto_0

    :cond_4
    add-long v3, v3, v21

    .line 829
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

    move-wide/from16 v25, v3

    .line 834
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v13, v9, v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v7, v7, v21

    .line 835
    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v13, v5, v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    move-wide/from16 v3, v25

    goto :goto_1

    :cond_5
    move-wide/from16 v0, v21

    .line 837
    :goto_2
    iget-wide v2, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    add-long/2addr v2, v14

    sub-long/2addr v2, v0

    add-long v4, v2, v21

    .line 839
    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 840
    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v13, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 841
    invoke-virtual {v13, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_2

    :cond_6
    add-long v0, v14, v21

    const-wide/16 v9, 0x0

    .line 843
    invoke-virtual {v13, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto/16 :goto_7

    :cond_7
    const-wide/16 v9, 0x0

    .line 782
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 783
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 784
    iget-wide v3, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v3, v3, v17

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    .line 785
    new-array v11, v0, [Ljava/util/concurrent/Future;

    .line 786
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v1, v1, v17

    int-to-long v3, v0

    div-long v23, v1, v3

    const/4 v1, 0x0

    move v7, v1

    :goto_3
    if-ge v7, v0, :cond_9

    int-to-long v1, v7

    mul-long v3, v1, v23

    add-int/lit8 v1, v0, -0x1

    if-ne v7, v1, :cond_8

    .line 789
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v1, v1, v17

    goto :goto_4

    :cond_8
    add-long v1, v3, v23

    :goto_4
    move-wide v5, v1

    .line 790
    new-instance v25, Lorg/jtransforms/fft/DoubleFFT_1D$2;

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move/from16 v26, v7

    move-wide/from16 v7, p2

    move-wide/from16 v9, v19

    move-object/from16 v27, v11

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_1D$2;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v27, v26

    add-int/lit8 v7, v26, 0x1

    move-object/from16 v11, v27

    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v27, v11

    const/4 v1, 0x0

    .line 805
    :try_start_0
    invoke-static/range {v27 .. v27}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 809
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

    .line 807
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 813
    :cond_a
    :goto_5
    iget-wide v3, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v3, v3, v17

    cmp-long v0, v1, v3

    if-gez v0, :cond_b

    mul-long v3, v1, v17

    sub-long v5, v19, v3

    .line 815
    rem-long v5, v5, v19

    add-long/2addr v5, v14

    add-long/2addr v3, v14

    .line 816
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v13, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    add-long v3, v3, v21

    .line 817
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v13, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v1, v1, v21

    goto :goto_5

    .line 820
    :cond_b
    :goto_6
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v0, v14

    add-long v2, v14, v21

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v13, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x0

    .line 821
    invoke-virtual {v13, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :goto_7
    return-void
.end method

.method public realForwardFull([D)V
    .locals 1

    const/4 v0, 0x0

    .line 647
    invoke-virtual {p0, p1, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V

    return-void
.end method

.method public realForwardFull([DI)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 681
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_0

    .line 682
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v1, v10

    invoke-virtual {v8, v0, v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto/16 :goto_7

    .line 684
    :cond_0
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v12, 0x2

    mul-int/2addr v0, v12

    .line 685
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    if-eq v1, v15, :cond_6

    if-eq v1, v12, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v0, -0x1

    .line 751
    invoke-direct {v8, v9, v10, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    goto/16 :goto_7

    .line 729
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 731
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    .line 732
    div-int/2addr v1, v12

    goto :goto_0

    :cond_3
    add-int/2addr v1, v15

    .line 734
    div-int/2addr v1, v12

    :goto_0
    move v2, v15

    :goto_1
    if-ge v2, v1, :cond_4

    add-int v3, v10, v0

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v4, v10

    add-int/lit8 v5, v3, 0x1

    .line 739
    aget-wide v6, v9, v4

    neg-double v6, v6

    aput-wide v6, v9, v5

    sub-int/2addr v4, v15

    .line 740
    aget-wide v4, v9, v4

    aput-wide v4, v9, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v15

    .line 742
    :goto_2
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_5

    add-int/2addr v1, v10

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 744
    aget-wide v3, v9, v2

    .line 745
    aget-wide v5, v9, v1

    aput-wide v5, v9, v2

    .line 746
    aput-wide v3, v9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v10, 0x1

    .line 748
    aput-wide v13, v9, v0

    goto/16 :goto_7

    .line 687
    :cond_6
    invoke-virtual/range {p0 .. p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    .line 688
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v7

    const/4 v1, 0x0

    if-le v7, v15, :cond_9

    .line 689
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v12

    int-to-long v2, v2

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 690
    new-array v6, v7, [Ljava/util/concurrent/Future;

    .line 691
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v12

    div-int v16, v2, v7

    move v5, v1

    :goto_3
    if-ge v5, v7, :cond_8

    mul-int v3, v5, v16

    add-int/lit8 v1, v7, -0x1

    if-ne v5, v1, :cond_7

    .line 694
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v12

    goto :goto_4

    :cond_7
    add-int v1, v3, v16

    :goto_4
    move v4, v1

    .line 695
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_1D$1;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v18, v5

    move/from16 v5, p2

    move-object/from16 v19, v6

    move v6, v0

    move/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D$1;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v18

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v19

    move/from16 v7, v20

    goto :goto_3

    :cond_8
    move-object/from16 v19, v6

    const/4 v1, 0x0

    .line 710
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 714
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

    .line 712
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 718
    :cond_9
    :goto_5
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v12

    if-ge v1, v2, :cond_a

    mul-int/lit8 v2, v1, 0x2

    sub-int v3, v0, v2

    .line 720
    rem-int/2addr v3, v0

    add-int/2addr v3, v10

    add-int/2addr v2, v10

    .line 721
    aget-wide v4, v9, v2

    aput-wide v4, v9, v3

    add-int/2addr v3, v15

    add-int/2addr v2, v15

    .line 722
    aget-wide v4, v9, v2

    neg-double v4, v4

    aput-wide v4, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 725
    :cond_a
    :goto_6
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v10

    add-int/lit8 v1, v10, 0x1

    aget-wide v2, v9, v1

    neg-double v2, v2

    aput-wide v2, v9, v0

    .line 726
    aput-wide v13, v9, v1

    :goto_7
    return-void
.end method

.method public realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move/from16 v14, p4

    .line 1021
    iget-boolean v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 1022
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v12, v1

    if-gez v1, :cond_0

    .line 1023
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v1

    long-to-int v2, v12

    invoke-virtual {v0, v1, v2, v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    goto/16 :goto_2

    .line 1025
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The data array is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1028
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    return-void

    .line 1031
    :cond_2
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto/16 :goto_2

    .line 1058
    :cond_3
    invoke-direct/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    if-eqz v14, :cond_9

    .line 1060
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v15, v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto/16 :goto_2

    :cond_4
    const-wide/16 v1, 0x2

    .line 1046
    :goto_0
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_5

    add-long v5, v12, v1

    sub-long v7, v5, v3

    .line 1048
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    .line 1049
    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v11, v7, v8, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1050
    invoke-virtual {v11, v5, v6, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    .line 1052
    :cond_5
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftb(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    if-eqz v14, :cond_9

    .line 1054
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v15, v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto :goto_2

    :cond_6
    move-wide v1, v3

    add-long/2addr v1, v12

    .line 1033
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v11, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    invoke-virtual {v11, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1034
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v11, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    sub-double/2addr v3, v1

    invoke-virtual {v11, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1035
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    .line 1036
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ncl:J

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->rftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1037
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_1

    :cond_7
    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    .line 1039
    invoke-static/range {p1 .. p3}, Lorg/jtransforms/utils/CommonUtils;->cftxc020(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    :cond_8
    :goto_1
    if-eqz v14, :cond_9

    .line 1042
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    div-double v3, v15, v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    :cond_9
    :goto_2
    return-void
.end method

.method public realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 915
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    return-void
.end method

.method public realInverse([DIZ)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 948
    iget-boolean v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-eqz v1, :cond_0

    .line 949
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v1, p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v2, v8

    invoke-virtual {p0, v1, v2, v3, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto/16 :goto_2

    .line 951
    :cond_0
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 954
    :cond_1
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v3}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto/16 :goto_2

    .line 981
    :cond_2
    invoke-direct/range {p0 .. p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse([DI)V

    if-eqz v9, :cond_8

    .line 983
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v1

    div-double v2, v10, v2

    const/4 v6, 0x0

    move-object v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    goto/16 :goto_2

    .line 969
    :cond_3
    :goto_0
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v2, v1, :cond_4

    add-int v1, v8, v2

    add-int/lit8 v3, v1, -0x1

    .line 971
    aget-wide v4, v7, v3

    .line 972
    aget-wide v12, v7, v1

    aput-wide v12, v7, v3

    .line 973
    aput-wide v4, v7, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 975
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftb([DI)V

    if-eqz v9, :cond_8

    .line 977
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v1

    div-double v2, v10, v2

    const/4 v6, 0x0

    move-object v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v8, 0x1

    .line 956
    aget-wide v2, v7, v8

    aget-wide v4, v7, v1

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    aput-wide v2, v7, v1

    .line 957
    aget-wide v4, v7, v8

    sub-double/2addr v4, v2

    aput-wide v4, v7, v8

    .line 958
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_6

    .line 959
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->rftfsub(I[DII[DI)V

    .line 960
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    goto :goto_1

    :cond_6
    if-ne v1, v2, :cond_7

    .line 962
    invoke-static/range {p1 .. p2}, Lorg/jtransforms/utils/CommonUtils;->cftxc020([DI)V

    :cond_7
    :goto_1
    if-eqz v9, :cond_8

    .line 965
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    div-double v2, v10, v2

    const/4 v6, 0x0

    move-object v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public realInverse([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 882
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    return-void
.end method

.method protected realInverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move/from16 v14, p4

    .line 1361
    iget-boolean v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 1362
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v12, v1

    if-gez v1, :cond_0

    .line 1363
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v1

    long-to-int v2, v12

    invoke-virtual {v0, v1, v2, v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    goto/16 :goto_4

    .line 1365
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The data array is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1368
    :cond_1
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v15, 0x1

    cmp-long v1, v1, v15

    if-nez v1, :cond_2

    return-void

    .line 1371
    :cond_2
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto/16 :goto_4

    .line 1415
    :cond_3
    invoke-direct/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    if-eqz v14, :cond_b

    .line 1417
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v17, v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto/16 :goto_4

    .line 1389
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftf(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1390
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    :goto_0
    sub-long/2addr v1, v15

    const-wide/16 v9, 0x2

    cmp-long v3, v1, v9

    if-ltz v3, :cond_5

    add-long v3, v12, v1

    .line 1392
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    sub-long v7, v3, v15

    .line 1393
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v11, v3, v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1394
    invoke-virtual {v11, v7, v8, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto :goto_0

    :cond_5
    if-eqz v14, :cond_6

    .line 1397
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v17, v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1400
    :cond_6
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    rem-long v3, v1, v9

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 1401
    div-long/2addr v1, v9

    move-wide v3, v15

    :goto_1
    cmp-long v5, v3, v1

    if-gez v5, :cond_b

    mul-long v5, v3, v9

    add-long/2addr v5, v12

    add-long/2addr v5, v15

    .line 1404
    invoke-virtual {v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v11, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v15

    goto :goto_1

    :cond_7
    sub-long/2addr v1, v15

    .line 1407
    div-long/2addr v1, v9

    :goto_2
    cmp-long v3, v5, v1

    if-gez v3, :cond_b

    mul-long v3, v5, v9

    add-long/2addr v3, v12

    add-long/2addr v3, v15

    .line 1410
    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v15

    goto :goto_2

    .line 1375
    :cond_8
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-lez v5, :cond_9

    .line 1376
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1377
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ncl:J

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->rftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto :goto_3

    :cond_9
    cmp-long v3, v1, v3

    if-nez v3, :cond_a

    .line 1379
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nwl:J

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1381
    :cond_a
    :goto_3
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    add-long v3, v12, v15

    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    sub-double/2addr v1, v5

    .line 1382
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v11, v12, v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1383
    invoke-virtual {v11, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    if-eqz v14, :cond_b

    .line 1385
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v17, v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    :cond_b
    :goto_4
    return-void
.end method

.method protected realInverse2([DIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 1300
    iget-boolean v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-eqz v1, :cond_0

    .line 1301
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v1, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto/16 :goto_4

    .line 1303
    :cond_0
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_1

    return-void

    .line 1306
    :cond_1
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-eq v1, v10, :cond_7

    const/4 v13, 0x2

    if-eq v1, v13, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto/16 :goto_4

    .line 1350
    :cond_2
    invoke-direct/range {p0 .. p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2([DI)V

    if-eqz v9, :cond_a

    .line 1352
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v1

    div-double v2, v11, v2

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    goto/16 :goto_4

    .line 1324
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    .line 1325
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v1, v10

    :goto_0
    if-lt v1, v13, :cond_4

    add-int v2, v8, v1

    .line 1327
    aget-wide v3, v7, v2

    add-int/lit8 v5, v2, -0x1

    .line 1328
    aget-wide v14, v7, v5

    aput-wide v14, v7, v2

    .line 1329
    aput-wide v3, v7, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_5

    .line 1332
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v1

    div-double v2, v11, v2

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    .line 1335
    :cond_5
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_6

    .line 1336
    div-int/2addr v1, v13

    move v2, v10

    :goto_1
    if-ge v2, v1, :cond_a

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v8

    add-int/2addr v3, v10

    .line 1339
    aget-wide v4, v7, v3

    neg-double v4, v4

    aput-wide v4, v7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v1, v10

    .line 1342
    div-int/2addr v1, v13

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_a

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v8

    add-int/2addr v3, v10

    .line 1345
    aget-wide v4, v7, v3

    neg-double v4, v4

    aput-wide v4, v7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1310
    :cond_7
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_8

    .line 1311
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 1312
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->rftbsub(I[DII[DI)V

    goto :goto_3

    :cond_8
    if-ne v1, v2, :cond_9

    .line 1314
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    .line 1316
    :cond_9
    :goto_3
    aget-wide v1, v7, v8

    add-int/lit8 v3, v8, 0x1

    aget-wide v4, v7, v3

    sub-double v13, v1, v4

    add-double/2addr v1, v4

    .line 1317
    aput-wide v1, v7, v8

    .line 1318
    aput-wide v13, v7, v3

    if-eqz v9, :cond_a

    .line 1320
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v2, v1

    div-double v2, v11, v2

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    :cond_a
    :goto_4
    return-void
.end method

.method public realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
    .locals 28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move/from16 v0, p4

    .line 1211
    const-class v16, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-boolean v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-nez v1, :cond_1

    .line 1212
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v14, v1

    if-gez v1, :cond_0

    .line 1213
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v1

    long-to-int v2, v14

    invoke-virtual {v12, v1, v2, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DIZ)V

    goto/16 :goto_7

    .line 1215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_1
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v17, 0x2

    mul-long v19, v1, v17

    .line 1219
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v21, 0x0

    const/4 v2, 0x1

    const-wide/16 v23, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto/16 :goto_7

    :cond_2
    const-wide/16 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 1289
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    if-eqz v0, :cond_d

    .line 1291
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v7, v3

    const/4 v8, 0x1

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto/16 :goto_7

    .line 1263
    :cond_3
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftf(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    if-eqz v0, :cond_4

    .line 1265
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v7, v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1268
    :cond_4
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    rem-long v2, v0, v17

    cmp-long v2, v2, v21

    if-nez v2, :cond_5

    .line 1269
    div-long v0, v0, v17

    goto :goto_0

    :cond_5
    add-long v0, v0, v23

    .line 1271
    div-long v0, v0, v17

    :goto_0
    move-wide/from16 v2, v23

    :goto_1
    cmp-long v4, v2, v0

    if-gez v4, :cond_6

    mul-long v4, v2, v17

    add-long v6, v14, v4

    add-long v21, v14, v19

    sub-long v4, v21, v4

    .line 1276
    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    neg-double v8, v9

    invoke-virtual {v13, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v4, v23

    .line 1277
    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v13, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v6, v6, v23

    .line 1278
    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v13, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v23

    goto :goto_1

    :cond_6
    move-wide/from16 v0, v23

    .line 1280
    :goto_2
    iget-wide v2, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    add-long/2addr v2, v14

    sub-long/2addr v2, v0

    add-long v4, v2, v23

    .line 1282
    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    .line 1283
    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v13, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1284
    invoke-virtual {v13, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_2

    :cond_7
    add-long v0, v14, v23

    const-wide/16 v9, 0x0

    .line 1286
    invoke-virtual {v13, v0, v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto/16 :goto_7

    :cond_8
    const-wide/16 v9, 0x0

    .line 1221
    invoke-virtual/range {p0 .. p4}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1222
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v2, :cond_b

    .line 1223
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v1, v1, v17

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_b

    .line 1224
    new-array v11, v0, [Ljava/util/concurrent/Future;

    .line 1225
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v1, v1, v17

    int-to-long v3, v0

    div-long v21, v1, v3

    const/4 v1, 0x0

    move v7, v1

    :goto_3
    if-ge v7, v0, :cond_a

    int-to-long v1, v7

    mul-long v3, v1, v21

    add-int/lit8 v1, v0, -0x1

    if-ne v7, v1, :cond_9

    .line 1228
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v1, v1, v17

    goto :goto_4

    :cond_9
    add-long v1, v3, v21

    :goto_4
    move-wide v5, v1

    .line 1229
    new-instance v25, Lorg/jtransforms/fft/DoubleFFT_1D$4;

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move/from16 v26, v7

    move-wide/from16 v7, p2

    move-wide/from16 v9, v19

    move-object/from16 v27, v11

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_1D$4;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v27, v26

    add-int/lit8 v7, v26, 0x1

    move-object/from16 v11, v27

    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v27, v11

    const/4 v1, 0x0

    .line 1244
    :try_start_0
    invoke-static/range {v27 .. v27}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1248
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

    .line 1246
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1252
    :cond_b
    :goto_5
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long v0, v0, v17

    cmp-long v0, v21, v0

    if-gez v0, :cond_c

    mul-long v0, v21, v17

    sub-long v2, v19, v0

    .line 1254
    rem-long v2, v2, v19

    add-long/2addr v2, v14

    add-long/2addr v0, v14

    .line 1255
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v13, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v23

    add-long v0, v0, v23

    .line 1256
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {v13, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v21, v21, v23

    goto :goto_5

    .line 1259
    :cond_c
    :goto_6
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long/2addr v0, v14

    add-long v2, v14, v23

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v13, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x0

    .line 1260
    invoke-virtual {v13, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :cond_d
    :goto_7
    return-void
.end method

.method public realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1097
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    return-void
.end method

.method public realInverseFull([DIZ)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v0, p3

    .line 1114
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-boolean v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->useLargeArrays:Z

    if-eqz v1, :cond_0

    .line 1115
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v1, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v2, v10

    invoke-virtual {v8, v1, v2, v3, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto/16 :goto_7

    .line 1117
    :cond_0
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v12, 0x2

    mul-int/lit8 v13, v1, 0x2

    .line 1118
    sget-object v1, Lorg/jtransforms/fft/DoubleFFT_1D$29;->$SwitchMap$org$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->plan:Lorg/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Lorg/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v14, 0x0

    const/4 v7, 0x1

    if-eq v1, v7, :cond_7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eq v1, v12, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    goto/16 :goto_7

    .line 1188
    :cond_1
    invoke-direct {v8, v9, v10, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    if-eqz v0, :cond_c

    .line 1190
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    const/4 v6, 0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    goto/16 :goto_7

    .line 1162
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    if-eqz v0, :cond_3

    .line 1164
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    .line 1167
    :cond_3
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_4

    .line 1168
    div-int/2addr v0, v12

    goto :goto_0

    :cond_4
    add-int/2addr v0, v7

    .line 1170
    div-int/2addr v0, v12

    :goto_0
    move v1, v7

    :goto_1
    if-ge v1, v0, :cond_5

    mul-int/lit8 v2, v1, 0x2

    add-int v3, v10, v2

    add-int v4, v10, v13

    sub-int/2addr v4, v2

    .line 1175
    aget-wide v5, v9, v3

    neg-double v5, v5

    aput-wide v5, v9, v3

    add-int/lit8 v2, v4, 0x1

    neg-double v5, v5

    .line 1176
    aput-wide v5, v9, v2

    sub-int/2addr v3, v7

    .line 1177
    aget-wide v2, v9, v3

    aput-wide v2, v9, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v0, v7

    .line 1179
    :goto_2
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    add-int/2addr v1, v10

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 1181
    aget-wide v3, v9, v2

    .line 1182
    aget-wide v5, v9, v1

    aput-wide v5, v9, v2

    .line 1183
    aput-wide v3, v9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v10, 0x1

    .line 1185
    aput-wide v14, v9, v0

    goto/16 :goto_7

    .line 1120
    :cond_7
    invoke-virtual/range {p0 .. p3}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    .line 1121
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, v7, :cond_a

    .line 1122
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v12

    int-to-long v2, v2

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 1123
    new-array v6, v0, [Ljava/util/concurrent/Future;

    .line 1124
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v2, v12

    div-int v16, v2, v0

    move v5, v1

    :goto_3
    if-ge v5, v0, :cond_9

    mul-int v3, v5, v16

    add-int/lit8 v1, v0, -0x1

    if-ne v5, v1, :cond_8

    .line 1127
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v12

    goto :goto_4

    :cond_8
    add-int v1, v3, v16

    :goto_4
    move v4, v1

    .line 1128
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_1D$3;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v18, v5

    move/from16 v5, p2

    move-object/from16 v19, v6

    move v6, v13

    move/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D$3;-><init>(Lorg/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v18

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v19

    move/from16 v7, v20

    goto :goto_3

    :cond_9
    move-object/from16 v19, v6

    move/from16 v20, v7

    const/4 v1, 0x0

    .line 1143
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1147
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

    .line 1145
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    move/from16 v20, v7

    .line 1151
    :goto_5
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v12

    if-ge v1, v0, :cond_b

    mul-int/lit8 v0, v1, 0x2

    sub-int v2, v13, v0

    .line 1153
    rem-int/2addr v2, v13

    add-int/2addr v2, v10

    add-int/2addr v0, v10

    .line 1154
    aget-wide v3, v9, v0

    aput-wide v3, v9, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 1155
    aget-wide v3, v9, v0

    neg-double v3, v3

    aput-wide v3, v9, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1158
    :cond_b
    :goto_6
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v10

    add-int/lit8 v1, v10, 0x1

    aget-wide v2, v9, v1

    neg-double v2, v2

    aput-wide v2, v9, v0

    .line 1159
    aput-wide v14, v9, v1

    :cond_c
    :goto_7
    return-void
.end method

.method public realInverseFull([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1081
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DIZ)V

    return-void
.end method

.method rfftb(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 37

    move-object/from16 v15, p0

    .line 3596
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v17, 0x1

    cmp-long v0, v0, v17

    if-nez v0, :cond_0

    return-void

    .line 3601
    :cond_0
    new-instance v12, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-direct {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const-wide/16 v0, 0x2

    .line 3602
    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    mul-long v19, v2, v0

    .line 3603
    iget-object v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v1, v19, v17

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    double-to-long v10, v0

    .line 3606
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v17

    move-wide v5, v0

    move-wide/from16 v25, v21

    :goto_0
    cmp-long v2, v0, v10

    if-gtz v2, :cond_b

    .line 3608
    iget-object v2, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v27, v0, v17

    add-long v0, v27, v19

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    double-to-int v9, v0

    int-to-long v3, v9

    mul-long v29, v3, v5

    .line 3610
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

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

    .line 3647
    invoke-virtual/range {v0 .. v16}, Lorg/jtransforms/fft/DoubleFFT_1D;->radbg(JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3649
    invoke-virtual/range {v0 .. v16}, Lorg/jtransforms/fft/DoubleFFT_1D;->radbg(JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3639
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3641
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3631
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3633
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3623
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3625
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3615
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3617
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3662
    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    move-object/from16 v1, v36

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    return-void
.end method

.method rfftb([DI)V
    .locals 22

    move-object/from16 v10, p0

    .line 3522
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    return-void

    .line 3527
    :cond_0
    new-array v12, v0, [D

    mul-int/lit8 v13, v0, 0x2

    .line 3529
    iget-object v1, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v2, v13, 0x1

    aget-wide v2, v1, v2

    double-to-int v14, v2

    const/4 v15, 0x0

    move/from16 v16, v0

    move v0, v11

    move v3, v0

    move/from16 v17, v15

    :goto_0
    if-gt v0, v14, :cond_b

    .line 3534
    iget-object v1, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v18, v0, 0x1

    add-int v0, v18, v13

    aget-wide v0, v1, v0

    double-to-int v9, v0

    mul-int v19, v9, v3

    .line 3536
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

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

    .line 3573
    invoke-virtual/range {v0 .. v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

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

    .line 3575
    invoke-virtual/range {v0 .. v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

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

    .line 3565
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

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

    .line 3567
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

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

    .line 3557
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

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

    .line 3559
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

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

    .line 3549
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

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

    .line 3551
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

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

    .line 3541
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

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

    .line 3543
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

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

    .line 3588
    :cond_c
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v12, v15, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method rfftf(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 38

    move-object/from16 v15, p0

    .line 3447
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v17, 0x1

    cmp-long v0, v0, v17

    if-nez v0, :cond_0

    return-void

    .line 3453
    :cond_0
    new-instance v12, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    invoke-direct {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 3454
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    const-wide/16 v19, 0x2

    mul-long v21, v0, v19

    .line 3455
    iget-object v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v1, v21, v17

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    double-to-long v10, v0

    .line 3457
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    sub-long v2, v21, v17

    move-wide/from16 v4, v17

    move-wide/from16 v23, v4

    :goto_0
    cmp-long v6, v23, v10

    if-gtz v6, :cond_b

    sub-long v6, v10, v23

    .line 3461
    iget-object v8, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v6, v6, v19

    add-long v6, v6, v21

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-long v7, v6

    .line 3462
    div-long v25, v0, v7

    .line 3463
    iget-wide v13, v15, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

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

    .line 3501
    invoke-virtual/range {v0 .. v16}, Lorg/jtransforms/fft/DoubleFFT_1D;->radfg(JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3504
    invoke-virtual/range {v0 .. v16}, Lorg/jtransforms/fft/DoubleFFT_1D;->radfg(JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3491
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3493
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf5(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3484
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3486
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf4(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3477
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3479
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf3(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3470
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3472
    invoke-virtual/range {v0 .. v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf2(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 3514
    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    move-object/from16 v1, v37

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    return-void
.end method

.method rfftf([DI)V
    .locals 18

    move-object/from16 v10, p0

    .line 3373
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    return-void

    .line 3378
    :cond_0
    new-array v12, v0, [D

    mul-int/lit8 v13, v0, 0x2

    .line 3380
    iget-object v1, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v2, v13, 0x1

    aget-wide v2, v1, v2

    double-to-int v14, v2

    add-int/lit8 v1, v13, -0x1

    move v2, v11

    move v15, v2

    :goto_0
    const/4 v9, 0x0

    if-gt v15, v14, :cond_b

    sub-int v3, v14, v15

    .line 3386
    iget-object v4, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    const/4 v5, 0x2

    add-int/2addr v3, v5

    add-int/2addr v3, v13

    aget-wide v3, v4, v3

    double-to-int v3, v3

    .line 3387
    div-int v16, v0, v3

    .line 3388
    iget v4, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

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

    .line 3426
    invoke-virtual/range {v0 .. v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

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

    .line 3429
    invoke-virtual/range {v0 .. v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

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

    .line 3416
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

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

    .line 3418
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

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

    .line 3409
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

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

    .line 3411
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

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

    .line 3402
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

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

    .line 3404
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

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

    .line 3395
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

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

    .line 3397
    invoke-virtual/range {v0 .. v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

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

    .line 3439
    :cond_c
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v12, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method rffti()V
    .locals 27

    move-object/from16 v0, p0

    .line 1697
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

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

    .line 1719
    sget-object v6, Lorg/jtransforms/fft/DoubleFFT_1D;->factors:[I

    aget v5, v6, v5

    move v6, v5

    goto :goto_1

    :cond_1
    add-int/2addr v6, v10

    .line 1724
    :goto_1
    div-int v5, v1, v6

    mul-int v9, v6, v5

    sub-int v9, v1, v9

    if-eqz v9, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v7, 0x1

    .line 1730
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v11, v7, 0x2

    add-int/2addr v11, v3

    int-to-double v12, v6

    aput-wide v12, v9, v11

    if-ne v6, v10, :cond_4

    if-eq v1, v2, :cond_4

    move v9, v10

    :goto_2
    if-gt v9, v1, :cond_3

    sub-int v11, v1, v9

    add-int/2addr v11, v10

    add-int/2addr v11, v3

    .line 1737
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v13, v11, 0x1

    aget-wide v14, v12, v11

    aput-wide v14, v12, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1739
    :cond_3
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v11, v3, 0x2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    aput-wide v12, v9, v11

    :cond_4
    if-ne v5, v2, :cond_9

    .line 1744
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v8, v6

    aput-wide v8, v5, v3

    add-int/lit8 v8, v3, 0x1

    int-to-double v11, v1

    .line 1745
    aput-wide v11, v5, v8

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v5, v6

    div-double/2addr v8, v5

    if-nez v7, :cond_5

    return-void

    :cond_5
    move v1, v2

    move v5, v1

    const/4 v6, 0x0

    :goto_3
    if-gt v1, v7, :cond_8

    .line 1754
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v1, v1, 0x1

    add-int v12, v1, v3

    aget-wide v12, v11, v12

    double-to-int v11, v12

    mul-int v12, v5, v11

    .line 1757
    iget v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v13, v12

    sub-int/2addr v11, v2

    move v14, v2

    const/4 v15, 0x0

    :goto_4
    if-gt v14, v11, :cond_7

    add-int/2addr v15, v5

    move/from16 v16, v5

    int-to-double v4, v15

    mul-double/2addr v4, v8

    const-wide/16 v17, 0x0

    const/16 v19, 0x3

    move/from16 v20, v6

    move/from16 v2, v19

    :goto_5
    if-gt v2, v13, :cond_6

    add-int/lit8 v20, v20, 0x2

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    add-double v17, v17, v21

    mul-double v21, v17, v4

    .line 1769
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v10, v20, v10

    move/from16 v23, v1

    .line 1770
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v10, -0x2

    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v25

    aput-wide v25, v1, v24

    .line 1771
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    const/16 v19, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v21

    aput-wide v21, v1, v10

    add-int/lit8 v2, v2, 0x2

    move/from16 v1, v23

    const/4 v10, 0x2

    goto :goto_5

    :cond_6
    move/from16 v23, v1

    const/16 v19, 0x1

    add-int/2addr v6, v13

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move/from16 v2, v19

    const/4 v10, 0x2

    goto :goto_4

    :cond_7
    move/from16 v23, v1

    move v5, v12

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    move v7, v1

    move v1, v5

    goto/16 :goto_1
.end method

.method rfftil()V
    .locals 47

    move-object/from16 v0, p0

    .line 1782
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

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

    .line 1804
    sget-object v13, Lorg/jtransforms/fft/DoubleFFT_1D;->factors:[I

    long-to-int v11, v11

    aget v11, v13, v11

    int-to-long v11, v11

    move-wide v13, v11

    goto :goto_1

    :cond_1
    add-long/2addr v13, v5

    .line 1809
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

    .line 1815
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v21, v15, v5

    add-long v3, v21, v7

    move-wide/from16 v21, v11

    long-to-double v10, v13

    invoke-virtual {v9, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    cmp-long v3, v13, v5

    if-nez v3, :cond_5

    const-wide/16 v3, 0x1

    cmp-long v9, v1, v3

    if-eqz v9, :cond_4

    move-wide v9, v5

    :goto_2
    cmp-long v11, v9, v1

    if-gtz v11, :cond_3

    sub-long v11, v1, v9

    add-long/2addr v11, v5

    add-long/2addr v11, v7

    .line 1822
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v23, v13

    add-long v13, v11, v3

    invoke-virtual {v5, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v5, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v9, v3

    move-wide/from16 v13, v23

    const-wide/16 v5, 0x2

    goto :goto_2

    :cond_3
    move-wide/from16 v23, v13

    .line 1824
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x2

    add-long v11, v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-virtual {v5, v11, v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto :goto_3

    :cond_4
    move-wide/from16 v23, v13

    goto :goto_3

    :cond_5
    move-wide/from16 v23, v13

    const-wide/16 v3, 0x1

    :goto_3
    cmp-long v5, v21, v3

    if-nez v5, :cond_a

    .line 1829
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v9, v9

    invoke-virtual {v5, v7, v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1830
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v9, v7, v3

    long-to-double v1, v1

    invoke-virtual {v5, v9, v10, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1831
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    long-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v15, v5

    if-nez v1, :cond_6

    return-void

    :cond_6
    move-wide v11, v5

    const-wide/16 v1, 0x1

    const-wide/16 v9, 0x1

    :goto_4
    cmp-long v13, v9, v15

    if-gtz v13, :cond_9

    .line 1839
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v17, 0x1

    add-long v9, v9, v17

    add-long v5, v9, v7

    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    double-to-long v5, v5

    mul-long v13, v1, v5

    move-wide/from16 v27, v7

    .line 1842
    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    div-long/2addr v7, v13

    sub-long v5, v5, v17

    move-wide/from16 v17, v11

    const-wide/16 v11, 0x1

    const-wide/16 v21, 0x0

    :goto_5
    cmp-long v29, v11, v5

    if-gtz v29, :cond_8

    move-wide/from16 v29, v5

    add-long v5, v21, v1

    move-wide/from16 v21, v1

    long-to-double v1, v5

    mul-double/2addr v1, v3

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x3

    move-wide/from16 v35, v17

    :goto_6
    cmp-long v37, v33, v7

    if-gtz v37, :cond_7

    const-wide/16 v25, 0x2

    add-long v35, v35, v25

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    add-double v31, v31, v37

    mul-double v37, v31, v1

    move-wide/from16 v39, v1

    .line 1854
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->nl:J

    add-long v1, v35, v1

    move-wide/from16 v41, v3

    .line 1855
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v43, v5

    sub-long v4, v1, v25

    move-wide/from16 v45, v9

    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v9

    invoke-virtual {v3, v4, v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1856
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D;->wtable_rl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x1

    sub-long/2addr v1, v4

    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    invoke-virtual {v3, v1, v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v33, v33, v25

    move-wide/from16 v1, v39

    move-wide/from16 v3, v41

    move-wide/from16 v5, v43

    move-wide/from16 v9, v45

    goto :goto_6

    :cond_7
    move-wide/from16 v41, v3

    move-wide/from16 v43, v5

    move-wide/from16 v45, v9

    const-wide/16 v4, 0x1

    const-wide/16 v25, 0x2

    add-long v17, v17, v7

    add-long/2addr v11, v4

    move-wide/from16 v1, v21

    move-wide/from16 v5, v29

    move-wide/from16 v3, v41

    move-wide/from16 v21, v43

    goto :goto_5

    :cond_8
    move-wide/from16 v45, v9

    const-wide/16 v25, 0x2

    move-wide v1, v13

    move-wide/from16 v11, v17

    move-wide/from16 v7, v27

    const-wide/16 v5, 0x0

    goto/16 :goto_4

    :cond_9
    return-void

    :cond_a
    move-wide v4, v3

    const-wide/16 v25, 0x2

    move-wide v15, v1

    move-wide v3, v4

    move-wide/from16 v1, v21

    move-wide/from16 v13, v23

    move-wide/from16 v5, v25

    const-wide/16 v9, 0x0

    goto/16 :goto_1
.end method
