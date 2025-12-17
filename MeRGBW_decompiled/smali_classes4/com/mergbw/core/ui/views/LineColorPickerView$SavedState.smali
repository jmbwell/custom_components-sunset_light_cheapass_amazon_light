.class Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LineColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/views/LineColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field colorBytes:[B

.field colors:[I

.field indicatorBytes:[B

.field selX:I

.field selY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 587
    new-instance v0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState$1;

    invoke-direct {v0}, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 569
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->selX:I

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->selY:I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->colors:[I

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->colorBytes:[B

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->indicatorBytes:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 565
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 579
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 580
    iget p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->selX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->selY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    iget-object p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->colors:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 583
    iget-object p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->colorBytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 584
    iget-object p2, p0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;->indicatorBytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
