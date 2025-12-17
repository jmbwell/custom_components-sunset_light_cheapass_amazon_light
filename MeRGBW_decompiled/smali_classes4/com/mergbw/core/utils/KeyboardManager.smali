.class public Lcom/mergbw/core/utils/KeyboardManager;
.super Ljava/lang/Object;
.source "KeyboardManager.java"


# static fields
.field private static volatile mKeyboardManager:Lcom/mergbw/core/utils/KeyboardManager;


# instance fields
.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field mThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized with()Lcom/mergbw/core/utils/KeyboardManager;
    .locals 3

    const-class v0, Lcom/mergbw/core/utils/KeyboardManager;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/mergbw/core/utils/KeyboardManager;->mKeyboardManager:Lcom/mergbw/core/utils/KeyboardManager;

    if-nez v1, :cond_1

    .line 13
    const-class v1, Lcom/mergbw/core/utils/KeyboardManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    sget-object v2, Lcom/mergbw/core/utils/KeyboardManager;->mKeyboardManager:Lcom/mergbw/core/utils/KeyboardManager;

    if-nez v2, :cond_0

    .line 15
    new-instance v2, Lcom/mergbw/core/utils/KeyboardManager;

    invoke-direct {v2}, Lcom/mergbw/core/utils/KeyboardManager;-><init>()V

    sput-object v2, Lcom/mergbw/core/utils/KeyboardManager;->mKeyboardManager:Lcom/mergbw/core/utils/KeyboardManager;

    .line 17
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 19
    :cond_1
    :goto_0
    sget-object v1, Lcom/mergbw/core/utils/KeyboardManager;->mKeyboardManager:Lcom/mergbw/core/utils/KeyboardManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/mergbw/core/utils/KeyboardManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/mergbw/core/utils/KeyboardManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/utils/KeyboardManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public hide(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mView"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/mergbw/core/utils/KeyboardManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 73
    invoke-virtual {p0}, Lcom/mergbw/core/utils/KeyboardManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mView"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/mergbw/core/utils/KeyboardManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 36
    invoke-virtual {p0}, Lcom/mergbw/core/utils/KeyboardManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public showDelayed(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mView"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/mergbw/core/utils/KeyboardManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mergbw/core/utils/KeyboardManager$1;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/core/utils/KeyboardManager$1;-><init>(Lcom/mergbw/core/utils/KeyboardManager;Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mergbw/core/utils/KeyboardManager;->mThread:Ljava/lang/Thread;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
