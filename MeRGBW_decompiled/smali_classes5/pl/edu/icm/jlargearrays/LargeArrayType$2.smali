.class final enum Lpl/edu/icm/jlargearrays/LargeArrayType$2;
.super Lpl/edu/icm/jlargearrays/LargeArrayType;
.source "LargeArrayType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/edu/icm/jlargearrays/LargeArrayType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;-><init>(Ljava/lang/String;ILpl/edu/icm/jlargearrays/LargeArrayType$1;)V

    return-void
.end method


# virtual methods
.method public isIntegerNumericType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNumericType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
