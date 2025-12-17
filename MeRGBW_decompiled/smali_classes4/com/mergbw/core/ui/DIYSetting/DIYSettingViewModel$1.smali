.class Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$1;
.super Ljava/lang/Object;
.source "DIYSettingViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddDiy(Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYId"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-static {v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->access$000(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)Lcom/mergbw/core/database/bean/DIYInfoBean;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$1$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setId(I)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addDIYColor id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->access$100(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAddSuccess()V
    .locals 0

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 0

    return-void
.end method

.method public onGetDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYColor"
        }
    .end annotation

    return-void
.end method

.method public onGetDIYColorList(Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-static {v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->access$100(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
