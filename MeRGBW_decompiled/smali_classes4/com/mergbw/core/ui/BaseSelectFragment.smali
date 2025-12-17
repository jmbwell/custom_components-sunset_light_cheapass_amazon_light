.class public Lcom/mergbw/core/ui/BaseSelectFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "BaseSelectFragment.java"


# instance fields
.field private mFragmentUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseFragment;->onDestroy()V

    .line 21
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/mergbw/core/event/EventMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 26
    const-string v0, "SCENE_CHANGED"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseSelectFragment;->mFragmentUUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;->resetSelected()V

    :cond_0
    return-void
.end method

.method public registerEvent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentUUID"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/mergbw/core/ui/BaseSelectFragment;->mFragmentUUID:Ljava/lang/String;

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public resetSelected()V
    .locals 0

    return-void
.end method
