.class Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState$1;
.super Ljava/lang/Object;
.source "LineColorPickerView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 590
    new-instance v0, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;

    invoke-direct {v0, p1}, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 587
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 595
    new-array p1, p1, [Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 587
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState$1;->newArray(I)[Lcom/mergbw/core/ui/views/LineColorPickerView$SavedState;

    move-result-object p1

    return-object p1
.end method
