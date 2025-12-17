.class public final synthetic Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda7;->f$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity$$ExternalSyntheticLambda7;->f$0:Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;->$r8$lambda$Faz7DHptg_2BUZQTCqoK0YtLRL4(Lcom/mergbw/core/ui/DIYSetting/DIYSettingActivity;Z)V

    return-void
.end method
