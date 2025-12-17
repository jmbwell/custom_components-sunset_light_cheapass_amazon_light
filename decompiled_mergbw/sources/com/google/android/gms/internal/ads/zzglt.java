package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzglt extends zzgic {
    final Iterator zza;
    final /* synthetic */ Set zzb;
    final /* synthetic */ Set zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzglt(zzglu zzgluVar, Set set, Set set2) {
        this.zzb = set;
        this.zzc = set2;
        Objects.requireNonNull(zzgluVar);
        this.zza = set.iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzgic
    protected final Object zza() {
        Set set;
        Object next;
        do {
            Iterator it = this.zza;
            if (it.hasNext()) {
                set = this.zzc;
                next = it.next();
            } else {
                zzb();
                return null;
            }
        } while (!set.contains(next));
        return next;
    }
}
