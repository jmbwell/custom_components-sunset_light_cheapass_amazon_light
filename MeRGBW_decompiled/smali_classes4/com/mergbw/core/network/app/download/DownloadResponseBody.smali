.class public Lcom/mergbw/core/network/app/download/DownloadResponseBody;
.super Lokhttp3/ResponseBody;
.source "DownloadResponseBody.java"


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private listener:Lcom/mergbw/core/network/app/download/DownloadListener;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/mergbw/core/network/app/download/DownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "responseBody",
            "listener"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 24
    iput-object p2, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->listener:Lcom/mergbw/core/network/app/download/DownloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/network/app/download/DownloadResponseBody;)Lcom/mergbw/core/network/app/download/DownloadListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->listener:Lcom/mergbw/core/network/app/download/DownloadListener;

    return-object p0
.end method

.method private getSource(Lokio/Source;)Lokio/Source;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/core/network/app/download/DownloadResponseBody$1;-><init>(Lcom/mergbw/core/network/app/download/DownloadResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->getSource(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
