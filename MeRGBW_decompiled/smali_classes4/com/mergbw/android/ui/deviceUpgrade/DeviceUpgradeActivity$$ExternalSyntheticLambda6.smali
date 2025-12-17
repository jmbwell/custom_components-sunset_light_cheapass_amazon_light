.class public final synthetic Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;

.field public final synthetic f$1:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda6;->f$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda6;->f$1:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda6;->f$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda6;->f$1:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->lambda$onError$4$com-mergbw-android-ui-deviceUpgrade-DeviceUpgradeActivity(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    return-void
.end method
