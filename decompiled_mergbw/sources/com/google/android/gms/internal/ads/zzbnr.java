package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbmi;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbnr implements zzbmi, zzbnq {
    private final zzbnq zza;
    private final HashSet zzb = new HashSet();

    public zzbnr(zzbnq zzbnqVar) {
        this.zza = zzbnqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmi, com.google.android.gms.internal.ads.zzbmt
    public final void zza(String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbmi, com.google.android.gms.internal.ads.zzbmt
    public /* synthetic */ void zzb(String str, JSONObject jSONObject) {
        zzc(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbmi, com.google.android.gms.internal.ads.zzbmt
    public /* synthetic */ void zzc(String str, String str2) {
        zzbmi.CC.$default$zzc(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbmi, com.google.android.gms.internal.ads.zzbmh
    public /* synthetic */ void zzd(String str, JSONObject jSONObject) {
        zzbmi.CC.$default$zzd(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbmi, com.google.android.gms.internal.ads.zzbmh
    public /* synthetic */ void zze(String str, Map map) {
        zzbmi.CC.$default$zze(this, str, map);
    }

    public final void zzf() {
        HashSet hashSet = this.zzb;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry simpleEntry = (AbstractMap.SimpleEntry) it.next();
            String obj = ((zzbjl) simpleEntry.getValue()).toString();
            String.valueOf(obj);
            com.google.android.gms.ads.internal.util.zze.zza("Unregistering eventhandler: ".concat(String.valueOf(obj)));
            this.zza.zzn((String) simpleEntry.getKey(), (zzbjl) simpleEntry.getValue());
        }
        hashSet.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzbnq
    public final void zzm(String str, zzbjl zzbjlVar) {
        this.zza.zzm(str, zzbjlVar);
        this.zzb.add(new AbstractMap.SimpleEntry(str, zzbjlVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbnq
    public final void zzn(String str, zzbjl zzbjlVar) {
        this.zza.zzn(str, zzbjlVar);
        this.zzb.remove(new AbstractMap.SimpleEntry(str, zzbjlVar));
    }
}
