package com.google.android.gms.internal.ads;

import androidx.webkit.Profile;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbzh {
    public static final zzgpd zza;
    public static final zzgpd zzb;
    public static final zzgpd zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzgpe zze;
    public static final zzgpd zzf;
    public static final zzgpd zzg;

    static {
        Executor executor;
        ThreadPoolExecutor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2;
        if (ClientLibraryUtils.isPackageSide()) {
            zzfrn.zza();
            executor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzbze(Profile.DEFAULT_PROFILE_NAME)));
        } else {
            if (com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbci.zzmc) != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbci.zzmc)).booleanValue()) {
                    if (com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbci.zzmd) != null) {
                        if (com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbci.zzme) != null) {
                            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbci.zzmd)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbci.zzmd)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbze(Profile.DEFAULT_PROFILE_NAME));
                            threadPoolExecutor3.allowCoreThreadTimeOut(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbci.zzme)).booleanValue());
                            executor = threadPoolExecutor3;
                        }
                    }
                }
            }
            executor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzbze(Profile.DEFAULT_PROFILE_NAME));
        }
        zza = new zzbzg(executor, null);
        if (ClientLibraryUtils.isPackageSide()) {
            threadPoolExecutor = zzfrn.zza().zza(5, new zzbze("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbze("Loader"));
            threadPoolExecutor4.allowCoreThreadTimeOut(true);
            threadPoolExecutor = threadPoolExecutor4;
        }
        zzb = new zzbzg(threadPoolExecutor, null);
        if (ClientLibraryUtils.isPackageSide()) {
            threadPoolExecutor2 = zzfrn.zza().zzc(new zzbze("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor5 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbze("Activeview"));
            threadPoolExecutor5.allowCoreThreadTimeOut(true);
            threadPoolExecutor2 = threadPoolExecutor5;
        }
        zzc = new zzbzg(threadPoolExecutor2, null);
        zzbzd zzbzdVar = new zzbzd(3, new zzbze("Schedule"));
        zzd = zzbzdVar;
        zze = zzgpk.zzc(zzbzdVar);
        zzf = new zzbzg(new zzbzf(), null);
        zzg = new zzbzg(zzgpk.zza(), null);
    }
}
