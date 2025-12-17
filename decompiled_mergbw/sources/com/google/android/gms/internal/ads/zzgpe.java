package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public interface zzgpe extends ScheduledExecutorService, zzgpd {

    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* renamed from: com.google.android.gms.internal.ads.zzgpe$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
    }

    zzgpc zzd(Runnable runnable, long j, TimeUnit timeUnit);

    zzgpc zze(Callable callable, long j, TimeUnit timeUnit);

    zzgpc zzf(Runnable runnable, long j, long j2, TimeUnit timeUnit);

    zzgpc zzg(Runnable runnable, long j, long j2, TimeUnit timeUnit);
}
