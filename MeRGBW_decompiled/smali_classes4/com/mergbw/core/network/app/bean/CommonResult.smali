.class public Lcom/mergbw/core/network/app/bean/CommonResult;
.super Ljava/lang/Object;
.source "CommonResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private resultCode:I

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/CommonResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/mergbw/core/network/app/bean/CommonResult;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/mergbw/core/network/app/bean/CommonResult;->success:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/CommonResult;->data:Ljava/lang/Object;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultCode"
        }
    .end annotation

    .line 23
    iput p1, p0, Lcom/mergbw/core/network/app/bean/CommonResult;->resultCode:I

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 15
    iput-boolean p1, p0, Lcom/mergbw/core/network/app/bean/CommonResult;->success:Z

    return-void
.end method
