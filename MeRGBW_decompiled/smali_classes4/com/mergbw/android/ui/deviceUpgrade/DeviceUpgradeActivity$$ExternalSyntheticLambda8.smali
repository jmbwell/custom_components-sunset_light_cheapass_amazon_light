.class public final synthetic Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda8;->f$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda8;->f$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;

    check-cast p1, Lcom/mergbw/core/ble/BleStatus;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->$r8$lambda$OivQ5R1dbBbKBc2E6iaYrjoryy0(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;Lcom/mergbw/core/ble/BleStatus;)V

    return-void
.end method
