.class public interface abstract Lcom/mergbw/core/network/WebInterface;
.super Ljava/lang/Object;
.source "WebInterface.java"


# virtual methods
.method public abstract noMoreData()V
.end method

.method public abstract showError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "api"
        }
    .end annotation
.end method

.method public abstract showResult(ILcom/mergbw/core/network/app/bean/CommonResult;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "api",
            "result"
        }
    .end annotation
.end method
