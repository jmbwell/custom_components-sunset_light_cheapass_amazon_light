.class public interface abstract Lcom/mergbw/core/database/presenter/IColorDatabaseListener;
.super Ljava/lang/Object;
.source "IColorDatabaseListener.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IBaseDatabaseListener;


# virtual methods
.method public abstract onGetColorList(Ljava/util/List;)V
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
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;)V"
        }
    .end annotation
.end method
