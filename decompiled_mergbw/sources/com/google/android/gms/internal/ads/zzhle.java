package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
abstract class zzhle {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static final String zzc(ByteBuffer byteBuffer, int i, int i2) throws zzhiw {
        int i3;
        if ((((byteBuffer.limit() - i) - i2) | i | i2) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i4 = i + i2;
        char[] cArr = new char[i2];
        int i5 = 0;
        while (i < i4) {
            byte b2 = byteBuffer.get(i);
            if (!zzhld.zza(b2)) {
                break;
            }
            i++;
            cArr[i5] = (char) b2;
            i5++;
        }
        int i6 = i5;
        while (i < i4) {
            int i7 = i + 1;
            byte b3 = byteBuffer.get(i);
            if (zzhld.zza(b3)) {
                cArr[i6] = (char) b3;
                i6++;
                i = i7;
                while (i < i4) {
                    byte b4 = byteBuffer.get(i);
                    if (zzhld.zza(b4)) {
                        i++;
                        cArr[i6] = (char) b4;
                        i6++;
                    }
                }
            } else {
                if (zzhld.zzb(b3)) {
                    if (i7 < i4) {
                        i3 = i6 + 1;
                        i += 2;
                        zzhld.zzd(b3, byteBuffer.get(i7), cArr, i6);
                    } else {
                        throw new zzhiw("Protocol message had invalid UTF-8.");
                    }
                } else if (zzhld.zzc(b3)) {
                    if (i7 < i4 - 1) {
                        i3 = i6 + 1;
                        int i8 = i + 2;
                        i += 3;
                        zzhld.zze(b3, byteBuffer.get(i7), byteBuffer.get(i8), cArr, i6);
                    } else {
                        throw new zzhiw("Protocol message had invalid UTF-8.");
                    }
                } else if (i7 < i4 - 2) {
                    byte b5 = byteBuffer.get(i7);
                    int i9 = i + 3;
                    i += 4;
                    zzhld.zzf(b3, b5, byteBuffer.get(i + 2), byteBuffer.get(i9), cArr, i6);
                    i6 += 2;
                } else {
                    throw new zzhiw("Protocol message had invalid UTF-8.");
                }
                i6 = i3;
            }
        }
        return new String(cArr, 0, i6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zza(int i, byte[] bArr, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String zzb(byte[] bArr, int i, int i2) throws zzhiw;
}
