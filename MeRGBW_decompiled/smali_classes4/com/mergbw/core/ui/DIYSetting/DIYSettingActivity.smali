.class public Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "DIYSettingActivity.java"


# instance fields
.field private isCheckAll:Z

.field private mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

.field private mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SubItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;


# direct methods
.method public static synthetic $r8$lambda$3qeOOyAtbzSYYux72JnaNXFw6sM(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->updateDIYInfo(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9-C7e7TjLd5lpJYCgh3MMr_og4M(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->refreshSubData(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Faz7DHptg_2BUZQTCqoK0YtLRL4(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->updateSaveResult(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$U3wS8FKoxr23f_YeM9AZVh873y4(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->updateSubColorList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kIkkzvrLHCCamxkLw9NRUguw41U(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yuQ_wldFPUarAUs7UfdhJydXLlk(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->updateCommonColor(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->isCheckAll:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->initSubData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/databinding/ActivityDiySettingBinding;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    return-object p0
.end method

.method private checkStatus()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

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

    .line 203
    invoke-virtual {v4}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->isCheckAll:Z

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v3, v0, :cond_3

    .line 213
    iput-boolean v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->isCheckAll:Z

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvAllCheck:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->isCheckAll:Z

    if-nez v1, :cond_4

    sget v1, Lcom/mergbw/core/R$string;->select_all:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/mergbw/core/R$string;->unselect_all:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private initSubData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorValue"
        }
    .end annotation

    .line 257
    invoke-static {p1}, Lcom/mergbw/core/utils/ColorUtils;->getSubColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    .line 258
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubListView;->refreshData(Ljava/util/List;)V

    .line 259
    invoke-direct {p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->checkStatus()V

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

    .line 263
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/bean/SubItemBean;

    .line 266
    invoke-virtual {v2}, Lcom/mergbw/core/bean/SubItemBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    invoke-virtual {v2, p1}, Lcom/mergbw/core/bean/SubItemBean;->setColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    .line 272
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubListView;->refreshData(Ljava/util/List;)V

    .line 273
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->refreshData(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private subscribeUI()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    new-instance v1, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->setDeviceInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 220
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    new-instance v1, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->setDIYInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 221
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    new-instance v1, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->setSubColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 222
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-virtual {p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->initData(Landroid/content/Intent;)V

    .line 223
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    new-instance v1, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->setCommonColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 224
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    new-instance v1, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->setSaveResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

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

    .line 278
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setCommonColor(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateDIYInfo(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diyInfo"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvEffect:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getStyle()I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/utils/ViewDataUtils;->getEffectNameRes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->getTime()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x65

    .line 238
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvSpeedValue:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->sbSpeed:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

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

    .line 228
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 229
    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateSaveResult(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 284
    sget p1, Lcom/mergbw/core/R$string;->set_success:I

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->showToast(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->finish()V

    return-void
.end method

.method private updateSubColorList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subColorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 246
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->setData(Ljava/util/List;I)V

    .line 252
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->initSubData(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 65
    new-instance p1, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    .line 66
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->listSubItem:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->listSubItem:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->setClickListener(Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;)V

    .line 126
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda9;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubListView;->setOnSubItemCheckChangeListener(Lcom/mergbw/core/ui/views/SubListView$OnSubItemCheckChangeListener;)V

    .line 133
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvAllCheck:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda10;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-virtual {p1, v2}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->showColorPie(Z)V

    .line 142
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda11;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setOnColorPickListener(Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;)V

    .line 144
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvSave:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->layoutEffect:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->sbSpeed:Landroid/widget/SeekBar;

    new-instance v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$3;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-core-ui-DIYSetting-DIYSettingActivity(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-core-ui-DIYSetting-DIYSettingActivity(IZ)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/bean/SubItemBean;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/bean/SubItemBean;->setChecked(Z)V

    .line 129
    invoke-direct {p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->checkStatus()V

    .line 130
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-core-ui-DIYSetting-DIYSettingActivity(Landroid/view/View;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/bean/SubItemBean;

    .line 135
    iget-boolean v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->isCheckAll:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/bean/SubItemBean;->setChecked(Z)V

    goto :goto_0

    .line 137
    :cond_0
    iget-boolean p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->isCheckAll:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->isCheckAll:Z

    .line 138
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvAllCheck:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->isCheckAll:Z

    if-nez v0, :cond_1

    sget v0, Lcom/mergbw/core/R$string;->select_all:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/mergbw/core/R$string;->unselect_all:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/views/SubListView;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-core-ui-DIYSetting-DIYSettingActivity(Landroid/view/View;)V
    .locals 8

    .line 145
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 146
    const-string p1, "\u8bf7\u81f3\u5c11\u6dfb\u52a0\u4e00\u5e27\u6570\u636e"

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->getCurrentDIYInfo()Lcom/mergbw/core/database/bean/DIYInfoBean;

    move-result-object p1

    if-nez p1, :cond_1

    .line 151
    new-instance p1, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/core/R$string;->set_diy_name:I

    .line 152
    invoke-virtual {p0, v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v0, 0x1040000

    .line 154
    invoke-virtual {p0, v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x104000a

    .line 155
    invoke-virtual {p0, v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$2;

    invoke-direct {v7, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$2;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 166
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    invoke-virtual {v0}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mSubAdapter:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    invoke-virtual {v0}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->updateDIYSetting(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$4$com-mergbw-core-ui-DIYSetting-DIYSettingActivity(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->setDIYEffect(I)V

    .line 178
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvEffect:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mergbw/core/utils/ViewDataUtils;->getEffectNameRes(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method synthetic lambda$initViews$5$com-mergbw-core-ui-DIYSetting-DIYSettingActivity(Landroid/view/View;)V
    .locals 3

    .line 174
    new-instance p1, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;

    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    .line 175
    invoke-virtual {v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->getDIYEffect()I

    move-result v1

    new-instance v2, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;-><init>(Landroid/content/Context;ILcom/mergbw/core/ui/views/DIYEffectPopWindow$OnMenuClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    invoke-virtual {v0}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

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

    .line 54
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    .line 56
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mViewModel:Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    .line 57
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->setContentView(Landroid/view/View;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->mBinding:Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->initViews(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->subscribeUI()V

    return-void
.end method
