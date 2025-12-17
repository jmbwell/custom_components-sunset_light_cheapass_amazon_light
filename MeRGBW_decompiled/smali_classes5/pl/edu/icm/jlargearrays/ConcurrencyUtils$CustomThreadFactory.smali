.class Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomThreadFactory;
.super Ljava/lang/Object;
.source "ConcurrencyUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/edu/icm/jlargearrays/ConcurrencyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomThreadFactory"
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final handler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomThreadFactory;->DEFAULT_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomThreadFactory;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 88
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomThreadFactory;->DEFAULT_FACTORY:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomThreadFactory;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method
