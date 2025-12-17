package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes3.dex */
interface zzjv {

    /* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
    /* renamed from: com.google.android.gms.internal.measurement.zzjv$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static Object zzh(zzju zzjuVar) {
            try {
                return zzjuVar.zza();
            } catch (SecurityException unused) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return zzjuVar.zza();
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
        }
    }

    Object zze(String str);
}
