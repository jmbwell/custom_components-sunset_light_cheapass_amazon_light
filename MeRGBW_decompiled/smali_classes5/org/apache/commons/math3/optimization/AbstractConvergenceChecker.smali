.class public abstract Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;
.super Ljava/lang/Object;
.source "AbstractConvergenceChecker.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/ConvergenceChecker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
        "TPAIR;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_THRESHOLD:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_RELATIVE_THRESHOLD:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->DEFAULT_RELATIVE_THRESHOLD:D

    .line 46
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->DEFAULT_ABSOLUTE_THRESHOLD:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-wide v0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->DEFAULT_RELATIVE_THRESHOLD:D

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->relativeThreshold:D

    .line 67
    sget-wide v0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->DEFAULT_ABSOLUTE_THRESHOLD:D

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->absoluteThreshold:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->relativeThreshold:D

    .line 79
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->absoluteThreshold:D

    return-void
.end method


# virtual methods
.method public abstract converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITPAIR;TPAIR;)Z"
        }
    .end annotation
.end method

.method public getAbsoluteThreshold()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->absoluteThreshold:D

    return-wide v0
.end method

.method public getRelativeThreshold()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->relativeThreshold:D

    return-wide v0
.end method
