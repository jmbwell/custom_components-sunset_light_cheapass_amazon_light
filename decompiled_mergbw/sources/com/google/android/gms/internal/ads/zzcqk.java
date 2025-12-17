package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzcqk {
    private final zzcyt zza;
    private final zzday zzb;

    public zzcqk(zzcyt zzcytVar, zzday zzdayVar) {
        this.zza = zzcytVar;
        this.zzb = zzdayVar;
    }

    public final zzcyt zza() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzddr zzb() {
        zzday zzdayVar = this.zzb;
        return zzdayVar != null ? new zzddr(zzdayVar, zzbzh.zzg) : new zzddr(new zzcqj(this), zzbzh.zzg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzday zzc() {
        return this.zzb;
    }
}
