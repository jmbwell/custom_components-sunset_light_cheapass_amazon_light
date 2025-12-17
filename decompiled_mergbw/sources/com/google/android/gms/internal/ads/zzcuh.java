package com.google.android.gms.internal.ads;

import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzcuh implements zzgoq {
    final /* synthetic */ zzcuj zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcuh(zzcuj zzcujVar) {
        Objects.requireNonNull(zzcujVar);
        this.zza = zzcujVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgoq
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzgoq
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl Object obj) {
        Boolean bool = (Boolean) obj;
        this.zza.zzk().zza();
    }
}
