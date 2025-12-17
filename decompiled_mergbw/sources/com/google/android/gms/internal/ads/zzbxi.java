package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbxi {
    private final com.google.android.gms.ads.internal.util.zzg zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbxi(Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzbxr zzbxrVar) {
        this.zza = zzgVar;
    }

    public final void zza(int i, long j) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzaJ)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.util.zzg zzgVar = this.zza;
        if (j - zzgVar.zzF() < 0) {
            com.google.android.gms.ads.internal.util.zze.zza("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzaK)).booleanValue()) {
            zzgVar.zzE(-1);
            zzgVar.zzG(j);
            return;
        }
        zzgVar.zzE(i);
        zzgVar.zzG(j);
    }
}
