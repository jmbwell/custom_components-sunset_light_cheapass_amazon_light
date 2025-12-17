.class Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$1;
.super Lcom/mergbw/core/ble/BleCallback;
.source "SubColorViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel$1;->this$0:Lcom/mergbw/core/ui/subColorSetting/SubColorViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/ble/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bleDevice",
            "cmdCode",
            "data"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/ble/BleCallback;->onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V

    return-void
.end method
