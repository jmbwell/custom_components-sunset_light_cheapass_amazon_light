package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgoc extends zzgoe {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgoc(zzgjv zzgjvVar, boolean z) {
        super(zzgjvVar, z);
        zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgoe
    public final /* bridge */ /* synthetic */ Object zzD(List list) {
        ArrayList zzb = zzgkp.zzb(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzgod zzgodVar = (zzgod) it.next();
            zzb.add(zzgodVar != null ? zzgodVar.zza : null);
        }
        return Collections.unmodifiableList(zzb);
    }
}
