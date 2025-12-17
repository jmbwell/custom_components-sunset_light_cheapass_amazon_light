.class public final enum La/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:La/b;

.field public static final enum b:La/b;

.field public static final enum c:La/b;

.field private static final synthetic d:[La/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La/b;

    const-string v1, "OTA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b;->a:La/b;

    new-instance v0, La/b;

    const-string v1, "RESOURCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b;->b:La/b;

    new-instance v0, La/b;

    const-string v1, "Security"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, La/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b;->c:La/b;

    .line 2
    invoke-static {}, La/b;->a()[La/b;

    move-result-object v0

    sput-object v0, La/b;->d:[La/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[La/b;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [La/b;

    sget-object v1, La/b;->a:La/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, La/b;->b:La/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, La/b;->c:La/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La/b;
    .locals 1

    .line 1
    const-class v0, La/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/b;

    return-object p0
.end method

.method public static values()[La/b;
    .locals 1

    .line 1
    sget-object v0, La/b;->d:[La/b;

    invoke-virtual {v0}, [La/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/b;

    return-object v0
.end method
