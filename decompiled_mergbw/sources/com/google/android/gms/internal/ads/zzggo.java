package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzggo implements zzghd {
    public static zzggo zzc(char c2) {
        return new zzggl(c2);
    }

    @Override // com.google.android.gms.internal.ads.zzghd
    @Deprecated
    public final /* synthetic */ boolean zza(Object obj) {
        return zzb(((Character) obj).charValue());
    }

    public abstract boolean zzb(char c2);
}
