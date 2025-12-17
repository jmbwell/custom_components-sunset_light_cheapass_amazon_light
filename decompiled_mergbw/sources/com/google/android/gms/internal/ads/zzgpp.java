package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgpp extends zzgok {
    private ListenableFuture zza;
    private ScheduledFuture zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ListenableFuture zze(ListenableFuture listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzgpp zzgppVar = new zzgpp(listenableFuture);
        zzgpn zzgpnVar = new zzgpn(zzgppVar);
        zzgppVar.zzb = scheduledExecutorService.schedule(zzgpnVar, j, timeUnit);
        listenableFuture.addListener(zzgpnVar, zzgoi.INSTANCE);
        return zzgppVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgnm
    protected final void zzc() {
        zzm(this.zza);
        ScheduledFuture scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgnm
    public final String zzd() {
        ListenableFuture listenableFuture = this.zza;
        ScheduledFuture scheduledFuture = this.zzb;
        if (listenableFuture != null) {
            String obj = listenableFuture.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 14);
            sb.append("inputFuture=[");
            sb.append(obj);
            sb.append("]");
            String sb2 = sb.toString();
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 19 + String.valueOf(delay).length() + 4);
                    sb3.append(sb2);
                    sb3.append(", remaining delay=[");
                    sb3.append(delay);
                    sb3.append(" ms]");
                    return sb3.toString();
                }
                return sb2;
            }
            return sb2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ListenableFuture zzf() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ScheduledFuture zzx() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzy(ScheduledFuture scheduledFuture) {
        this.zzb = null;
    }

    private zzgpp(ListenableFuture listenableFuture) {
        listenableFuture.getClass();
        this.zza = listenableFuture;
    }
}
