package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes3.dex */
public final class zzai {
    private Application zza;

    private zzai() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzai(zzal zzalVar) {
    }

    public final zza zza() {
        zzdq.zzb(this.zza, Application.class);
        return new zzah(this.zza);
    }

    public final zzai zzb(Application application) {
        application.getClass();
        this.zza = application;
        return this;
    }
}
