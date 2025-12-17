.class Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$1;
.super Ljava/lang/Object;
.source "GroupSettingViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$1;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddSuccess()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$1;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$000(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$1;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$200(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onGetGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 0

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
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$1;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$100(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
