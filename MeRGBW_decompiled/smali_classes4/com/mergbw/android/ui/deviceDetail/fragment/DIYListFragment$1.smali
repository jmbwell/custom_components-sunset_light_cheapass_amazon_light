.class Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;
.super Ljava/lang/Object;
.source "DIYListFragment.java"

# interfaces
.implements Lcom/mergbw/core/ui/adapter/IDIYItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickDIYItem(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 3

    .line 78
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-static {}, Lcom/mergbw/core/jump/JumpManager;->getInstance()Lcom/mergbw/core/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/mergbw/core/jump/JumpManager;->jumpToDIYSetting(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/core/database/bean/DIYInfoBean;I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->showWaitDialog()V

    .line 82
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->setDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    .line 84
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "3E7D39D8-BFB3-44EB-9B57-3A2033BCB548"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$longClickDIYItem$0$com-mergbw-android-ui-deviceDetail-fragment-DIYListFragment$1(Lcom/mergbw/core/database/bean/DIYInfoBean;Z)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 125
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-static {p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->deleteDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$longClickDIYItem$1$com-mergbw-android-ui-deviceDetail-fragment-DIYListFragment$1(Lcom/mergbw/core/database/bean/DIYInfoBean;I)V
    .locals 11

    .line 0
    const v0, 0x104000a

    const/high16 v1, 0x1040000

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto/16 :goto_0

    .line 117
    :cond_0
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    sget v3, Lcom/mergbw/android/R$string;->delete_diy_tick:I

    invoke-virtual {p2, v3}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 118
    new-instance v10, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v3, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    iget-object v4, v3, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    sget v5, Lcom/mergbw/android/R$string;->confirm:I

    .line 119
    invoke-virtual {v3, v5}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    .line 121
    invoke-virtual {p2, v1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    .line 122
    invoke-virtual {p2, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 128
    invoke-virtual {v10}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lcom/mergbw/core/jump/JumpManager;->getInstance()Lcom/mergbw/core/jump/JumpManager;

    move-result-object p2

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {p2, v0, p1, v2}, Lcom/mergbw/core/jump/JumpManager;->jumpToDIYSetting(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/core/database/bean/DIYInfoBean;I)V

    goto :goto_0

    .line 92
    :cond_2
    new-instance p2, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    iget-object v4, v2, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    sget v3, Lcom/mergbw/android/R$string;->rename_diy:I

    .line 93
    invoke-virtual {v2, v3}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    .line 95
    invoke-virtual {v2, v1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    .line 96
    invoke-virtual {v1, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$1;

    invoke-direct {v10, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    const/4 v9, 0x1

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 109
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    :goto_0
    return-void
.end method

.method public longClickDIYItem(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 3

    .line 89
    new-instance v0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    iget-object v1, v1, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;-><init>(Landroid/content/Context;Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;)V

    .line 132
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "3E7D39D8-BFB3-44EB-9B57-3A2033BCB548"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
