.class public final synthetic Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {v0, p1}, Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;->$r8$lambda$BnNXFcGfqJoyl4Pcp24c5aK0jys(Lcom/mergbw/core/ui/subColorSetting/SubColorSettingActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method
