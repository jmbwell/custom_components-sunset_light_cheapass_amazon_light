.class public final synthetic Lcom/mergbw/android/task/AudioService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/task/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/task/AudioService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/task/AudioService$$ExternalSyntheticLambda4;->f$0:Lcom/mergbw/android/task/AudioService;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService$$ExternalSyntheticLambda4;->f$0:Lcom/mergbw/android/task/AudioService;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/task/AudioService;->lambda$onCreate$0$com-mergbw-android-task-AudioService(Landroid/media/MediaPlayer;)V

    return-void
.end method
