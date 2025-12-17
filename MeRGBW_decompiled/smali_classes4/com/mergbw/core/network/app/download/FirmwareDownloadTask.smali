.class public Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;
.super Ljava/lang/Object;
.source "FirmwareDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCallBack:Lcom/mergbw/core/network/app/download/DownloadCallback;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceModel:I

.field private final mFileId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/mergbw/core/network/app/download/DownloadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileId",
            "deviceModel",
            "callBack"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->mContext:Landroid/content/Context;

    .line 20
    iput p2, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->mFileId:I

    .line 21
    iput-object p4, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->mCallBack:Lcom/mergbw/core/network/app/download/DownloadCallback;

    .line 22
    iput p3, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->mDeviceModel:I

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)Lcom/mergbw/core/network/app/download/DownloadCallback;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->mCallBack:Lcom/mergbw/core/network/app/download/DownloadCallback;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/file/download/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->mFileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "Firmware_File.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppUpdateTask, download url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 31
    new-instance v2, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;

    invoke-direct {v2, p0}, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;-><init>(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)V

    invoke-static {v0, v1, v2}, Lcom/mergbw/core/network/app/download/DownloadUtil;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/network/app/download/DownloadCallback;)V

    return-void
.end method
