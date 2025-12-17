.class Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;
.super Ljava/lang/Object;
.source "AtmosphereSettingFragment.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(Lcom/mergbw/core/ui/views/LineColorPickerView;I)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;

    invoke-static {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->access$102(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;I)I

    .line 111
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColor(I)V

    .line 112
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->access$200(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 113
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->access$300(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->resetSelected()V

    .line 114
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/event/EventMessage;

    const-string v0, "SCENE_CHANGED"

    invoke-direct {p2, v0}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v0, "4525277A-CAA6-44D6-84E2-7DEF48D7C57E"

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
