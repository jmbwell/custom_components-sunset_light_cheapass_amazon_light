.class public final Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;
.super Ljava/lang/Object;
.source "FragmentGroupMusicSetting6Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sbSensitive:Landroid/widget/SeekBar;

.field public final tvSensitive:Landroid/widget/TextView;

.field public final tvSensitivePercent:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->sbSensitive:Landroid/widget/SeekBar;

    .line 42
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->tvSensitive:Landroid/widget/TextView;

    .line 43
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->tvSensitivePercent:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;
    .locals 8

    .line 73
    sget v0, Lcom/mergbw/android/R$id;->list_music_mode:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Lcom/mergbw/android/R$id;->sb_sensitive:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/SeekBar;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Lcom/mergbw/android/R$id;->tv_sensitive:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Lcom/mergbw/android/R$id;->tv_sensitive_percent:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 97
    new-instance v0, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;
    .locals 2

    .line 60
    sget v0, Lcom/mergbw/android/R$layout;->fragment_group_music_setting_6:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentGroupMusicSetting6Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
