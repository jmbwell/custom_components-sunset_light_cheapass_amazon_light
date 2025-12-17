.class public final synthetic Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity$$ExternalSyntheticLambda3;->f$0:Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;

    check-cast p1, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;->$r8$lambda$3SIOjp8zsmZx6kL22fG-nUXMEZk(Lcom/mergbw/android/ui/factoryArea/FactoryAreaActivity;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V

    return-void
.end method
