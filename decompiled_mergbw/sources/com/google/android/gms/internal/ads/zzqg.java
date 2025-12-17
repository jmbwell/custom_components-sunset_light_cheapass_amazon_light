package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Build;
import androidx.work.WorkRequest;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzqg {
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private boolean zzE;
    private long zzF;
    private zzdb zzG;
    boolean zza;
    private final zzqf zzb;
    private final long[] zzc;
    private AudioTrack zzd;
    private int zze;
    private zzqe zzf;
    private int zzg;
    private long zzh;
    private float zzi;
    private boolean zzj;
    private long zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private Method zzo;
    private long zzp;
    private boolean zzq;
    private boolean zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private long zzv;
    private int zzw;
    private int zzx;
    private long zzy;
    private long zzz;

    public zzqg(zzqf zzqfVar) {
        this.zzb = zzqfVar;
        try {
            Class[] clsArr = null;
            this.zzo = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.zzc = new long[10];
        this.zzD = -9223372036854775807L;
        this.zzC = -9223372036854775807L;
        this.zzG = zzdb.zza;
    }

    private final void zzl(long j) {
        if (this.zza) {
            long j2 = this.zzk;
            if (j2 == -9223372036854775807L || j < j2) {
                return;
            }
            long zza = this.zzG.zza() - zzeo.zzp(zzeo.zzw(j - j2, this.zzi));
            this.zzk = -9223372036854775807L;
            this.zzb.zza(zza);
        }
    }

    private final long zzm(long j) {
        long zzv;
        if (this.zzx != 0) {
            zzv = zzeo.zzv(j + this.zzm, this.zzi);
        } else if (this.zzy != -9223372036854775807L) {
            zzv = zzeo.zzr(zzq(), this.zzg);
        } else {
            zzv = zzo();
        }
        long max = Math.max(0L, zzv - this.zzp);
        return this.zzy != -9223372036854775807L ? Math.min(zzeo.zzr(this.zzB, this.zzg), max) : max;
    }

    private final void zzn() {
        this.zzm = 0L;
        this.zzx = 0;
        this.zzw = 0;
        this.zzn = 0L;
        this.zzC = -9223372036854775807L;
        this.zzD = -9223372036854775807L;
        this.zzj = false;
    }

    private final long zzo() {
        return zzeo.zzr(zzp(), this.zzg);
    }

    private final long zzp() {
        if (this.zzy != -9223372036854775807L) {
            return Math.min(this.zzB, zzq());
        }
        long zzb = this.zzG.zzb();
        if (zzb - this.zzt >= 5) {
            AudioTrack audioTrack = this.zzd;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
                if (Build.VERSION.SDK_INT <= 29) {
                    if (playbackHeadPosition != 0 || this.zzu <= 0 || playState != 3) {
                        this.zzz = -9223372036854775807L;
                    } else if (this.zzz == -9223372036854775807L) {
                        this.zzz = zzb;
                    }
                }
                if (this.zzu > playbackHeadPosition) {
                    this.zzv++;
                }
                this.zzu = playbackHeadPosition;
            }
            this.zzt = zzb;
        }
        return this.zzu + this.zzF + (this.zzv << 32);
    }

    private final long zzq() {
        AudioTrack audioTrack = this.zzd;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.zzA;
        }
        return this.zzA + zzeo.zzs(zzeo.zzv(zzeo.zzq(this.zzG.zzb()) - this.zzy, this.zzi), this.zzg);
    }

    public final void zza(AudioTrack audioTrack, int i, int i2, int i3, boolean z) {
        this.zzd = audioTrack;
        this.zze = i3;
        this.zzf = new zzqe(audioTrack, this.zzb);
        this.zzg = audioTrack.getSampleRate();
        boolean zzA = zzeo.zzA(i);
        this.zzr = zzA;
        this.zzh = zzA ? zzeo.zzr(i3 / i2, this.zzg) : -9223372036854775807L;
        this.zzu = 0L;
        this.zzv = 0L;
        this.zzE = false;
        this.zzF = 0L;
        this.zzq = false;
        this.zzy = -9223372036854775807L;
        this.zzz = -9223372036854775807L;
        this.zzs = 0L;
        this.zzp = 0L;
        this.zzi = 1.0f;
        this.zzl = 0;
        this.zzk = -9223372036854775807L;
        this.zza = z;
    }

    public final long zzb() {
        long zzm;
        Method method;
        AudioTrack audioTrack;
        AudioTrack audioTrack2 = this.zzd;
        audioTrack2.getClass();
        if (audioTrack2.getPlayState() == 3) {
            long zzc = this.zzG.zzc() / 1000;
            if (zzc - this.zzn >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                long zzo = zzo();
                if (zzo != 0) {
                    long[] jArr = this.zzc;
                    jArr[this.zzw] = zzeo.zzw(zzo, this.zzi) - zzc;
                    this.zzw = (this.zzw + 1) % 10;
                    int i = this.zzx;
                    if (i < 10) {
                        this.zzx = i + 1;
                    }
                    this.zzn = zzc;
                    this.zzm = 0L;
                    int i2 = 0;
                    while (true) {
                        int i3 = this.zzx;
                        if (i2 >= i3) {
                            break;
                        }
                        this.zzm += jArr[i2] / i3;
                        i2++;
                    }
                }
            }
            if (this.zzr && (method = this.zzo) != null && zzc - this.zzs >= 500000) {
                try {
                    audioTrack = this.zzd;
                } catch (Exception unused) {
                    this.zzo = null;
                }
                if (audioTrack != null) {
                    Integer num = (Integer) method.invoke(audioTrack, null);
                    String str = zzeo.zza;
                    Integer num2 = num;
                    long intValue = (num.intValue() * 1000) - this.zzh;
                    this.zzp = intValue;
                    long max = Math.max(intValue, 0L);
                    this.zzp = max;
                    if (max > 5000000) {
                        this.zzb.zzd(max);
                        this.zzp = 0L;
                    }
                    this.zzs = zzc;
                } else {
                    throw null;
                }
            }
            zzqe zzqeVar = this.zzf;
            zzqeVar.getClass();
            zzqeVar.zza(zzc, this.zzi, zzm(zzc));
        }
        long zzc2 = this.zzG.zzc() / 1000;
        zzqe zzqeVar2 = this.zzf;
        zzqeVar2.getClass();
        boolean zzb = zzqeVar2.zzb();
        if (zzb) {
            zzm = zzqeVar2.zze(zzc2, this.zzi);
        } else {
            zzm = zzm(zzc2);
        }
        int playState = audioTrack2.getPlayState();
        if (playState == 3) {
            if (zzb || !zzqeVar2.zzc()) {
                zzl(zzm);
            }
            long j = this.zzD;
            if (j != -9223372036854775807L) {
                long zzv = zzeo.zzv(zzc2 - j, this.zzi);
                long j2 = this.zzC + zzv;
                int i4 = ((zzm - this.zzC) > 0L ? 1 : ((zzm - this.zzC) == 0L ? 0 : -1));
                long abs = Math.abs(j2 - zzm);
                if (i4 != 0 && abs < 1000000) {
                    long j3 = (zzv * 10) / 100;
                    zzm = Math.max(j2 - j3, Math.min(zzm, j2 + j3));
                }
            }
            if (!this.zza && !this.zzj) {
                long j4 = this.zzC;
                if (j4 != -9223372036854775807L && zzm > j4) {
                    this.zzj = true;
                    String str2 = zzeo.zza;
                    this.zzb.zza(this.zzG.zza() - zzeo.zzp(zzeo.zzw(zzeo.zzp(zzm - j4), this.zzi)));
                }
            }
            this.zzD = zzc2;
            this.zzC = zzm;
        } else if (playState == 1) {
            zzl(zzm);
            return zzm;
        }
        return zzm;
    }

    public final void zzc() {
        if (this.zzy != -9223372036854775807L) {
            this.zzy = zzeo.zzq(this.zzG.zzb());
        }
        this.zzk = zzo();
        zzqe zzqeVar = this.zzf;
        zzqeVar.getClass();
        zzqeVar.zzd();
    }

    public final boolean zzd() {
        AudioTrack audioTrack = this.zzd;
        audioTrack.getClass();
        return audioTrack.getPlayState() == 3;
    }

    public final boolean zze(long j) {
        int underrunCount;
        AudioTrack audioTrack = this.zzd;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        if (Build.VERSION.SDK_INT >= 24) {
            AudioTrack audioTrack2 = this.zzd;
            audioTrack2.getClass();
            underrunCount = audioTrack2.getUnderrunCount();
            r4 = underrunCount > this.zzl;
            this.zzl = underrunCount;
        } else {
            boolean z = this.zzq;
            boolean zzh = zzh(j);
            this.zzq = zzh;
            if (z && !zzh && playState != 1) {
                r4 = true;
            }
        }
        if (r4) {
            this.zzb.zze(this.zze, zzeo.zzp(this.zzh));
        }
        return true;
    }

    public final boolean zzf(long j) {
        return this.zzz != -9223372036854775807L && j > 0 && this.zzG.zzb() - this.zzz >= 200;
    }

    public final void zzg(long j) {
        this.zzA = zzp();
        this.zzy = zzeo.zzq(this.zzG.zzb());
        this.zzB = j;
    }

    public final boolean zzh(long j) {
        return j > zzeo.zzs(zzb(), this.zzg);
    }

    public final void zzi() {
        zzn();
        if (this.zzy == -9223372036854775807L) {
            zzqe zzqeVar = this.zzf;
            zzqeVar.getClass();
            zzqeVar.zzd();
        }
        this.zzA = zzp();
    }

    public final void zzj() {
        zzn();
        this.zzd = null;
        this.zzf = null;
    }

    public final void zzk(zzdb zzdbVar) {
        this.zzG = zzdbVar;
    }
}
