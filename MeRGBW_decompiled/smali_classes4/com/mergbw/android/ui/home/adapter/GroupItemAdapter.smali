.class public Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lcom/mergbw/android/ui/home/adapter/IGroupListClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->mGroupList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-mergbw-android-ui-home-adapter-GroupItemAdapter(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p2, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->mListener:Lcom/mergbw/android/ui/home/adapter/IGroupListClickListener;

    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->mGroupList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-interface {p2, p1}, Lcom/mergbw/android/ui/home/adapter/IGroupListClickListener;->clickGroupItem(Lcom/mergbw/core/database/bean/GroupItemBean;)V

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

    .line 24
    check-cast p1, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->onBindViewHolder(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;I)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/database/bean/GroupItemBean;

    .line 48
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/LayoutGroupItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/mergbw/android/R$string;->group_device_num:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDevices()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDevices()Ljava/lang/String;

    move-result-object p2

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupItemBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mergbw/android/databinding/LayoutGroupItemBinding;->tvItemState:Landroid/widget/TextView;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupItemBinding;->tvItemState:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    invoke-static {p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;->access$000(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;)Lcom/mergbw/android/databinding/LayoutGroupItemBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutGroupItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;
    .locals 2

    .line 41
    new-instance p2, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mergbw/android/databinding/LayoutGroupItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutGroupItemBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutGroupItemBinding;)V

    return-object p2
.end method

.method public setClickListener(Lcom/mergbw/android/ui/home/adapter/IGroupListClickListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->mListener:Lcom/mergbw/android/ui/home/adapter/IGroupListClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->mGroupList:Ljava/util/List;

    return-void
.end method
