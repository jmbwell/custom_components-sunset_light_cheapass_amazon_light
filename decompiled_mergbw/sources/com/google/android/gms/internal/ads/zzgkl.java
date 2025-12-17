package com.google.android.gms.internal.ads;

import java.util.ListIterator;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzgkl extends zzgmc {
    final /* synthetic */ zzgkm zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgkl(zzgkm zzgkmVar, ListIterator listIterator) {
        super(listIterator);
        Objects.requireNonNull(zzgkmVar);
        this.zza = zzgkmVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgmb
    public final Object zza(Object obj) {
        return this.zza.zzb.apply(obj);
    }
}
