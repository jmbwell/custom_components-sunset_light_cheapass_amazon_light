.class public interface abstract Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;
.super Ljava/lang/Object;
.source "ISubColorDatabaseListener.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IBaseDatabaseListener;


# virtual methods
.method public abstract onAddSubColor(Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Id"
        }
    .end annotation
.end method

.method public abstract onGetSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subColor"
        }
    .end annotation
.end method

.method public abstract onGetSubColorList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation
.end method
