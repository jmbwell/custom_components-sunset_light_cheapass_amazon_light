.class public Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;
.super Ljava/lang/Object;
.source "FactoryInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;
    }
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private phonenumber:Ljava/lang/String;

.field private promotionPicture:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private roleType:I

.field private siteCode:Ljava/lang/String;

.field private siteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonenumber()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->phonenumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionPicture()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->promotionPicture:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleType()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->roleType:I

    return v0
.end method

.method public getSiteCode()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->siteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->siteList:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->userId:I

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "email"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickName"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPhonenumber(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phonenumber"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->phonenumber:Ljava/lang/String;

    return-void
.end method

.method public setPromotionPicture(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promotionPicture"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->promotionPicture:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remark"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->remark:Ljava/lang/String;

    return-void
.end method

.method public setRoleType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleType"
        }
    .end annotation

    .line 80
    iput p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->roleType:I

    return-void
.end method

.method public setSiteCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "siteCode"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->siteCode:Ljava/lang/String;

    return-void
.end method

.method public setSiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "siteList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->siteList:Ljava/util/List;

    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 32
    iput p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->userId:I

    return-void
.end method
