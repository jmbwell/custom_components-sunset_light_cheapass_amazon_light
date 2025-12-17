package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzavu implements Runnable {
    final /* synthetic */ zzavx zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavu(zzavx zzavxVar) {
        Objects.requireNonNull(zzavxVar);
        this.zza = zzavxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzr();
    }
}
