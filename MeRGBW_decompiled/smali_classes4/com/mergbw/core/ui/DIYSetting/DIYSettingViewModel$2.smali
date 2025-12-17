.class Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$2;
.super Ljava/lang/Object;
.source "DIYSettingViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IColorDatabaseListener;


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

    .line 105
    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$2;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

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

.method public onGetColorList(Ljava/util/List;)V
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
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel$2;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-static {v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->access$200(Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
