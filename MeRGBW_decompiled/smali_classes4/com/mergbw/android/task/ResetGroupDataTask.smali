.class public Lcom/mergbw/android/task/ResetGroupDataTask;
.super Ljava/lang/Object;
.source "ResetGroupDataTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mDeleteMac:Ljava/lang/String;

.field private mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mergbw/android/task/ResetGroupDataTask;->mDeleteMac:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/task/ResetGroupDataTask;Ljava/util/List;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/mergbw/android/task/ResetGroupDataTask;->resetGroupData(Ljava/util/List;)V

    return-void
.end method

.method private resetGroupData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/GroupItemBean;

    .line 59
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDevices()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v6, v4

    .line 60
    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_2

    .line 61
    aget-object v7, v1, v5

    iget-object v8, p0, Lcom/mergbw/android/task/ResetGroupDataTask;->mDeleteMac:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eq v6, v4, :cond_0

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_5

    if-ne v3, v6, :cond_3

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    .line 70
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDevices(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/mergbw/android/task/ResetGroupDataTask;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    invoke-virtual {v1, v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->updateGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 25
    new-instance v0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    new-instance v1, Lcom/mergbw/android/task/ResetGroupDataTask$1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/task/ResetGroupDataTask$1;-><init>(Lcom/mergbw/android/task/ResetGroupDataTask;)V

    invoke-direct {v0, v1}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;)V

    iput-object v0, p0, Lcom/mergbw/android/task/ResetGroupDataTask;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    .line 52
    invoke-virtual {v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->getGroupList()V

    return-void
.end method
