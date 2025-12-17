package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.ads.zzbci;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbz {
    private final Map zza = new HashMap();
    private final List zzb = new ArrayList();
    private final Context zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbz(Context context) {
        this.zzc = context;
    }

    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzlj)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            final Map zzz = zzs.zzz((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzlo));
            for (String str : zzz.keySet()) {
                zzc(str);
            }
            zzb(new zzbx() { // from class: com.google.android.gms.ads.internal.util.zzby
                @Override // com.google.android.gms.ads.internal.util.zzbx
                public final /* synthetic */ void zza(SharedPreferences sharedPreferences, String str2, String str3) {
                    Map map = zzz;
                    if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str3)) {
                        com.google.android.gms.ads.internal.zzt.zzh().zzo().zzy(false);
                    }
                }
            });
        }
    }

    final synchronized void zzb(zzbx zzbxVar) {
        this.zzb.add(zzbxVar);
    }

    final synchronized void zzc(String str) {
        SharedPreferences sharedPreferences;
        Map map = this.zza;
        if (map.containsKey(str)) {
            return;
        }
        if (Objects.equals(str, "__default__")) {
            sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.zzc);
        } else {
            sharedPreferences = this.zzc.getSharedPreferences(str, 0);
        }
        zzbw zzbwVar = new zzbw(this, str);
        map.put(str, zzbwVar);
        sharedPreferences.registerOnSharedPreferenceChangeListener(zzbwVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ List zzd() {
        return this.zzb;
    }
}
