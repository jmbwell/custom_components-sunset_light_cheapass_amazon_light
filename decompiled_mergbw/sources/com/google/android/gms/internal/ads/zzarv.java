package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzarv extends zzhih implements zzhjt {
    private static final zzarv zzg;
    private static volatile zzhka zzh;
    private int zza;
    private boolean zzc;
    private boolean zzd;
    private long zzb = 100;
    private long zze = 300;
    private long zzf = 1000;

    static {
        zzarv zzarvVar = new zzarv();
        zzg = zzarvVar;
        zzhih.zzbu(zzarv.class, zzarvVar);
    }

    private zzarv() {
    }

    public static zzarv zza() {
        return zzg;
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
                                    synchronized (zzarv.class) {
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
                    return new zzaru(null);
                }
                return new zzarv();
            }
            return zzbv(zzg, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005ဂ\u0004", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
