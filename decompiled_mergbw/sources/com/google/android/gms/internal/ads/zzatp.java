package com.google.android.gms.internal.ads;

import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import com.google.android.gms.common.util.zzb$$ExternalSyntheticApiModelOutline0;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzatp implements PackageManager$OnChecksumsReadyListener {
    final zzgpm zza = zzgpm.zze();

    public final void onChecksumsReady(List list) {
        int type;
        byte[] value;
        if (list == null) {
            this.zza.zza("");
            return;
        }
        try {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ApkChecksum m513m = zzb$$ExternalSyntheticApiModelOutline0.m513m(list.get(i));
                type = m513m.getType();
                if (type == 8) {
                    zzgpm zzgpmVar = this.zza;
                    zzgmk zzi = zzgmk.zzn().zzi();
                    value = m513m.getValue();
                    zzgpmVar.zza(zzi.zzj(value, 0, value.length));
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.zza.zza("");
    }
}
