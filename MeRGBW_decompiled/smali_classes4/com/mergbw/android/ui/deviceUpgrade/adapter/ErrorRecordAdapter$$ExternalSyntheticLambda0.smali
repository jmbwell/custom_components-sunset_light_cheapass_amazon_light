.class public final synthetic Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

.field public final synthetic f$1:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->lambda$onBindViewHolder$0$com-mergbw-android-ui-deviceUpgrade-adapter-ErrorRecordAdapter(Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter$ItemViewHolder;Landroid/view/View;)V

    return-void
.end method
