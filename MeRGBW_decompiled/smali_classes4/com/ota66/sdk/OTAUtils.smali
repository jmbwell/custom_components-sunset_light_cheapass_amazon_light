.class public Lcom/ota66/sdk/OTAUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ota66/sdk/OTAUtils$c;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS_LOWER:[C

.field private static final HEX_DIGITS_UPPER:[C

.field public static MTU_SIZE:I = 0x17


# instance fields
.field private callBack:Lcom/ota66/sdk/ble/OTACallBack;

.field private isConnected:Z

.field private isQuick:Z

.field private mBleCallBack:Lb/a;

.field private mBleScanner:Lb/b;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mContext:Landroid/content/Context;

.field private otaKey:Ljava/lang/String;

.field private otaKeyCmd0x74:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 1
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ota66/sdk/OTAUtils;->HEX_DIGITS_UPPER:[C

    .line 3
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ota66/sdk/OTAUtils;->HEX_DIGITS_LOWER:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ota66/sdk/ble/OTACallBack;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/ota66/sdk/OTAUtils;->otaKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->otaKeyCmd0x74:Z

    .line 13
    iput-object p1, p0, Lcom/ota66/sdk/OTAUtils;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    .line 16
    invoke-direct {p0}, Lcom/ota66/sdk/OTAUtils;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/ota66/sdk/OTAUtils;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ota66/sdk/OTAUtils;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ota66/sdk/OTAUtils;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ota66/sdk/OTAUtils;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ota66/sdk/OTAUtils;->isQuick:Z

    return p0
.end method

.method static synthetic access$500(Lcom/ota66/sdk/OTAUtils;Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ota66/sdk/OTAUtils;->sendCommand(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/ota66/sdk/OTAUtils;->bytes2HexString([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytes2HexString([BZ)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/ota66/sdk/OTAUtils;->HEX_DIGITS_UPPER:[C

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ota66/sdk/OTAUtils;->HEX_DIGITS_LOWER:[C

    .line 4
    :goto_0
    array-length v1, p0

    if-gtz v1, :cond_2

    return-object v0

    :cond_2
    shl-int/lit8 v0, v1, 0x1

    .line 6
    new-array v0, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 8
    aget-byte v5, p0, v2

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, p1, v6

    aput-char v6, v0, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v5, v5, 0xf

    .line 9
    aget-char v5, p1, v5

    aput-char v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ota66/sdk/OTAUtils$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ota66/sdk/OTAUtils$c;-><init>(Lcom/ota66/sdk/OTAUtils;Lcom/ota66/sdk/OTAUtils$a;)V

    .line 2
    new-instance v1, Lb/b;

    iget-object v2, p0, Lcom/ota66/sdk/OTAUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lb/b;-><init>(Landroid/content/Context;Lb/c;)V

    iput-object v1, p0, Lcom/ota66/sdk/OTAUtils;->mBleScanner:Lb/b;

    .line 4
    new-instance v1, Lb/a;

    invoke-direct {v1}, Lb/a;-><init>()V

    iput-object v1, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    .line 5
    invoke-virtual {v1, v0}, Lb/a;->a(Lb/c;)V

    .line 7
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mContext:Landroid/content/Context;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    const-string v1, "AESKey"

    const-string v2, "123"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    iput-object v0, v1, Lb/a;->v:Ljava/lang/String;

    return-void
.end method

.method private sendCommand(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 p3, 0x3eb

    invoke-interface {p2, p3}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    :cond_0
    return p1
.end method

.method private sendOtaKey()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->otaKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/ota66/sdk/OTAUtils;->otaKeyCmd0x74:Z

    if-eqz v1, :cond_0

    .line 6
    const-string v1, "74"

    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "05"

    .line 8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendOtaKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTAKEY"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v1, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/ota66/sdk/OTAUtils;->sendCommand(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public cancleOTA()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ota66/sdk/OTAUtils;->checkOTA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    invoke-virtual {v0}, Lb/a;->b()V

    .line 3
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    invoke-virtual {v0}, Lb/a;->b()V

    .line 10
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkOTA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_0
    return-void
.end method

.method public connectDevice(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "TAG"

    const-string v0, "connectDevice: \u5df2\u7ecf\u8fde\u4e0a"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    invoke-interface {p1, v0}, Lcom/ota66/sdk/ble/OTACallBack;->onConnected(Z)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public disConnectDevice()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_0
    return-void
.end method

.method public reBoot()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isQuick:Z

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "0401"

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "04"

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v2, v0, v1}, Lcom/ota66/sdk/OTAUtils;->sendCommand(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    invoke-interface {v0}, Lcom/ota66/sdk/ble/OTACallBack;->onReboot()V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 v1, 0x3f0

    invoke-interface {v0, v1}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 v1, 0x3ef

    invoke-interface {v0, v1}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setOtaKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ota66/sdk/OTAUtils;->otaKey:Ljava/lang/String;

    return-void
.end method

.method public setOtaKeyCmd0x74(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ota66/sdk/OTAUtils;->otaKeyCmd0x74:Z

    return-void
.end method

.method public setPHY()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1, v1, v2}, Lcom/ota66/sdk/OTAUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothGatt;III)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public setRetryTimes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    invoke-virtual {v0, p1}, Lb/a;->a(I)V

    return-void
.end method

.method public starScan()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBleScanner:Lb/b;

    invoke-virtual {v0}, Lb/b;->a()V

    return-void
.end method

.method public startOTA()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ota66/sdk/OTAUtils;->sendOtaKey()V

    .line 5
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ota66/sdk/OTAUtils$a;

    invoke-direct {v1, p0}, Lcom/ota66/sdk/OTAUtils$a;-><init>(Lcom/ota66/sdk/OTAUtils;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startResource()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ota66/sdk/OTAUtils;->sendOtaKey()V

    .line 5
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ota66/sdk/OTAUtils$b;

    invoke-direct {v1, p0}, Lcom/ota66/sdk/OTAUtils$b;-><init>(Lcom/ota66/sdk/OTAUtils;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startSecurity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    iget-object v1, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public stopScan()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBleScanner:Lb/b;

    invoke-virtual {v0}, Lb/b;->b()V

    return-void
.end method

.method public updateFirmware(Ljava/lang/String;Z)V
    .locals 1

    .line 29
    sget-object v0, La/b;->a:La/b;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ota66/sdk/OTAUtils;->updateFirmware(Ljava/lang/String;ZLa/b;)V

    return-void
.end method

.method public updateFirmware(Ljava/lang/String;ZLa/b;)V
    .locals 1

    .line 1
    iput-boolean p2, p0, Lcom/ota66/sdk/OTAUtils;->isQuick:Z

    .line 4
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, La/a;

    invoke-direct {v0, p1, p2}, La/a;-><init>(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {v0}, La/a;->a()I

    move-result p1

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 p2, 0x3e8

    invoke-interface {p1, p2}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    invoke-virtual {p1, v0, p3}, Lb/a;->a(La/a;La/b;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "01"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, La/a;->c()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Lc/d;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lcom/ota66/sdk/OTAUtils;->sendCommand(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 p2, 0x3f0

    invoke-interface {p1, p2}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    goto :goto_0

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 p2, 0x3ef

    invoke-interface {p1, p2}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    :goto_0
    return-void
.end method

.method public updateResource(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iput-boolean p2, p0, Lcom/ota66/sdk/OTAUtils;->isQuick:Z

    .line 4
    iget-boolean v0, p0, Lcom/ota66/sdk/OTAUtils;->isConnected:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, La/a;

    invoke-direct {v0, p1, p2}, La/a;-><init>(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {v0}, La/a;->a()I

    move-result p1

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 p2, 0x3e8

    invoke-interface {p1, p2}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->mBleCallBack:Lb/a;

    sget-object p2, La/b;->b:La/b;

    invoke-virtual {p1, v0, p2}, Lb/a;->a(La/a;La/b;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "01"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, La/a;->c()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Lc/d;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/ota66/sdk/OTAUtils;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/ota66/sdk/OTAUtils;->sendCommand(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 p2, 0x3f0

    invoke-interface {p1, p2}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils;->callBack:Lcom/ota66/sdk/ble/OTACallBack;

    const/16 p2, 0x3ef

    invoke-interface {p1, p2}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    :goto_0
    return-void
.end method
