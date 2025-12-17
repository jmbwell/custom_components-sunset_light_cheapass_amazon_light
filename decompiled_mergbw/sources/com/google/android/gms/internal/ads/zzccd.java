package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzccd extends zzaqo {
    static final zzccd zzb = new zzccd();

    zzccd() {
    }

    @Override // com.google.android.gms.internal.ads.zzaqo
    public final zzaqs zza(String str, byte[] bArr, String str2) {
        if ("moov".equals(str)) {
            return new zzaqu();
        }
        if ("mvhd".equals(str)) {
            return new zzaqv();
        }
        return new zzaqw(str);
    }
}
