.class final synthetic Lcom/google/android/gms/internal/ads/zzfvg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfvk;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:[B


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfvk;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:Lcom/google/android/gms/internal/ads/zzfvk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzc:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string p1, "application/x-protobuf"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zze:[B

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zze:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:Lcom/google/android/gms/internal/ads/zzfvk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzc:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfvk;->zzc(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V

    return-void
.end method
