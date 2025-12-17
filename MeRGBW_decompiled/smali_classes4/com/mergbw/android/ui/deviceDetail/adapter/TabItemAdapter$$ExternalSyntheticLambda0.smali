.class public final synthetic Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

.field public final synthetic f$1:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->lambda$onBindViewHolder$0$com-mergbw-android-ui-deviceDetail-adapter-TabItemAdapter(Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter$ItemViewHolder;Landroid/view/View;)V

    return-void
.end method
