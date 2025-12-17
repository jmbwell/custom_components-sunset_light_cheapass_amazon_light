package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgdy {
    private final zzfvz zza;
    private final AtomicBoolean zzb = new AtomicBoolean(false);
    private long zzc = -1;
    private long zzd = -1;
    private Throwable zze = null;
    private final int zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdy(int i, zzftp zzftpVar, zzfvz zzfvzVar) {
        this.zzf = i;
        this.zza = zzfvzVar;
    }

    public final void zza() {
        if (!this.zzb.get()) {
            this.zzc = SystemClock.uptimeMillis();
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }

    public final void zzb(Throwable th) {
        if (!this.zzb.get()) {
            this.zze = th;
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }

    public final void zzc() {
        AtomicBoolean atomicBoolean = this.zzb;
        if (!atomicBoolean.getAndSet(true)) {
            this.zzd = SystemClock.uptimeMillis();
            this.zza.zzb(this.zzf - 1, atomicBoolean.get() ? this.zzd - this.zzc : -1L, this.zze, null);
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }
}
