.class Lcom/mergbw/core/jump/JumpManager$JumpManagerFactory;
.super Ljava/lang/Object;
.source "JumpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/jump/JumpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JumpManagerFactory"
.end annotation


# static fields
.field private static final jumpManager:Lcom/mergbw/core/jump/JumpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/mergbw/core/jump/JumpManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mergbw/core/jump/JumpManager;-><init>(Lcom/mergbw/core/jump/JumpManager$1;)V

    sput-object v0, Lcom/mergbw/core/jump/JumpManager$JumpManagerFactory;->jumpManager:Lcom/mergbw/core/jump/JumpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mergbw/core/jump/JumpManager;
    .locals 1

    .line 24
    sget-object v0, Lcom/mergbw/core/jump/JumpManager$JumpManagerFactory;->jumpManager:Lcom/mergbw/core/jump/JumpManager;

    return-object v0
.end method
