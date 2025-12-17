.class public Lcom/mergbw/core/database/bean/GroupItemBean;
.super Ljava/lang/Object;
.source "GroupItemBean.java"

# interfaces
.implements Ljava/io/Serializable;


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

.field private deviceMacList:[Ljava/lang/String;

.field private deviceType:I

.field private devices:Ljava/lang/String;

.field private groupId:I

.field private groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->deviceList:Ljava/util/List;

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

    .line 58
    iget-object v0, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceMacList()[Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->deviceMacList:[Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->deviceType:I

    return v0
.end method

.method public getDevices()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->devices:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->groupId:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->deviceList:Ljava/util/List;

    return-void
.end method

.method public setDeviceMacList([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceMacList"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->deviceMacList:[Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .line 78
    iput p1, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->deviceType:I

    return-void
.end method

.method public setDevices(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "devices"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->devices:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 38
    iput p1, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->groupId:I

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/mergbw/core/database/bean/GroupItemBean;->groupName:Ljava/lang/String;

    return-void
.end method
