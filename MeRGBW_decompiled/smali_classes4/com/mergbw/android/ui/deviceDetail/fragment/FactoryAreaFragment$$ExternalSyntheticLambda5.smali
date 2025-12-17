.class public final synthetic Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda5;->f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;

    return-void
.end method


# virtual methods
.method public final OnBannerClick(Ljava/lang/Object;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$$ExternalSyntheticLambda5;->f$0:Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;

    check-cast p1, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;

    invoke-virtual {v0, p1, p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->lambda$updateFactoryActivityList$3$com-mergbw-android-ui-deviceDetail-fragment-FactoryAreaFragment(Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;I)V

    return-void
.end method
