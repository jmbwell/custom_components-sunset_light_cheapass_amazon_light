package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgps extends zzgok implements RunnableFuture {
    private volatile zzgpa zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgps(zzgoa zzgoaVar) {
        this.zza = new zzgpq(this, zzgoaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgps zze(Runnable runnable, Object obj) {
        return new zzgps(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzgpa zzgpaVar = this.zza;
        if (zzgpaVar != null) {
            zzgpaVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgnm
    protected final void zzc() {
        zzgpa zzgpaVar;
        if (zzj() && (zzgpaVar = this.zza) != null) {
            zzgpaVar.zzh();
        }
        this.zza = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgnm
    public final String zzd() {
        zzgpa zzgpaVar = this.zza;
        if (zzgpaVar != null) {
            String obj = zzgpaVar.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 7);
            sb.append("task=[");
            sb.append(obj);
            sb.append("]");
            return sb.toString();
        }
        return super.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgps(Callable callable) {
        this.zza = new zzgpr(this, callable);
    }
}
