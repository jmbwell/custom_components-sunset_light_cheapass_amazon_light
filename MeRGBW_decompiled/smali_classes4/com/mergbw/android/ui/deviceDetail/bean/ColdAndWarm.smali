.class public Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;
.super Ljava/lang/Object;
.source "ColdAndWarm.java"


# instance fields
.field private coldPercent:I

.field private color:I

.field private warmPercent:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->setColor(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->setColdPercent(I)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->setWarmPercent(I)V

    return-void
.end method


# virtual methods
.method public getColdPercent()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->coldPercent:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->color:I

    return v0
.end method

.method public getWarmPercent()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->warmPercent:I

    return v0
.end method

.method public setColdPercent(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->coldPercent:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->color:I

    return-void
.end method

.method public setWarmPercent(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;->warmPercent:I

    return-void
.end method
