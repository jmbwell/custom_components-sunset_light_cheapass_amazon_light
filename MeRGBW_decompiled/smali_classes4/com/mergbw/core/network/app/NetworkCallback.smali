.class public abstract Lcom/mergbw/core/network/app/NetworkCallback;
.super Ljava/lang/Object;
.source "NetworkCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSMSCodeResult(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "msg"
        }
    .end annotation

    return-void
.end method

.method public onLoginResult(ZLjava/lang/String;Lcom/mergbw/core/network/app/bean/UserResponse;)V
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
            "response"
        }
    .end annotation

    return-void
.end method

.method public onRegisterResult(ZLjava/lang/String;Lcom/mergbw/core/network/app/bean/UserResponse;)V
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
            "response"
        }
    .end annotation

    return-void
.end method

.method public onResetPasswordResult(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "msg"
        }
    .end annotation

    return-void
.end method

.method public onUpdateNicknameResult(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "msg"
        }
    .end annotation

    return-void
.end method
