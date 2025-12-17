.class public Lcom/mergbw/core/network/app/download/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lokhttp3/ResponseBody;Lcom/mergbw/core/network/app/download/DownloadCallback;)V
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lcom/mergbw/core/network/app/download/DownloadUtil;->saveFile(Ljava/lang/String;Lokhttp3/ResponseBody;Lcom/mergbw/core/network/app/download/DownloadCallback;)V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/network/app/download/DownloadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "url",
            "filePath",
            "callback"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 31
    :cond_1
    new-instance v0, Lcom/mergbw/core/network/app/download/DownloadUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/mergbw/core/network/app/download/DownloadUtil$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/network/app/download/DownloadCallback;)V

    .line 35
    new-instance v1, Lcom/mergbw/core/network/app/download/DownloadUtil$1;

    invoke-direct {v1, p1, p2}, Lcom/mergbw/core/network/app/download/DownloadUtil$1;-><init>(Ljava/lang/String;Lcom/mergbw/core/network/app/download/DownloadCallback;)V

    invoke-static {p0, v0, v1}, Lcom/mergbw/core/network/app/download/DownloadHelper;->downloadFile(Ljava/lang/String;Lcom/mergbw/core/network/app/download/DownloadListener;Lio/reactivex/Observer;)V

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 21
    const-string p0, "url or path empty"

    invoke-interface {p2, p0}, Lcom/mergbw/core/network/app/download/DownloadCallback;->onError(Ljava/lang/String;)V

    .line 23
    :cond_3
    const-string p0, "downloadFile url or path empty"

    invoke-static {p0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$downloadFile$0(Lcom/mergbw/core/network/app/download/DownloadCallback;JJ)V
    .locals 8

    long-to-double v0, p3

    long-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v7, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 32
    invoke-interface/range {v2 .. v7}, Lcom/mergbw/core/network/app/download/DownloadCallback;->onProgress(JJI)V

    return-void
.end method

.method private static saveFile(Ljava/lang/String;Lokhttp3/ResponseBody;Lcom/mergbw/core/network/app/download/DownloadCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "body",
            "callback"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    const/16 p0, 0x1000

    .line 76
    new-array p0, p0, [B

    .line 78
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 79
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :goto_0
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 88
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    .line 94
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    :cond_2
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_3
    const/4 v3, 0x0

    .line 86
    :try_start_6
    invoke-virtual {v2, p0, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_2
    move-object v0, p1

    goto :goto_7

    :catch_3
    move-exception p0

    move-object v2, v0

    :goto_3
    move-object v0, p1

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_7

    :catch_5
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 90
    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_4

    .line 94
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 102
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 108
    :cond_5
    :goto_6
    invoke-interface {p2, v1}, Lcom/mergbw/core/network/app/download/DownloadCallback;->onFinish(Ljava/io/File;)V

    return-void

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v0, :cond_6

    .line 94
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    .line 102
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_9

    :catch_8
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    :cond_7
    :goto_9
    throw p0
.end method
