.class public Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ErrorRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mListener:Lcom/mergbw/android/ui/deviceUpgrade/adapter/IRecordListClickListener;

.field public mRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->mRecordList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-deviceUpgrade-adapter-ErrorRecordAdapter(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->mListener:Lcom/mergbw/android/ui/deviceUpgrade/adapter/IRecordListClickListener;

    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->mRecordList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/IRecordListClickListener;->clickRecordItem(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;I)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->mRecordList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    .line 47
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceType()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mergbw/core/utils/ViewDataUtils;->getDeviceIcon(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;->tvItemState:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getRecordTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;->btnResume:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;
    .locals 2

    .line 40
    new-instance p2, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutErrorRecordItemBinding;)V

    return-object p2
.end method

.method public setClickListener(Lcom/mergbw/android/ui/deviceUpgrade/adapter/IRecordListClickListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->mListener:Lcom/mergbw/android/ui/deviceUpgrade/adapter/IRecordListClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->mRecordList:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method
