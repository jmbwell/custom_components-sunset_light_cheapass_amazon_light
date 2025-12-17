.class public Lcom/mergbw/android/task/AudioService$MessageBinder;
.super Landroid/os/Binder;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/task/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/task/AudioService;


# direct methods
.method public constructor <init>(Lcom/mergbw/android/task/AudioService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/mergbw/android/task/AudioService$MessageBinder;->this$0:Lcom/mergbw/android/task/AudioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/mergbw/android/task/AudioService;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mergbw/android/task/AudioService$MessageBinder;->this$0:Lcom/mergbw/android/task/AudioService;

    return-object v0
.end method
