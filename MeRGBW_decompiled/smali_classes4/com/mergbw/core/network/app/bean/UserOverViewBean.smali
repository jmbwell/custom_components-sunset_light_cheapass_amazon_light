.class public Lcom/mergbw/core/network/app/bean/UserOverViewBean;
.super Ljava/lang/Object;
.source "UserOverViewBean.java"


# instance fields
.field private androidUser:I

.field private iphoneUser:I

.field private todayAddUser:I

.field private todayUseUser:I

.field private totalUser:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidUser()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->androidUser:I

    return v0
.end method

.method public getIphoneUser()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->iphoneUser:I

    return v0
.end method

.method public getTodayAddUser()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->todayAddUser:I

    return v0
.end method

.method public getTodayUseUser()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->todayUseUser:I

    return v0
.end method

.method public getTotalUser()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->totalUser:I

    return v0
.end method

.method public setAndroidUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "androidUser"
        }
    .end annotation

    .line 28
    iput p1, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->androidUser:I

    return-void
.end method

.method public setIphoneUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iphoneUser"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->iphoneUser:I

    return-void
.end method

.method public setTodayAddUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayAddUser"
        }
    .end annotation

    .line 44
    iput p1, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->todayAddUser:I

    return-void
.end method

.method public setTodayUseUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayUseUser"
        }
    .end annotation

    .line 52
    iput p1, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->todayUseUser:I

    return-void
.end method

.method public setTotalUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalUser"
        }
    .end annotation

    .line 20
    iput p1, p0, Lcom/mergbw/core/network/app/bean/UserOverViewBean;->totalUser:I

    return-void
.end method
