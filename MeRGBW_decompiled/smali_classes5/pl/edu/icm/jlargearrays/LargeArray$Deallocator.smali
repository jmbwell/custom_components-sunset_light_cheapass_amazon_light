.class public Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;
.super Ljava/lang/Object;
.source "LargeArray.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Deallocator"
.end annotation


# instance fields
.field private final length:J

.field private ptr:J

.field private final sizeof:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;->ptr:J

    .line 935
    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;->length:J

    .line 936
    iput-wide p5, p0, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;->sizeof:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 942
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 943
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;->ptr:J

    invoke-virtual {v0, v4, v5}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 944
    iput-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;->ptr:J

    .line 945
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;->length:J

    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;->sizeof:J

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lpl/edu/icm/jlargearrays/MemoryCounter;->decreaseCounter(J)V

    :cond_0
    return-void
.end method
