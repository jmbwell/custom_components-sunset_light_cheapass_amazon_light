.class public Lcom/mergbw/core/utils/MeRGBWLog;
.super Ljava/lang/Object;
.source "MeRGBWLog.java"


# static fields
.field private static DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "mytest"

.field public static TEST_ENABLE:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .line 25
    sget-boolean v0, Lcom/mergbw/core/utils/MeRGBWLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "mytest"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .line 19
    sget-boolean v0, Lcom/mergbw/core/utils/MeRGBWLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "mytest"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
