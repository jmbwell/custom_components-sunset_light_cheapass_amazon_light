.class Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;
.super Landroid/os/Handler;
.source "NumberPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;


# direct methods
.method constructor <init>(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;Landroid/os/Looper;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 335
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 376
    :cond_0
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$1200(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;IILjava/lang/Object;)V

    goto/16 :goto_2

    .line 337
    :cond_1
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$000(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 338
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$100(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v0

    if-nez v0, :cond_2

    .line 339
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$200(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)V

    .line 341
    :cond_2
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$400(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v1, v3, v3, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$300(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x20

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 346
    :cond_3
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$100(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 348
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$200(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)V

    .line 350
    :cond_4
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v0

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$600(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v2

    const/high16 v3, 0x43960000    # 300.0f

    if-ge v0, v1, :cond_5

    .line 352
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$600(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v0

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$600(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 353
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$000(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v3

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$700(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v5

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$600(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v1

    iget-object v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v4

    add-int v7, v1, v4

    mul-int/lit8 v8, v0, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 354
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$700(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v3

    iget-object v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$600(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$800(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)I

    move-result v1

    goto :goto_0

    .line 357
    :cond_5
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$600(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 358
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$000(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v3

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$700(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v5

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v7

    mul-int/lit8 v8, v0, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 359
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$700(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v3

    iget-object v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$800(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)I

    move-result v1

    :goto_0
    move v3, v0

    .line 361
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-virtual {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    goto :goto_1

    .line 363
    :cond_6
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0, v3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$200(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)V

    .line 365
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$700(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$800(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)I

    move-result v1

    .line 367
    :goto_1
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$900(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I

    move-result v4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v2, v4, v1, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$300(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 368
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$1000(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 369
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$1100(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroid/os/Handler;

    move-result-object v0

    mul-int/2addr v3, v2

    int-to-long v1, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 371
    :cond_7
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-static {v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$400(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroid/os/Handler;

    move-result-object v0

    mul-int/2addr v3, v2

    int-to-long v1, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    return-void
.end method
