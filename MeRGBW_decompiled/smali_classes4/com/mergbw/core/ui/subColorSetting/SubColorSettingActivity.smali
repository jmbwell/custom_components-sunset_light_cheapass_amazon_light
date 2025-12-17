.class public Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "SubColorSettingActivity.java"


# instance fields
.field private isCheckAll:Z

.field private mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;


# direct methods
.method public static synthetic $r8$lambda$BnNXFcGfqJoyl4Pcp24c5aK0jys(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DIvH5sNc7-LslJz5pVyRuQjra4U(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->updateAddResult(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKv0e8fNn8Ohs88RLT9pufXTpEA(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->refreshSubData(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qcO_F4pL5DglgM_0asMXbAUs3ec(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->updateCommonColor(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFEW6tyn0ZzXCfLenoyr6yKrEH4(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->updateSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->isCheckAll:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    return-object p0
.end method

.method private checkStatus()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mergbw/core/bean/SubItemBean;

    .line 97
    invoke-virtual {v4}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->isCheckAll:Z

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v3, v0, :cond_3

    .line 107
    iput-boolean v1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->isCheckAll:Z

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvAllCheck:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->isCheckAll:Z

    if-nez v1, :cond_4

    sget v1, Lcom/mergbw/core/R$string;->select_all:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/mergbw/core/R$string;->unselect_all:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private refreshSubData(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    .line 139
    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v2, p1}, Lcom/mergbw/core/bean/SubItemBean;->setColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubListView;->refreshData(Ljava/util/List;)V

    .line 147
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->setSubColor(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private subscribeUI()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    new-instance v1, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->setDeviceInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 114
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    new-instance v1, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->setSubColorDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 115
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-virtual {p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->initData(Landroid/content/Intent;)V

    .line 116
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    new-instance v1, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->setAddResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 117
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    new-instance v1, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->setCommonColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateAddResult(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 158
    sget p1, Lcom/mergbw/core/R$string;->set_success:I

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->showToast(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->finish()V

    return-void
.end method

.method private updateCommonColor(Ljava/util/List;)V
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

    .line 152
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setCommonColor(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceInfo"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subColor"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 122
    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->initSubData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/ColorUtils;->getSubColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    .line 125
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubListView;->refreshData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 49
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    new-instance v0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubListView;->setOnSubItemCheckChangeListener(Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;)V

    .line 55
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvAllCheck:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    new-instance v0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setOnColorPickListener(Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;)V

    .line 66
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-core-ui-subColorSetting-SubColorSettingActivity(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-core-ui-subColorSetting-SubColorSettingActivity(IZ)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/bean/SubItemBean;->setChecked(Z)V

    .line 52
    invoke-direct {p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->checkStatus()V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-core-ui-subColorSetting-SubColorSettingActivity(Landroid/view/View;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/bean/SubItemBean;

    .line 57
    iget-boolean v1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->isCheckAll:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/bean/SubItemBean;->setChecked(Z)V

    goto :goto_0

    .line 59
    :cond_0
    iget-boolean p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->isCheckAll:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->isCheckAll:Z

    .line 60
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvAllCheck:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->isCheckAll:Z

    if-nez v0, :cond_1

    sget v0, Lcom/mergbw/core/R$string;->select_all:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/mergbw/core/R$string;->unselect_all:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubListView;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-core-ui-subColorSetting-SubColorSettingActivity(Landroid/view/View;)V
    .locals 9

    .line 67
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mSubList:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-virtual {v0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->getSubColor()Lcom/mergbw/core/database/bean/SubColorBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v0}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 71
    new-instance p1, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v2, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/mergbw/core/R$string;->set_diy_name:I

    .line 72
    invoke-virtual {p0, v1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v1, 0x1040000

    .line 74
    invoke-virtual {p0, v1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x104000a

    .line 75
    invoke-virtual {p0, v1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$1;

    invoke-direct {v8, p0, v0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$1;-><init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;Lcom/mergbw/core/database/bean/SubColorBean;)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 87
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    invoke-virtual {v0}, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->updateSubColor(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    .line 40
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mViewModel:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    .line 41
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->setContentView(Landroid/view/View;)V

    .line 42
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->initViews(Landroid/view/View;)V

    .line 43
    invoke-direct {p0}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->subscribeUI()V

    return-void
.end method
