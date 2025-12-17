package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public class zzacg {
    protected final zzaca zza;
    protected final zzacf zzb;
    protected zzacc zzc;
    private final int zzd;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzacg(zzacd zzacdVar, zzacf zzacfVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zzacfVar;
        this.zzd = i;
        this.zza = new zzaca(zzacdVar, j, 0L, j3, j4, j5, j6);
    }

    protected static final int zzf(zzacv zzacvVar, long j, zzads zzadsVar) {
        if (j == zzacvVar.zzn()) {
            return 0;
        }
        zzadsVar.zza = j;
        return 1;
    }

    protected static final boolean zzg(zzacv zzacvVar, long j) throws IOException {
        long zzn = j - zzacvVar.zzn();
        if (zzn < 0 || zzn > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        zzacvVar.zzf((int) zzn);
        return true;
    }

    public final zzadv zza() {
        return this.zza;
    }

    public final void zzb(long j) {
        zzacc zzaccVar = this.zzc;
        if (zzaccVar == null || zzaccVar.zze() != j) {
            zzaca zzacaVar = this.zza;
            this.zzc = new zzacc(j, zzacaVar.zzd(j), 0L, zzacaVar.zze(), zzacaVar.zzf(), zzacaVar.zzg(), zzacaVar.zzh());
        }
    }

    public final boolean zzc() {
        return this.zzc != null;
    }

    public final int zzd(zzacv zzacvVar, zzads zzadsVar) throws IOException {
        while (true) {
            zzacc zzaccVar = this.zzc;
            zzaccVar.getClass();
            long zzb = zzaccVar.zzb();
            long zzc = zzaccVar.zzc();
            long zzh = zzaccVar.zzh();
            if (zzc - zzb > this.zzd) {
                if (zzg(zzacvVar, zzh)) {
                    zzacvVar.zzl();
                    zzace zza = this.zzb.zza(zzacvVar, zzaccVar.zzd());
                    int zzd = zza.zzd();
                    if (zzd == -3) {
                        zze(false, zzh);
                        return zzf(zzacvVar, zzh, zzadsVar);
                    } else if (zzd == -2) {
                        zzaccVar.zzf(zza.zze(), zza.zzf());
                    } else if (zzd == -1) {
                        zzaccVar.zzg(zza.zze(), zza.zzf());
                    } else {
                        zzg(zzacvVar, zza.zzf());
                        zze(true, zza.zzf());
                        return zzf(zzacvVar, zza.zzf(), zzadsVar);
                    }
                } else {
                    return zzf(zzacvVar, zzh, zzadsVar);
                }
            } else {
                zze(false, zzb);
                return zzf(zzacvVar, zzb, zzadsVar);
            }
        }
    }

    protected final void zze(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }
}
