.class public final Lcom/mergbw/android/databinding/ActivityRegisterBinding;
.super Ljava/lang/Object;
.source "ActivityRegisterBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnNext:Landroid/widget/Button;

.field public final btnSubmit:Landroid/widget/Button;

.field public final etEmail:Landroid/widget/EditText;

.field public final etPassword:Landroid/widget/EditText;

.field public final etPasswordAgain:Landroid/widget/EditText;

.field public final etVerify:Landroid/widget/EditText;

.field public final ivBack:Landroid/widget/ImageView;

.field public final layoutEmail:Landroid/widget/LinearLayout;

.field public final layoutHead:Landroid/widget/RelativeLayout;

.field public final layoutVerify:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvEmialError:Landroid/widget/TextView;

.field public final tvPasswordAgainError:Landroid/widget/TextView;

.field public final tvPasswordError:Landroid/widget/TextView;

.field public final tvVerifyError:Landroid/widget/TextView;

.field public final viewEmailDivider:Landroid/view/View;

.field public final viewPasswordAgainDivider:Landroid/view/View;

.field public final viewPasswordDivider:Landroid/view/View;

.field public final viewVerifyDvider:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 90
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 91
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->btnNext:Landroid/widget/Button;

    move-object v1, p3

    .line 92
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->btnSubmit:Landroid/widget/Button;

    move-object v1, p4

    .line 93
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->etEmail:Landroid/widget/EditText;

    move-object v1, p5

    .line 94
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->etPassword:Landroid/widget/EditText;

    move-object v1, p6

    .line 95
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->etPasswordAgain:Landroid/widget/EditText;

    move-object v1, p7

    .line 96
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->etVerify:Landroid/widget/EditText;

    move-object v1, p8

    .line 97
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->ivBack:Landroid/widget/ImageView;

    move-object v1, p9

    .line 98
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->layoutEmail:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 99
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->layoutHead:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 100
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->layoutVerify:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 101
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvEmialError:Landroid/widget/TextView;

    move-object v1, p13

    .line 102
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvPasswordAgainError:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 103
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvPasswordError:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 104
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvVerifyError:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 105
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewEmailDivider:Landroid/view/View;

    move-object/from16 v1, p17

    .line 106
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewPasswordAgainDivider:Landroid/view/View;

    move-object/from16 v1, p18

    .line 107
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewPasswordDivider:Landroid/view/View;

    move-object/from16 v1, p19

    .line 108
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewVerifyDvider:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityRegisterBinding;
    .locals 23

    move-object/from16 v0, p0

    .line 138
    sget v1, Lcom/mergbw/android/R$id;->btn_next:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 144
    sget v1, Lcom/mergbw/android/R$id;->btn_submit:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 150
    sget v1, Lcom/mergbw/android/R$id;->et_email:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 156
    sget v1, Lcom/mergbw/android/R$id;->et_password:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 162
    sget v1, Lcom/mergbw/android/R$id;->et_password_again:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 168
    sget v1, Lcom/mergbw/android/R$id;->et_verify:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    .line 174
    sget v1, Lcom/mergbw/android/R$id;->iv_back:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 180
    sget v1, Lcom/mergbw/android/R$id;->layout_email:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 186
    sget v1, Lcom/mergbw/android/R$id;->layout_head:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    .line 192
    sget v1, Lcom/mergbw/android/R$id;->layout_verify:I

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 198
    sget v1, Lcom/mergbw/android/R$id;->tv_emial_error:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 204
    sget v1, Lcom/mergbw/android/R$id;->tv_password_again_error:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 210
    sget v1, Lcom/mergbw/android/R$id;->tv_password_error:I

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 216
    sget v1, Lcom/mergbw/android/R$id;->tv_verify_error:I

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 222
    sget v1, Lcom/mergbw/android/R$id;->view_email_divider:I

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 228
    sget v1, Lcom/mergbw/android/R$id;->view_password_again_divider:I

    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 234
    sget v1, Lcom/mergbw/android/R$id;->view_password_divider:I

    .line 235
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 240
    sget v1, Lcom/mergbw/android/R$id;->view_verify_dvider:I

    .line 241
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 246
    new-instance v1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v22}, Lcom/mergbw/android/databinding/ActivityRegisterBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object v1

    .line 251
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityRegisterBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityRegisterBinding;
    .locals 2

    .line 125
    sget v0, Lcom/mergbw/android/R$layout;->activity_register:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
