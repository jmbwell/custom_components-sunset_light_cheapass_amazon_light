.class public Lcom/clj/fastble/data/BleDevice;
.super Ljava/lang/Object;
.source "BleDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRssi:I

.field private mScanRecord:[B

.field private mTimestampNanos:J

.field private mtu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/clj/fastble/data/BleDevice$1;

    invoke-direct {v0}, Lcom/clj/fastble/data/BleDevice$1;-><init>()V

    sput-object v0, Lcom/clj/fastble/data/BleDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 23
    iput-object p3, p0, Lcom/clj/fastble/data/BleDevice;->mScanRecord:[B

    .line 24
    iput p2, p0, Lcom/clj/fastble/data/BleDevice;->mRssi:I

    .line 25
    iput-wide p4, p0, Lcom/clj/fastble/data/BleDevice;->mTimestampNanos:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/clj/fastble/data/BleDevice;->mScanRecord:[B

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/clj/fastble/data/BleDevice;->mRssi:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/clj/fastble/data/BleDevice;->mTimestampNanos:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/clj/fastble/data/BleDevice;->mtu:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/clj/fastble/data/BleDevice;->mtu:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/clj/fastble/data/BleDevice;->mRssi:I

    return v0
.end method

.method public getScanRecord()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/clj/fastble/data/BleDevice;->mScanRecord:[B

    return-object v0
.end method

.method public getTimestampNanos()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/clj/fastble/data/BleDevice;->mTimestampNanos:J

    return-wide v0
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setMtu(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/clj/fastble/data/BleDevice;->mtu:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/clj/fastble/data/BleDevice;->mRssi:I

    return-void
.end method

.method public setScanRecord([B)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/clj/fastble/data/BleDevice;->mScanRecord:[B

    return-void
.end method

.method public setTimestampNanos(J)V
    .locals 0

    .line 112
    iput-wide p1, p0, Lcom/clj/fastble/data/BleDevice;->mTimestampNanos:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/clj/fastble/data/BleDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    iget-object p2, p0, Lcom/clj/fastble/data/BleDevice;->mScanRecord:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 40
    iget p2, p0, Lcom/clj/fastble/data/BleDevice;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-wide v0, p0, Lcom/clj/fastble/data/BleDevice;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget p2, p0, Lcom/clj/fastble/data/BleDevice;->mtu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
