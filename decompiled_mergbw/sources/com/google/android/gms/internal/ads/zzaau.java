package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Surface;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzaau {
    private final zzaat zza;
    private final zzaaz zzb;
    private boolean zzc;
    private long zzf;
    private boolean zzi;
    private boolean zzl;
    private boolean zzm;
    private int zzd = 0;
    private long zze = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private float zzj = 1.0f;
    private zzdb zzk = zzdb.zza;

    public zzaau(Context context, zzaat zzaatVar, long j) {
        this.zza = zzaatVar;
        this.zzb = new zzaaz(context);
    }

    private final void zzo(int i) {
        this.zzd = Math.min(this.zzd, i);
    }

    public final void zza(int i) {
        if (i == 0) {
            this.zzd = 1;
        } else if (i != 1) {
            zzo(2);
        } else {
            this.zzd = 0;
        }
    }

    public final void zzb() {
        this.zzc = true;
        this.zzf = zzeo.zzq(this.zzk.zzb());
        this.zzb.zzb();
    }

    public final void zzc() {
        this.zzc = false;
        this.zzh = -9223372036854775807L;
        this.zzb.zzh();
    }

    public final void zzd(Surface surface) {
        this.zzl = surface != null;
        this.zzm = false;
        this.zzb.zzc(surface);
        zzo(1);
    }

    public final void zze(float f) {
        this.zzb.zzf(f);
    }

    public final boolean zzf() {
        int i = this.zzd;
        this.zzd = 3;
        this.zzf = zzeo.zzq(this.zzk.zzb());
        return i != 3;
    }

    public final void zzg(zzdb zzdbVar) {
        this.zzk = zzdbVar;
    }

    public final void zzh() {
        if (this.zzd == 0) {
            this.zzd = 1;
        }
    }

    public final boolean zzi(boolean z) {
        if (z && (this.zzd == 3 || (!this.zzl && this.zzm))) {
            this.zzh = -9223372036854775807L;
            return true;
        } else if (this.zzh == -9223372036854775807L) {
            return false;
        } else {
            if (this.zzk.zzb() < this.zzh) {
                return true;
            }
            this.zzh = -9223372036854775807L;
            return false;
        }
    }

    public final void zzj(boolean z) {
        this.zzi = z;
        this.zzh = -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ba, code lost:
        if (r17 > 100000) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c5, code lost:
        if (r22 >= r26) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ca, code lost:
        if (r19.zzc != false) goto L76;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzk(long r20, long r22, long r24, long r26, boolean r28, boolean r29, com.google.android.gms.internal.ads.zzaas r30) throws com.google.android.gms.internal.ads.zzhz {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaau.zzk(long, long, long, long, boolean, boolean, com.google.android.gms.internal.ads.zzaas):int");
    }

    public final void zzl() {
        this.zzb.zzd();
        this.zzg = -9223372036854775807L;
        this.zze = -9223372036854775807L;
        zzo(1);
        this.zzh = -9223372036854775807L;
    }

    public final void zzm(int i) {
        this.zzb.zza(i);
    }

    public final void zzn(float f) {
        zzghc.zza(f > 0.0f);
        if (f == this.zzj) {
            return;
        }
        this.zzj = f;
        this.zzb.zze(f);
    }
}
