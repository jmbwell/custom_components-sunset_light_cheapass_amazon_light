package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzfgz {
    private static final ListenableFuture zza = zzgot.zza(null);
    private final zzgpd zzb;
    private final ScheduledExecutorService zzc;
    private final zzfha zzd;

    public zzfgz(zzgpd zzgpdVar, ScheduledExecutorService scheduledExecutorService, zzfha zzfhaVar) {
        this.zzb = zzgpdVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzfhaVar;
    }

    public final zzfgy zza(Object obj, ListenableFuture listenableFuture) {
        return new zzfgy(this, obj, null, listenableFuture, Collections.singletonList(listenableFuture), listenableFuture, null);
    }

    public final zzfgq zzb(Object obj, ListenableFuture... listenableFutureArr) {
        return new zzfgq(this, obj, Arrays.asList(listenableFutureArr), null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String zzc(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgpd zze() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ScheduledExecutorService zzf() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzfha zzg() {
        return this.zzd;
    }
}
