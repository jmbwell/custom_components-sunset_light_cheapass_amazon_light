package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzdhq {
    private final JSONObject zza;
    private final zzdnx zzb;
    private final com.google.android.gms.ads.internal.zzb zzc;
    private final zzbxf zzd;

    public zzdhq(JSONObject jSONObject, zzdnx zzdnxVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbxf zzbxfVar) {
        this.zza = jSONObject;
        this.zzb = zzdnxVar;
        this.zzc = zzbVar;
        this.zzd = zzbxfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.ads.internal.zzb zza() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzbxf zzb() {
        return this.zzd;
    }

    public final JSONObject zzc() {
        return this.zza;
    }

    public final zzdnx zzd() {
        return this.zzb;
    }
}
