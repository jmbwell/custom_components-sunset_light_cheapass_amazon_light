package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgcx {
    private final Set zza;
    private final zzgdn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcx(zzgdn zzgdnVar, Set set) {
        this.zza = set;
        this.zzb = zzgdnVar;
    }

    public final void zza(List list) {
        this.zzb.zza(list);
    }

    public final Map zzb() {
        HashMap hashMap = new HashMap();
        for (zzgcz zzgczVar : this.zza) {
            zzgczVar.zzb(hashMap);
        }
        return hashMap;
    }

    public final Map zzc(Context context, View view) {
        HashMap hashMap = new HashMap();
        for (zzgcz zzgczVar : this.zza) {
            zzgczVar.zzc(hashMap, context, view);
        }
        return hashMap;
    }

    public final Map zzd() {
        HashMap hashMap = new HashMap();
        for (zzgcz zzgczVar : this.zza) {
            zzgczVar.zzd(hashMap);
        }
        return hashMap;
    }
}
