package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzghx {
    public static zzght zza(zzght zzghtVar) {
        if ((zzghtVar instanceof zzghw) || (zzghtVar instanceof zzghu)) {
            return zzghtVar;
        }
        if (zzghtVar instanceof Serializable) {
            return new zzghu(zzghtVar);
        }
        return new zzghw(zzghtVar);
    }
}
