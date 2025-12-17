package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;
import okio.Utf8;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
final class zzhld {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zza(byte b2) {
        return b2 >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zzb(byte b2) {
        return b2 < -32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zzc(byte b2) {
        return b2 < -16;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(byte b2, byte b3, char[] cArr, int i) {
        if (b2 < -62 || zzg(b3)) {
            throw new zzhiw("Protocol message had invalid UTF-8.");
        }
        cArr[i] = (char) (((b2 & Ascii.US) << 6) | (b3 & Utf8.REPLACEMENT_BYTE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzf(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) {
        if (zzg(b3) || (((b2 << Ascii.FS) + (b3 + 112)) >> 30) != 0 || zzg(b4) || zzg(b5)) {
            throw new zzhiw("Protocol message had invalid UTF-8.");
        }
        int i2 = ((b2 & 7) << 18) | ((b3 & Utf8.REPLACEMENT_BYTE) << 12) | ((b4 & Utf8.REPLACEMENT_BYTE) << 6) | (b5 & Utf8.REPLACEMENT_BYTE);
        cArr[i] = (char) ((i2 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i + 1] = (char) ((i2 & 1023) + Utf8.LOG_SURROGATE_HEADER);
    }

    private static boolean zzg(byte b2) {
        return b2 > -65;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zze(byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (!zzg(b3)) {
            if (b2 == -32) {
                if (b3 >= -96) {
                    b2 = -32;
                }
            }
            if (b2 == -19) {
                if (b3 < -96) {
                    b2 = -19;
                }
            }
            if (!zzg(b4)) {
                cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & Utf8.REPLACEMENT_BYTE) << 6) | (b4 & Utf8.REPLACEMENT_BYTE));
                return;
            }
        }
        throw new zzhiw("Protocol message had invalid UTF-8.");
    }
}
