.class public interface abstract Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;
.super Ljava/lang/Object;
.source "EditPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/views/EditPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEditListener"
.end annotation


# virtual methods
.method public abstract onEditText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation
.end method

.method public abstract onSkip()V
.end method
