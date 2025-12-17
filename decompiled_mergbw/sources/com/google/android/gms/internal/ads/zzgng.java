package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzgng {
    private static final byte[] zza;

    static {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < 10; i++) {
            bArr[i + 48] = (byte) i;
        }
        for (int i2 = 0; i2 < 26; i2++) {
            byte b2 = (byte) (i2 + 10);
            bArr[i2 + 65] = b2;
            bArr[i2 + 97] = b2;
        }
        zza = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(char c2) {
        if (c2 < 128) {
            return zza[c2];
        }
        return -1;
    }
}
