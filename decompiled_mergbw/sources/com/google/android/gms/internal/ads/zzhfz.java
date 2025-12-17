package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzhfz implements zzhbw {
    final zzhbw zza;
    final zzhbw zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhfz(zzhbw zzhbwVar, zzhbw zzhbwVar2, byte[] bArr) {
        this.zza = zzhbwVar;
        this.zzb = zzhbwVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhbw
    public final byte[] zza(byte[] bArr, int i) throws GeneralSecurityException {
        return bArr.length <= 64 ? this.zza.zza(bArr, i) : this.zzb.zza(bArr, i);
    }
}
