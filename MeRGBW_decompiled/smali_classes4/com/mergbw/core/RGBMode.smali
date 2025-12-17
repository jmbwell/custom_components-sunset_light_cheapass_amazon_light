.class public final enum Lcom/mergbw/core/RGBMode;
.super Ljava/lang/Enum;
.source "RGBMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mergbw/core/RGBMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mergbw/core/RGBMode;

.field public static final enum COLOR_MODEL:Lcom/mergbw/core/RGBMode;

.field public static final enum DIY_MODEL:Lcom/mergbw/core/RGBMode;

.field public static final enum MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

.field public static final enum STATIC_MODEL:Lcom/mergbw/core/RGBMode;

.field public static final enum WARM_MODE:Lcom/mergbw/core/RGBMode;


# direct methods
.method private static synthetic $values()[Lcom/mergbw/core/RGBMode;
    .locals 3

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lcom/mergbw/core/RGBMode;

    sget-object v1, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/RGBMode;->WARM_MODE:Lcom/mergbw/core/RGBMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/mergbw/core/RGBMode;

    const-string v1, "COLOR_MODEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/RGBMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    .line 5
    new-instance v0, Lcom/mergbw/core/RGBMode;

    const-string v1, "DIY_MODEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/RGBMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    .line 6
    new-instance v0, Lcom/mergbw/core/RGBMode;

    const-string v1, "STATIC_MODEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/RGBMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    .line 7
    new-instance v0, Lcom/mergbw/core/RGBMode;

    const-string v1, "MUSIC_MODEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/RGBMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    .line 8
    new-instance v0, Lcom/mergbw/core/RGBMode;

    const-string v1, "WARM_MODE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/mergbw/core/RGBMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/core/RGBMode;->WARM_MODE:Lcom/mergbw/core/RGBMode;

    .line 3
    invoke-static {}, Lcom/mergbw/core/RGBMode;->$values()[Lcom/mergbw/core/RGBMode;

    move-result-object v0

    sput-object v0, Lcom/mergbw/core/RGBMode;->$VALUES:[Lcom/mergbw/core/RGBMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mergbw/core/RGBMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/mergbw/core/RGBMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mergbw/core/RGBMode;

    return-object p0
.end method

.method public static values()[Lcom/mergbw/core/RGBMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/mergbw/core/RGBMode;->$VALUES:[Lcom/mergbw/core/RGBMode;

    invoke-virtual {v0}, [Lcom/mergbw/core/RGBMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mergbw/core/RGBMode;

    return-object v0
.end method
