.class public Lcom/mergbw/core/ble/RGBDeviceManager;
.super Ljava/lang/Object;
.source "RGBDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ble/RGBDeviceManager$BleManagerHolder;,
        Lcom/mergbw/core/ble/RGBDeviceManager$sendThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_MTU:I = 0x14


# instance fields
.field private isUpgrade:Z

.field private mBleManager:Lcom/clj/fastble/BleManager;

.field private final mDataQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mergbw/core/ble/SendCommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mergbw/core/ble/BleCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mDataQueue:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->isUpgrade:Z

    return-void
.end method

.method static synthetic access$100(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->setMtu(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mDataQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->setNotify(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public static getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;
    .locals 1

    .line 40
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager$BleManagerHolder;->access$000()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method private setMtu(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    new-instance v1, Lcom/mergbw/core/ble/RGBDeviceManager$4;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/ble/RGBDeviceManager$4;-><init>(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V

    const/16 v2, 0xf7

    invoke-virtual {v0, p1, v2, v1}, Lcom/clj/fastble/BleManager;->setMtu(Lcom/clj/fastble/data/BleDevice;ILcom/clj/fastble/callback/BleMtuChangedCallback;)V

    return-void
.end method

.method private setNotify(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    sget-object v1, Lcom/mergbw/core/Constants;->GATT_SERVICE_PRIMARY:Ljava/lang/String;

    sget-object v2, Lcom/mergbw/core/Constants;->CHARACTERISTIC_NOTIFY:Ljava/lang/String;

    new-instance v3, Lcom/mergbw/core/ble/RGBDeviceManager$2;

    invoke-direct {v3, p0}, Lcom/mergbw/core/ble/RGBDeviceManager$2;-><init>(Lcom/mergbw/core/ble/RGBDeviceManager;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/clj/fastble/BleManager;->notify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleNotifyCallback;)V

    return-void
.end method


# virtual methods
.method public connectDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Already Connected!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/ble/BleCallback;

    .line 92
    invoke-virtual {v1, p1}, Lcom/mergbw/core/ble/BleCallback;->onAlreadyConnected(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_0

    :cond_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    new-instance v1, Lcom/mergbw/core/ble/RGBDeviceManager$1;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ble/RGBDeviceManager$1;-><init>(Lcom/mergbw/core/ble/RGBDeviceManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/clj/fastble/BleManager;->connect(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceInfo"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public connectDevice(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceMac"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public disconnectAll()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->disconnectAllDevice()V

    return-void
.end method

.method public disconnectDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0, p1}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public disconnectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceInfo"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 151
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {p1, v0}, Lcom/clj/fastble/BleManager;->disconnect(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method public getMtu(Lcom/mergbw/core/database/bean/DeviceInfoBean;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceInfo"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mDataQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/ble/SendCommandQueue;

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/mergbw/core/ble/SendCommandQueue;->getMtu()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x14

    return p1
.end method

.method public init()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    .line 49
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->init(Landroid/app/Application;)V

    return-void
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 146
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {p1, v0}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result p1

    return p1
.end method

.method public isUpgrade()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->isUpgrade:Z

    return v0
.end method

.method public removeCallback(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendAudioColor(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceInfo",
            "data"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 216
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mDataQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/ble/SendCommandQueue;

    if-nez p1, :cond_1

    .line 218
    new-instance p1, Lcom/mergbw/core/ble/SendCommandQueue;

    invoke-direct {p1}, Lcom/mergbw/core/ble/SendCommandQueue;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mDataQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/mergbw/core/ble/SendCommandQueue;->sendAudioData(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public sendCommandData(Lcom/clj/fastble/data/BleDevice;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bleDevice",
            "data"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mDataQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/ble/SendCommandQueue;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/mergbw/core/ble/SendCommandQueue;

    invoke-direct {v0}, Lcom/mergbw/core/ble/SendCommandQueue;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mDataQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    new-instance v1, Lcom/mergbw/core/ble/CommandData;

    invoke-direct {v1, p1, p2}, Lcom/mergbw/core/ble/CommandData;-><init>(Lcom/clj/fastble/data/BleDevice;[B)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/SendCommandQueue;->put(Lcom/mergbw/core/ble/CommandData;)V

    return-void
.end method

.method public sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceInfo",
            "data"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 196
    invoke-virtual {p0, v0, p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendCommandData(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceMac",
            "data"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    new-instance v0, Lcom/clj/fastble/data/BleDevice;

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v1}, Lcom/clj/fastble/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/clj/fastble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 190
    invoke-virtual {p0, v0, p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public sendData(Lcom/clj/fastble/data/BleDevice;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bleDevice",
            "data"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sendData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/mergbw/core/utils/StringUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mBleManager:Lcom/clj/fastble/BleManager;

    sget-object v3, Lcom/mergbw/core/Constants;->GATT_SERVICE_PRIMARY:Ljava/lang/String;

    sget-object v4, Lcom/mergbw/core/Constants;->CHARACTERISTIC_WRITEABLE:Ljava/lang/String;

    new-instance v7, Lcom/mergbw/core/ble/RGBDeviceManager$3;

    invoke-direct {v7, p0, p1}, Lcom/mergbw/core/ble/RGBDeviceManager$3;-><init>(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void
.end method

.method public setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "callBack"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized setUpgrade(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upgrade"
        }
    .end annotation

    monitor-enter p0

    .line 280
    :try_start_0
    iput-boolean p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager;->isUpgrade:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
