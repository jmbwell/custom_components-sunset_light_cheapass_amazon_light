package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbzs implements zzgoq {
    final /* synthetic */ zzbzq zza;
    final /* synthetic */ zzbzo zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbzs(zzbzt zzbztVar, zzbzq zzbzqVar, zzbzo zzbzoVar) {
        this.zza = zzbzqVar;
        this.zzb = zzbzoVar;
        Objects.requireNonNull(zzbztVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgoq
    public final void zza(Throwable th) {
        this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgoq
    public final void zzb(Object obj) {
        this.zza.zza(obj);
    }
}
