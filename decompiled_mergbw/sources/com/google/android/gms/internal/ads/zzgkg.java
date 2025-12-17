package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzgkg extends zzgic {
    final /* synthetic */ Iterator zza;
    final /* synthetic */ zzghd zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgkg(Iterator it, zzghd zzghdVar) {
        this.zza = it;
        this.zzb = zzghdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgic
    protected final Object zza() {
        zzghd zzghdVar;
        Object next;
        do {
            Iterator it = this.zza;
            if (it.hasNext()) {
                zzghdVar = this.zzb;
                next = it.next();
            } else {
                zzb();
                return null;
            }
        } while (!zzghdVar.zza(next));
        return next;
    }
}
