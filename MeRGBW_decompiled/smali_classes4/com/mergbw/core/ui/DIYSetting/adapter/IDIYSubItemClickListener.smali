.class public interface abstract Lcom/mergbw/core/ui/DIYSetting/adapter/IDIYSubItemClickListener;
.super Ljava/lang/Object;
.source "IDIYSubItemClickListener.java"


# virtual methods
.method public abstract clickDIYSubItem(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diySubColor"
        }
    .end annotation
.end method

.method public abstract deleteSubItem(Lcom/mergbw/core/database/bean/SubColorBean;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "diySubColor",
            "position",
            "currentIndex"
        }
    .end annotation
.end method
