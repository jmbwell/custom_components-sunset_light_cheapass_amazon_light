.class public final Lcom/google/android/gms/internal/ads/zzhan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgzc;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgzc;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgqe;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgyg;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzgyd;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhaj;->zza:Lcom/google/android/gms/internal/ads/zzhaj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhai;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhae;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzc;->zzd(Lcom/google/android/gms/internal/ads/zzgzb;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhan;->zzb:Lcom/google/android/gms/internal/ads/zzgzc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzham;->zza:Lcom/google/android/gms/internal/ads/zzham;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhai;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgqr;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzc;->zzd(Lcom/google/android/gms/internal/ads/zzgzb;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhan;->zzc:Lcom/google/android/gms/internal/ads/zzgzc;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgqr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhds;->zzb:Lcom/google/android/gms/internal/ads/zzhds;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdm;->zzh()Lcom/google/android/gms/internal/ads/zzhka;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxs;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhds;Lcom/google/android/gms/internal/ads/zzhka;)Lcom/google/android/gms/internal/ads/zzgqe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhan;->zzd:Lcom/google/android/gms/internal/ads/zzgqe;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhal;->zza:Lcom/google/android/gms/internal/ads/zzhal;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhan;->zze:Lcom/google/android/gms/internal/ads/zzgyg;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhak;->zza:Lcom/google/android/gms/internal/ads/zzhak;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhan;->zzf:Lcom/google/android/gms/internal/ads/zzgyd;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhan;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhan;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgxd;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhbs;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyo;->zza()Lcom/google/android/gms/internal/ads/zzgyo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhbs;->zza(Lcom/google/android/gms/internal/ads/zzgyo;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()Lcom/google/android/gms/internal/ads/zzgyl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhan;->zzb:Lcom/google/android/gms/internal/ads/zzgzc;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzb(Lcom/google/android/gms/internal/ads/zzgzc;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()Lcom/google/android/gms/internal/ads/zzgyl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhan;->zzc:Lcom/google/android/gms/internal/ads/zzgzc;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzb(Lcom/google/android/gms/internal/ads/zzgzc;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyk;->zza()Lcom/google/android/gms/internal/ads/zzgyk;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "HMAC_SHA256_128BITTAG"

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhbe;->zza:Lcom/google/android/gms/internal/ads/zzhar;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhao;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;-><init>([B)V

    const/16 v4, 0x20

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zza(I)Lcom/google/android/gms/internal/ads/zzhao;

    const/16 v5, 0x10

    .line 12
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(I)Lcom/google/android/gms/internal/ads/zzhao;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhaq;->zzd:Lcom/google/android/gms/internal/ads/zzhaq;

    .line 13
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhao;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhap;->zzc:Lcom/google/android/gms/internal/ads/zzhap;

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Lcom/google/android/gms/internal/ads/zzhap;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhao;->zze()Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v8, "HMAC_SHA256_128BITTAG_RAW"

    .line 16
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhao;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;-><init>([B)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zza(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(I)Lcom/google/android/gms/internal/ads/zzhao;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhaq;->zza:Lcom/google/android/gms/internal/ads/zzhaq;

    .line 19
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 20
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Lcom/google/android/gms/internal/ads/zzhap;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhao;->zze()Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v9, "HMAC_SHA256_256BITTAG"

    .line 22
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhao;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;-><init>([B)V

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zza(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 24
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 25
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 26
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Lcom/google/android/gms/internal/ads/zzhap;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhao;->zze()Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v7, "HMAC_SHA256_256BITTAG_RAW"

    .line 28
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhao;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;-><init>([B)V

    const/16 v7, 0x40

    .line 29
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zza(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 30
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 31
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhao;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzhap;->zze:Lcom/google/android/gms/internal/ads/zzhap;

    .line 32
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Lcom/google/android/gms/internal/ads/zzhap;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhao;->zze()Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v10, "HMAC_SHA512_128BITTAG"

    .line 34
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhao;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;-><init>([B)V

    .line 35
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zza(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 36
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 37
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 38
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Lcom/google/android/gms/internal/ads/zzhap;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhao;->zze()Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v5, "HMAC_SHA512_128BITTAG_RAW"

    .line 40
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhao;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;-><init>([B)V

    .line 41
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zza(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 43
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 44
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Lcom/google/android/gms/internal/ads/zzhap;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhao;->zze()Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v5, "HMAC_SHA512_256BITTAG"

    .line 46
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhao;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;-><init>([B)V

    .line 47
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zza(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 48
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 49
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 50
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Lcom/google/android/gms/internal/ads/zzhap;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhao;->zze()Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v4, "HMAC_SHA512_256BITTAG_RAW"

    .line 52
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMAC_SHA512_512BITTAG"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhbe;->zzb:Lcom/google/android/gms/internal/ads/zzhar;

    .line 53
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhao;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhao;-><init>([B)V

    .line 54
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zza(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 55
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhao;->zzb(I)Lcom/google/android/gms/internal/ads/zzhao;

    .line 56
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhao;->zzc(Lcom/google/android/gms/internal/ads/zzhaq;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 57
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhao;->zzd(Lcom/google/android/gms/internal/ads/zzhap;)Lcom/google/android/gms/internal/ads/zzhao;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhao;->zze()Lcom/google/android/gms/internal/ads/zzhar;

    move-result-object v2

    const-string v3, "HMAC_SHA512_512BITTAG_RAW"

    .line 59
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyk;->zzd(Ljava/util/Map;)V

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyf;->zza()Lcom/google/android/gms/internal/ads/zzgyf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhan;->zzf:Lcom/google/android/gms/internal/ads/zzgyd;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhar;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyf;->zzb(Lcom/google/android/gms/internal/ads/zzgyd;Ljava/lang/Class;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyh;->zza()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhan;->zze:Lcom/google/android/gms/internal/ads/zzgyg;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhar;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzb(Lcom/google/android/gms/internal/ads/zzgyg;Ljava/lang/Class;)V

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxk;->zza()Lcom/google/android/gms/internal/ads/zzgxk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhan;->zzd:Lcom/google/android/gms/internal/ads/zzgqe;

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgxk;->zzf(Lcom/google/android/gms/internal/ads/zzgqe;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
