package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzglc extends zzglb {
    final /* synthetic */ zzgld zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzglc(zzgld zzgldVar, int i) {
        Objects.requireNonNull(zzgldVar);
        this.zza = zzgldVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglb
    public final zzgkk zza() {
        return new zzglf(this.zza.zza(), new zzgla(2));
    }
}
