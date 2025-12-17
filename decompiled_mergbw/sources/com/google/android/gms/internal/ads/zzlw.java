package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzkm;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzlw implements zzkm {
    private boolean zza;
    private long zzb;
    private long zzc;
    private zzau zzd = zzau.zza;

    public zzlw(zzdb zzdbVar) {
    }

    public final void zza() {
        if (this.zza) {
            return;
        }
        this.zzc = SystemClock.elapsedRealtime();
        this.zza = true;
    }

    public final void zzb() {
        if (this.zza) {
            zzc(zzg());
            this.zza = false;
        }
    }

    public final void zzc(long j) {
        this.zzb = j;
        if (this.zza) {
            this.zzc = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final long zzg() {
        long zza;
        long j = this.zzb;
        if (this.zza) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzc;
            zzau zzauVar = this.zzd;
            if (zzauVar.zzb == 1.0f) {
                zza = zzeo.zzq(elapsedRealtime);
            } else {
                zza = zzauVar.zza(elapsedRealtime);
            }
            return j + zza;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public /* synthetic */ boolean zzh() {
        return zzkm.CC.$default$zzh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzi(zzau zzauVar) {
        if (this.zza) {
            zzc(zzg());
        }
        this.zzd = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final zzau zzj() {
        return this.zzd;
    }
}
