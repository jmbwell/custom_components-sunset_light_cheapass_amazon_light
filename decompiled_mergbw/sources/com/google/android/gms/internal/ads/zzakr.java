package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import io.reactivex.annotations.SchedulerSupport;
import java.util.regex.Pattern;
import kotlinx.coroutines.DebugKt;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzakr {
    private static final Pattern zzd = Pattern.compile("\\s+");
    private static final zzgke zze = zzgke.zzj(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, SchedulerSupport.NONE);
    private static final zzgke zzf = zzgke.zzk("dot", "sesame", "circle");
    private static final zzgke zzg = zzgke.zzj("filled", "open");
    private static final zzgke zzh = zzgke.zzk("after", "before", "outside");
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzakr(int i, int i2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzakr zza(String str) {
        boolean z;
        if (str == null) {
            return null;
        }
        String zza = zzggj.zza(str.trim());
        if (zza.isEmpty()) {
            return null;
        }
        zzgke zzp = zzgke.zzp(TextUtils.split(zza, zzd));
        String str2 = (String) zzgkf.zzb(zzglz.zza(zzh, zzp), "outside");
        int hashCode = str2.hashCode();
        int i = -1;
        int i2 = 0;
        if (hashCode != -1106037339) {
            if (hashCode == 92734940 && str2.equals("after")) {
                z = false;
            }
            z = true;
        } else {
            if (str2.equals("outside")) {
                z = true;
            }
            z = true;
        }
        int i3 = z ? !z ? 1 : -2 : 2;
        zzgly zza2 = zzglz.zza(zze, zzp);
        if (!zza2.isEmpty()) {
            String str3 = (String) zza2.iterator().next();
            if (str3.hashCode() == 3387192 && str3.equals(SchedulerSupport.NONE)) {
                i = 0;
            }
        } else {
            zzgly zza3 = zzglz.zza(zzg, zzp);
            zzgly zza4 = zzglz.zza(zzf, zzp);
            if (!zza3.isEmpty() || !zza4.isEmpty()) {
                String str4 = (String) zzgkf.zzb(zza3, "filled");
                int i4 = (str4.hashCode() == 3417674 && str4.equals("open")) ? 2 : 1;
                String str5 = (String) zzgkf.zzb(zza4, "circle");
                int hashCode2 = str5.hashCode();
                if (hashCode2 != -905816648) {
                    if (hashCode2 == 99657 && str5.equals("dot")) {
                        i = 0;
                    }
                } else if (str5.equals("sesame")) {
                    i = 1;
                }
                if (i == 0) {
                    i = 2;
                } else if (i != 1) {
                    i2 = i4;
                    i = 1;
                } else {
                    i = 3;
                }
                i2 = i4;
            }
        }
        return new zzakr(i, i2, i3);
    }
}
