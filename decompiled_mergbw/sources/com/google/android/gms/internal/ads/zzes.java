package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzan;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzes implements zzan {
    public final int zza;

    public zzes(int i) {
        this.zza = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzes) && this.zza == ((zzes) obj).zza;
    }

    public final int hashCode() {
        return this.zza;
    }

    public final String toString() {
        int i = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 19);
        sb.append("Mp4AlternateGroup: ");
        sb.append(i);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzan
    public /* synthetic */ void zza(zzal zzalVar) {
        zzan.CC.$default$zza(this, zzalVar);
    }
}
