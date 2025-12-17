package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbby extends zzbbz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbby(int i, String str, String str2, String str3) {
        super(1, str, str2, str3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final /* bridge */ /* synthetic */ Object zza(Bundle bundle) {
        if (bundle.containsKey("com.google.android.gms.ads.flag.".concat(zze()))) {
            return bundle.getString("com.google.android.gms.ads.flag.".concat(zze()));
        }
        return (String) zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final /* bridge */ /* synthetic */ void zzb(SharedPreferences.Editor editor, Object obj) {
        editor.putString(zze(), (String) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final /* bridge */ /* synthetic */ Object zzc(JSONObject jSONObject) {
        return jSONObject.optString(zze(), (String) zzf());
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final /* bridge */ /* synthetic */ Object zzd(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(zze(), (String) zzf());
    }
}
