.class Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;
.super Ljava/lang/Object;
.source "SubColorListFragment.java"

# interfaces
.implements Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickGroupItem(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 81
    invoke-static {}, Lcom/mergbw/core/jump/JumpManager;->getInstance()Lcom/mergbw/core/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/core/jump/JumpManager;->jumpToSubSetting(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/core/database/bean/SubColorBean;I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->showWaitDialog()V

    .line 84
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->setSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    .line 86
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "9BDE8BA8-5A88-431E-AB21-462EBBD2E1D4"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$longClickGroupItem$0$com-mergbw-android-ui-deviceDetail-fragment-SubColorListFragment$1(Lcom/mergbw/core/database/bean/SubColorBean;Z)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-static {p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->deleteSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$longClickGroupItem$1$com-mergbw-android-ui-deviceDetail-fragment-SubColorListFragment$1(Lcom/mergbw/core/database/bean/SubColorBean;I)V
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

    .line 119
    :cond_0
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    sget v3, Lcom/mergbw/android/R$string;->delete_diy_tick:I

    invoke-virtual {p2, v3}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 120
    new-instance v10, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v3, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    iget-object v4, v3, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    sget v5, Lcom/mergbw/android/R$string;->confirm:I

    .line 121
    invoke-virtual {v3, v5}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getAlias()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    .line 123
    invoke-virtual {p2, v1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    .line 124
    invoke-virtual {p2, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;Lcom/mergbw/core/database/bean/SubColorBean;)V

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 130
    invoke-virtual {v10}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Lcom/mergbw/core/jump/JumpManager;->getInstance()Lcom/mergbw/core/jump/JumpManager;

    move-result-object p2

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {p2, v0, p1, v2}, Lcom/mergbw/core/jump/JumpManager;->jumpToSubSetting(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/core/database/bean/SubColorBean;I)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance p2, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    iget-object v4, v2, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    sget v3, Lcom/mergbw/android/R$string;->rename_diy:I

    .line 95
    invoke-virtual {v2, v3}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getAlias()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    .line 97
    invoke-virtual {v2, v1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    .line 98
    invoke-virtual {v1, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$1;

    invoke-direct {v10, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;Lcom/mergbw/core/database/bean/SubColorBean;)V

    const/4 v9, 0x1

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 111
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    :goto_0
    return-void
.end method

.method public longClickGroupItem(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 3

    .line 91
    new-instance v0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    iget-object v1, v1, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;Lcom/mergbw/core/database/bean/SubColorBean;)V

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;-><init>(Landroid/content/Context;Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;)V

    .line 134
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    .line 135
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "9BDE8BA8-5A88-431E-AB21-462EBBD2E1D4"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
