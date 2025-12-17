package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzeun;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzeni implements zzeun {
    private final Bundle zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeni(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzeun
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = this.zza;
        zzcuu zzcuuVar = (zzcuu) obj;
        if (bundle.isEmpty()) {
            return;
        }
        zzcuuVar.zza.putBundle("installed_adapter_data", bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzeun
    public /* synthetic */ void zzb(Object obj) {
        zzeun.CC.$default$zzb(this, obj);
    }
}
