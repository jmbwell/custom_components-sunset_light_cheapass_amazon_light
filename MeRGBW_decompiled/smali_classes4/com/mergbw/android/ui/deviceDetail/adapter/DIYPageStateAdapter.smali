.class public Lcom/mergbw/android/ui/deviceDetail/adapter/DIYPageStateAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "DIYPageStateAdapter.java"


# instance fields
.field private final mPageCount:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 20
    iput p2, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/DIYPageStateAdapter;->mPageCount:I

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    if-eqz p1, :cond_0

    .line 34
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;-><init>()V

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/adapter/DIYPageStateAdapter;->mPageCount:I

    return v0
.end method
