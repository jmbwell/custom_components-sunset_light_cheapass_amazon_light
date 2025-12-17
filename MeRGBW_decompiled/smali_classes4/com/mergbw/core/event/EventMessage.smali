.class public Lcom/mergbw/core/event/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:Ljava/lang/String;

.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mergbw/core/event/EventMessage;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mergbw/core/event/EventMessage;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mergbw/core/event/EventMessage;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/mergbw/core/event/EventMessage;->action:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/mergbw/core/event/EventMessage;->data:Ljava/lang/Object;

    return-object p0
.end method
