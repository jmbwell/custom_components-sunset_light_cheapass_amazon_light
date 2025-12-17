.class public interface abstract Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;
.super Ljava/lang/Object;
.source "IDIYColorDatabaseListener.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IBaseDatabaseListener;


# virtual methods
.method public abstract onAddDiy(Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYId"
        }
    .end annotation
.end method

.method public abstract onGetDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYColor"
        }
    .end annotation
.end method

.method public abstract onGetDIYColorList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYColorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;)V"
        }
    .end annotation
.end method
