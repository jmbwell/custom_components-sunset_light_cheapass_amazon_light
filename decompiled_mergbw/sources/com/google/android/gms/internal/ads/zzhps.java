package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public class zzhps {
    final LinkedHashMap zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhps(int i) {
        this.zza = zzhpu.zzc(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzhps zza(Object obj, zzhqg zzhqgVar) {
        zzhqf.zza(obj, "key");
        zzhqf.zza(zzhqgVar, "provider");
        this.zza.put(obj, zzhqgVar);
        return this;
    }
}
