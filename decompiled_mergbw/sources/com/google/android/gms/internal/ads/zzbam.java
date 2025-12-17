package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzbam implements zzazc {
    final /* synthetic */ zzbap zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbam(zzbap zzbapVar) {
        Objects.requireNonNull(zzbapVar);
        this.zza = zzbapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazc
    public final void zza(boolean z) {
        if (z) {
            this.zza.zzf();
        } else {
            this.zza.zzg();
        }
    }
}
