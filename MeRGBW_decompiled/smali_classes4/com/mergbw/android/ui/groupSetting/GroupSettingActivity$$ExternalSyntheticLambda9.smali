.class public final synthetic Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda9;->f$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity$$ExternalSyntheticLambda9;->f$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;->$r8$lambda$-RFtIB4-8cS60vSfjXWq4oJSGxk(Lcom/mergbw/android/ui/groupSetting/GroupSettingActivity;Z)V

    return-void
.end method
