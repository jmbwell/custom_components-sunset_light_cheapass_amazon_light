.class Lcom/mergbw/android/jump/JumpManager$JumpManagerFactory;
.super Ljava/lang/Object;
.source "JumpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/android/jump/JumpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JumpManagerFactory"
.end annotation


# static fields
.field private static final jumpManager:Lcom/mergbw/android/jump/JumpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/mergbw/android/jump/JumpManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mergbw/android/jump/JumpManager;-><init>(Lcom/mergbw/android/jump/JumpManager$1;)V

    sput-object v0, Lcom/mergbw/android/jump/JumpManager$JumpManagerFactory;->jumpManager:Lcom/mergbw/android/jump/JumpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mergbw/android/jump/JumpManager;
    .locals 1

    .line 25
    sget-object v0, Lcom/mergbw/android/jump/JumpManager$JumpManagerFactory;->jumpManager:Lcom/mergbw/android/jump/JumpManager;

    return-object v0
.end method
