.class final enum Lorg/jtransforms/fft/FloatFFT_1D$Plans;
.super Ljava/lang/Enum;
.source "FloatFFT_1D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jtransforms/fft/FloatFFT_1D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Plans"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jtransforms/fft/FloatFFT_1D$Plans;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jtransforms/fft/FloatFFT_1D$Plans;

.field public static final enum BLUESTEIN:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

.field public static final enum MIXED_RADIX:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

.field public static final enum SPLIT_RADIX:Lorg/jtransforms/fft/FloatFFT_1D$Plans;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v0, Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    const-string v1, "SPLIT_RADIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->SPLIT_RADIX:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    new-instance v1, Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    const-string v3, "MIXED_RADIX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->MIXED_RADIX:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    new-instance v3, Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    const-string v5, "BLUESTEIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jtransforms/fft/FloatFFT_1D$Plans;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->BLUESTEIN:Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    const/4 v5, 0x3

    .line 56
    new-array v5, v5, [Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->$VALUES:[Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jtransforms/fft/FloatFFT_1D$Plans;
    .locals 1

    .line 56
    const-class v0, Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    return-object p0
.end method

.method public static values()[Lorg/jtransforms/fft/FloatFFT_1D$Plans;
    .locals 1

    .line 56
    sget-object v0, Lorg/jtransforms/fft/FloatFFT_1D$Plans;->$VALUES:[Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v0}, [Lorg/jtransforms/fft/FloatFFT_1D$Plans;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jtransforms/fft/FloatFFT_1D$Plans;

    return-object v0
.end method
