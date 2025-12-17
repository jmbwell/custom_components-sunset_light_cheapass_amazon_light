package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzblf implements zzgob {
    final /* synthetic */ zzbkx zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzblf(zzblj zzbljVar, zzbkx zzbkxVar) {
        this.zza = zzbkxVar;
        Objects.requireNonNull(zzbljVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgob
    public final /* bridge */ /* synthetic */ ListenableFuture zza(Object obj) throws Exception {
        zzbzm zzbzmVar = new zzbzm();
        ((zzbld) obj).zze(this.zza, new zzble(this, zzbzmVar));
        return zzbzmVar;
    }
}
