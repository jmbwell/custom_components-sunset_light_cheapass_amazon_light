package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzdpw {
    private final zzdsm zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdpw(zzdsm zzdsmVar) {
        this.zza = zzdsmVar;
    }

    public final boolean zza(zzfrv zzfrvVar) {
        if (!zzfrvVar.zzj()) {
            zzdsl zza = this.zza.zza();
            zza.zzc("action", "aq_ad_kill");
            zza.zzc("gqi", zzfrvVar.zza());
            zza.zzc("aq_ad_duration", String.valueOf(zzfrvVar.zzb()));
            zza.zzc("aq_ad_bounce_cnt", String.valueOf(zzfrvVar.zzc()));
            zza.zzc("aq_time_away", String.valueOf(zzfrvVar.zzg()));
            zza.zzc("aq_is_os_kill", String.valueOf(zzfrvVar.zze()));
            boolean equals = zza.zze().equals(com.google.android.gms.ads.internal.util.client.zzt.SUCCESS);
            Boolean.valueOf(equals).getClass();
            return equals;
        }
        zzdsl zza2 = this.zza.zza();
        zza2.zzc("action", "aq_ad_closed");
        zza2.zzc("gqi", zzfrvVar.zza());
        zza2.zzc("aq_ad_duration", String.valueOf(zzfrvVar.zzb()));
        zza2.zzc("aq_ad_bounce_cnt", String.valueOf(zzfrvVar.zzc()));
        zza2.zzc("aq_time_away", String.valueOf(zzfrvVar.zzg()));
        boolean equals2 = zza2.zze().equals(com.google.android.gms.ads.internal.util.client.zzt.SUCCESS);
        Boolean.valueOf(equals2).getClass();
        return equals2;
    }
}
