.class public Lcom/mergbw/core/ble/CommandUtils;
.super Ljava/lang/Object;
.source "CommandUtils.java"


# static fields
.field private static final CMD_HEAD:B = 0x55t

.field private static final CMD_SEQUENCE:B = -0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkValid([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 51
    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/16 v5, 0xff

    if-ge v1, v3, :cond_0

    .line 52
    aget-byte v3, p0, v1

    and-int/2addr v3, v5

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v2, v5, :cond_1

    and-int/lit16 v2, v2, 0xff

    goto :goto_1

    .line 58
    :cond_1
    array-length v1, p0

    sub-int/2addr v1, v4

    aget-byte p0, p0, v1

    add-int/2addr v2, p0

    not-int p0, v2

    and-int/2addr p0, v5

    if-eqz p0, :cond_2

    .line 60
    const-string p0, "checkSum error!"

    invoke-static {p0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    return v0

    :cond_2
    return v4
.end method

.method public static getByteArray(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 69
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public static getCommand(B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cmdCode",
            "value"
        }
    .end annotation

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 17
    array-length v1, p1

    add-int/2addr v0, v1

    .line 20
    :cond_0
    new-array v1, v0, [B

    const/16 v2, 0x55

    const/4 v3, 0x0

    .line 21
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 22
    aput-byte p0, v1, v2

    const/4 p0, 0x2

    const/4 v4, -0x1

    .line 23
    aput-byte v4, v1, p0

    const/4 p0, 0x3

    int-to-byte v4, v0

    .line 24
    aput-byte v4, v1, p0

    if-eqz p1, :cond_1

    const/4 p0, 0x4

    .line 27
    array-length v4, p1

    invoke-static {p1, v3, v1, p0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move p0, v3

    :goto_0
    const/16 p1, 0xff

    if-ge v3, v0, :cond_2

    .line 31
    aget-byte v4, v1, v3

    and-int/2addr p1, v4

    add-int/2addr p0, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le p0, p1, :cond_3

    and-int/lit16 p0, p0, 0xff

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v2

    not-int p0, p0

    and-int/2addr p0, p1

    int-to-byte p0, p0

    .line 37
    aput-byte p0, v1, v0

    return-object v1
.end method

.method public static getSeqCommand(B[BBI)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cmdCode",
            "value",
            "seq",
            "length"
        }
    .end annotation

    add-int/lit8 v0, p3, 0x5

    .line 84
    new-array v1, v0, [B

    const/16 v2, 0x55

    const/4 v3, 0x0

    .line 85
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 86
    aput-byte p0, v1, v2

    const/4 p0, 0x2

    .line 87
    aput-byte p2, v1, p0

    const/4 p0, 0x3

    int-to-byte p2, v0

    .line 88
    aput-byte p2, v1, p0

    const/4 p0, 0x4

    .line 90
    invoke-static {p1, v3, v1, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v3

    :goto_0
    const/16 p2, 0xff

    if-ge v3, v0, :cond_0

    .line 93
    aget-byte v2, v1, v3

    and-int/2addr p2, v2

    add-int/2addr p1, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le p1, p2, :cond_1

    and-int/lit16 v0, p1, 0xff

    shr-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v0

    goto :goto_1

    :cond_1
    add-int/2addr p3, p0

    not-int p0, p1

    and-int/2addr p0, p2

    int-to-byte p0, p0

    .line 99
    aput-byte p0, v1, p3

    return-object v1
.end method

.method public static getSeqCommandWithoutLength(B[BBI)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cmdCode",
            "value",
            "seq",
            "length"
        }
    .end annotation

    add-int/lit8 v0, p3, 0x4

    .line 106
    new-array v1, v0, [B

    const/16 v2, 0x55

    const/4 v3, 0x0

    .line 107
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    .line 108
    aput-byte p0, v1, v2

    const/4 v2, 0x2

    .line 109
    aput-byte p2, v1, v2

    const/4 p2, 0x3

    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    .line 112
    invoke-static {p1, v3, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    move p0, v3

    :goto_0
    const/16 p1, 0xff

    if-ge v3, v0, :cond_1

    .line 116
    aget-byte v2, v1, v3

    and-int/2addr p1, v2

    add-int/2addr p0, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p0, p1, :cond_2

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v0

    goto :goto_1

    :cond_2
    add-int/2addr p3, p2

    not-int p0, p0

    and-int/2addr p0, p1

    int-to-byte p0, p0

    .line 122
    aput-byte p0, v1, p3

    return-object v1
.end method

.method public static int2ByteArray(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 78
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method
