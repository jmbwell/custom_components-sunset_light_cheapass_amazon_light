.class Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$2;
.super Ljava/lang/Object;
.source "DIYSettingActivity.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


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

    .line 157
    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$2;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$2;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$100(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$2;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$000(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->saveDIYSetting(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method
