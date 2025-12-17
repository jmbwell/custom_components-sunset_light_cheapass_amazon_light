package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzaxw extends zzhih implements zzhjt {
    private static final zzaxw zzg;
    private static volatile zzhka zzh;
    private int zza;
    private String zzb = "";
    private String zzc = "";
    private long zzd;
    private long zze;
    private long zzf;

    static {
        zzaxw zzaxwVar = new zzaxw();
        zzg = zzaxwVar;
        zzhih.zzbu(zzaxw.class, zzaxwVar);
    }

    private zzaxw() {
    }

    public static zzaxw zzg(zzhhb zzhhbVar) throws zzhiw {
        return (zzaxw) zzhih.zzbS(zzg, zzhhbVar);
    }

    public static zzaxw zzh(zzhhb zzhhbVar, zzhhr zzhhrVar) throws zzhiw {
        return (zzaxw) zzhih.zzbT(zzg, zzhhbVar, zzhhrVar);
    }

    public static zzaxv zzi() {
        return (zzaxv) zzg.zzbn();
    }

    public static zzaxw zzj() {
        return zzg;
    }

    public final String zza() {
        return this.zzb;
    }

    public final String zzb() {
        return this.zzc;
    }

    public final long zzc() {
        return this.zzd;
    }

    public final long zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzhih
    protected final Object zzdh(zzhig zzhigVar, Object obj, Object obj2) {
        int ordinal = zzhigVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            if (ordinal == 6) {
                                zzhka zzhkaVar = zzh;
                                if (zzhkaVar == null) {
                                    synchronized (zzaxw.class) {
                                        zzhkaVar = zzh;
                                        if (zzhkaVar == null) {
                                            zzhkaVar = new zzhic(zzg);
                                            zzh = zzhkaVar;
                                        }
                                    }
                                }
                                return zzhkaVar;
                            }
                            throw null;
                        }
                        return zzg;
                    }
                    return new zzaxv(null);
                }
                return new zzaxw();
            }
            return zzbv(zzg, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final long zze() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzk(String str) {
        str.getClass();
        this.zza |= 1;
        this.zzb = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzl(String str) {
        str.getClass();
        this.zza |= 2;
        this.zzc = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm(long j) {
        this.zza |= 4;
        this.zzd = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzn(long j) {
        this.zza |= 8;
        this.zze = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(long j) {
        this.zza |= 16;
        this.zzf = j;
    }
}
