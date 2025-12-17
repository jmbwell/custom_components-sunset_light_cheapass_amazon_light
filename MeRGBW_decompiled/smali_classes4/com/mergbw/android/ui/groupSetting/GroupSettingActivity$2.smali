.class Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$2;
.super Ljava/lang/Object;
.source "GroupSettingActivity.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->access$000(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvGroupName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->access$200(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;

    invoke-static {v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->access$100(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->addGroup(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method
