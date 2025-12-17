.class public Lcom/mergbw/core/bean/SceneData;
.super Ljava/lang/Object;
.source "SceneData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BValue:I

.field private GValue:I

.field private RGBPercent:I

.field private RValue:I

.field private WhitePercent:I

.field private iconRes:I

.field private isPlaying:Z

.field private isSelected:Z

.field private mode:Lcom/mergbw/core/RGBMode;

.field private sceneIndex:I

.field private sceneName:Ljava/lang/String;

.field private sceneNameRes:I

.field private speed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/mergbw/core/bean/SceneData$1;

    invoke-direct {v0}, Lcom/mergbw/core/bean/SceneData$1;-><init>()V

    sput-object v0, Lcom/mergbw/core/bean/SceneData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sceneNameRes",
            "iconRes",
            "index",
            "speed"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/mergbw/core/bean/SceneData;->setSceneNameRes(I)V

    .line 143
    invoke-virtual {p0, p2}, Lcom/mergbw/core/bean/SceneData;->setIconRes(I)V

    .line 144
    invoke-virtual {p0, p3}, Lcom/mergbw/core/bean/SceneData;->setSceneIndex(I)V

    .line 145
    invoke-virtual {p0, p4}, Lcom/mergbw/core/bean/SceneData;->setSpeed(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/bean/SceneData;->sceneName:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->sceneNameRes:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->iconRes:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->sceneIndex:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->speed:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/mergbw/core/bean/SceneData;->isSelected:Z

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->RValue:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->GValue:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->BValue:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->RGBPercent:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneData;->WhitePercent:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/RGBMode;

    iput-object v0, p0, Lcom/mergbw/core/bean/SceneData;->mode:Lcom/mergbw/core/RGBMode;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mergbw/core/bean/SceneData;->isPlaying:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneName",
            "index"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/mergbw/core/bean/SceneData;->setSceneName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/mergbw/core/bean/SceneData;->setSceneIndex(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBValue()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->BValue:I

    return v0
.end method

.method public getGValue()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->GValue:I

    return v0
.end method

.method public getIconRes()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->iconRes:I

    return v0
.end method

.method public getMode()Lcom/mergbw/core/RGBMode;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mergbw/core/bean/SceneData;->mode:Lcom/mergbw/core/RGBMode;

    return-object v0
.end method

.method public getRGBPercent()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->RGBPercent:I

    return v0
.end method

.method public getRValue()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->RValue:I

    return v0
.end method

.method public getSceneIndex()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->sceneIndex:I

    return v0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mergbw/core/bean/SceneData;->sceneName:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneNameRes()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->sceneNameRes:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->speed:I

    return v0
.end method

.method public getWhitePercent()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/mergbw/core/bean/SceneData;->WhitePercent:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/mergbw/core/bean/SceneData;->isPlaying:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/mergbw/core/bean/SceneData;->isSelected:Z

    return v0
.end method

.method public setBValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "BValue"
        }
    .end annotation

    .line 104
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->BValue:I

    return-void
.end method

.method public setGValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "GValue"
        }
    .end annotation

    .line 96
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->GValue:I

    return-void
.end method

.method public setIconRes(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconRes"
        }
    .end annotation

    .line 56
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->iconRes:I

    return-void
.end method

.method public setLightPercent(II)Lcom/mergbw/core/bean/SceneData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rgb",
            "white"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/mergbw/core/bean/SceneData;->setRGBPercent(I)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/mergbw/core/bean/SceneData;->setWhitePercent(I)V

    return-object p0
.end method

.method public setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/mergbw/core/bean/SceneData;->mode:Lcom/mergbw/core/RGBMode;

    return-object p0
.end method

.method public setPlaying(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playing"
        }
    .end annotation

    .line 137
    iput-boolean p1, p0, Lcom/mergbw/core/bean/SceneData;->isPlaying:Z

    return-void
.end method

.method public setRGBPercent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RGBPercent"
        }
    .end annotation

    .line 112
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->RGBPercent:I

    return-void
.end method

.method public setRGBValue(III)Lcom/mergbw/core/bean/SceneData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "R",
            "G",
            "B"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lcom/mergbw/core/bean/SceneData;->setRValue(I)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/mergbw/core/bean/SceneData;->setGValue(I)V

    .line 156
    invoke-virtual {p0, p3}, Lcom/mergbw/core/bean/SceneData;->setBValue(I)V

    return-object p0
.end method

.method public setRValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RValue"
        }
    .end annotation

    .line 88
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->RValue:I

    return-void
.end method

.method public setSceneIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneIndex"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->sceneIndex:I

    return-void
.end method

.method public setSceneName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneName"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/mergbw/core/bean/SceneData;->sceneName:Ljava/lang/String;

    return-void
.end method

.method public setSceneNameRes(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneNameRes"
        }
    .end annotation

    .line 48
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->sceneNameRes:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 80
    iput-boolean p1, p0, Lcom/mergbw/core/bean/SceneData;->isSelected:Z

    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 72
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->speed:I

    return-void
.end method

.method public setWhitePercent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whitePercent"
        }
    .end annotation

    .line 120
    iput p1, p0, Lcom/mergbw/core/bean/SceneData;->WhitePercent:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 185
    iget-object p2, p0, Lcom/mergbw/core/bean/SceneData;->sceneName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->sceneNameRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->iconRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->sceneIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->speed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-boolean p2, p0, Lcom/mergbw/core/bean/SceneData;->isSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 191
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->RValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->GValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->BValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->RGBPercent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget p2, p0, Lcom/mergbw/core/bean/SceneData;->WhitePercent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object p2, p0, Lcom/mergbw/core/bean/SceneData;->mode:Lcom/mergbw/core/RGBMode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 197
    iget-boolean p2, p0, Lcom/mergbw/core/bean/SceneData;->isPlaying:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
