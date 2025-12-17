package com.google.android.gms.internal.ads;

import java.io.File;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzapz implements zzaqc {
    final /* synthetic */ File zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapz(zzaqd zzaqdVar, File file) {
        this.zza = file;
        Objects.requireNonNull(zzaqdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqc
    public final File zza() {
        return this.zza;
    }
}
