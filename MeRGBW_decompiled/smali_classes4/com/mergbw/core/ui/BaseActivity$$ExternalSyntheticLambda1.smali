.class public final synthetic Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/ui/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/ui/BaseActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/mergbw/core/ui/BaseActivity;->lambda$showPopWindow$3$com-mergbw-core-ui-BaseActivity()V

    return-void
.end method
