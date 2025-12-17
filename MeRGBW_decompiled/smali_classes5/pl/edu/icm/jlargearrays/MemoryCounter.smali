.class public Lpl/edu/icm/jlargearrays/MemoryCounter;
.super Ljava/lang/Object;
.source "MemoryCounter.java"


# static fields
.field private static counter:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decreaseCounter(J)V
    .locals 2

    .line 55
    sget-wide v0, Lpl/edu/icm/jlargearrays/MemoryCounter;->counter:J

    sub-long/2addr v0, p0

    sput-wide v0, Lpl/edu/icm/jlargearrays/MemoryCounter;->counter:J

    const-wide/16 p0, 0x0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    .line 56
    sput-wide p0, Lpl/edu/icm/jlargearrays/MemoryCounter;->counter:J

    :cond_0
    return-void
.end method

.method public static getCounter()J
    .locals 2

    .line 45
    sget-wide v0, Lpl/edu/icm/jlargearrays/MemoryCounter;->counter:J

    return-wide v0
.end method

.method public static increaseCounter(J)V
    .locals 2

    .line 50
    sget-wide v0, Lpl/edu/icm/jlargearrays/MemoryCounter;->counter:J

    add-long/2addr v0, p0

    sput-wide v0, Lpl/edu/icm/jlargearrays/MemoryCounter;->counter:J

    return-void
.end method
