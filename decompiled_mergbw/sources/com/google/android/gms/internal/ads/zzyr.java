package com.google.android.gms.internal.ads;

import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzyr {
    private final Handler zza;
    private final zzyt zzb;
    private boolean zzc;

    public zzyr(Handler handler, zzyt zzytVar) {
        this.zza = handler;
        this.zzb = zzytVar;
    }

    public final void zza() {
        this.zzc = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Handler zzb() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzyt zzc() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ boolean zzd() {
        return this.zzc;
    }
}
