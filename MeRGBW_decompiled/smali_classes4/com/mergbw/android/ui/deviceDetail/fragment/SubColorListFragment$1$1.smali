.class Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$1;
.super Ljava/lang/Object;
.source "SubColorListFragment.java"

# interfaces
.implements Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->longClickGroupItem(Lcom/mergbw/core/database/bean/SubColorBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;

.field final synthetic val$subColor:Lcom/mergbw/core/database/bean/SubColorBean;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;Lcom/mergbw/core/database/bean/SubColorBean;)V
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

    .line 100
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$1;->this$1:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$1;->val$subColor:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$1;->val$subColor:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/SubColorBean;->setAlias(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$1;->this$1:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1$1;->val$subColor:Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->updateSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method
