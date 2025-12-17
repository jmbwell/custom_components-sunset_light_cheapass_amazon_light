.class public Lcom/mergbw/core/bean/SubItemBean;
.super Ljava/lang/Object;
.source "SubItemBean.java"


# instance fields
.field private checked:Z

.field private color:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mergbw/core/bean/SubItemBean;->color:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/mergbw/core/bean/SubItemBean;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 21
    iput-boolean p1, p0, Lcom/mergbw/core/bean/SubItemBean;->checked:Z

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 13
    iput p1, p0, Lcom/mergbw/core/bean/SubItemBean;->color:I

    return-void
.end method
