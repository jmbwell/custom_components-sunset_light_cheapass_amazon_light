.class public final synthetic Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/ui/BaseBluetoothActivity;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/ui/BaseBluetoothActivity;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/BaseBluetoothActivity;

    iput-object p2, p0, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OnConfirmResult(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/BaseBluetoothActivity;

    iget-object v1, p0, Lcom/mergbw/core/ui/BaseBluetoothActivity$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->lambda$checkBluePermission$1$com-mergbw-core-ui-BaseBluetoothActivity([Ljava/lang/String;Z)V

    return-void
.end method
