package com.google.android.gms.internal.ads;

import android.app.AppOpsManager$OnOpActiveChangedListener;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzawf implements AppOpsManager$OnOpActiveChangedListener {
    final /* synthetic */ zzawg zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzawf(zzawg zzawgVar) {
        Objects.requireNonNull(zzawgVar);
        this.zza = zzawgVar;
    }

    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        if (z) {
            zzawg zzawgVar = this.zza;
            zzawgVar.zze(System.currentTimeMillis());
            zzawgVar.zzh(true);
            return;
        }
        zzawg zzawgVar2 = this.zza;
        int i2 = (zzawgVar2.zzf() > 0L ? 1 : (zzawgVar2.zzf() == 0L ? 0 : -1));
        long currentTimeMillis = System.currentTimeMillis();
        if (i2 > 0 && currentTimeMillis >= zzawgVar2.zzf()) {
            zzawgVar2.zzg(currentTimeMillis - zzawgVar2.zzf());
        }
        zzawgVar2.zzh(false);
    }
}
