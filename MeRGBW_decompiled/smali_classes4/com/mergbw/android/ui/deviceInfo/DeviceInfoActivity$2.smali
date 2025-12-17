.class Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;
.super Ljava/lang/Object;
.source "DeviceInfoActivity.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 2

    .line 96
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;

    sget v1, Lcom/mergbw/android/R$string;->mix_led_num_tip:I

    invoke-virtual {p1, v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;Ljava/lang/String;)V

    move p1, v0

    :cond_0
    const/16 v0, 0x12c

    if-le p1, v0, :cond_1

    .line 103
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;

    sget v1, Lcom/mergbw/android/R$string;->max_led_num_tip:I

    invoke-virtual {p1, v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->access$100(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;Ljava/lang/String;)V

    move p1, v0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->access$200(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->setLedNum(I)V

    .line 106
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->access$300(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvLedNum:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;

    sget v0, Lcom/mergbw/android/R$string;->max_led_num_tip:I

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->access$400(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method
