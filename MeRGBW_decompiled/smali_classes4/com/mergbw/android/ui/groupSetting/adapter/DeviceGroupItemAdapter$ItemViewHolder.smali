.class public Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;
.super Ljava/lang/Object;
.source "DeviceGroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    return-void
.end method
