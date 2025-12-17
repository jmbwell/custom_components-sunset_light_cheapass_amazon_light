.class public final synthetic Lcom/mergbw/core/network/app/download/DownloadUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mergbw/core/network/app/download/DownloadListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/network/app/download/DownloadCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/network/app/download/DownloadCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/network/app/download/DownloadUtil$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/core/network/app/download/DownloadCallback;

    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadUtil$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/core/network/app/download/DownloadCallback;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mergbw/core/network/app/download/DownloadUtil;->lambda$downloadFile$0(Lcom/mergbw/core/network/app/download/DownloadCallback;JJ)V

    return-void
.end method
