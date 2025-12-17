.class public final synthetic Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

.field public final synthetic f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

.field public final synthetic f$2:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    iput-object p2, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iput-object p3, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iget-object v2, p0, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->lambda$onBindViewHolder$1$com-mergbw-android-ui-groupDetail-adapter-GroupDeviceItemAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter$ItemViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
