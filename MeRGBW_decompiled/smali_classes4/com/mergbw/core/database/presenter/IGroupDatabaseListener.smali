.class public interface abstract Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;
.super Ljava/lang/Object;
.source "IGroupDatabaseListener.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IBaseDatabaseListener;


# virtual methods
.method public abstract onGetGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation
.end method

.method public abstract onGetGroupList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;)V"
        }
    .end annotation
.end method
