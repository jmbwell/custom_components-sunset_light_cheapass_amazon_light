.class Lcom/mergbw/core/ble/RGBDeviceManager$BleManagerHolder;
.super Ljava/lang/Object;
.source "RGBDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ble/RGBDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleManagerHolder"
.end annotation


# static fields
.field private static final sBleManager:Lcom/mergbw/core/ble/RGBDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-direct {v0}, Lcom/mergbw/core/ble/RGBDeviceManager;-><init>()V

    sput-object v0, Lcom/mergbw/core/ble/RGBDeviceManager$BleManagerHolder;->sBleManager:Lcom/mergbw/core/ble/RGBDeviceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mergbw/core/ble/RGBDeviceManager;
    .locals 1

    .line 43
    sget-object v0, Lcom/mergbw/core/ble/RGBDeviceManager$BleManagerHolder;->sBleManager:Lcom/mergbw/core/ble/RGBDeviceManager;

    return-object v0
.end method
