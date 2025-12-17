.class public Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;
.super Ljava/lang/Object;
.source "ResetEvent.java"


# instance fields
.field private childPosition:I

.field private from:I

.field private position:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->setPosition(I)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->setFrom(I)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->setPosition(I)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->setChildPosition(I)V

    .line 16
    invoke-virtual {p0, p3}, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->setFrom(I)V

    return-void
.end method


# virtual methods
.method public getChildPosition()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->childPosition:I

    return v0
.end method

.method public getFrom()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->from:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->position:I

    return v0
.end method

.method public setChildPosition(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->childPosition:I

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->from:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ResetEvent;->position:I

    return-void
.end method
