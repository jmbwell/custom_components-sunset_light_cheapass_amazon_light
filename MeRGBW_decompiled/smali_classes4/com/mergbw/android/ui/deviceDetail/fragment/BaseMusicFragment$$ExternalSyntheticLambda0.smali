.class public final synthetic Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OnConfirmResult(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->lambda$checkAudioPermission$0$com-mergbw-android-ui-deviceDetail-fragment-BaseMusicFragment([Ljava/lang/String;Z)V

    return-void
.end method
