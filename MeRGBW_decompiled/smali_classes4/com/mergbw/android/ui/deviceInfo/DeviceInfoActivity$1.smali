.class Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$1;
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

    .line 71
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$1;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$1;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->access$200(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->updateAliasName(Ljava/lang/String;)V

    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method
