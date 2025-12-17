.class public final synthetic Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda6;->f$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda6;->f$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->$r8$lambda$4DgPT1sO1Y_-xT8y5cEImbDqZsc(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method
