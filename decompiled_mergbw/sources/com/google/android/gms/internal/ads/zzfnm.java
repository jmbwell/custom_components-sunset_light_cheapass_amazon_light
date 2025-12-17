package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfnm implements Runnable {
    final /* synthetic */ zzfnr zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfnm(zzfnr zzfnrVar) {
        Objects.requireNonNull(zzfnrVar);
        this.zza = zzfnrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzh().zzc();
    }
}
