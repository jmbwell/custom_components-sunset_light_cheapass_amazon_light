.class public final synthetic Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->$r8$lambda$sIsvZT1FciHx7_ijpwwVhhI2G7Q(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method
