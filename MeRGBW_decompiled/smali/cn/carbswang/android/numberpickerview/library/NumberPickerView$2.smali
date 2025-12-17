.class Lcn/carbswang/android/numberpickerview/library/NumberPickerView$2;
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
.method constructor <init>(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$2;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 384
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 385
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$2;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    invoke-virtual {p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->requestLayout()V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$2;->this$0:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->access$1200(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;IILjava/lang/Object;)V

    :goto_0
    return-void
.end method
