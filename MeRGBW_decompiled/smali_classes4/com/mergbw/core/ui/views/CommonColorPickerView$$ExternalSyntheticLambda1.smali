.class public final synthetic Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/core/ui/views/CommonColorPickerView;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/core/ui/views/CommonColorPickerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    return-void
.end method


# virtual methods
.method public final clickColorItem(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/core/ui/views/CommonColorPickerView$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->lambda$initViews$1$com-mergbw-core-ui-views-CommonColorPickerView(Lcom/mergbw/core/database/bean/ColorBean;)V

    return-void
.end method
