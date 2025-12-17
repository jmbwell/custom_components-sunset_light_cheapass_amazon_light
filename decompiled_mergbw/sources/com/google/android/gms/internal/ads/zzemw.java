package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzemw implements zzeup {
    private final ListenableFuture zza;
    private final Executor zzb;
    private final ScheduledExecutorService zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzemw(ListenableFuture listenableFuture, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zza = listenableFuture;
        this.zzb = executor;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzeup
    public final ListenableFuture zza() {
        ListenableFuture listenableFuture = this.zza;
        zzemv zzemvVar = zzemv.zza;
        Executor executor = this.zzb;
        ListenableFuture zzj = zzgot.zzj(listenableFuture, zzemvVar, executor);
        zzbbz zzbbzVar = zzbci.zznn;
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbbzVar)).intValue() > 0) {
            zzj = zzgot.zzi(zzj, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbbzVar)).intValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzgot.zzh(zzj, Throwable.class, zzemu.zza, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzeup
    public final int zzb() {
        return 6;
    }
}
