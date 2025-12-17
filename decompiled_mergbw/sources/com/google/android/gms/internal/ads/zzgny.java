package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzgny extends zzgnw {
    private zzgny() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgny(byte[] bArr) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgnw
    public final void zza(zzgnz zzgnzVar, Set set, Set set2) {
        synchronized (zzgnzVar) {
            if (zzgnzVar.seenExceptionsField == null) {
                zzgnzVar.seenExceptionsField = set2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgnw
    public final int zzb(zzgnz zzgnzVar) {
        int i;
        synchronized (zzgnzVar) {
            i = zzgnzVar.remainingField - 1;
            zzgnzVar.remainingField = i;
        }
        return i;
    }
}
