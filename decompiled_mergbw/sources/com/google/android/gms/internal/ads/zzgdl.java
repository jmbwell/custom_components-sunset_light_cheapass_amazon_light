package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgdl implements zzgcz, zzfvv {
    private final Context zza;
    private final ExecutorService zzb;
    private NetworkCapabilities zzc = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdl(Context context, ExecutorService executorService) {
        this.zza = context;
        this.zzb = executorService;
    }

    @Override // com.google.android.gms.internal.ads.zzfvv
    public final ListenableFuture zza() {
        return Build.VERSION.SDK_INT < 24 ? zzgot.zzb() : zzgot.zze(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgdk
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgdl.this.zze();
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzgcz
    public final void zzb(Map map) {
        NetworkCapabilities networkCapabilities;
        long j;
        synchronized (this) {
            networkCapabilities = this.zzc;
        }
        map.put("ntc", networkCapabilities);
        synchronized (this) {
            NetworkCapabilities networkCapabilities2 = this.zzc;
            if (networkCapabilities2 != null) {
                if (networkCapabilities2.hasTransport(4)) {
                    j = 2;
                } else if (this.zzc.hasTransport(1)) {
                    j = 1;
                } else if (this.zzc.hasTransport(0)) {
                    j = 0;
                }
            }
            j = -1;
        }
        map.put("nt", Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzgcz
    public final void zzc(Map map, Context context, View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzgcz
    public final void zzd(Map map) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zze() {
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        zzgdj zzgdjVar = new zzgdj(this);
        try {
            Object systemService = this.zza.getSystemService("connectivity");
            if (systemService != null) {
                ((ConnectivityManager) systemService).registerDefaultNetworkCallback(zzgdjVar);
                return;
            }
            throw null;
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf(NetworkCapabilities networkCapabilities) {
        this.zzc = networkCapabilities;
    }
}
