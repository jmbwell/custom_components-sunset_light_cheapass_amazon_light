.class public abstract Ltop/defaults/colorpicker/ColorPickerPopup$ColorPickerObserver;
.super Ljava/lang/Object;
.source "ColorPickerPopup.java"

# interfaces
.implements Ltop/defaults/colorpicker/ColorObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/defaults/colorpicker/ColorPickerPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ColorPickerObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onColor(IZZ)V
    .locals 0

    return-void
.end method

.method public abstract onColorPicked(I)V
.end method
