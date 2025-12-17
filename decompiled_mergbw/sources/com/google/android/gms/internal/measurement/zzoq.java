package com.google.android.gms.internal.measurement;

import com.google.common.base.Ascii;
import okio.Utf8;
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes3.dex */
final class zzoq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zza(byte b2) {
        return b2 >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzb(byte b2, byte b3, char[] cArr, int i) {
        if (b2 < -62 || zze(b3)) {
            throw new zzmr("Protocol message had invalid UTF-8.");
        }
        cArr[i] = (char) (((b2 & Ascii.US) << 6) | (b3 & Utf8.REPLACEMENT_BYTE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) {
        if (zze(b3) || (((b2 << Ascii.FS) + (b3 + 112)) >> 30) != 0 || zze(b4) || zze(b5)) {
            throw new zzmr("Protocol message had invalid UTF-8.");
        }
        int i2 = ((b2 & 7) << 18) | ((b3 & Utf8.REPLACEMENT_BYTE) << 12) | ((b4 & Utf8.REPLACEMENT_BYTE) << 6) | (b5 & Utf8.REPLACEMENT_BYTE);
        cArr[i] = (char) ((i2 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        cArr[i + 1] = (char) ((i2 & 1023) + Utf8.LOG_SURROGATE_HEADER);
    }

    private static boolean zze(byte b2) {
        return b2 > -65;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzc(byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (!zze(b3)) {
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
            if (!zze(b4)) {
                cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & Utf8.REPLACEMENT_BYTE) << 6) | (b4 & Utf8.REPLACEMENT_BYTE));
                return;
            }
        }
        throw new zzmr("Protocol message had invalid UTF-8.");
    }
}
