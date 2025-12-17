package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzeun;
import com.google.common.util.concurrent.ListenableFuture;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzewh implements zzeup {
    private final JSONObject zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzewh(Context context) {
        this.zza = zzbur.zzb(context, VersionInfoParcel.forPackage());
    }

    @Override // com.google.android.gms.internal.ads.zzeup
    public final ListenableFuture zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzmL)).booleanValue()) {
            return zzgot.zza(zzewf.zza);
        }
        return zzgot.zza(new zzeun() { // from class: com.google.android.gms.internal.ads.zzewg
            @Override // com.google.android.gms.internal.ads.zzeun
            public final /* synthetic */ void zza(Object obj) {
                zzewh.this.zzc((JSONObject) obj);
            }

            @Override // com.google.android.gms.internal.ads.zzeun
            public /* synthetic */ void zzb(Object obj) {
                zzeun.CC.$default$zzb(this, obj);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeup
    public final int zzb() {
        return 46;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.zza);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed putting version constants.");
        }
    }
}
