.class public final synthetic Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda5;
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

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda5;->f$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda5;->f$0:Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;

    check-cast p1, Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->$r8$lambda$pZ6Ktp89d5EpWv8NcaWZQZJCPPM(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method
