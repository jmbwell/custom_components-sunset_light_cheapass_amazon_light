package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzln;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzxm implements Comparable {
    private final boolean zza;
    private final boolean zzb;

    public zzxm(zzu zzuVar, int i) {
        this.zza = 1 == (zzuVar.zze & 1);
        this.zzb = zzln.CC.zzZ(i, false);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzxm zzxmVar) {
        return zzgjp.zzg().zzd(this.zzb, zzxmVar.zzb).zzd(this.zza, zzxmVar.zza).zze();
    }
}
