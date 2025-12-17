.class public final synthetic Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;

    invoke-virtual {v0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->initBluetooth()V

    return-void
.end method
