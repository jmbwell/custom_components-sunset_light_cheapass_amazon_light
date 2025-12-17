package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzbax extends zzbzm {
    final /* synthetic */ zzbbd zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbax(zzbbd zzbbdVar) {
        Objects.requireNonNull(zzbbdVar);
        this.zza = zzbbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzm, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        this.zza.zzb();
        return super.cancel(z);
    }
}
