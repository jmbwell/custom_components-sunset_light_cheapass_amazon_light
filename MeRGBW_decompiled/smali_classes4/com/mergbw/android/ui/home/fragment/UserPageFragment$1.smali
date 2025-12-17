.class Lcom/mergbw/android/ui/home/fragment/UserPageFragment$1;
.super Ljava/lang/Object;
.source "UserPageFragment.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/home/fragment/UserPageFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/home/fragment/UserPageFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$1;->this$0:Lcom/mergbw/android/ui/home/fragment/UserPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/UserPageFragment$1;->this$0:Lcom/mergbw/android/ui/home/fragment/UserPageFragment;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/fragment/UserPageFragment;->access$000(Lcom/mergbw/android/ui/home/fragment/UserPageFragment;)Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/UserinfoManage;->setNickname(Ljava/lang/String;)V

    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method
