.class Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$1;
.super Lcom/youth/banner/adapter/BannerImageAdapter;
.source "FactoryAreaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;->updateFactoryActivityList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youth/banner/adapter/BannerImageAdapter<",
        "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment;

    invoke-direct {p0, p2}, Lcom/youth/banner/adapter/BannerImageAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onBindView(Lcom/youth/banner/holder/BannerImageHolder;Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;II)V
    .locals 1

    .line 110
    iget-object p3, p1, Lcom/youth/banner/holder/BannerImageHolder;->imageView:Landroid/widget/ImageView;

    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    iget-object p3, p1, Lcom/youth/banner/holder/BannerImageHolder;->itemView:Landroid/view/View;

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-static {}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getFactoryFileAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;->getActivityPicture()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/youth/banner/holder/BannerImageHolder;->imageView:Landroid/widget/ImageView;

    .line 113
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 106
    check-cast p1, Lcom/youth/banner/holder/BannerImageHolder;

    check-cast p2, Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mergbw/android/ui/deviceDetail/fragment/FactoryAreaFragment$1;->onBindView(Lcom/youth/banner/holder/BannerImageHolder;Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;II)V

    return-void
.end method
