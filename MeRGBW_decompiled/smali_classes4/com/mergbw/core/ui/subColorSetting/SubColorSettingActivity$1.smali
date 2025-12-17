.class Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$1;
.super Ljava/lang/Object;
.source "SubColorSettingActivity.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;

.field final synthetic val$subColor:Lcom/mergbw/core/database/bean/SubColorBean;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$subColor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$1;->this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;

    iput-object p2, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$1;->val$subColor:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$1;->val$subColor:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/SubColorBean;->setAlias(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$1;->this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;

    invoke-static {p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->access$000(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$1;->val$subColor:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;->addSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method
