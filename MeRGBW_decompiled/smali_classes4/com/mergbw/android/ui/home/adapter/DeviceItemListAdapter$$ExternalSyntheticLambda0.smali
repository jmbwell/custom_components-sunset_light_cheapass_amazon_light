.class public final synthetic Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter;

.field public final synthetic f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter;

    iput-object p2, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter;->lambda$onBindViewHolder$0$com-mergbw-android-ui-home-adapter-DeviceItemListAdapter(Lcom/mergbw/core/database/bean/DeviceInfoBean;Landroid/view/View;)V

    return-void
.end method
