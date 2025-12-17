.class public abstract Lcom/mergbw/core/network/factory/FactoryDataCallback;
.super Ljava/lang/Object;
.source "FactoryDataCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFactoryActivityResult(ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "msg",
            "activityList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onFactoryInfoResult(ZLjava/lang/String;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "msg",
            "factoryInfo"
        }
    .end annotation

    return-void
.end method

.method public onFactoryLoginResult(ZLjava/lang/String;Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "msg",
            "factoryLoginInfoBean"
        }
    .end annotation

    return-void
.end method

.method public onFactoryProductResult(ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "msg",
            "goodsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
