package com.google.android.gms.internal.ads;

import androidx.core.view.PointerIconCompat;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzhma implements zzhin {
    static final zzhin zza = new zzhma();

    private zzhma() {
    }

    @Override // com.google.android.gms.internal.ads.zzhin
    public final boolean zza(int i) {
        if (i != 0 && i != 1 && i != 2 && i != 1999) {
            switch (i) {
                case 1000:
                case 1001:
                case PointerIconCompat.TYPE_HAND /* 1002 */:
                case 1003:
                case 1004:
                case 1005:
                case 1006:
                case 1007:
                case PointerIconCompat.TYPE_TEXT /* 1008 */:
                case 1009:
                case 1010:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
