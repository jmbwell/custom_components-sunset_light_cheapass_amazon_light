.class public final Lcom/google/android/gms/internal/ads/zzgsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgzc;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgyd;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgyg;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgqe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgso;->zza:Lcom/google/android/gms/internal/ads/zzgso;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgsn;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgpx;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzc;->zzd(Lcom/google/android/gms/internal/ads/zzgzb;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsr;->zzb:Lcom/google/android/gms/internal/ads/zzgzc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsq;->zza:Lcom/google/android/gms/internal/ads/zzgsq;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsr;->zzc:Lcom/google/android/gms/internal/ads/zzgyd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsp;->zza:Lcom/google/android/gms/internal/ads/zzgsp;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsr;->zzd:Lcom/google/android/gms/internal/ads/zzgyg;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgpx;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhds;->zzb:Lcom/google/android/gms/internal/ads/zzhds;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdd;->zze()Lcom/google/android/gms/internal/ads/zzhka;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxs;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhds;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzgqe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsr;->zze:Lcom/google/android/gms/internal/ads/zzgqe;

    return-void
.end method

.method public static zza(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgxd;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgvu;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyo;->zza()Lcom/google/android/gms/internal/ads/zzgyo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvu;->zza(Lcom/google/android/gms/internal/ads/zzgyo;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyk;->zza()Lcom/google/android/gms/internal/ads/zzgyk;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgss;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgss;-><init>([B)V

    const/16 v4, 0x10

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgss;->zza(I)Lcom/google/android/gms/internal/ads/zzgss;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgst;->zza:Lcom/google/android/gms/internal/ads/zzgst;

    .line 8
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgss;->zzb(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgss;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgss;->zzc()Lcom/google/android/gms/internal/ads/zzgsu;

    move-result-object v2

    const-string v6, "AES128_GCM_SIV"

    .line 10
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgss;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgss;-><init>([B)V

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgss;->zza(I)Lcom/google/android/gms/internal/ads/zzgss;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgst;->zzc:Lcom/google/android/gms/internal/ads/zzgst;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgss;->zzb(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgss;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgss;->zzc()Lcom/google/android/gms/internal/ads/zzgsu;

    move-result-object v2

    const-string v6, "AES128_GCM_SIV_RAW"

    .line 14
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgss;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgss;-><init>([B)V

    const/16 v6, 0x20

    .line 15
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgss;->zza(I)Lcom/google/android/gms/internal/ads/zzgss;

    .line 16
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgss;->zzb(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgss;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgss;->zzc()Lcom/google/android/gms/internal/ads/zzgsu;

    move-result-object v2

    const-string v5, "AES256_GCM_SIV"

    .line 18
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgss;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgss;-><init>([B)V

    .line 19
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgss;->zza(I)Lcom/google/android/gms/internal/ads/zzgss;

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgss;->zzb(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgss;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgss;->zzc()Lcom/google/android/gms/internal/ads/zzgsu;

    move-result-object v2

    const-string v3, "AES256_GCM_SIV_RAW"

    .line 22
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;->zzd(Ljava/util/Map;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyh;->zza()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsr;->zzd:Lcom/google/android/gms/internal/ads/zzgyg;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgsu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzb(Lcom/google/android/gms/internal/ads/zzgyg;Ljava/lang/Class;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyf;->zza()Lcom/google/android/gms/internal/ads/zzgyf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsr;->zzc:Lcom/google/android/gms/internal/ads/zzgyd;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgsu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyf;->zzb(Lcom/google/android/gms/internal/ads/zzgyd;Ljava/lang/Class;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()Lcom/google/android/gms/internal/ads/zzgyl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsr;->zzb:Lcom/google/android/gms/internal/ads/zzgzc;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzb(Lcom/google/android/gms/internal/ads/zzgzc;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxk;->zza()Lcom/google/android/gms/internal/ads/zzgxk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsr;->zze:Lcom/google/android/gms/internal/ads/zzgqe;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgxk;->zzb(Lcom/google/android/gms/internal/ads/zzgqe;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES GCM SIV is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
