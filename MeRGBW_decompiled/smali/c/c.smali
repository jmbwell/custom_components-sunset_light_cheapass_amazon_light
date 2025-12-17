.class public Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[B

.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/c;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/c;->b:I

    .line 22
    new-array p1, p1, [B

    iput-object p1, p0, Lc/c;->a:[B

    return-void
.end method


# virtual methods
.method public a(B)Lc/c;
    .locals 1

    .line 1
    iget v0, p0, Lc/c;->b:I

    invoke-virtual {p0, v0, p1}, Lc/c;->a(IB)Lc/c;

    move-result-object p1

    return-object p1
.end method

.method public a(IB)Lc/c;
    .locals 3

    const/4 v0, 0x1

    .line 18
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-virtual {p0, p1, v1, v0}, Lc/c;->a(I[BI)Lc/c;

    move-result-object p1

    return-object p1
.end method

.method public a(I[BI)Lc/c;
    .locals 3

    .line 10
    iget v0, p0, Lc/c;->b:I

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v0, p3

    .line 13
    invoke-virtual {p0, v0}, Lc/c;->a(I)V

    .line 14
    iget-object v0, p0, Lc/c;->a:[B

    add-int v1, p1, p3

    iget v2, p0, Lc/c;->b:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v0, p0, Lc/c;->a:[B

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget p1, p0, Lc/c;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lc/c;->b:I

    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c;->a:[B

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 3
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 7
    :goto_0
    new-array p1, p1, [B

    .line 8
    iget v1, p0, Lc/c;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object p1, p0, Lc/c;->a:[B

    :cond_1
    return-void
.end method

.method public a()[B
    .locals 4

    .line 19
    iget v0, p0, Lc/c;->b:I

    new-array v1, v0, [B

    .line 20
    iget-object v2, p0, Lc/c;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c;->a:[B

    invoke-static {v0}, Lc/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
