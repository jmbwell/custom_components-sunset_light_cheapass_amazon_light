.class public final synthetic Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

.field public final synthetic f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

.field public final synthetic f$2:Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    iput-object p2, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iput-object p3, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iget-object v2, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->lambda$getChildView$0$com-mergbw-android-ui-groupSetting-adapter-DeviceGroupItemAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;Landroid/view/View;)V

    return-void
.end method
