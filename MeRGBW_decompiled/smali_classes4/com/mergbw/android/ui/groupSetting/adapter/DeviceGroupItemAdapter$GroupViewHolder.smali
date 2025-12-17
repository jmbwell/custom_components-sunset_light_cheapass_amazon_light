.class public Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "DeviceGroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupViewHolder"
.end annotation


# instance fields
.field mGroupBinding:Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$GroupViewHolder;->mGroupBinding:Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;

    return-void
.end method
