.class public final synthetic Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

.field public final synthetic f$1:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;

.field public final synthetic f$2:Lcom/mergbw/core/bean/SceneData;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;Lcom/mergbw/core/bean/SceneData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;

    iput-object p3, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/mergbw/core/bean/SceneData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/mergbw/core/bean/SceneData;

    invoke-virtual {v0, v1, v2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->lambda$onBindViewHolder$0$com-mergbw-android-ui-deviceDetail-adapter-WhiteNoiseItemAdapter(Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter$ItemViewHolder;Lcom/mergbw/core/bean/SceneData;Landroid/view/View;)V

    return-void
.end method
