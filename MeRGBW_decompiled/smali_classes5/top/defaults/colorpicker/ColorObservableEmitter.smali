.class Ltop/defaults/colorpicker/ColorObservableEmitter;
.super Ljava/lang/Object;
.source "ColorObservableEmitter.java"

# interfaces
.implements Ltop/defaults/colorpicker/ColorObservable;


# instance fields
.field private color:I

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/defaults/colorpicker/ColorObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/defaults/colorpicker/ColorObservableEmitter;->observers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 25
    iget v0, p0, Ltop/defaults/colorpicker/ColorObservableEmitter;->color:I

    return v0
.end method

.method onColor(IZZ)V
    .locals 2

    .line 29
    iput p1, p0, Ltop/defaults/colorpicker/ColorObservableEmitter;->color:I

    .line 30
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorObservableEmitter;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/defaults/colorpicker/ColorObserver;

    .line 31
    invoke-interface {v1, p1, p2, p3}, Ltop/defaults/colorpicker/ColorObserver;->onColor(IZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subscribe(Ltop/defaults/colorpicker/ColorObserver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorObservableEmitter;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsubscribe(Ltop/defaults/colorpicker/ColorObserver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorObservableEmitter;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
