.class public Lcom/mergbw/core/network/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# instance fields
.field private currentPage:I

.field private mTotalPageNum:I

.field private mTotalSize:I

.field protected tempPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/mergbw/core/network/BasePresenter;->currentPage:I

    .line 8
    iput v0, p0, Lcom/mergbw/core/network/BasePresenter;->tempPage:I

    return-void
.end method


# virtual methods
.method public calculatePageNum()V
    .locals 1

    .line 22
    iget v0, p0, Lcom/mergbw/core/network/BasePresenter;->tempPage:I

    iput v0, p0, Lcom/mergbw/core/network/BasePresenter;->currentPage:I

    return-void
.end method

.method public moreData()V
    .locals 1

    .line 17
    iget v0, p0, Lcom/mergbw/core/network/BasePresenter;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mergbw/core/network/BasePresenter;->tempPage:I

    return-void
.end method

.method public resetPage()V
    .locals 1

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/mergbw/core/network/BasePresenter;->currentPage:I

    .line 12
    iput v0, p0, Lcom/mergbw/core/network/BasePresenter;->tempPage:I

    return-void
.end method
