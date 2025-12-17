package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzarp extends zzhih implements zzhjt {
    private static final zzarp zzg;
    private static volatile zzhka zzh;
    private int zza;
    private boolean zzb;
    private int zzc = 5000;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    static {
        zzarp zzarpVar = new zzarp();
        zzg = zzarpVar;
        zzhih.zzbu(zzarp.class, zzarpVar);
    }

    private zzarp() {
    }

    public static zzarp zzg() {
        return zzg;
    }

    public final boolean zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzc;
    }

    public final boolean zzc() {
        return this.zzd;
    }

    public final boolean zzd() {
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
                                    synchronized (zzarp.class) {
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
                    return new zzaro(null);
                }
                return new zzarp();
            }
            return zzbv(zzg, "\u0004\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001ဇ\u0000\u0003င\u0001\u0004ဇ\u0002\u0005ဇ\u0003\u0006ဇ\u0004", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final boolean zze() {
        return this.zzf;
    }
}
