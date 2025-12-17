package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzedv {
    private MeasurementManagerFutures zza;
    private final Context zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzedv(Context context) {
        this.zzb = context;
    }

    public final ListenableFuture zza() {
        try {
            MeasurementManagerFutures from = MeasurementManagerFutures.from(this.zzb);
            this.zza = from;
            if (from != null) {
                return from.getMeasurementApiStatusAsync();
            }
            return zzgot.zzc(new IllegalStateException("MeasurementManagerFutures is null"));
        } catch (Exception e) {
            return zzgot.zzc(e);
        }
    }

    public final ListenableFuture zzb(Uri uri, InputEvent inputEvent) {
        try {
            return ((MeasurementManagerFutures) Objects.requireNonNull(this.zza)).registerSourceAsync(uri, inputEvent);
        } catch (Exception e) {
            return zzgot.zzc(e);
        }
    }
}
