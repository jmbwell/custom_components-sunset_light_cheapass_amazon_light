package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
final class zzhlf extends zzhle {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
        if (r13[r14] <= (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
        if (r13[r14] <= (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0080, code lost:
        if (r13[r14] <= (-65)) goto L11;
     */
    @Override // com.google.android.gms.internal.ads.zzhle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(int r12, byte[] r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhlf.zza(int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhle
    public final String zzb(byte[] bArr, int i, int i2) throws zzhiw {
        int i3;
        int length = bArr.length;
        if ((((length - i) - i2) | i | i2) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i4 = i + i2;
        char[] cArr = new char[i2];
        int i5 = 0;
        while (i < i4) {
            byte b2 = bArr[i];
            if (!zzhld.zza(b2)) {
                break;
            }
            i++;
            cArr[i5] = (char) b2;
            i5++;
        }
        while (i < i4) {
            int i6 = i + 1;
            byte b3 = bArr[i];
            if (zzhld.zza(b3)) {
                cArr[i5] = (char) b3;
                i5++;
                i = i6;
                while (i < i4) {
                    byte b4 = bArr[i];
                    if (zzhld.zza(b4)) {
                        i++;
                        cArr[i5] = (char) b4;
                        i5++;
                    }
                }
            } else {
                if (zzhld.zzb(b3)) {
                    if (i6 < i4) {
                        i3 = i5 + 1;
                        i += 2;
                        zzhld.zzd(b3, bArr[i6], cArr, i5);
                    } else {
                        throw new zzhiw("Protocol message had invalid UTF-8.");
                    }
                } else if (zzhld.zzc(b3)) {
                    if (i6 < i4 - 1) {
                        i3 = i5 + 1;
                        int i7 = i + 2;
                        i += 3;
                        zzhld.zze(b3, bArr[i6], bArr[i7], cArr, i5);
                    } else {
                        throw new zzhiw("Protocol message had invalid UTF-8.");
                    }
                } else if (i6 < i4 - 2) {
                    byte b5 = bArr[i6];
                    int i8 = i + 3;
                    i += 4;
                    zzhld.zzf(b3, b5, bArr[i + 2], bArr[i8], cArr, i5);
                    i5 += 2;
                } else {
                    throw new zzhiw("Protocol message had invalid UTF-8.");
                }
                i5 = i3;
            }
        }
        return new String(cArr, 0, i5);
    }
}
