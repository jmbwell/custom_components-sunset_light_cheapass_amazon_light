.class public Lcom/mergbw/android/ui/view/ChooseTimePopWindow;
.super Landroid/widget/PopupWindow;
.source "ChooseTimePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;
    }
.end annotation


# instance fields
.field private mChooseHour:I

.field private mChooseMinute:I

.field private final mListener:Lcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 23
    iput-object p4, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mListener:Lcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;

    const/4 p4, 0x0

    const/16 v0, 0x17

    if-le p2, v0, :cond_0

    .line 25
    iput v0, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseHour:I

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseHour:I

    :goto_0
    const/16 p2, 0x3b

    if-le p3, p2, :cond_1

    .line 30
    iput p2, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseMinute:I

    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseMinute:I

    .line 34
    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/PopChooseTimeBinding;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, -0x1

    .line 36
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->setWidth(I)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->setHeight(I)V

    const/4 p2, 0x1

    .line 38
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->setFocusable(Z)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->setOutsideTouchable(Z)V

    .line 41
    sget p2, Lcom/mergbw/core/R$style;->pop_anim:I

    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->setAnimationStyle(I)V

    .line 43
    iget-object p2, p1, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->tvCancel:Landroid/widget/TextView;

    new-instance p3, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/view/ChooseTimePopWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p2, p1, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->tvDone:Landroid/widget/TextView;

    new-instance p3, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/view/ChooseTimePopWindow;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p2, 0x18

    .line 51
    new-array p3, p2, [Ljava/lang/String;

    move v0, p4

    .line 52
    :goto_2
    const-string v1, "0"

    const/16 v2, 0xa

    if-ge v0, p2, :cond_3

    if-ge v0, v2, :cond_2

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    goto :goto_3

    .line 56
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59
    :cond_3
    iget-object p2, p1, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->hourPicker:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    iget v0, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseHour:I

    invoke-virtual {p2, p3, v0, p4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V

    .line 60
    iget-object p2, p1, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->hourPicker:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    new-instance p3, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/view/ChooseTimePopWindow;)V

    invoke-virtual {p2, p3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setOnValueChangedListener(Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;)V

    const/16 p2, 0x3c

    .line 64
    new-array p3, p2, [Ljava/lang/String;

    move v0, p4

    :goto_4
    if-ge v0, p2, :cond_5

    if-ge v0, v2, :cond_4

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    goto :goto_5

    .line 69
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 72
    :cond_5
    iget-object p2, p1, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->minutePicker:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    iget v0, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseMinute:I

    invoke-virtual {p2, p3, v0, p4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V

    .line 73
    iget-object p1, p1, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->minutePicker:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    new-instance p2, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/view/ChooseTimePopWindow;)V

    invoke-virtual {p1, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setOnValueChangedListener(Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-mergbw-android-ui-view-ChooseTimePopWindow(Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$1$com-mergbw-android-ui-view-ChooseTimePopWindow(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mListener:Lcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;

    if-eqz p1, :cond_0

    .line 46
    iget v0, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseHour:I

    iget v1, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseMinute:I

    invoke-interface {p1, v0, v1}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;->OnTime(II)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$2$com-mergbw-android-ui-view-ChooseTimePopWindow(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II)V
    .locals 0

    .line 61
    iput p3, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseHour:I

    return-void
.end method

.method synthetic lambda$new$3$com-mergbw-android-ui-view-ChooseTimePopWindow(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II)V
    .locals 0

    .line 74
    iput p3, p0, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;->mChooseMinute:I

    return-void
.end method
