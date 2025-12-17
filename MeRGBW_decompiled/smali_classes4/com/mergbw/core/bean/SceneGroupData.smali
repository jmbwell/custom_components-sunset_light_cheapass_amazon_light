.class public Lcom/mergbw/core/bean/SceneGroupData;
.super Ljava/lang/Object;
.source "SceneGroupData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mergbw/core/bean/SceneGroupData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private groupNameRes:I

.field private id:I

.field private sceneDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/mergbw/core/bean/SceneGroupData$1;

    invoke-direct {v0}, Lcom/mergbw/core/bean/SceneGroupData$1;-><init>()V

    sput-object v0, Lcom/mergbw/core/bean/SceneGroupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->sceneDataList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->sceneDataList:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->id:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->type:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->groupNameRes:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->sceneDataList:Ljava/util/List;

    .line 67
    const-class v1, Lcom/mergbw/core/bean/SceneData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupNameRes()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->groupNameRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->id:I

    return v0
.end method

.method public getSceneDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->sceneDataList:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/mergbw/core/bean/SceneGroupData;->type:I

    return v0
.end method

.method public setGroupNameRes(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupNameRes"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/mergbw/core/bean/SceneGroupData;->groupNameRes:I

    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 34
    iput p1, p0, Lcom/mergbw/core/bean/SceneGroupData;->id:I

    return-void
.end method

.method public setSceneDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/mergbw/core/bean/SceneGroupData;->sceneDataList:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 42
    iput p1, p0, Lcom/mergbw/core/bean/SceneGroupData;->type:I

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

    .line 72
    iget p2, p0, Lcom/mergbw/core/bean/SceneGroupData;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget p2, p0, Lcom/mergbw/core/bean/SceneGroupData;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget p2, p0, Lcom/mergbw/core/bean/SceneGroupData;->groupNameRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object p2, p0, Lcom/mergbw/core/bean/SceneGroupData;->sceneDataList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
