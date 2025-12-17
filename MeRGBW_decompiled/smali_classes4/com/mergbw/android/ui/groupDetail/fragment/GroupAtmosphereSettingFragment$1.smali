.class Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;
.super Ljava/lang/Object;
.source "GroupAtmosphereSettingFragment.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(Lcom/mergbw/core/ui/views/LineColorPickerView;I)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->access$000(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;

    invoke-static {p1, p2}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->access$002(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;I)I

    .line 89
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->access$100(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setRGBColor(I)V

    .line 90
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->access$200(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 91
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;->this$0:Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->access$300(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->resetSelected()V

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/event/EventMessage;

    const-string v0, "SCENE_CHANGED"

    invoke-direct {p2, v0}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v0, "EE41E48B-9FF9-47D9-94C0-05F61602DA0E"

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
