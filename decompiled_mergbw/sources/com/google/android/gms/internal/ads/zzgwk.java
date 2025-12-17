package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgwk {
    public static byte[] zza(byte[] bArr, byte[] bArr2) {
        long zzc = zzc(bArr, 0, 0);
        long zzc2 = zzc(bArr, 3, 2) & 67108611;
        long zzc3 = zzc(bArr, 6, 4) & 67092735;
        long zzc4 = zzc(bArr, 9, 6) & 66076671;
        long zzc5 = zzc(bArr, 12, 8) & 1048575;
        int i = 17;
        byte[] bArr3 = new byte[17];
        long j = 0;
        int i2 = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        while (true) {
            int length = bArr2.length;
            if (i2 < length) {
                int min = Math.min(16, length - i2);
                System.arraycopy(bArr2, i2, bArr3, 0, min);
                bArr3[min] = 1;
                if (min != 16) {
                    Arrays.fill(bArr3, min + 1, i, (byte) 0);
                }
                long j6 = zzc5 * 5;
                long j7 = zzc4 * 5;
                long j8 = zzc3 * 5;
                long zzc6 = j5 + zzc(bArr3, 0, 0);
                long zzc7 = j2 + zzc(bArr3, 3, 2);
                long zzc8 = j + zzc(bArr3, 6, 4);
                long zzc9 = j3 + zzc(bArr3, 9, 6);
                long zzc10 = j4 + (zzc(bArr3, 12, 8) | (bArr3[16] << Ascii.CAN));
                long j9 = zzc7 * zzc;
                long j10 = zzc7 * zzc2;
                long j11 = zzc7 * zzc3;
                long j12 = zzc9 * zzc;
                long j13 = zzc7 * zzc4;
                long j14 = zzc10 * zzc;
                long j15 = (zzc6 * zzc) + (zzc7 * j6) + (zzc8 * j7) + (zzc9 * j8) + (zzc2 * 5 * zzc10);
                long j16 = (zzc6 * zzc2) + j9 + (zzc8 * j6) + (zzc9 * j7) + (j8 * zzc10) + (j15 >> 26);
                long j17 = (zzc6 * zzc3) + j10 + (zzc8 * zzc) + (zzc9 * j6) + (j7 * zzc10) + (j16 >> 26);
                long j18 = (zzc6 * zzc4) + j11 + (zzc8 * zzc2) + j12 + (zzc10 * j6) + (j17 >> 26);
                long j19 = (zzc6 * zzc5) + j13 + (zzc8 * zzc3) + (zzc9 * zzc2) + j14 + (j18 >> 26);
                long j20 = (j15 & 67108863) + ((j19 >> 26) * 5);
                j2 = (j16 & 67108863) + (j20 >> 26);
                i2 += 16;
                j = j17 & 67108863;
                j3 = j18 & 67108863;
                j4 = j19 & 67108863;
                i = 17;
                j5 = j20 & 67108863;
            } else {
                long j21 = j + (j2 >> 26);
                long j22 = j21 & 67108863;
                long j23 = j3 + (j21 >> 26);
                long j24 = j23 & 67108863;
                long j25 = j4 + (j23 >> 26);
                long j26 = j25 & 67108863;
                long j27 = j5 + ((j25 >> 26) * 5);
                long j28 = j27 & 67108863;
                long j29 = j28 + 5;
                long j30 = (j2 & 67108863) + (j27 >> 26);
                long j31 = j30 + (j29 >> 26);
                long j32 = (j31 >> 26) + j22;
                long j33 = j24 + (j32 >> 26);
                long j34 = (j26 + (j33 >> 26)) - 67108864;
                long j35 = j34 >> 63;
                long j36 = ~j35;
                long j37 = (j30 & j35) | (j31 & 67108863 & j36);
                long j38 = (j22 & j35) | (j32 & 67108863 & j36);
                long j39 = (j24 & j35) | (j33 & 67108863 & j36);
                long j40 = (j26 & j35) | (j34 & j36);
                long zzb = (((j35 & j28) | (j29 & 67108863 & j36) | (j37 << 26)) & 4294967295L) + zzb(bArr, 16);
                long zzb2 = (((j37 >> 6) | (j38 << 20)) & 4294967295L) + zzb(bArr, 20);
                long zzb3 = (((j38 >> 12) | (j39 << 14)) & 4294967295L) + zzb(bArr, 24);
                long zzb4 = (((j39 >> 18) | (j40 << 8)) & 4294967295L) + zzb(bArr, 28);
                byte[] bArr4 = new byte[16];
                zzd(bArr4, zzb & 4294967295L, 0);
                long j41 = zzb2 + (zzb >> 32);
                zzd(bArr4, j41 & 4294967295L, 4);
                long j42 = zzb3 + (j41 >> 32);
                zzd(bArr4, j42 & 4294967295L, 8);
                zzd(bArr4, (zzb4 + (j42 >> 32)) & 4294967295L, 12);
                return bArr4;
            }
        }
    }

    private static long zzb(byte[] bArr, int i) {
        int i2 = (bArr[i + 1] & 255) << 8;
        return (((bArr[i + 3] & 255) << 24) | i2 | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    private static long zzc(byte[] bArr, int i, int i2) {
        return (zzb(bArr, i) >> i2) & 67108863;
    }

    private static void zzd(byte[] bArr, long j, int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i + i2] = (byte) (255 & j);
            j >>= 8;
        }
    }
}
