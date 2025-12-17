package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzhpp {
    public static zzhpp zzb(Class cls) {
        if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
            return new zzhpk(cls.getSimpleName());
        }
        return new zzhpm(cls.getSimpleName());
    }

    public abstract void zza(String str);
}
