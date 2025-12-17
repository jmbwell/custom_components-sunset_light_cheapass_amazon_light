.class public Lcom/mergbw/core/bean/TabItemBean;
.super Ljava/lang/Object;
.source "TabItemBean.java"


# static fields
.field public static final TAB_ATMOSPHERE:I = 0x1a

.field public static final TAB_COLOR:I = 0xb

.field public static final TAB_DIY:I = 0x29

.field public static final TAB_FACTORY_AREA:I = 0x3d

.field public static final TAB_ILLUMINATING:I = 0x10

.field public static final TAB_MULTI_SCENE:I = 0x15

.field public static final TAB_MUSIC:I = 0x1f

.field public static final TAB_MUSIC_LOCAL:I = 0x23

.field public static final TAB_SINGLE_SCENE:I = 0x19

.field public static final TAB_STAR_COLOR:I = 0xd

.field public static final TAB_WHITE_NOISE:I = 0x33


# instance fields
.field private id:I

.field private name:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "name"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/mergbw/core/bean/TabItemBean;->setId(I)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/mergbw/core/bean/TabItemBean;->setName(I)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/mergbw/core/bean/TabItemBean;->id:I

    return v0
.end method

.method public getName()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/mergbw/core/bean/TabItemBean;->name:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 42
    iput p1, p0, Lcom/mergbw/core/bean/TabItemBean;->id:I

    return-void
.end method

.method public setName(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/mergbw/core/bean/TabItemBean;->name:I

    return-void
.end method
