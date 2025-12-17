.class final Lpl/edu/icm/jlargearrays/Benchmark$1;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJavaArraysByteSequential([J[IILjava/lang/String;)[[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:[B

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I


# direct methods
.method constructor <init>(II[B)V
    .locals 0

    .line 143
    iput p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$1;->val$firstIdx:I

    iput p2, p0, Lpl/edu/icm/jlargearrays/Benchmark$1;->val$lastIdx:I

    iput-object p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$1;->val$a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget v0, p0, Lpl/edu/icm/jlargearrays/Benchmark$1;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lpl/edu/icm/jlargearrays/Benchmark$1;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/Benchmark$1;->val$a:[B

    const/4 v2, 0x1

    aput-byte v2, v1, v0

    add-int/2addr v2, v2

    int-to-byte v2, v2

    .line 149
    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
