.class Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;
.super Ljava/lang/Object;
.source "IlluminatingSettingFragment.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(Lcom/mergbw/core/ui/views/LineColorPickerView;I)V
    .locals 1

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onColorChanged color: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/mergbw/core/utils/ColorUtils;->colorToHex(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-static {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->access$102(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;I)I

    .line 113
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;

    invoke-direct {v0, p2}, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColdAndWarm(Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;)V

    .line 114
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->access$200(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 115
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->access$300(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->resetSelected()V

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/event/EventMessage;

    const-string v0, "SCENE_CHANGED"

    invoke-direct {p2, v0}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v0, "8A0DBB8C-5F59-4A85-9101-AD04A928C9C1"

    invoke-virtual {p2, v0}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .locals 0

    return-void
.end method
