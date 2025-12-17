.class public Lcom/mergbw/core/bean/AlarmDataBean;
.super Ljava/lang/Object;
.source "AlarmDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isSet:Z

.field private timeHour:I

.field private timeMinute:I

.field private weekRepeat:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeHour()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mergbw/core/bean/AlarmDataBean;->timeHour:I

    return v0
.end method

.method public getTimeMinute()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mergbw/core/bean/AlarmDataBean;->timeMinute:I

    return v0
.end method

.method public getWeekRepeat()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mergbw/core/bean/AlarmDataBean;->weekRepeat:[B

    return-object v0
.end method

.method public isSet()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/mergbw/core/bean/AlarmDataBean;->isSet:Z

    return v0
.end method

.method public setSet(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 24
    iput-boolean p1, p0, Lcom/mergbw/core/bean/AlarmDataBean;->isSet:Z

    return-void
.end method

.method public setTimeHour(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeHour"
        }
    .end annotation

    .line 32
    iput p1, p0, Lcom/mergbw/core/bean/AlarmDataBean;->timeHour:I

    return-void
.end method

.method public setTimeMinute(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMinute"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/mergbw/core/bean/AlarmDataBean;->timeMinute:I

    return-void
.end method

.method public setWeekRepeat([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weekRepeat"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mergbw/core/bean/AlarmDataBean;->weekRepeat:[B

    return-void
.end method
