.class Lcom/mergbw/android/google/GoogleRemoteConfigManager$1;
.super Ljava/lang/Object;
.source "GoogleRemoteConfigManager.java"

# interfaces
.implements Lcom/google/firebase/remoteconfig/ConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/google/GoogleRemoteConfigManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/google/GoogleRemoteConfigManager;


# direct methods
.method constructor <init>(Lcom/mergbw/android/google/GoogleRemoteConfigManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager$1;->this$0:Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUpdate$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleRemoteConfigManager ConfigUpdateListener updated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    const-string p0, "GoogleRemoteConfigManager ConfigUpdateListener error!"

    invoke-static {p0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleRemoteConfigManager ConfigUpdateListener error with code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;->getCode()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Lcom/google/firebase/remoteconfig/ConfigUpdate;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleRemoteConfigManager ConfigUpdateListener Updated keys: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/ConfigUpdate;->getUpdatedKeys()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager$1;->this$0:Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    invoke-static {p1}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->access$000(Lcom/mergbw/android/google/GoogleRemoteConfigManager;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activate()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/google/GoogleRemoteConfigManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mergbw/android/google/GoogleRemoteConfigManager$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
