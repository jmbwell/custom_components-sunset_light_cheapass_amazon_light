package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import kotlin.time.DurationKt;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzre implements zzqj {
    /* JADX INFO: Access modifiers changed from: protected */
    public zzre(zzrd zzrdVar) {
    }

    protected static int zza(int i, int i2, int i3) {
        return zzgne.zza(((i * i2) * i3) / 1000000);
    }

    private static int zzc(int i) {
        int zzf = zzacy.zzf(i);
        zzghc.zzh(zzf != -2147483647);
        return zzf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final int zzb(int i, int i2, int i3, int i4, int i5, int i6) {
        int zzc;
        int i7 = 250000;
        if (i3 == 0) {
            int zza = zza(250000, i5, i4);
            int zza2 = zza(750000, i5, i4);
            String str = zzeo.zza;
            return Math.max(zza, Math.min(i * 4, zza2));
        } else if (i3 == 1) {
            return zzgne.zza((zzc(i2) * 50000000) / 1000000);
        } else {
            if (i2 == 5) {
                i7 = 500000;
            } else if (i2 == 8) {
                i7 = DurationKt.NANOS_IN_MILLIS;
                i2 = 8;
            }
            if (i6 != -1) {
                zzc = zzgmx.zzb(i6, 8, RoundingMode.CEILING);
            } else {
                zzc = zzc(i2);
            }
            return zzgne.zza((i7 * zzc) / 1000000);
        }
    }
}
