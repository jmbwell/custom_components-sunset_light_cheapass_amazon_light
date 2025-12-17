package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzaza implements Runnable {
    final /* synthetic */ zzazb zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaza(zzazb zzazbVar) {
        Objects.requireNonNull(zzazbVar);
        this.zza = zzazbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzazb zzazbVar = this.zza;
        synchronized (zzazbVar.zzf()) {
            if (!zzazbVar.zzg().get() || !zzazbVar.zzh()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("App is still foreground");
            } else {
                zzazbVar.zzg().set(false);
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("App went background");
                for (zzazc zzazcVar : zzazbVar.zzi()) {
                    try {
                        zzazcVar.zza(false);
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("", e);
                    }
                }
            }
        }
    }
}
