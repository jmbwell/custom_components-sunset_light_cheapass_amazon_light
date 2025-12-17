package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzblg implements Runnable {
    final /* synthetic */ zzblj zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzblg(zzblj zzbljVar) {
        Objects.requireNonNull(zzbljVar);
        this.zza = zzbljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb();
    }
}
