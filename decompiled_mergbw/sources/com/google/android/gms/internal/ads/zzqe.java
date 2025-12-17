package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import androidx.work.WorkRequest;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzqe {
    private final zzqd zza;
    private final int zzb;
    private final zzqf zzc;
    private int zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    public zzqe(AudioTrack audioTrack, zzqf zzqfVar) {
        this.zza = new zzqd(audioTrack);
        this.zzb = audioTrack.getSampleRate();
        this.zzc = zzqfVar;
        zzf(0);
    }

    private final void zzf(int i) {
        this.zzd = i;
        long j = WorkRequest.MIN_BACKOFF_MILLIS;
        if (i == 0) {
            this.zzg = 0L;
            this.zzh = -1L;
            this.zzi = -9223372036854775807L;
            this.zze = System.nanoTime() / 1000;
        } else if (i == 1) {
            this.zzf = WorkRequest.MIN_BACKOFF_MILLIS;
            return;
        } else {
            j = (i == 2 || i == 3) ? 10000000L : 500000L;
        }
        this.zzf = j;
    }

    private final long zzg(long j, float f) {
        zzqd zzqdVar = this.zza;
        return zzh(zzqdVar.zzc(), zzqdVar.zzb(), j, f);
    }

    private final long zzh(long j, long j2, long j3, float f) {
        return zzeo.zzr(j, this.zzb) + zzeo.zzv(j3 - j2, f);
    }

    public final void zza(long j, float f, long j2) {
        zzqd zzqdVar;
        if (j - this.zzg < this.zzf) {
            return;
        }
        this.zzg = j;
        zzqd zzqdVar2 = this.zza;
        boolean zza = zzqdVar2.zza();
        if (zza) {
            long zzb = zzqdVar2.zzb();
            long zzg = zzg(j, f);
            if (Math.abs(zzb - j) > 5000000) {
                this.zzc.zzc(zzqdVar2.zzc(), zzb, j, j2);
                zzf(4);
            } else if (Math.abs(zzg - j2) > 5000000) {
                this.zzc.zzb(zzqdVar2.zzc(), zzb, j, j2);
                zzf(4);
            } else if (this.zzd == 4) {
                zzf(0);
            }
        }
        int i = this.zzd;
        if (i == 0) {
            if (!zza) {
                if (j - this.zze > 500000) {
                    zzf(3);
                }
            } else if (zzqdVar2.zzb() >= this.zze) {
                this.zzh = zzqdVar2.zzc();
                this.zzi = zzqdVar2.zzb();
                zzf(1);
            }
        } else if (i != 1) {
            if (i == 2) {
                if (zza) {
                    return;
                }
                zzf(0);
            } else if (i == 3 && zza) {
                zzf(0);
            }
        } else if (zza) {
            long zzc = zzqdVar2.zzc();
            long j3 = this.zzh;
            if (zzc <= j3) {
                zzqdVar = zzqdVar2;
            } else {
                zzqdVar = zzqdVar2;
                if (Math.abs(zzg(j, f) - zzh(j3, this.zzi, j, f)) < 1000) {
                    zzf(2);
                    return;
                }
            }
            if (j - this.zze > 2000000) {
                zzf(3);
                return;
            }
            this.zzh = zzqdVar.zzc();
            this.zzi = zzqdVar.zzb();
        } else {
            zzf(0);
        }
    }

    public final boolean zzb() {
        return this.zzd == 2;
    }

    public final boolean zzc() {
        int i = this.zzd;
        return i == 0 || i == 1;
    }

    public final void zzd() {
        zzf(0);
    }

    public final long zze(long j, float f) {
        return zzg(j, f);
    }
}
