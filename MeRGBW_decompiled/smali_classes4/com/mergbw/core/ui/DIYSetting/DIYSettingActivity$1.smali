.class Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;
.super Ljava/lang/Object;
.source "DIYSettingActivity.java"

# interfaces
.implements Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickDIYSubItem(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diySubColor"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$000(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v0}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 75
    iget-object v2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {v2}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$100(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->initSubData()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/mergbw/core/Constants;->MAX_DIY_SUB_NUM:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    .line 78
    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {v2}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$000(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->setData(Ljava/util/List;I)V

    .line 85
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$200(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$200(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public deleteSubItem(Lcom/mergbw/core/database/bean/SubColorBean;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "diySubColor",
            "position",
            "currentIndex"
        }
    .end annotation

    .line 93
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$000(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p3, p2, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_0
    if-le p3, p2, :cond_1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    .line 101
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-nez p2, :cond_2

    .line 105
    new-instance p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {p2}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 106
    invoke-virtual {p2, v0}, Lcom/mergbw/core/database/bean/SubColorBean;->setType(I)V

    const/4 v1, 0x0

    .line 107
    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez p3, :cond_2

    move p3, v0

    .line 114
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v0, :cond_3

    .line 115
    new-instance p2, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {p2}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 116
    iget-object p3, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {p3}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$100(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->initSubData()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mergbw/core/database/bean/SubColorBean;->setColorValue(Ljava/lang/String;)V

    .line 117
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, p3

    .line 121
    :goto_1
    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {p2}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$000(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->setData(Ljava/util/List;I)V

    .line 122
    iget-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$1;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/SubColorBean;->getColorValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$200(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Ljava/lang/String;)V

    return-void
.end method
