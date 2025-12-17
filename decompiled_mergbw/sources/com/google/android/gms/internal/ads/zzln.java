package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public interface zzln {

    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* renamed from: com.google.android.gms.internal.ads.zzln$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static void $default$zzv(zzln _this, zzlm zzlmVar) {
        }

        public static void $default$zzw(zzln _this) {
        }

        public static boolean zzZ(int i, boolean z) {
            int i2 = i & 7;
            if (i2 != 4) {
                return z && i2 == 3;
            }
            return true;
        }
    }

    String zzS();

    int zza();

    int zzaa(zzu zzuVar) throws zzhz;

    int zzu() throws zzhz;

    void zzv(zzlm zzlmVar);

    void zzw();
}
