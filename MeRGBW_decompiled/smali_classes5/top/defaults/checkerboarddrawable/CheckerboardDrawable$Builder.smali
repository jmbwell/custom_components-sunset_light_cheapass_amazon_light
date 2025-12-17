.class public final Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;
.super Ljava/lang/Object;
.source "CheckerboardDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private colorEven:I

.field private colorOdd:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 79
    iput v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->size:I

    const v0, -0x3d3d3e

    .line 80
    iput v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->colorOdd:I

    const v0, -0xc0c0d

    .line 81
    iput v0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->colorEven:I

    return-void
.end method

.method static synthetic access$000(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)I
    .locals 0

    .line 77
    iget p0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->size:I

    return p0
.end method

.method static synthetic access$100(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)I
    .locals 0

    .line 77
    iget p0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->colorOdd:I

    return p0
.end method

.method static synthetic access$200(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;)I
    .locals 0

    .line 77
    iget p0, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->colorEven:I

    return p0
.end method


# virtual methods
.method public build()Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;
    .locals 2

    .line 99
    new-instance v0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable;-><init>(Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$1;)V

    return-object v0
.end method

.method public colorEven(I)Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;
    .locals 0

    .line 94
    iput p1, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->colorEven:I

    return-object p0
.end method

.method public colorOdd(I)Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;
    .locals 0

    .line 89
    iput p1, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->colorOdd:I

    return-object p0
.end method

.method public size(I)Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;
    .locals 0

    .line 84
    iput p1, p0, Ltop/defaults/checkerboarddrawable/CheckerboardDrawable$Builder;->size:I

    return-object p0
.end method
