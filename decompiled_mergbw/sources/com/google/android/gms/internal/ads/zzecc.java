package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import org.apache.commons.math3.geometry.VectorFormat;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzecc extends zzecf {
    private final String zza;
    private final String zzb;
    private final Drawable zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzecc(String str, String str2, Drawable drawable) {
        this.zza = str;
        if (str2 == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.zzb = str2;
        this.zzc = drawable;
    }

    public final boolean equals(Object obj) {
        Drawable drawable;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzecf) {
            zzecf zzecfVar = (zzecf) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzecfVar.zza()) : zzecfVar.zza() == null) {
                if (this.zzb.equals(zzecfVar.zzb()) && ((drawable = this.zzc) != null ? drawable.equals(zzecfVar.zzc()) : zzecfVar.zzc() == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        String str = this.zza;
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(valueOf).length();
        String str2 = this.zzb;
        StringBuilder sb = new StringBuilder(length + 42 + str2.length() + 7 + length2 + 1);
        sb.append("OfflineAdAssets{advertiserName=");
        sb.append(str);
        sb.append(", imageUrl=");
        sb.append(str2);
        sb.append(", icon=");
        sb.append(valueOf);
        sb.append(VectorFormat.DEFAULT_SUFFIX);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzecf
    public final String zza() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzecf
    public final String zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzecf
    public final Drawable zzc() {
        return this.zzc;
    }

    public final int hashCode() {
        String str = this.zza;
        int hashCode = (((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.zzb.hashCode();
        Drawable drawable = this.zzc;
        return (hashCode * 1000003) ^ (drawable != null ? drawable.hashCode() : 0);
    }
}
