.class Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$3;
.super Ljava/lang/Object;
.source "DIYSettingActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 183
    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$3;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "i",
            "b"
        }
    .end annotation

    .line 187
    iget-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$3;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$300(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvSpeedValue:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$3;->this$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    invoke-static {v0}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->access$100(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x65

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingViewModel;->setDIYSpeed(I)V

    return-void
.end method
