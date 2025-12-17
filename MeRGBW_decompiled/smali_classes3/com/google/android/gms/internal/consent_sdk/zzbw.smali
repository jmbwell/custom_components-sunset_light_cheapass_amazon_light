.class public final Lcom/google/android/gms/internal/consent_sdk/zzbw;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzdr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzbv;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/consent_sdk/zzbv;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdr;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzb()Landroid/os/Handler;

    move-result-object v1

    .line 1
    move-object v2, v1

    check-cast v2, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzcc;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzcc;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzcb;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbv;

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/consent_sdk/zzcb;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbv;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbx;Landroid/os/Handler;Lcom/google/android/gms/internal/consent_sdk/zzcb;)V

    return-object v3
.end method
