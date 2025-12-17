.class public Lcom/mergbw/core/ui/BaseBluetoothActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "BaseBluetoothActivity.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# static fields
.field private static final OPEN_BLUETOOTH:I = 0xc8

.field private static final OPEN_GPS:I = 0x12c

.field private static final REQUEST_BLUE_PERMISSION:I = 0x190

.field private static final REQUEST_LOCATION_PERMISSION:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private checkBluePermission()V
    .locals 9

    .line 98
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v3, p0, Lcom/mergbw/core/ui/BaseBluetoothActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/mergbw/core/R$string;->permission_scan:I

    .line 101
    invoke-virtual {p0, v2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v2, Lcom/mergbw/core/R$string;->permission_scan:I

    .line 102
    invoke-virtual {p0, v2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v2, 0x1040000

    .line 103
    invoke-virtual {p0, v2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x104000a

    .line 104
    invoke-virtual {p0, v2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v0}, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/BaseBluetoothActivity;[Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 110
    invoke-virtual {v1}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->checkBluetooth()V

    :goto_0
    return-void
.end method

.method private checkBluetooth()V
    .locals 8

    .line 117
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isSupportBle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget v0, Lcom/mergbw/core/R$string;->not_support_ble:I

    invoke-virtual {p0, v0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v2, p0, Lcom/mergbw/core/ui/BaseBluetoothActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/mergbw/core/R$string;->need_open_bluetooth_title:I

    .line 124
    invoke-virtual {p0, v1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/mergbw/core/R$string;->need_open_bluetooth_content:I

    .line 125
    invoke-virtual {p0, v1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v1, 0x1040000

    .line 126
    invoke-virtual {p0, v1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x104000a

    .line 127
    invoke-virtual {p0, v1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/BaseBluetoothActivity;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 134
    invoke-virtual {v0}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->bluetoothReady()V

    :goto_0
    return-void
.end method

.method private checkGPS()V
    .locals 3

    .line 87
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 88
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 89
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x12c

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private checkLocationPermission()V
    .locals 9

    .line 67
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v3, p0, Lcom/mergbw/core/ui/BaseBluetoothActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/mergbw/core/R$string;->ble_need_location_title:I

    .line 70
    invoke-virtual {p0, v2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v2, Lcom/mergbw/core/R$string;->ble_need_location_content:I

    .line 71
    invoke-virtual {p0, v2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v2, 0x1040000

    .line 72
    invoke-virtual {p0, v2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x104000a

    .line 73
    invoke-virtual {p0, v2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v0}, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/BaseBluetoothActivity;[Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 79
    invoke-virtual {v1}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->checkGPS()V

    .line 82
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->checkBluetooth()V

    return-void
.end method


# virtual methods
.method protected bluetoothReady()V
    .locals 0

    return-void
.end method

.method public initBluetooth()V
    .locals 2

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->checkBluePermission()V

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->checkLocationPermission()V

    :goto_0
    return-void
.end method

.method synthetic lambda$checkBluePermission$1$com-mergbw-core-ui-BaseBluetoothActivity([Ljava/lang/String;Z)V
    .locals 1

    .line 0
    if-eqz p2, :cond_0

    .line 107
    sget p2, Lcom/mergbw/core/R$string;->permission_scan:I

    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x190

    invoke-static {p0, p2, v0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$checkBluetooth$2$com-mergbw-core-ui-BaseBluetoothActivity(Z)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 130
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xc8

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$checkLocationPermission$0$com-mergbw-core-ui-BaseBluetoothActivity([Ljava/lang/String;Z)V
    .locals 1

    .line 0
    if-eqz p2, :cond_0

    .line 76
    sget p2, Lcom/mergbw/core/R$string;->ble_need_location_content:I

    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1f4

    invoke-static {p0, p2, v0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseActivity;->onDestroy()V

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/mergbw/core/event/EventMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseBluetoothActivity onEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 160
    const-string v0, "BLUETOOTH_ON"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->bluetoothReady()V

    :cond_0
    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "perms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "perms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 p2, 0x190

    if-ne p1, p2, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->checkBluetooth()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/ui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method
