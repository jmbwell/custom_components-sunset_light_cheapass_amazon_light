package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzglf extends zzgid {
    final transient zzght zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzglf(Map map, zzght zzghtVar) {
        super(map);
        this.zza = zzghtVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgid, com.google.android.gms.internal.ads.zzgiu
    public final /* bridge */ /* synthetic */ Collection zzc() {
        return (List) this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgiu, com.google.android.gms.internal.ads.zzgix
    final Set zzh() {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgiu, com.google.android.gms.internal.ads.zzgix
    final Map zzl() {
        return zzm();
    }
}
