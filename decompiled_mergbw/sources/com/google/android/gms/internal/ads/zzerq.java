package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzeun;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzerq implements zzeun {
    private final Integer zza;

    public zzerq(Integer num) {
        this.zza = num;
    }

    @Override // com.google.android.gms.internal.ads.zzeun
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Integer num = this.zza;
        zzcuu zzcuuVar = (zzcuu) obj;
        if (num != null) {
            zzcuuVar.zza.putInt("dspct", Math.min(num.intValue(), 20));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeun
    public /* synthetic */ void zzb(Object obj) {
        zzeun.CC.$default$zzb(this, obj);
    }
}
