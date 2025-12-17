.class public Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;
.super Ljava/lang/Object;
.source "DeviceGroupBean.java"


# static fields
.field public static ADDED_DEVICE:I = 0x1

.field public static CAN_ADD_DEVICE:I = 0x2


# instance fields
.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->type:I

    return v0
.end method

.method public setDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->deviceList:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->type:I

    return-void
.end method
