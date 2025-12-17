package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzrf implements zzpz {
    final /* synthetic */ zzrg zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzrf(zzrg zzrgVar, byte[] bArr) {
        Objects.requireNonNull(zzrgVar);
        this.zza = zzrgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void zza() {
        zzlk zzas = zzrg.zzas(this.zza);
        if (zzas != null) {
            zzas.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void zzb(Exception exc) {
        zzds.zzf("MediaCodecAudioRenderer", "Audio sink error", exc);
        this.zza.zzav().zzi(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void zzc(zzpw zzpwVar) {
        this.zza.zzav().zzl(zzpwVar);
    }
}
