package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfwm extends zzhih implements zzhjt {
    private static final zzfwm zze;
    private static volatile zzhka zzf;
    private int zza;
    private int zzb = 0;
    private Object zzc;
    private int zzd;

    static {
        zzfwm zzfwmVar = new zzfwm();
        zze = zzfwmVar;
        zzhih.zzbu(zzfwm.class, zzfwmVar);
    }

    private zzfwm() {
    }

    public static zzfwl zzc() {
        return (zzfwl) zze.zzbn();
    }

    public static zzfwm zzd() {
        return zze;
    }

    public final zzaxw zza() {
        return this.zzb == 1 ? (zzaxw) this.zzc : zzaxw.zzj();
    }

    public final zzaxq zzb() {
        zzaxq zzb = zzaxq.zzb(this.zzd);
        return zzb == null ? zzaxq.UNSUPPORTED : zzb;
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
                                zzhka zzhkaVar = zzf;
                                if (zzhkaVar == null) {
                                    synchronized (zzfwm.class) {
                                        zzhkaVar = zzf;
                                        if (zzhkaVar == null) {
                                            zzhkaVar = new zzhic(zze);
                                            zzf = zzhkaVar;
                                        }
                                    }
                                }
                                return zzhkaVar;
                            }
                            throw null;
                        }
                        return zze;
                    }
                    return new zzfwl(null);
                }
                return new zzfwm();
            }
            return zzbv(zze, "\u0004\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003᠌\u0000", new Object[]{"zzc", "zzb", "zza", zzaxw.class, zzaxu.class, "zzd", zzaxq.zzc()});
        }
        return (byte) 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zze(zzaxw zzaxwVar) {
        zzaxwVar.getClass();
        this.zzc = zzaxwVar;
        this.zzb = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzg(zzaxq zzaxqVar) {
        this.zzd = zzaxqVar.zza();
        this.zza |= 1;
    }
}
