.class Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "DIYSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rgDiyType:Landroid/widget/RadioGroup;

    sget v0, Lcom/mergbw/android/R$id;->rb_diy:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rgDiyType:Landroid/widget/RadioGroup;

    sget v0, Lcom/mergbw/android/R$id;->rb_sub:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    return-void
.end method
