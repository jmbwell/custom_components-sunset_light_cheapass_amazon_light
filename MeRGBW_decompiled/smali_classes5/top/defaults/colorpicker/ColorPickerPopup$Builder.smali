.class public Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
.super Ljava/lang/Object;
.source "ColorPickerPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/defaults/colorpicker/ColorPickerPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelTitle:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private enableAlpha:Z

.field private enableBrightness:Z

.field private initialColor:I

.field private okTitle:Ljava/lang/String;

.field private onlyUpdateOnTouchEventUp:Z

.field private showIndicator:Z

.field private showValue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff01

    .line 126
    iput v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->initialColor:I

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->enableBrightness:Z

    const/4 v1, 0x0

    .line 128
    iput-boolean v1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->enableAlpha:Z

    .line 129
    const-string v2, "OK"

    iput-object v2, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->okTitle:Ljava/lang/String;

    .line 130
    const-string v2, "Cancel"

    iput-object v2, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->cancelTitle:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->showIndicator:Z

    .line 132
    iput-boolean v0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->showValue:Z

    .line 133
    iput-boolean v1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->onlyUpdateOnTouchEventUp:Z

    .line 136
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Landroid/content/Context;
    .locals 0

    .line 123
    iget-object p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)I
    .locals 0

    .line 123
    iget p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->initialColor:I

    return p0
.end method

.method static synthetic access$200(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->enableBrightness:Z

    return p0
.end method

.method static synthetic access$300(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->enableAlpha:Z

    return p0
.end method

.method static synthetic access$400(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->okTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->cancelTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->showIndicator:Z

    return p0
.end method

.method static synthetic access$700(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->showValue:Z

    return p0
.end method

.method static synthetic access$800(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;)Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->onlyUpdateOnTouchEventUp:Z

    return p0
.end method


# virtual methods
.method public build()Ltop/defaults/colorpicker/ColorPickerPopup;
    .locals 2

    .line 181
    new-instance v0, Ltop/defaults/colorpicker/ColorPickerPopup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltop/defaults/colorpicker/ColorPickerPopup;-><init>(Ltop/defaults/colorpicker/ColorPickerPopup$Builder;Ltop/defaults/colorpicker/ColorPickerPopup$1;)V

    return-object v0
.end method

.method public cancelTitle(Ljava/lang/String;)Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->cancelTitle:Ljava/lang/String;

    return-object p0
.end method

.method public enableAlpha(Z)Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
    .locals 0

    .line 151
    iput-boolean p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->enableAlpha:Z

    return-object p0
.end method

.method public enableBrightness(Z)Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
    .locals 0

    .line 145
    iput-boolean p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->enableBrightness:Z

    return-object p0
.end method

.method public initialColor(I)Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
    .locals 0

    .line 140
    iput p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->initialColor:I

    return-object p0
.end method

.method public okTitle(Ljava/lang/String;)Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->okTitle:Ljava/lang/String;

    return-object p0
.end method

.method public onlyUpdateOnTouchEventUp(Z)Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
    .locals 0

    .line 176
    iput-boolean p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->onlyUpdateOnTouchEventUp:Z

    return-object p0
.end method

.method public showIndicator(Z)Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
    .locals 0

    .line 166
    iput-boolean p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->showIndicator:Z

    return-object p0
.end method

.method public showValue(Z)Ltop/defaults/colorpicker/ColorPickerPopup$Builder;
    .locals 0

    .line 171
    iput-boolean p1, p0, Ltop/defaults/colorpicker/ColorPickerPopup$Builder;->showValue:Z

    return-object p0
.end method
