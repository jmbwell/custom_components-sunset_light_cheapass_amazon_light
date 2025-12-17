.class public interface abstract Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;
.super Ljava/lang/Object;
.source "LineColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ui/views/LineColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnColorPickerChangeListener"
.end annotation


# virtual methods
.method public abstract onColorChanged(Lcom/mergbw/core/ui/views/LineColorPickerView;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picker",
            "color"
        }
    .end annotation
.end method

.method public abstract onStartTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picker"
        }
    .end annotation
.end method

.method public abstract onStopTrackingTouch(Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picker"
        }
    .end annotation
.end method
