.class public Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean;
.super Ljava/lang/Object;
.source "FactoryProductInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;
    }
.end annotation


# instance fields
.field private goodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private promotionId:I

.field private promotionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean;->goodsList:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean;->promotionId:I

    return v0
.end method

.method public getPromotionName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean;->promotionName:Ljava/lang/String;

    return-object v0
.end method

.method public setGoodsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goodsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean;->goodsList:Ljava/util/List;

    return-void
.end method

.method public setPromotionId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promotionId"
        }
    .end annotation

    .line 17
    iput p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean;->promotionId:I

    return-void
.end method

.method public setPromotionName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promotionName"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean;->promotionName:Ljava/lang/String;

    return-void
.end method
