package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzazq {
    final long zza;
    final String zzb;
    final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzazq(long j, String str, int i) {
        this.zza = j;
        this.zzb = str;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzazq) {
            zzazq zzazqVar = (zzazq) obj;
            return zzazqVar.zza == this.zza && zzazqVar.zzc == this.zzc;
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.zza;
    }
}
