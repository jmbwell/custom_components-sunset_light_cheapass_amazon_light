package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzeun;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzemh implements zzeun {
    private final boolean zza;

    public zzemh(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzeun
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        ((zzcuu) obj).zza.putString("adid_p", true != this.zza ? "0" : "1");
    }

    @Override // com.google.android.gms.internal.ads.zzeun
    public /* synthetic */ void zzb(Object obj) {
        zzeun.CC.$default$zzb(this, obj);
    }
}
