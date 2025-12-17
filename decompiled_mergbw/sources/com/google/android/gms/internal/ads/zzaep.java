package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzaep implements zzaek {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;

    private zzaep(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.zza = i;
        this.zzb = i3;
        this.zzc = i4;
        this.zzd = i5;
        this.zze = i6;
        this.zzf = i7;
    }

    public static zzaep zzb(zzef zzefVar) {
        int zzC = zzefVar.zzC();
        zzefVar.zzk(12);
        int zzC2 = zzefVar.zzC();
        int zzC3 = zzefVar.zzC();
        int zzC4 = zzefVar.zzC();
        zzefVar.zzk(4);
        int zzC5 = zzefVar.zzC();
        int zzC6 = zzefVar.zzC();
        zzefVar.zzk(4);
        return new zzaep(zzC, zzC2, zzC3, zzC4, zzC5, zzC6, zzefVar.zzC());
    }

    @Override // com.google.android.gms.internal.ads.zzaek
    public final int zza() {
        return 1752331379;
    }

    public final int zzc() {
        int i = this.zza;
        if (i != 1935960438) {
            if (i != 1935963489) {
                if (i != 1937012852) {
                    String hexString = Integer.toHexString(i);
                    String.valueOf(hexString);
                    zzds.zzc("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(hexString)));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }

    public final long zzd() {
        RoundingMode roundingMode = RoundingMode.DOWN;
        return zzeo.zzt(this.zzd, this.zzb * 1000000, this.zzc, roundingMode);
    }
}
