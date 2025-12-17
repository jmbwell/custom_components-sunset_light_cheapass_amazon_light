.class public Lcom/mergbw/android/task/AudioService;
.super Landroid/app/Service;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/task/AudioService$MessageBinder;
    }
.end annotation


# instance fields
.field private final TimeReceiver:Landroid/content/BroadcastReceiver;

.field private afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field private isUserPause:Z

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mergbw/android/task/IAudioCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/task/AudioService;->mListeners:Ljava/util/Map;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/mergbw/android/task/AudioService;->isUserPause:Z

    .line 194
    new-instance v0, Lcom/mergbw/android/task/AudioService$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/task/AudioService$1;-><init>(Lcom/mergbw/android/task/AudioService;)V

    iput-object v0, p0, Lcom/mergbw/android/task/AudioService;->TimeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/task/AudioService;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/mergbw/android/task/AudioService;->checkWhiteNoiseTimer()V

    return-void
.end method

.method private checkWhiteNoiseTimer()V
    .locals 3

    .line 206
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/UserinfoManage;->isSetWhiteNoiseTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/android/UserinfoManage;->getWhiteNoiseOffTimeHour()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/android/UserinfoManage;->getWhiteNoiseOffTimeMin()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/mergbw/android/task/AudioService;->pausePlay()V

    .line 211
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/task/IAudioCallback;

    const/4 v2, 0x0

    .line 212
    invoke-interface {v1, v2}, Lcom/mergbw/android/task/IAudioCallback;->onPlayResult(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 3

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "AudioPlayerChannel"

    if-lt v0, v1, :cond_0

    .line 152
    invoke-static {}, Lcom/ota66/sdk/OTAUtils$$ExternalSyntheticApiModelOutline0;->m()V

    sget v0, Lcom/mergbw/android/R$string;->app_name:I

    .line 154
    invoke-virtual {p0, v0}, Lcom/mergbw/android/task/AudioService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v2, v0, v1}, Lcom/ota66/sdk/OTAUtils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 157
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/mergbw/android/task/AudioService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 159
    invoke-static {v1, v0}, Lcom/ota66/sdk/OTAUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 163
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/mergbw/android/R$string;->app_name:I

    .line 164
    invoke-virtual {p0, v1}, Lcom/mergbw/android/task/AudioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcom/mergbw/android/R$string;->playing_white_noise:I

    .line 165
    invoke-virtual {p0, v1}, Lcom/mergbw/android/task/AudioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcom/mergbw/android/R$mipmap;->ic_logo:I

    .line 166
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 167
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private registerAudioFocus()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mergbw/android/task/AudioService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestAudioFocus result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    if-ne v0, v3, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private registerTimeTick()V
    .locals 2

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/mergbw/android/task/AudioService;->TimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mergbw/android/task/AudioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addCallBack(Ljava/lang/String;Lcom/mergbw/android/task/IAudioCallback;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$onCreate$0$com-mergbw-android-task-AudioService(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/mergbw/android/task/AudioService;->registerAudioFocus()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-mergbw-android-task-AudioService(I)V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnAudioFocusChangeListener focusChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/mergbw/android/task/AudioService;->isUserPause:Z

    if-nez p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/task/AudioService;->mListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/task/IAudioCallback;

    .line 77
    invoke-interface {v1, v0}, Lcom/mergbw/android/task/IAudioCallback;->onPlayResult(Z)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/mergbw/android/task/AudioService;->isUserPause:Z

    .line 86
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 87
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/task/IAudioCallback;

    .line 88
    invoke-interface {v1, p1}, Lcom/mergbw/android/task/IAudioCallback;->onPlayResult(Z)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 40
    new-instance p1, Lcom/mergbw/android/task/AudioService$MessageBinder;

    invoke-direct {p1, p0}, Lcom/mergbw/android/task/AudioService$MessageBinder;-><init>(Lcom/mergbw/android/task/AudioService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    new-instance v1, Lcom/mergbw/android/task/AudioService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/mergbw/android/task/AudioService$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/task/AudioService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 66
    invoke-direct {p0}, Lcom/mergbw/android/task/AudioService;->createNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {p0, v1, v0}, Lcom/mergbw/android/task/AudioService;->startForeground(ILandroid/app/Notification;)V

    .line 69
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mergbw/android/task/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mergbw/android/task/AudioService;->audioManager:Landroid/media/AudioManager;

    .line 70
    new-instance v0, Lcom/mergbw/android/task/AudioService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/android/task/AudioService$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/task/AudioService;)V

    iput-object v0, p0, Lcom/mergbw/android/task/AudioService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 101
    invoke-direct {p0}, Lcom/mergbw/android/task/AudioService;->registerTimeTick()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mergbw/android/task/AudioService;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 141
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 143
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->TimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mergbw/android/task/AudioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public pausePlay()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/mergbw/android/task/AudioService;->isUserPause:Z

    .line 127
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public removeCallBack(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resumePlay()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/mergbw/android/task/AudioService;->registerAudioFocus()V

    :cond_0
    return-void
.end method

.method public startPlay(Landroid/content/Context;I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 114
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ota66/sdk/OTAUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaPlayer;Landroid/content/res/AssetFileDescriptor;)V

    .line 115
    iget-object p1, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 116
    iget-object p1, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 117
    iget-object p1, p0, Lcom/mergbw/android/task/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
