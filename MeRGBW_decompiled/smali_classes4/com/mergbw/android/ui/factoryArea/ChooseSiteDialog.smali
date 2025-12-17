.class public Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;
.super Landroid/app/Dialog;
.source "ChooseSiteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/DialogChooseSiteBinding;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSite:Ljava/lang/String;

.field private final mListener:Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;

.field private final mSiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;",
            ")V"
        }
    .end annotation

    .line 36
    sget v0, Lcom/mergbw/android/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mContext:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mListener:Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;

    .line 39
    iput-object p2, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mSiteList:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mCurrentSite:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-mergbw-android-ui-factoryArea-ChooseSiteDialog(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mListener:Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$ChooseListener;->chooseResult(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/DialogChooseSiteBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/DialogChooseSiteBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mBinding:Lcom/mergbw/android/databinding/DialogChooseSiteBinding;

    .line 47
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/DialogChooseSiteBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->setContentView(Landroid/view/View;)V

    .line 49
    iget-object p1, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mBinding:Lcom/mergbw/android/databinding/DialogChooseSiteBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/DialogChooseSiteBinding;->listSite:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    new-instance p1, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;-><init>()V

    .line 51
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mBinding:Lcom/mergbw/android/databinding/DialogChooseSiteBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/DialogChooseSiteBinding;->listSite:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    move v1, v0

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mSiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mCurrentSite:Ljava/lang/String;

    iget-object v3, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mSiteList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    invoke-virtual {v3}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;->mSiteList:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->setData(Ljava/util/List;I)V

    .line 60
    new-instance v0, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/factoryArea/ChooseSiteDialog;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/factoryArea/adapter/SiteItemAdapter;->setClickListener(Lcom/mergbw/android/ui/factoryArea/adapter/ISiteItemClickListener;)V

    return-void
.end method
