.class Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$3;
.super Ljava/lang/Object;
.source "HomeViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$3;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

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

    .line 184
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$3;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$400(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
