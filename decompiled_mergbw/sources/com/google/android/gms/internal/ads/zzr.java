package com.google.android.gms.internal.ads;

import android.os.Build;
import android.util.SparseBooleanArray;
import com.google.firebase.analytics.FirebaseAnalytics;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzr {
    private final SparseBooleanArray zza;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzr) {
            zzr zzrVar = (zzr) obj;
            if (Build.VERSION.SDK_INT < 24) {
                SparseBooleanArray sparseBooleanArray = this.zza;
                if (sparseBooleanArray.size() == zzrVar.zza.size()) {
                    for (int i = 0; i < sparseBooleanArray.size(); i++) {
                        if (zzc(i) != zzrVar.zzc(i)) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }
            return this.zza.equals(zzrVar.zza);
        }
        return false;
    }

    public final int hashCode() {
        if (Build.VERSION.SDK_INT < 24) {
            SparseBooleanArray sparseBooleanArray = this.zza;
            int size = sparseBooleanArray.size();
            for (int i = 0; i < sparseBooleanArray.size(); i++) {
                size = (size * 31) + zzc(i);
            }
            return size;
        }
        return this.zza.hashCode();
    }

    public final boolean zza(int i) {
        return this.zza.get(i);
    }

    public final int zzb() {
        return this.zza.size();
    }

    public final int zzc(int i) {
        SparseBooleanArray sparseBooleanArray = this.zza;
        zzghc.zzm(i, sparseBooleanArray.size(), FirebaseAnalytics.Param.INDEX);
        return sparseBooleanArray.keyAt(i);
    }
}
