.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzbo;

.field public final synthetic zzb:Lcom/google/android/gms/internal/consent_sdk/zzbc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbo;Lcom/google/android/gms/internal/consent_sdk/zzbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbo;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbo;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbo;Lcom/google/android/gms/internal/consent_sdk/zzbc;)V

    return-void
.end method
