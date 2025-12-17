package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgnr extends zzgns {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgnr(ListenableFuture listenableFuture, zzggr zzggrVar) {
        super(listenableFuture, zzggrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgns
    final void zze(Object obj) {
        zza(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgns
    final /* synthetic */ Object zzf(Object obj, Object obj2) throws Exception {
        return ((zzggr) obj).apply(obj2);
    }
}
