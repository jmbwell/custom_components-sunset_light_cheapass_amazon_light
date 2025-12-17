.class public Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;
.super Ljava/lang/Object;
.source "FirmwareVersionBean.java"


# instance fields
.field private description:Ljava/lang/String;

.field private deviceType:I

.field private fileId:I

.field private fileInfo:Lcom/mergbw/core/network/app/bean/FileInfo;

.field private version:Ljava/lang/String;

.field private vpFileId:I

.field private vpFileInfo:Lcom/mergbw/core/network/app/bean/FileInfo;

.field private vpVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->deviceType:I

    return v0
.end method

.method public getFileId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->fileId:I

    return v0
.end method

.method public getFileInfo()Lcom/mergbw/core/network/app/bean/FileInfo;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->fileInfo:Lcom/mergbw/core/network/app/bean/FileInfo;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVpFileId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->vpFileId:I

    return v0
.end method

.method public getVpFileInfo()Lcom/mergbw/core/network/app/bean/FileInfo;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->vpFileInfo:Lcom/mergbw/core/network/app/bean/FileInfo;

    return-object v0
.end method

.method public getVpVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->vpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->description:Ljava/lang/String;

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

    .line 25
    iput p1, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->deviceType:I

    return-void
.end method

.method public setFileId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileId"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->fileId:I

    return-void
.end method

.method public setFileInfo(Lcom/mergbw/core/network/app/bean/FileInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileInfo"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->fileInfo:Lcom/mergbw/core/network/app/bean/FileInfo;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->version:Ljava/lang/String;

    return-void
.end method

.method public setVpFileId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vpFileId"
        }
    .end annotation

    .line 65
    iput p1, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->vpFileId:I

    return-void
.end method

.method public setVpFileInfo(Lcom/mergbw/core/network/app/bean/FileInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vpFileInfo"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->vpFileInfo:Lcom/mergbw/core/network/app/bean/FileInfo;

    return-void
.end method

.method public setVpVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vpVersion"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;->vpVersion:Ljava/lang/String;

    return-void
.end method
