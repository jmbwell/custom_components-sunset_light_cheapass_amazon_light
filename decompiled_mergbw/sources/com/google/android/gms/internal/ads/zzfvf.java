package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.concurrent.ExecutorService;
import org.apache.commons.math3.geometry.VectorFormat;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfvf implements zzhpx {
    private final zzhqg zza;
    private final zzhqg zzb;

    private zzfvf(zzhqg zzhqgVar, zzhqg zzhqgVar2) {
        this.zza = zzhqgVar;
        this.zzb = zzhqgVar2;
    }

    public static zzfvf zza(zzhqg zzhqgVar, zzhqg zzhqgVar2) {
        return new zzfvf(zzhqgVar, zzhqgVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzhqm, com.google.android.gms.internal.ads.zzhql
    public final /* bridge */ /* synthetic */ Object zzb() {
        String str = Build.VERSION.RELEASE;
        String str2 = Build.MODEL;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30 + String.valueOf(str2).length() + 1);
        sb.append("Mozilla/5.0 (Linux; Android ");
        sb.append(str);
        sb.append(VectorFormat.DEFAULT_SEPARATOR);
        sb.append(str2);
        sb.append(")");
        return new zzfvk((ExecutorService) this.zza.zzb(), sb.toString(), ((zzfui) this.zzb.zzb()).zzl());
    }
}
