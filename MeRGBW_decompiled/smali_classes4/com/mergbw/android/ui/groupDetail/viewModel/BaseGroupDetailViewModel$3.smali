.class Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$3;
.super Ljava/lang/Object;
.source "BaseGroupDetailViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$3;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

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
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$3;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iput-object p1, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    .line 140
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$3;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->access$000(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V

    return-void
.end method

.method public onGetGroupList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
