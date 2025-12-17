.class public final synthetic Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    check-cast p1, Lcom/mergbw/core/ble/BleStatus;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->$r8$lambda$2B3N1hgskU184KhHteimQJWz9IQ(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;Lcom/mergbw/core/ble/BleStatus;)V

    return-void
.end method
