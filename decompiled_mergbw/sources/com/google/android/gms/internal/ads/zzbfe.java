package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbfe extends zzbfo {
    static final int zza;
    static final int zzb;
    private static final int zzc;
    private final String zzd;
    private final List zze = new ArrayList();
    private final List zzf = new ArrayList();
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;

    static {
        int rgb = Color.rgb(12, 174, 206);
        zzc = rgb;
        zza = Color.rgb(204, 204, 204);
        zzb = rgb;
    }

    public zzbfe(String str, List list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        int i3;
        int i4;
        this.zzd = str;
        for (int i5 = 0; i5 < list.size(); i5++) {
            zzbfh zzbfhVar = (zzbfh) list.get(i5);
            this.zze.add(zzbfhVar);
            this.zzf.add(zzbfhVar);
        }
        if (num != null) {
            i3 = num.intValue();
        } else {
            i3 = zza;
        }
        this.zzg = i3;
        if (num2 != null) {
            i4 = num2.intValue();
        } else {
            i4 = zzb;
        }
        this.zzh = i4;
        this.zzi = num3 != null ? num3.intValue() : 12;
        this.zzj = i;
        this.zzk = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzbfp
    public final String zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbfp
    public final List zzc() {
        return this.zzf;
    }

    public final List zzd() {
        return this.zze;
    }

    public final int zze() {
        return this.zzg;
    }

    public final int zzf() {
        return this.zzh;
    }

    public final int zzg() {
        return this.zzi;
    }

    public final int zzh() {
        return this.zzj;
    }

    public final int zzi() {
        return this.zzk;
    }
}
