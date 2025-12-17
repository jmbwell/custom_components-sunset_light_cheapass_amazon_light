package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzeou implements zzeup {
    private final zzgpd zza;
    private final Context zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeou(zzgpd zzgpdVar, Context context) {
        this.zza = zzgpdVar;
        this.zzb = context;
    }

    private final Intent zzd() {
        Intent registerReceiver;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzlO)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            return this.zzb.registerReceiver(null, intentFilter);
        }
        registerReceiver = this.zzb.registerReceiver(null, intentFilter, 4);
        return registerReceiver;
    }

    private static final boolean zze(Intent intent) {
        if (intent != null) {
            int intExtra = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
            return intExtra == 2 || intExtra == 5;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzeup
    public final ListenableFuture zza() {
        return this.zza.zzc(new Callable() { // from class: com.google.android.gms.internal.ads.zzeot
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzeou.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeup
    public final int zzb() {
        return 14;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzeov zzc() {
        double intExtra;
        boolean z;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzmO)).booleanValue()) {
            BatteryManager batteryManager = (BatteryManager) this.zzb.getSystemService("batterymanager");
            intExtra = batteryManager != null ? batteryManager.getIntProperty(4) / 100.0d : -1.0d;
            if (batteryManager == null) {
                z = zze(zzd());
            } else {
                z = batteryManager.isCharging();
            }
        } else {
            Intent zzd = zzd();
            boolean zze = zze(zzd);
            intExtra = zzd != null ? zzd.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) / zzd.getIntExtra("scale", -1) : -1.0d;
            z = zze;
        }
        return new zzeov(intExtra, z);
    }
}
