.class public Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;
.super Ljava/lang/Object;
.source "FactoryProductInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoodsInfo"
.end annotation


# instance fields
.field private goodsId:I

.field private goodsLink:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private goodsPicture:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoodsId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->goodsId:I

    return v0
.end method

.method public getGoodsLink()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->goodsLink:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsPicture()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->goodsPicture:Ljava/lang/String;

    return-object v0
.end method

.method public setGoodsId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsId"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->goodsId:I

    return-void
.end method

.method public setGoodsLink(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsLink"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->goodsLink:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsName"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setGoodsPicture(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsPicture"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;->goodsPicture:Ljava/lang/String;

    return-void
.end method
