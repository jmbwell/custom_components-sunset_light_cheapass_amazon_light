.class public Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;
.super Ljava/lang/Object;
.source "FactoryActivityInfoBean.java"


# instance fields
.field private activityDesc:Ljava/lang/String;

.field private activityId:I

.field private activityLink:Ljava/lang/String;

.field private activityName:Ljava/lang/String;

.field private activityPicture:Ljava/lang/String;

.field private activityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityDesc()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityId:I

    return v0
.end method

.method public getActivityLink()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityLink:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityPicture()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityPicture:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityType:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityDesc"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityDesc:Ljava/lang/String;

    return-void
.end method

.method public setActivityId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityId"
        }
    .end annotation

    .line 21
    iput p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityId:I

    return-void
.end method

.method public setActivityLink(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityLink"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityLink:Ljava/lang/String;

    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityName"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setActivityPicture(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityPicture"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityPicture:Ljava/lang/String;

    return-void
.end method

.method public setActivityType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityType"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->activityType:Ljava/lang/String;

    return-void
.end method
