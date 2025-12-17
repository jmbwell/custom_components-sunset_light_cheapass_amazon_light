.class Ltop/defaults/colorpicker/ColorSliderView$1;
.super Ljava/lang/Object;
.source "ColorSliderView.java"

# interfaces
.implements Ltop/defaults/colorpicker/ColorObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/defaults/colorpicker/ColorSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/defaults/colorpicker/ColorSliderView;


# direct methods
.method constructor <init>(Ltop/defaults/colorpicker/ColorSliderView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorSliderView$1;->this$0:Ltop/defaults/colorpicker/ColorSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColor(IZZ)V
    .locals 1

    .line 153
    iget-object v0, p0, Ltop/defaults/colorpicker/ColorSliderView$1;->this$0:Ltop/defaults/colorpicker/ColorSliderView;

    invoke-virtual {v0, p1, p2, p3}, Ltop/defaults/colorpicker/ColorSliderView;->setBaseColor(IZZ)V

    return-void
.end method
