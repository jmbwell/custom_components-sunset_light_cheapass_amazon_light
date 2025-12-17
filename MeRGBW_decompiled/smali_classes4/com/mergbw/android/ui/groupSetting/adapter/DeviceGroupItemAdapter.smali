.class public Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DeviceGroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$GroupViewHolder;,
        Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private isNew:Z

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDeviceType:I

    .line 30
    iput-boolean v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->isNew:Z

    return-void
.end method

.method private checkDeviceType()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    .line 167
    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getType()I

    move-result v2

    sget v3, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->CAN_ADD_DEVICE:I

    if-ne v2, v3, :cond_0

    .line 168
    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 169
    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    iput v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDeviceType:I

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 174
    iput v1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDeviceType:I

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p4, :cond_0

    .line 105
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {p3}, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    move-result-object p3

    .line 106
    new-instance p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;

    invoke-direct {p4, p3}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;)V

    .line 107
    invoke-virtual {p3}, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p3

    .line 108
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;

    move-object v3, p4

    move-object p4, p3

    move-object p3, v3

    .line 112
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 115
    iget p2, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDeviceType:I

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 116
    iget-object p2, p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->itemIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDeviceType:I

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 118
    :cond_2
    iget-object p2, p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_2
    iget-object p2, p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p2, p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mergbw/core/utils/ViewDataUtils;->getDeviceIcon(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-virtual {p5}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getType()I

    move-result p2

    sget v0, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->ADDED_DEVICE:I

    if-ne p2, v0, :cond_3

    .line 124
    iget-object p2, p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->itemIcon:Landroid/widget/ImageView;

    sget v0, Lcom/mergbw/android/R$mipmap;->icon_item_delete:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object p2, p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->itemIcon:Landroid/widget/ImageView;

    new-instance p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p5}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 132
    :cond_3
    iget-object p2, p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->itemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result p5

    if-eqz p5, :cond_4

    sget p5, Lcom/mergbw/core/R$mipmap;->icon_checked_02:I

    goto :goto_3

    :cond_4
    sget p5, Lcom/mergbw/core/R$mipmap;->icon_unchecked_02:I

    :goto_3
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object p2, p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$ItemViewHolder;->mItemBinding:Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/LayoutGroupDeviceItemBinding;->itemIcon:Landroid/widget/ImageView;

    new-instance p4, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-object p3
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p3, :cond_0

    .line 83
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;

    move-result-object p2

    .line 84
    new-instance p3, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$GroupViewHolder;

    invoke-direct {p3, p2}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$GroupViewHolder;-><init>(Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;)V

    .line 85
    invoke-virtual {p2}, Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$GroupViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 90
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    .line 91
    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getType()I

    move-result p4

    sget v0, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->ADDED_DEVICE:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v0, :cond_1

    .line 92
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object p4

    sget v0, Lcom/mergbw/android/R$string;->added_device_num:I

    invoke-virtual {p4, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 93
    iget-object p3, p3, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$GroupViewHolder;->mGroupBinding:Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;

    iget-object p3, p3, Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;->tvGroupName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object p4

    sget v0, Lcom/mergbw/android/R$string;->can_device_num:I

    invoke-virtual {p4, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 96
    iget-object p3, p3, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter$GroupViewHolder;->mGroupBinding:Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;

    iget-object p3, p3, Lcom/mergbw/android/databinding/LayoutGroupNameItemBinding;->tvGroupName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$getChildView$0$com-mergbw-android-ui-groupSetting-adapter-DeviceGroupItemAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p3, 0x0

    .line 126
    invoke-virtual {p1, p3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSelected(Z)V

    .line 127
    invoke-virtual {p2}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object p2, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    invoke-virtual {p2}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$getChildView$1$com-mergbw-android-ui-groupSetting-adapter-DeviceGroupItemAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSelected(Z)V

    .line 135
    iget-boolean p1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->isNew:Z

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->checkDeviceType()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;",
            ">;I)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDataList:Ljava/util/List;

    .line 34
    iput p2, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->mDeviceType:I

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iput-boolean p1, p0, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->isNew:Z

    .line 36
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupSetting/adapter/DeviceGroupItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
