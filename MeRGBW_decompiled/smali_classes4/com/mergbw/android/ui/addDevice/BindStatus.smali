.class public final enum Lcom/mergbw/android/ui/addDevice/BindStatus;
.super Ljava/lang/Enum;
.source "BindStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mergbw/android/ui/addDevice/BindStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mergbw/android/ui/addDevice/BindStatus;

.field public static final enum BOUND:Lcom/mergbw/android/ui/addDevice/BindStatus;

.field public static final enum ERROR:Lcom/mergbw/android/ui/addDevice/BindStatus;

.field public static final enum TIMEOUT:Lcom/mergbw/android/ui/addDevice/BindStatus;

.field public static final enum UNBIND:Lcom/mergbw/android/ui/addDevice/BindStatus;


# direct methods
.method private static synthetic $values()[Lcom/mergbw/android/ui/addDevice/BindStatus;
    .locals 3

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/mergbw/android/ui/addDevice/BindStatus;

    sget-object v1, Lcom/mergbw/android/ui/addDevice/BindStatus;->BOUND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/android/ui/addDevice/BindStatus;->UNBIND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/android/ui/addDevice/BindStatus;->TIMEOUT:Lcom/mergbw/android/ui/addDevice/BindStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/android/ui/addDevice/BindStatus;->ERROR:Lcom/mergbw/android/ui/addDevice/BindStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/mergbw/android/ui/addDevice/BindStatus;

    const-string v1, "BOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mergbw/android/ui/addDevice/BindStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->BOUND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    .line 11
    new-instance v0, Lcom/mergbw/android/ui/addDevice/BindStatus;

    const-string v1, "UNBIND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mergbw/android/ui/addDevice/BindStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->UNBIND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    .line 13
    new-instance v0, Lcom/mergbw/android/ui/addDevice/BindStatus;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mergbw/android/ui/addDevice/BindStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->TIMEOUT:Lcom/mergbw/android/ui/addDevice/BindStatus;

    .line 15
    new-instance v0, Lcom/mergbw/android/ui/addDevice/BindStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mergbw/android/ui/addDevice/BindStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->ERROR:Lcom/mergbw/android/ui/addDevice/BindStatus;

    .line 8
    invoke-static {}, Lcom/mergbw/android/ui/addDevice/BindStatus;->$values()[Lcom/mergbw/android/ui/addDevice/BindStatus;

    move-result-object v0

    sput-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->$VALUES:[Lcom/mergbw/android/ui/addDevice/BindStatus;

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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mergbw/android/ui/addDevice/BindStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 8
    const-class v0, Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mergbw/android/ui/addDevice/BindStatus;

    return-object p0
.end method

.method public static values()[Lcom/mergbw/android/ui/addDevice/BindStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->$VALUES:[Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-virtual {v0}, [Lcom/mergbw/android/ui/addDevice/BindStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mergbw/android/ui/addDevice/BindStatus;

    return-object v0
.end method
