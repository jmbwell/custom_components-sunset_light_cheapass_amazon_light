package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzenj {
    private final AtomicBoolean zza = new AtomicBoolean(false);
    private zzeni zzb;

    public final void zza(boolean z) {
        this.zza.set(true);
    }

    public final boolean zzb() {
        return this.zza.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(zzeni zzeniVar) {
        this.zzb = zzeniVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzeni zzd() {
        return this.zzb;
    }
}
