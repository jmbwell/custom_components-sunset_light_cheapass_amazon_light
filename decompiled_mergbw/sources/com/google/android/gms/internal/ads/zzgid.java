package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
class zzgid extends zzgiu implements zzgkk {
    /* JADX INFO: Access modifiers changed from: protected */
    public zzgid(Map map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgiu
    public final Collection zza(Collection collection) {
        return Collections.unmodifiableList((List) collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgiu
    public final Collection zzb(Object obj, Collection collection) {
        return zzg(obj, (List) collection, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgiu
    public /* bridge */ /* synthetic */ Collection zzc() {
        throw null;
    }
}
