.class public final synthetic Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

.field public final synthetic f$1:Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/ui/adapter/SubGroupAdapter;Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    iput-object p2, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    iget-object v1, p0, Lcom/mergbw/core/ui/adapter/SubGroupAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->lambda$onBindViewHolder$1$com-mergbw-core-ui-adapter-SubGroupAdapter(Lcom/mergbw/core/ui/adapter/SubGroupAdapter$ItemViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
