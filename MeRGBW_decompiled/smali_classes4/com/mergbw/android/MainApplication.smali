.class public Lcom/mergbw/android/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field private currentActivity:Landroid/app/Activity;

.field private mReceiver:Lcom/mergbw/core/ble/BluetoothMonitorReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private registerBluetoothReceiver()V
    .locals 2

    .line 56
    new-instance v0, Lcom/mergbw/core/ble/BluetoothMonitorReceiver;

    invoke-direct {v0}, Lcom/mergbw/core/ble/BluetoothMonitorReceiver;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/MainApplication;->mReceiver:Lcom/mergbw/core/ble/BluetoothMonitorReceiver;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/mergbw/android/MainApplication;->mReceiver:Lcom/mergbw/core/ble/BluetoothMonitorReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mergbw/android/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-mergbw-android-MainApplication()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/mergbw/android/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/AssetsCopyer;->releaseAssets(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/mergbw/android/google/GoogleOpenAdManager;->getInstance()Lcom/mergbw/android/google/GoogleOpenAdManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isShowingAd:Z

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/mergbw/android/MainApplication;->currentActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    invoke-static {}, Lcom/mergbw/android/google/GoogleOpenAdManager;->getInstance()Lcom/mergbw/android/google/GoogleOpenAdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mergbw/android/google/GoogleOpenAdManager;->initSdk(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->init()V

    .line 40
    invoke-static {p0}, Lcom/alibaba/android/arouter/launcher/ARouter;->init(Landroid/app/Application;)V

    .line 41
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/MainApplication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/android/MainApplication$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/MainApplication;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 42
    invoke-direct {p0}, Lcom/mergbw/android/MainApplication;->registerBluetoothReceiver()V

    .line 43
    invoke-virtual {p0, p0}, Lcom/mergbw/android/MainApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 44
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 45
    invoke-static {}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getInstance()Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->init()V

    .line 46
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/task/SortDeviceDataTask;

    invoke-direct {v1}, Lcom/mergbw/android/task/SortDeviceDataTask;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 69
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 71
    invoke-static {}, Lcom/mergbw/android/google/GoogleOpenAdManager;->getInstance()Lcom/mergbw/android/google/GoogleOpenAdManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/MainApplication;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/mergbw/android/google/GoogleOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 52
    iget-object v0, p0, Lcom/mergbw/android/MainApplication;->mReceiver:Lcom/mergbw/core/ble/BluetoothMonitorReceiver;

    invoke-virtual {p0, v0}, Lcom/mergbw/android/MainApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
