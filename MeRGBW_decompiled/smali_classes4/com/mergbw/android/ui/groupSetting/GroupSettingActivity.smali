.class public Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "GroupSettingActivity.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

.field private mDeviceAdapter:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;


# direct methods
.method public static synthetic $r8$lambda$-RFtIB4-8cS60vSfjXWq4oJSGxk(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->deleteGroupResult(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9vTU08eWys5LjJpEXxqcdSxft7A(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->updateGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DFHfR5n961nj5xPAuppQYCQlQzM(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->updateDeviceList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uAKWUMozD5FtavC-MiJlnEaYVWs(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->addGroupResult(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJmRbpYUY9H3UiXVVH31rpWuRQE(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->updateGroupResult(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mDeviceAdapter:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    return-object p0
.end method

.method private addGroupResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 156
    sget p1, Lcom/mergbw/android/R$string;->create_group_success:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->showToast(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->finish()V

    :cond_0
    return-void
.end method

.method private deleteGroupResult(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "DELETE_GROUP_SUCCESS_ACTION"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 164
    sget p1, Lcom/mergbw/android/R$string;->delete_group_success:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->showToast(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initViews$1(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private subscribeUI()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    new-instance v1, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->setGroupInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 128
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    new-instance v1, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->setDeviceListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 129
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->initData(Landroid/content/Intent;)V

    .line 130
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    new-instance v1, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->setAddResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 131
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    new-instance v1, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda9;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->setDeleteResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 132
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    new-instance v1, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda10;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->setUpdateResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateDeviceList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mDeviceAdapter:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->getGroupInfo()Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->getGroupInfo()Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->setData(Ljava/util/List;I)V

    .line 148
    :goto_1
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mDeviceAdapter:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->listDevice:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/mergbw/android/R$string;->group_manage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvGroupName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->layoutBottom:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateGroupResult(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 171
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "UPDATE_GROUP_SUCCESS_ACTION"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 172
    sget p1, Lcom/mergbw/android/R$string;->update_group_success:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->showToast(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance p1, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mDeviceAdapter:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->listDevice:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mDeviceAdapter:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->listDevice:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->layoutGroupName:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->btnDelete:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-groupSetting-GroupSettingActivity(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-groupSetting-GroupSettingActivity(Landroid/view/View;)V
    .locals 8

    .line 62
    new-instance p1, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/android/R$string;->set_group_name:I

    .line 63
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvGroupName:Landroid/widget/TextView;

    .line 64
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    .line 65
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x104000a

    .line 66
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$1;

    invoke-direct {v7, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$1;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 77
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-groupSetting-GroupSettingActivity(Landroid/view/View;)V
    .locals 9

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->getGroupInfo()Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object p1

    if-nez p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvGroupName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance p1, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v2, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/android/R$string;->set_group_name:I

    .line 86
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvGroupName:Landroid/widget/TextView;

    .line 87
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v0, 0x1040000

    .line 88
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x104000a

    .line 89
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$2;

    invoke-direct {v8, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$2;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 101
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mDeviceAdapter:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->addGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvGroupName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mDeviceAdapter:Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->updateGroup(Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$4$com-mergbw-android-ui-groupSetting-GroupSettingActivity(Z)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->deleteGroup()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$5$com-mergbw-android-ui-groupSetting-GroupSettingActivity(Landroid/view/View;)V
    .locals 8

    .line 112
    sget p1, Lcom/mergbw/android/R$string;->delete_group_tick:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance v7, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/android/R$string;->confirm:I

    .line 114
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    .line 115
    invoke-virtual {v0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->getGroupInfo()Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/high16 p1, 0x1040000

    .line 116
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lcom/mergbw/core/R$string;->delete:I

    .line 117
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 122
    invoke-virtual {v7}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mViewModel:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    .line 46
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    .line 47
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->setContentView(Landroid/view/View;)V

    .line 48
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->initViews(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->subscribeUI()V

    return-void
.end method
