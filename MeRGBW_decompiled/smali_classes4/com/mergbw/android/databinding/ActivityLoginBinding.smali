.class public final Lcom/mergbw/android/databinding/ActivityLoginBinding;
.super Ljava/lang/Object;
.source "ActivityLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnLogin:Landroid/widget/Button;

.field public final btnRegister:Landroid/widget/Button;

.field public final etPassword:Landroid/widget/EditText;

.field public final etUsername:Landroid/widget/EditText;

.field public final ivBack:Landroid/widget/ImageView;

.field public final layoutHead:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvEmailError:Landroid/widget/TextView;

.field public final tvForgetPassword:Landroid/widget/TextView;

.field public final tvPasswordError:Landroid/widget/TextView;

.field public final tvWelcome:Landroid/widget/TextView;

.field public final viewEmailDivider:Landroid/view/View;

.field public final viewPasswordDivider:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    iput-object p2, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->btnLogin:Landroid/widget/Button;

    .line 70
    iput-object p3, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->btnRegister:Landroid/widget/Button;

    .line 71
    iput-object p4, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->etPassword:Landroid/widget/EditText;

    .line 72
    iput-object p5, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    .line 73
    iput-object p6, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->ivBack:Landroid/widget/ImageView;

    .line 74
    iput-object p7, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->layoutHead:Landroid/widget/RelativeLayout;

    .line 75
    iput-object p8, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->tvEmailError:Landroid/widget/TextView;

    .line 76
    iput-object p9, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->tvForgetPassword:Landroid/widget/TextView;

    .line 77
    iput-object p10, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->tvPasswordError:Landroid/widget/TextView;

    .line 78
    iput-object p11, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->tvWelcome:Landroid/widget/TextView;

    .line 79
    iput-object p12, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->viewEmailDivider:Landroid/view/View;

    .line 80
    iput-object p13, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->viewPasswordDivider:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityLoginBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 110
    sget v1, Lcom/mergbw/android/R$id;->btn_login:I

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 116
    sget v1, Lcom/mergbw/android/R$id;->btn_register:I

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 122
    sget v1, Lcom/mergbw/android/R$id;->et_password:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 128
    sget v1, Lcom/mergbw/android/R$id;->et_username:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 134
    sget v1, Lcom/mergbw/android/R$id;->iv_back:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 140
    sget v1, Lcom/mergbw/android/R$id;->layout_head:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 146
    sget v1, Lcom/mergbw/android/R$id;->tv_email_error:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 152
    sget v1, Lcom/mergbw/android/R$id;->tv_forget_password:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 158
    sget v1, Lcom/mergbw/android/R$id;->tv_password_error:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 164
    sget v1, Lcom/mergbw/android/R$id;->tv_welcome:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 170
    sget v1, Lcom/mergbw/android/R$id;->view_email_divider:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 176
    sget v1, Lcom/mergbw/android/R$id;->view_password_divider:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 182
    new-instance v1, Lcom/mergbw/android/databinding/ActivityLoginBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/mergbw/android/databinding/ActivityLoginBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-object v1

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityLoginBinding;
    .locals 2

    .line 97
    sget v0, Lcom/mergbw/android/R$layout;->activity_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityLoginBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
