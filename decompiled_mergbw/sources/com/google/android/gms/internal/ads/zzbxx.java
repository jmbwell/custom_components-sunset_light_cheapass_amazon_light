package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbxx {
    private final Map zza = new HashMap();
    private final List zzb = new ArrayList();
    private final Context zzc;
    private final zzbxk zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbxx(Context context, zzbxk zzbxkVar) {
        this.zzc = context;
        this.zzd = zzbxkVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zza(zzbxv zzbxvVar) {
        this.zzb.add(zzbxvVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzb(String str) {
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
        zzbxu zzbxuVar = new zzbxu(this, str);
        map.put(str, zzbxuVar);
        sharedPreferences.registerOnSharedPreferenceChangeListener(zzbxuVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            this.zzd.zzb();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ List zzd() {
        return this.zzb;
    }
}
