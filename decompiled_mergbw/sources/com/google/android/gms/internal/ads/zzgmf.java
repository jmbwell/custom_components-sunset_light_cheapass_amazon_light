package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzgmf {
    final int zza;
    final int zzb;
    final int zzc;
    final int zzd;
    private final String zze;
    private final char[] zzf;
    private final byte[] zzg;
    private final boolean[] zzh;
    private final boolean zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzgmf(java.lang.String r10, char[] r11) {
        /*
            r9 = this;
            r0 = 128(0x80, float:1.8E-43)
            byte[] r1 = new byte[r0]
            r2 = -1
            java.util.Arrays.fill(r1, r2)
            r3 = 0
            r4 = r3
        La:
            int r5 = r11.length
            if (r4 >= r5) goto L2b
            char r5 = r11[r4]
            r6 = 1
            if (r5 >= r0) goto L14
            r7 = r6
            goto L15
        L14:
            r7 = r3
        L15:
            java.lang.String r8 = "Non-ASCII character: %s"
            com.google.android.gms.internal.ads.zzghc.zzc(r7, r8, r5)
            r7 = r1[r5]
            if (r7 != r2) goto L1f
            goto L20
        L1f:
            r6 = r3
        L20:
            java.lang.String r7 = "Duplicate character: %s"
            com.google.android.gms.internal.ads.zzghc.zzc(r6, r7, r5)
            byte r6 = (byte) r4
            r1[r5] = r6
            int r4 = r4 + 1
            goto La
        L2b:
            r9.<init>(r10, r11, r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgmf.<init>(java.lang.String, char[]):void");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgmf) {
            zzgmf zzgmfVar = (zzgmf) obj;
            if (this.zzi == zzgmfVar.zzi && Arrays.equals(this.zzf, zzgmfVar.zzf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzf) + (true != this.zzi ? 1237 : 1231);
    }

    public final String toString() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char zza(int i) {
        return this.zzf[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzb(int i) {
        return this.zzh[i % this.zzc];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzc(char c2) throws zzgmi {
        if (c2 > 127) {
            String hexString = Integer.toHexString(c2);
            String.valueOf(hexString);
            throw new zzgmi("Unrecognized character: 0x".concat(String.valueOf(hexString)));
        }
        byte b2 = this.zzg[c2];
        if (b2 == -1) {
            if (c2 <= ' ' || c2 == 127) {
                String hexString2 = Integer.toHexString(c2);
                String.valueOf(hexString2);
                throw new zzgmi("Unrecognized character: 0x".concat(String.valueOf(hexString2)));
            }
            StringBuilder sb = new StringBuilder(String.valueOf(c2).length() + 24);
            sb.append("Unrecognized character: ");
            sb.append(c2);
            throw new zzgmi(sb.toString());
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    public final zzgmf zzd() {
        boolean z;
        int i = 0;
        while (true) {
            char[] cArr = this.zzf;
            int length = cArr.length;
            if (i >= length) {
                return this;
            }
            if (zzggj.zzd(cArr[i])) {
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    } else if (zzggj.zzc(cArr[i2])) {
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                zzghc.zzi(!z, "Cannot call lowerCase() on a mixed-case alphabet");
                char[] cArr2 = new char[cArr.length];
                for (int i3 = 0; i3 < cArr.length; i3++) {
                    char c2 = cArr[i3];
                    if (zzggj.zzd(c2)) {
                        c2 ^= 32;
                    }
                    cArr2[i3] = (char) c2;
                }
                zzgmf zzgmfVar = new zzgmf(this.zze.concat(".lowerCase()"), cArr2);
                if (!this.zzi || zzgmfVar.zzi) {
                    return zzgmfVar;
                }
                byte[] bArr = zzgmfVar.zzg;
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                for (int i4 = 65; i4 <= 90; i4++) {
                    int i5 = i4 | 32;
                    byte b2 = bArr[i4];
                    byte b3 = bArr[i5];
                    if (b2 == -1) {
                        copyOf[i4] = b3;
                    } else {
                        char c3 = (char) i4;
                        char c4 = (char) i5;
                        if (b3 == -1) {
                            copyOf[i5] = b2;
                        } else {
                            throw new IllegalStateException(zzghs.zzd("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c3), Character.valueOf(c4)));
                        }
                    }
                }
                return new zzgmf(zzgmfVar.zze.concat(".ignoreCase()"), zzgmfVar.zzf, copyOf, true);
            }
            i++;
        }
    }

    public final boolean zze(char c2) {
        byte[] bArr = this.zzg;
        return bArr.length > 61 && bArr[61] != -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ char[] zzf() {
        return this.zzf;
    }

    private zzgmf(String str, char[] cArr, byte[] bArr, boolean z) {
        this.zze = str;
        cArr.getClass();
        this.zzf = cArr;
        try {
            int length = cArr.length;
            int zza = zzgmx.zza(length, RoundingMode.UNNECESSARY);
            this.zzb = zza;
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(zza);
            int i = 1 << (3 - numberOfTrailingZeros);
            this.zzc = i;
            this.zzd = zza >> numberOfTrailingZeros;
            this.zza = length - 1;
            this.zzg = bArr;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < this.zzd; i2++) {
                zArr[zzgmx.zzb(i2 * 8, this.zzb, RoundingMode.CEILING)] = true;
            }
            this.zzh = zArr;
            this.zzi = z;
        } catch (ArithmeticException e) {
            int length2 = cArr.length;
            StringBuilder sb = new StringBuilder(String.valueOf(length2).length() + 24);
            sb.append("Illegal alphabet length ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }
}
