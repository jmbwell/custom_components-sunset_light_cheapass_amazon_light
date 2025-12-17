.class public Lcom/mergbw/android/FactoryInfoManage;
.super Ljava/lang/Object;
.source "FactoryInfoManage.java"


# static fields
.field private static instance:Lcom/mergbw/android/FactoryInfoManage;

.field private static mFactoryData:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "factoryInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mergbw/android/FactoryInfoManage;->mFactoryData:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance()Lcom/mergbw/android/FactoryInfoManage;
    .locals 1

    .line 19
    sget-object v0, Lcom/mergbw/android/FactoryInfoManage;->instance:Lcom/mergbw/android/FactoryInfoManage;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/mergbw/android/FactoryInfoManage;

    invoke-direct {v0}, Lcom/mergbw/android/FactoryInfoManage;-><init>()V

    sput-object v0, Lcom/mergbw/android/FactoryInfoManage;->instance:Lcom/mergbw/android/FactoryInfoManage;

    .line 22
    :cond_0
    sget-object v0, Lcom/mergbw/android/FactoryInfoManage;->instance:Lcom/mergbw/android/FactoryInfoManage;

    return-object v0
.end method


# virtual methods
.method public getHistorySiteCode(I)Ljava/lang/String;
    .locals 2

    .line 30
    sget-object v0, Lcom/mergbw/android/FactoryInfoManage;->mFactoryData:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setHistorySiteCode(ILjava/lang/String;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/mergbw/android/FactoryInfoManage;->mFactoryData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
