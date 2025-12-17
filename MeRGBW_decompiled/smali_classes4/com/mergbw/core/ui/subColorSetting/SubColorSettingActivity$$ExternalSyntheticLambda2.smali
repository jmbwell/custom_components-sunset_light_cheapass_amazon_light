.class public final synthetic Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda2;->f$0:Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->$r8$lambda$DIvH5sNc7-LslJz5pVyRuQjra4U(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;Z)V

    return-void
.end method
