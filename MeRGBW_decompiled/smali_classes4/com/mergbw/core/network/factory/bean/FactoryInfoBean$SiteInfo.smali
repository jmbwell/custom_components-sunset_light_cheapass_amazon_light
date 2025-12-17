.class public Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;
.super Ljava/lang/Object;
.source "FactoryInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SiteInfo"
.end annotation


# instance fields
.field private siteCode:Ljava/lang/String;

.field private siteName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSiteCode()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->siteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->siteName:Ljava/lang/String;

    return-object v0
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

    .line 117
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->siteCode:Ljava/lang/String;

    return-void
.end method

.method public setSiteName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "siteName"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->siteName:Ljava/lang/String;

    return-void
.end method
