.class Lcom/mergbw/android/task/ResetGroupDataTask$1;
.super Ljava/lang/Object;
.source "ResetGroupDataTask.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/task/ResetGroupDataTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/task/ResetGroupDataTask;


# direct methods
.method constructor <init>(Lcom/mergbw/android/task/ResetGroupDataTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/mergbw/android/task/ResetGroupDataTask$1;->this$0:Lcom/mergbw/android/task/ResetGroupDataTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddSuccess()V
    .locals 0

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 0

    return-void
.end method

.method public onGetGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 0

    return-void
.end method

.method public onGetGroupList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mergbw/android/task/ResetGroupDataTask$1;->this$0:Lcom/mergbw/android/task/ResetGroupDataTask;

    invoke-static {v0, p1}, Lcom/mergbw/android/task/ResetGroupDataTask;->access$000(Lcom/mergbw/android/task/ResetGroupDataTask;Ljava/util/List;)V

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
