.class public final synthetic Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;

.field public final synthetic f$1:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda8;->f$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda8;->f$1:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda8;->f$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda8;->f$1:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->lambda$initViews$4$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
