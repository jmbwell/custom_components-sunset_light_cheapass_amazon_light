.class Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;
.super Ljava/lang/Object;
.source "FirmwareDownloadTask.java"

# interfaces
.implements Lcom/mergbw/core/network/app/download/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;


# direct methods
.method constructor <init>(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;->this$0:Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;->this$0:Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;

    invoke-static {v0}, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->access$000(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)Lcom/mergbw/core/network/app/download/DownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;->this$0:Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;

    invoke-static {v0}, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->access$000(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)Lcom/mergbw/core/network/app/download/DownloadCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/download/DownloadCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;->this$0:Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;

    invoke-static {v0}, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->access$000(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)Lcom/mergbw/core/network/app/download/DownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;->this$0:Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;

    invoke-static {v0}, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->access$000(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)Lcom/mergbw/core/network/app/download/DownloadCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/download/DownloadCallback;->onFinish(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public onProgress(JJI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalByte",
            "currentByte",
            "progress"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;->this$0:Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;

    invoke-static {v0}, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->access$000(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)Lcom/mergbw/core/network/app/download/DownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask$1;->this$0:Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;

    invoke-static {v0}, Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;->access$000(Lcom/mergbw/core/network/app/download/FirmwareDownloadTask;)Lcom/mergbw/core/network/app/download/DownloadCallback;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/mergbw/core/network/app/download/DownloadCallback;->onProgress(JJI)V

    :cond_0
    return-void
.end method
