.class public Lcom/mergbw/core/track/bean/TrackInfoBean;
.super Ljava/lang/Object;
.source "TrackInfoBean.java"


# instance fields
.field private Data:Ljava/lang/String;

.field private EventId:I

.field private EventType:I

.field private Page:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private platform:I

.field private systemVersion:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->Data:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->EventId:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->EventType:I

    return v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->Page:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->platform:I

    return v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->systemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appVersion"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->Data:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceModel"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    .line 88
    iput p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->EventId:I

    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventType"
        }
    .end annotation

    .line 72
    iput p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->EventType:I

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->Page:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platform"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->platform:I

    return-void
.end method

.method public setSystemVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "systemVersion"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->systemVersion:Ljava/lang/String;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/mergbw/core/track/bean/TrackInfoBean;->userID:Ljava/lang/String;

    return-void
.end method
