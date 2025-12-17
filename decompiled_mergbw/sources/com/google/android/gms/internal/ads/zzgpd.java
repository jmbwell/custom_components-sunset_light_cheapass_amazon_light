package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public interface zzgpd extends ExecutorService {

    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* renamed from: com.google.android.gms.internal.ads.zzgpd$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
    }

    ListenableFuture zza(Runnable runnable);

    ListenableFuture zzb(Runnable runnable, Object obj);

    ListenableFuture zzc(Callable callable);
}
