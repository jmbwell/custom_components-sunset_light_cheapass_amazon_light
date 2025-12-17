.class public Lcom/mergbw/core/network/app/bean/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private id:Ljava/lang/Integer;

.field private md5:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:Ljava/lang/Long;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "md5"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->md5:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->size:Ljava/lang/Long;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suffix"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/FileInfo;->suffix:Ljava/lang/String;

    return-void
.end method
