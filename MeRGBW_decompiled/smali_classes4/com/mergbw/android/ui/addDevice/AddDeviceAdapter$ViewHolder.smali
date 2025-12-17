.class public Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AddDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mItemBinding:Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$ViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutAddDeviceItemBinding;

    return-void
.end method
