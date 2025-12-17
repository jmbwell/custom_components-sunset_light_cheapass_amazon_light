package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzaze implements Runnable {
    final /* synthetic */ View zza;
    final /* synthetic */ zzazi zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaze(zzazi zzaziVar, View view) {
        this.zza = view;
        Objects.requireNonNull(zzaziVar);
        this.zzb = zzaziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb(this.zza);
    }
}
