.class Ltop/defaults/colorpicker/ThrottledTouchEventHandler;
.super Ljava/lang/Object;
.source "ThrottledTouchEventHandler.java"


# instance fields
.field private lastPassedEventTime:J

.field private minInterval:I

.field private updatable:Ltop/defaults/colorpicker/Updatable;


# direct methods
.method private constructor <init>(ILtop/defaults/colorpicker/Updatable;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->lastPassedEventTime:J

    .line 16
    iput p1, p0, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->minInterval:I

    .line 17
    iput-object p2, p0, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->updatable:Ltop/defaults/colorpicker/Updatable;

    return-void
.end method

.method constructor <init>(Ltop/defaults/colorpicker/Updatable;)V
    .locals 1

    const/16 v0, 0x10

    .line 12
    invoke-direct {p0, v0, p1}, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;-><init>(ILtop/defaults/colorpicker/Updatable;)V

    return-void
.end method


# virtual methods
.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 21
    iget-object v0, p0, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->updatable:Ltop/defaults/colorpicker/Updatable;

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    iget-wide v2, p0, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->lastPassedEventTime:J

    sub-long v2, v0, v2

    iget v4, p0, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->minInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    return-void

    .line 26
    :cond_1
    iput-wide v0, p0, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->lastPassedEventTime:J

    .line 27
    iget-object v0, p0, Ltop/defaults/colorpicker/ThrottledTouchEventHandler;->updatable:Ltop/defaults/colorpicker/Updatable;

    invoke-interface {v0, p1}, Ltop/defaults/colorpicker/Updatable;->update(Landroid/view/MotionEvent;)V

    return-void
.end method
