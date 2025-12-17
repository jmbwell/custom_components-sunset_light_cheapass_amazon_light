package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public class zzbds {
    private final String zza;
    private final Object zzb;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbds(String str, Object obj, int i) {
        this.zza = str;
        this.zzb = obj;
        this.zzc = i;
    }

    public static zzbds zza(String str, boolean z) {
        return new zzbds(str, Boolean.valueOf(z), 1);
    }

    public static zzbds zzb(String str, long j) {
        return new zzbds(str, Long.valueOf(j), 2);
    }

    public static zzbds zzc(String str, double d) {
        return new zzbds(str, Double.valueOf(d), 3);
    }

    public static zzbds zzd(String str, String str2) {
        return new zzbds("gad:dynamite_module:experiment_id", "", 4);
    }

    public final Object zze() {
        zzbey zza = zzbfa.zza();
        if (zza == null) {
            if (zzbfa.zzb() != null) {
                zzbfa.zzb().zza();
            }
            return this.zzb;
        }
        int i = this.zzc - 1;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return zza.zzd(this.zza, (String) this.zzb);
                }
                return zza.zzc(this.zza, ((Double) this.zzb).doubleValue());
            }
            return zza.zzb(this.zza, ((Long) this.zzb).longValue());
        }
        return zza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
    }
}
