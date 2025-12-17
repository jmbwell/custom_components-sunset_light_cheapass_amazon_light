package com.google.android.gms.internal.ads;

import android.os.Build;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewStartUpResult;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzcgr {
    private final zzcgj zza;
    private final zzdsm zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcgr(zzcgj zzcgjVar, zzdsm zzdsmVar) {
        this.zza = zzcgjVar;
        this.zzb = zzdsmVar;
    }

    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzox)).booleanValue()) {
            zzgpd zzgpdVar = zzbzh.zza;
            final ThreadPoolExecutor threadPoolExecutor = null;
            ThreadPoolExecutor threadPoolExecutor2 = zzgpdVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzoA)).booleanValue()) {
                zzcgq zzcgqVar = new zzcgq(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzoC)).intValue(), null);
                int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzoB)).intValue();
                ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(intValue, intValue, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), zzcgqVar);
                threadPoolExecutor = threadPoolExecutor3;
                threadPoolExecutor2 = threadPoolExecutor3;
            }
            final long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
            WebViewCompat.WebViewStartUpCallback webViewStartUpCallback = new WebViewCompat.WebViewStartUpCallback() { // from class: com.google.android.gms.internal.ads.zzcgo
                @Override // androidx.webkit.WebViewCompat.WebViewStartUpCallback
                public final /* synthetic */ void onSuccess(WebViewStartUpResult webViewStartUpResult) {
                    zzcgr.this.zzb(elapsedRealtime, threadPoolExecutor, webViewStartUpResult);
                }
            };
            this.zza.zzd(threadPoolExecutor2, ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzoz)).booleanValue(), webViewStartUpCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(long j, ThreadPoolExecutor threadPoolExecutor, WebViewStartUpResult webViewStartUpResult) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzoy)).booleanValue()) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - j;
            zzdsl zza = this.zzb.zza();
            zza.zzc("action", "webview_startup_l");
            StringBuilder sb = new StringBuilder(String.valueOf(elapsedRealtime).length());
            sb.append(elapsedRealtime);
            zza.zzc("webview_startup_l", sb.toString());
            Long totalTimeInUiThreadMillis = webViewStartUpResult.getTotalTimeInUiThreadMillis();
            StringBuilder sb2 = new StringBuilder(String.valueOf(totalTimeInUiThreadMillis).length());
            sb2.append(totalTimeInUiThreadMillis);
            zza.zzc("webview_startup_uil", sb2.toString());
            zza.zzd();
        }
        if (threadPoolExecutor != null) {
            threadPoolExecutor.shutdown();
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzoF)).booleanValue() || Build.VERSION.SDK_INT < 24) {
            return;
        }
        zzbzh.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgn
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcgr.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc() {
        this.zza.zzf(new zzcgm(this, com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzdsm zzd() {
        return this.zzb;
    }
}
