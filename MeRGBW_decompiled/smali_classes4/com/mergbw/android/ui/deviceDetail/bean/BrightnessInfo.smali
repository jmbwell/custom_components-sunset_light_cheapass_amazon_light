.class public Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;
.super Ljava/lang/Object;
.source "BrightnessInfo.java"


# instance fields
.field private brightness:I

.field private enable:Z

.field private warmBrightness:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->enable:Z

    add-int/lit8 p2, p2, -0x5

    .line 12
    iput p2, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->brightness:I

    .line 13
    iput p3, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->warmBrightness:I

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->brightness:I

    return v0
.end method

.method public getWarmBrightness()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->warmBrightness:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->enable:Z

    return v0
.end method

.method public setBrightness(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->brightness:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->enable:Z

    return-void
.end method

.method public setWarmBrightness(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->warmBrightness:I

    return-void
.end method
