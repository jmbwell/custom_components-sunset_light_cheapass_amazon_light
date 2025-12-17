package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzgxu extends zzgqs {
    private final String zza;
    private final zzhep zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgxu(String str, zzhep zzhepVar, byte[] bArr) {
        this.zza = str;
        this.zzb = zzhepVar;
    }

    public final String toString() {
        String str;
        String str2 = this.zza;
        int ordinal = this.zzb.ordinal();
        if (ordinal == 1) {
            str = "TINK";
        } else if (ordinal == 2) {
            str = "LEGACY";
        } else if (ordinal != 3) {
            str = ordinal != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return String.format("(typeUrl=%s, outputPrefixType=%s)", str2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzgqs
    public final boolean zza() {
        return this.zzb != zzhep.RAW;
    }
}
