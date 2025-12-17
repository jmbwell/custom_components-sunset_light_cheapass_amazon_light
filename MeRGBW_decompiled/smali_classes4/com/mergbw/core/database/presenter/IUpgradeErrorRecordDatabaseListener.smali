.class public interface abstract Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;
.super Ljava/lang/Object;
.source "IUpgradeErrorRecordDatabaseListener.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IBaseDatabaseListener;


# virtual methods
.method public abstract onGetRecordList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;)V"
        }
    .end annotation
.end method
