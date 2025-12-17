.class public final synthetic Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda7;
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

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda7;->f$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda7;->f$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->$r8$lambda$3uIqlpaYDlNVL_AICoavzacDPPc(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method
