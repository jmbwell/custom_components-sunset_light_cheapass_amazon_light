package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgjx extends zzgib {
    private final zzgjz zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgjx(zzgjz zzgjzVar, int i) {
        super(zzgjzVar.size(), i);
        this.zza = zzgjzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgib
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
