package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbym implements Runnable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbzm zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbym(zzbyn zzbynVar, Context context, zzbzm zzbzmVar) {
        this.zza = context;
        this.zzb = zzbzmVar;
        Objects.requireNonNull(zzbynVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.zzc(AdvertisingIdClient.getAdvertisingIdInfo(this.zza));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.zzb.zzd(e);
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Exception while getting advertising Id info", e);
        }
    }
}
