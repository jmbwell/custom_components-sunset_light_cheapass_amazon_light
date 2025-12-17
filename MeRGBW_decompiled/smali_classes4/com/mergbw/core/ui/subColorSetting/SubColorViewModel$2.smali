.class Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$2;
.super Ljava/lang/Object;
.source "SubColorViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$2;->this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddSubColor(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Id"
        }
    .end annotation

    return-void
.end method

.method public onAddSuccess()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$2;->this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-static {v0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->access$100(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$2;->this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-static {v0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->access$200(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onGetSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subColor"
        }
    .end annotation

    return-void
.end method

.method public onGetSubColorList(Ljava/util/List;)V
    .locals 1
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
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$2;->this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-static {v0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->access$000(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$2;->this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-static {v0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->access$100(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
