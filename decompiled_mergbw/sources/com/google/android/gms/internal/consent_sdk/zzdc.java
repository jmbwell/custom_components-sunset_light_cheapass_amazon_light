package com.google.android.gms.internal.consent_sdk;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes3.dex */
public final class zzdc extends zzcz {
    private final zzde zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdc(zzde zzdeVar, int i) {
        super(zzdeVar.size(), i);
        this.zza = zzdeVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzcz
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
