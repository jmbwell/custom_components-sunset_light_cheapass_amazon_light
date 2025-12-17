.class public final synthetic Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

.field public final synthetic f$1:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    iput-object p2, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;

    iget-object v1, p0, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter;->lambda$onBindViewHolder$1$com-mergbw-core-ui-DIYSetting-adapter-DIYSubItemAdapter(Lcom/mergbw/core/ui/DIYSetting/adapter/DIYSubItemAdapter$ItemViewHolder;Landroid/view/View;)V

    return-void
.end method
