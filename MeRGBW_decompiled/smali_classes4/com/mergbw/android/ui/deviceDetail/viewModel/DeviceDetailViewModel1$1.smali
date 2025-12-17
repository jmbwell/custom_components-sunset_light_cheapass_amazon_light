.class Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$1;
.super Ljava/lang/Object;
.source "DeviceDetailViewModel1.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddSubColor(Ljava/lang/Long;)V
    .locals 0

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

.method public onGetSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 0

    return-void
.end method

.method public onGetSubColorList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->mSubColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
