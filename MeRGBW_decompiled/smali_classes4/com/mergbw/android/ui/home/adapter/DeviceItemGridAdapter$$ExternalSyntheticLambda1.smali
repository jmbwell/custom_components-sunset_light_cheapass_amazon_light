.class public final synthetic Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;

.field public final synthetic f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;

    iput-object p2, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;->lambda$onBindViewHolder$1$com-mergbw-android-ui-home-adapter-DeviceItemGridAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
