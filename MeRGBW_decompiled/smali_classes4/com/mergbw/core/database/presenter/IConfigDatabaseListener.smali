.class public interface abstract Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;
.super Ljava/lang/Object;
.source "IConfigDatabaseListener.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IBaseDatabaseListener;


# virtual methods
.method public abstract onGetConfigList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
            ">;)V"
        }
    .end annotation
.end method
