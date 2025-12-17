.class Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$1;
.super Ljava/lang/Object;
.source "DIYListFragment.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->longClickDIYItem(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;

.field final synthetic val$diyColor:Lcom/mergbw/core/database/bean/DIYInfoBean;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$1;->this$1:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$1;->val$diyColor:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$1;->val$diyColor:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setName(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$1;->this$1:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1$1;->val$diyColor:Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->updateDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method
