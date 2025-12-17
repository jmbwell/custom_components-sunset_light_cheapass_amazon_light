.class Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;
.super Lokio/ForwardingSource;
.source "DownloadResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/app/download/DownloadResponseBody;->getSource(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downloadBytes:J

.field final synthetic this$0:Lcom/mergbw/core/network/app/download/DownloadResponseBody;


# direct methods
.method constructor <init>(Lcom/mergbw/core/network/app/download/DownloadResponseBody;Lokio/Source;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "delegate"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;->this$0:Lcom/mergbw/core/network/app/download/DownloadResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    .line 48
    iput-wide p1, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;->downloadBytes:J

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, v0, p1

    if-eqz p3, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;->downloadBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;->downloadBytes:J

    .line 56
    :cond_0
    iget-object p3, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;->this$0:Lcom/mergbw/core/network/app/download/DownloadResponseBody;

    invoke-static {p3}, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->access$000(Lcom/mergbw/core/network/app/download/DownloadResponseBody;)Lcom/mergbw/core/network/app/download/DownloadListener;

    move-result-object p3

    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;->this$0:Lcom/mergbw/core/network/app/download/DownloadResponseBody;

    invoke-virtual {v0}, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->contentLength()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;->downloadBytes:J

    invoke-interface {p3, v0, v1, v2, v3}, Lcom/mergbw/core/network/app/download/DownloadListener;->onProgress(JJ)V

    return-wide p1
.end method
