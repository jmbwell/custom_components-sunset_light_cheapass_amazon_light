.class public Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;
.super Landroid/widget/BaseAdapter;
.source "DIYEffectPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/views/DIYEffectPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "listAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ui/views/DIYEffectPopWindow;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;->this$0:Lcom/mergbw/core/ui/views/DIYEffectPopWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;->this$0:Lcom/mergbw/core/ui/views/DIYEffectPopWindow;

    invoke-static {v0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->access$000(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;->this$0:Lcom/mergbw/core/ui/views/DIYEffectPopWindow;

    invoke-static {v0}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->access$000(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;->this$0:Lcom/mergbw/core/ui/views/DIYEffectPopWindow;

    invoke-static {p2}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->access$100(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 90
    sget v0, Lcom/mergbw/core/R$layout;->layout_effect_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    :cond_0
    sget p3, Lcom/mergbw/core/R$id;->item_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/mergbw/core/R$id;->item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/utils/ViewDataUtils;->getEffectNameRes(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object p3, p0, Lcom/mergbw/core/ui/views/DIYEffectPopWindow$listAdapter;->this$0:Lcom/mergbw/core/ui/views/DIYEffectPopWindow;

    invoke-static {p3}, Lcom/mergbw/core/ui/views/DIYEffectPopWindow;->access$200(Lcom/mergbw/core/ui/views/DIYEffectPopWindow;)I

    move-result p3

    if-ne p1, p3, :cond_1

    .line 97
    sget p1, Lcom/mergbw/core/R$mipmap;->icon_checked_02:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :cond_1
    sget p1, Lcom/mergbw/core/R$mipmap;->icon_unchecked_02:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object p2
.end method
