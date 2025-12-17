.class public final enum Lcom/mergbw/core/track/TrackConstants$EventType;
.super Ljava/lang/Enum;
.source "TrackConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/track/TrackConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mergbw/core/track/TrackConstants$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mergbw/core/track/TrackConstants$EventType;

.field public static final enum APP_LAUNCHER:Lcom/mergbw/core/track/TrackConstants$EventType;

.field public static final enum PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/mergbw/core/track/TrackConstants$EventType;
    .locals 3

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Lcom/mergbw/core/track/TrackConstants$EventType;

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->APP_LAUNCHER:Lcom/mergbw/core/track/TrackConstants$EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$EventType;

    const-string v1, "APP_LAUNCHER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mergbw/core/track/TrackConstants$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$EventType;->APP_LAUNCHER:Lcom/mergbw/core/track/TrackConstants$EventType;

    .line 11
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$EventType;

    const-string v1, "PAGE_ITEM_CLICK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/mergbw/core/track/TrackConstants$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    .line 9
    invoke-static {}, Lcom/mergbw/core/track/TrackConstants$EventType;->$values()[Lcom/mergbw/core/track/TrackConstants$EventType;

    move-result-object v0

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$EventType;->$VALUES:[Lcom/mergbw/core/track/TrackConstants$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mergbw/core/track/TrackConstants$EventType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/mergbw/core/track/TrackConstants$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mergbw/core/track/TrackConstants$EventType;

    return-object p0
.end method

.method public static values()[Lcom/mergbw/core/track/TrackConstants$EventType;
    .locals 1

    .line 9
    sget-object v0, Lcom/mergbw/core/track/TrackConstants$EventType;->$VALUES:[Lcom/mergbw/core/track/TrackConstants$EventType;

    invoke-virtual {v0}, [Lcom/mergbw/core/track/TrackConstants$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mergbw/core/track/TrackConstants$EventType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    return v0
.end method
