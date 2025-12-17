package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzble extends zzblb {
    final /* synthetic */ zzbzm zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzble(zzblf zzblfVar, zzbzm zzbzmVar) {
        this.zza = zzbzmVar;
        Objects.requireNonNull(zzblfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzblc
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.zzc(parcelFileDescriptor);
    }
}
