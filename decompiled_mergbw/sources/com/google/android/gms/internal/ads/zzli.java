package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzli extends zzud {
    private final zzbd zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzli(zzlj zzljVar, zzbe zzbeVar) {
        super(zzbeVar);
        Objects.requireNonNull(zzljVar);
        this.zzc = new zzbd();
    }

    @Override // com.google.android.gms.internal.ads.zzud, com.google.android.gms.internal.ads.zzbe
    public final zzbc zzd(int i, zzbc zzbcVar, boolean z) {
        zzbe zzbeVar = this.zzb;
        zzbc zzd = zzbeVar.zzd(i, zzbcVar, z);
        if (zzbeVar.zzb(zzd.zzc, this.zzc, 0L).zzb()) {
            Object obj = zzbcVar.zza;
            Object obj2 = zzbcVar.zzb;
            int i2 = zzbcVar.zzc;
            long j = zzbcVar.zzd;
            long j2 = zzbcVar.zze;
            zzd.zza(obj, obj2, i2, j, 0L, zzb.zza, true);
        } else {
            zzd.zzf = true;
        }
        return zzd;
    }
}
