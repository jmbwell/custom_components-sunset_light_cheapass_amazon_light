.class public final Ltop/defaults/colorpicker/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/defaults/colorpicker/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static ColorPickerView:[I = null

.field public static ColorPickerView_enableAlpha:I = 0x0

.field public static ColorPickerView_enableBrightness:I = 0x1

.field public static ColorPickerView_indicatorColor:I = 0x2

.field public static ColorPickerView_indicatorEnable:I = 0x3

.field public static ColorPickerView_onlyUpdateOnTouchEventUp:I = 0x4

.field public static ColorPickerView_orientation:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltop/defaults/colorpicker/R$styleable;->ColorPickerView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0301c4
        0x7f0301c5
        0x7f030269
        0x7f03026c
        0x7f0303bf
        0x7f0303c0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
