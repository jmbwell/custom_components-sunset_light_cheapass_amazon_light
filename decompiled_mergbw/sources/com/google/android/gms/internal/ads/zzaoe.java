package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzaoe implements zzadv {
    private final zzaob zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;

    public zzaoe(zzaob zzaobVar, int i, long j, long j2) {
        this.zza = zzaobVar;
        this.zzb = i;
        this.zzc = j;
        long j3 = (j2 - j) / zzaobVar.zzd;
        this.zzd = j3;
        this.zze = zzd(j3);
    }

    private final long zzd(long j) {
        return zzeo.zzt(j * this.zzb, 1000000L, this.zza.zzc, RoundingMode.DOWN);
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final long zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final zzadt zzc(long j) {
        zzaob zzaobVar = this.zza;
        String str = zzeo.zza;
        long j2 = this.zzd - 1;
        long max = Math.max(0L, Math.min((zzaobVar.zzc * j) / (this.zzb * 1000000), j2));
        long j3 = zzaobVar.zzd;
        long zzd = zzd(max);
        long j4 = this.zzc;
        zzadw zzadwVar = new zzadw(zzd, (max * j3) + j4);
        if (zzd >= j || max == j2) {
            return new zzadt(zzadwVar, zzadwVar);
        }
        long j5 = max + 1;
        return new zzadt(zzadwVar, new zzadw(zzd(j5), j4 + (j3 * j5)));
    }
}
