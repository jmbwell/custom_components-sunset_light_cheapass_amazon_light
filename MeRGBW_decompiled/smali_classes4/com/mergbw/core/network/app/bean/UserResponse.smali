.class public Lcom/mergbw/core/network/app/bean/UserResponse;
.super Ljava/lang/Object;
.source "UserResponse.java"


# instance fields
.field private icon:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/UserResponse;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/UserResponse;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/UserResponse;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/UserResponse;->icon:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/UserResponse;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/UserResponse;->username:Ljava/lang/String;

    return-void
.end method
