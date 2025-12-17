.class public Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;
.super Ljava/lang/Object;
.source "FactoryLoginInfoBean.java"


# instance fields
.field private avatar:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private phonenumber:Ljava/lang/String;

.field private userId:D

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonenumber()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->phonenumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->userId:D

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->userName:Ljava/lang/String;

    return-object v0
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

    .line 56
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->avatar:Ljava/lang/String;

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

    .line 40
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->email:Ljava/lang/String;

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

    .line 32
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->nickName:Ljava/lang/String;

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

    .line 48
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->phonenumber:Ljava/lang/String;

    return-void
.end method

.method public setUserId(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 16
    iput-wide p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->userId:D

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userName"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryLoginInfoBean;->userName:Ljava/lang/String;

    return-void
.end method
