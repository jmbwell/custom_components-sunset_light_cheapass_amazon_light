package com.google.android.gms.internal.ads;

import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Utf8;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzef {
    private static final char[] zza = {'\r', '\n'};
    private static final char[] zzb = {'\n'};
    private static final zzgke zzc = zzgke.zzl(StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    private static final AtomicBoolean zzd = new AtomicBoolean();
    private byte[] zze;
    private int zzf;
    private int zzg;

    public zzef() {
        this.zze = zzeo.zzb;
    }

    public zzef(byte[] bArr, int i) {
        this.zze = bArr;
        this.zzg = i;
    }

    private final char zzS(ByteOrder byteOrder, int i) {
        zzW(2);
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.zze;
            int i2 = this.zzf + i;
            return zzgnb.zza(bArr[i2], bArr[i2 + 1]);
        }
        byte[] bArr2 = this.zze;
        int i3 = this.zzf + i;
        return zzgnb.zza(bArr2[i3 + 1], bArr2[i3]);
    }

    private final char zzT(Charset charset, char[] cArr) {
        int zzU;
        if (zzd() >= zzV(charset) && (zzU = zzU(charset)) != 0) {
            if (!Character.isSupplementaryCodePoint(r0)) {
                long j = r0;
                char c2 = (char) j;
                zzghc.zze(((long) c2) == j, "Out of range: %s", j);
                for (char c3 : cArr) {
                    if (c3 == c2) {
                        this.zzf += zzgne.zza(zzU & 255);
                        return c2;
                    }
                }
            }
        }
        return (char) 0;
    }

    private final int zzU(Charset charset) {
        int i;
        int i2;
        int m;
        zzghc.zzf(zzc.contains(charset), "Unsupported charset: %s", charset);
        if (zzd() < zzV(charset)) {
            int i3 = this.zzf;
            int i4 = this.zzg;
            StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 17 + String.valueOf(i4).length());
            sb.append("position=");
            sb.append(i3);
            sb.append(", limit=");
            sb.append(i4);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        int i5 = 1;
        if (charset.equals(StandardCharsets.US_ASCII)) {
            byte b2 = this.zze[this.zzf];
            if ((b2 & 128) == 0) {
                i = zzef$$ExternalSyntheticBackport0.m(b2);
                return (i << 8) | i5;
            }
            return 0;
        }
        if (charset.equals(StandardCharsets.UTF_8)) {
            byte b3 = this.zze[this.zzf];
            if ((b3 & 128) == 0) {
                i2 = 1;
            } else if ((b3 & 224) == 192 && zzd() >= 2 && zzX(this.zze[this.zzf + 1])) {
                i2 = 2;
            } else {
                if ((this.zze[this.zzf] & 240) == 224 && zzd() >= 3) {
                    byte[] bArr = this.zze;
                    int i6 = this.zzf;
                    if (zzX(bArr[i6 + 1]) && zzX(bArr[i6 + 2])) {
                        i2 = 3;
                    }
                }
                if ((this.zze[this.zzf] & 248) == 240 && zzd() >= 4) {
                    byte[] bArr2 = this.zze;
                    int i7 = this.zzf;
                    if (zzX(bArr2[i7 + 1]) && zzX(bArr2[i7 + 2]) && zzX(bArr2[i7 + 3])) {
                        i2 = 4;
                    }
                }
                i2 = 0;
            }
            if (i2 == 1) {
                m = zzef$$ExternalSyntheticBackport0.m(this.zze[this.zzf]);
            } else if (i2 == 2) {
                byte[] bArr3 = this.zze;
                int i8 = this.zzf;
                m = zzY(0, 0, bArr3[i8], bArr3[i8 + 1]);
            } else if (i2 != 3) {
                if (i2 == 4) {
                    byte[] bArr4 = this.zze;
                    int i9 = this.zzf;
                    m = zzY(bArr4[i9], bArr4[i9 + 1], bArr4[i9 + 2], bArr4[i9 + 3]);
                }
                return 0;
            } else {
                byte[] bArr5 = this.zze;
                int i10 = this.zzf;
                m = zzY(0, bArr5[i10] & 15, bArr5[i10 + 1], bArr5[i10 + 2]);
            }
            i5 = i2;
            i = m;
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char zzS = zzS(byteOrder, 0);
            if (!Character.isHighSurrogate(zzS) || zzd() < 4) {
                i = zzS;
                i5 = 2;
            } else {
                i = Character.toCodePoint(zzS, zzS(byteOrder, 2));
                i5 = 4;
            }
        }
        return (i << 8) | i5;
    }

    private static int zzV(Charset charset) {
        zzghc.zzf(zzc.contains(charset), "Unsupported charset: %s", charset);
        return (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) ? 1 : 2;
    }

    private final void zzW(int i) {
        if (!zzd.get() || zzd() >= i) {
            return;
        }
        int zzd2 = zzd();
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 25 + String.valueOf(zzd2).length());
        sb.append("bytesNeeded= ");
        sb.append(i);
        sb.append(", bytesLeft=");
        sb.append(zzd2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    private static boolean zzX(byte b2) {
        return (b2 & 192) == 128;
    }

    private static int zzY(int i, int i2, int i3, int i4) {
        return zzgne.zze((byte) 0, zzgni.zza(((i & 7) << 2) | ((i2 & 48) >> 4)), zzgni.zza(((i3 & 60) >> 2) | ((i2 & 15) << 4)), zzgni.zza((i4 & 63) | ((i3 & 3) << 6)));
    }

    public final long zzA() {
        int i;
        zzW(4);
        byte[] bArr = this.zze;
        int i2 = this.zzf;
        int i3 = i2 + 1;
        this.zzf = i3;
        int i4 = i2 + 2;
        this.zzf = i4;
        long j = bArr[i3];
        this.zzf = i2 + 3;
        long j2 = bArr[i4];
        this.zzf = i2 + 4;
        return ((bArr[i] & 255) << 24) | (255 & bArr[i2]) | ((j & 255) << 8) | ((j2 & 255) << 16);
    }

    public final int zzB() {
        zzW(4);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        int i3 = i + 2;
        this.zzf = i3;
        int i4 = i + 3;
        this.zzf = i4;
        this.zzf = i + 4;
        return (bArr[i4] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i2] & 255) << 16) | ((bArr[i3] & 255) << 8);
    }

    public final int zzC() {
        zzW(4);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        int i3 = i + 2;
        this.zzf = i3;
        int i4 = i + 3;
        this.zzf = i4;
        this.zzf = i + 4;
        int i5 = (bArr[i2] & 255) << 8;
        return ((bArr[i4] & 255) << 24) | i5 | (bArr[i] & 255) | ((bArr[i3] & 255) << 16);
    }

    public final long zzD() {
        int i;
        zzW(8);
        byte[] bArr = this.zze;
        int i2 = this.zzf;
        int i3 = i2 + 1;
        this.zzf = i3;
        int i4 = i2 + 2;
        this.zzf = i4;
        long j = bArr[i3];
        int i5 = i2 + 3;
        this.zzf = i5;
        long j2 = bArr[i4];
        int i6 = i2 + 4;
        this.zzf = i6;
        long j3 = bArr[i5];
        int i7 = i2 + 5;
        this.zzf = i7;
        long j4 = bArr[i6];
        int i8 = i2 + 6;
        this.zzf = i8;
        long j5 = bArr[i7];
        this.zzf = i2 + 7;
        long j6 = bArr[i8];
        this.zzf = i2 + 8;
        return ((j6 & 255) << 8) | ((bArr[i2] & 255) << 56) | ((j & 255) << 48) | ((j2 & 255) << 40) | ((j3 & 255) << 32) | ((j4 & 255) << 24) | ((j5 & 255) << 16) | (bArr[i] & 255);
    }

    public final long zzE() {
        int i;
        int i2;
        zzW(8);
        byte[] bArr = this.zze;
        int i3 = this.zzf;
        int i4 = i3 + 1;
        this.zzf = i4;
        long j = bArr[i3];
        int i5 = i3 + 2;
        this.zzf = i5;
        long j2 = bArr[i4];
        int i6 = i3 + 3;
        this.zzf = i6;
        long j3 = bArr[i5];
        int i7 = i3 + 4;
        this.zzf = i7;
        long j4 = bArr[i6];
        int i8 = i3 + 5;
        this.zzf = i8;
        long j5 = bArr[i7];
        this.zzf = i3 + 6;
        long j6 = bArr[i8];
        this.zzf = i3 + 7;
        this.zzf = i3 + 8;
        return ((j6 & 255) << 40) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((bArr[i] & 255) << 48) | ((bArr[i2] & 255) << 56);
    }

    public final int zzF() {
        zzW(4);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        this.zzf = i + 2;
        this.zzf = i + 4;
        return ((bArr[i] & 255) << 8) | (bArr[i2] & 255);
    }

    public final int zzG() {
        return (zzs() << 21) | (zzs() << 14) | (zzs() << 7) | zzs();
    }

    public final int zzH() {
        int zzB = zzB();
        if (zzB >= 0) {
            return zzB;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(zzB).length() + 18);
        sb.append("Top bit not zero: ");
        sb.append(zzB);
        throw new IllegalStateException(sb.toString());
    }

    public final int zzI() {
        int zzC = zzC();
        if (zzC >= 0) {
            return zzC;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(zzC).length() + 18);
        sb.append("Top bit not zero: ");
        sb.append(zzC);
        throw new IllegalStateException(sb.toString());
    }

    public final long zzJ() {
        long zzD = zzD();
        if (zzD >= 0) {
            return zzD;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(zzD).length() + 18);
        sb.append("Top bit not zero: ");
        sb.append(zzD);
        throw new IllegalStateException(sb.toString());
    }

    public final String zzK(int i, Charset charset) {
        zzW(i);
        byte[] bArr = this.zze;
        int i2 = this.zzf;
        String str = new String(bArr, i2, i, charset);
        this.zzf = i2 + i;
        return str;
    }

    public final String zzL(int i) {
        zzW(i);
        if (i == 0) {
            return "";
        }
        int i2 = this.zzf;
        int i3 = (i2 + i) - 1;
        String zzj = zzeo.zzj(this.zze, i2, (i3 >= this.zzg || this.zze[i3] != 0) ? i : i - 1);
        this.zzf += i;
        return zzj;
    }

    public final String zzM(char c2) {
        if (zzd() == 0) {
            return null;
        }
        int i = this.zzf;
        while (i < this.zzg && this.zze[i] != 0) {
            i++;
        }
        byte[] bArr = this.zze;
        int i2 = this.zzf;
        String zzj = zzeo.zzj(bArr, i2, i - i2);
        this.zzf = i;
        if (i < this.zzg) {
            this.zzf = i + 1;
        }
        return zzj;
    }

    public final String zzN(Charset charset) {
        zzghc.zzf(zzc.contains(charset), "Unsupported charset: %s", charset);
        if (zzd() == 0) {
            return null;
        }
        if (!charset.equals(StandardCharsets.US_ASCII)) {
            zzR();
        }
        int i = 1;
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(StandardCharsets.US_ASCII)) {
            i = 2;
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                String valueOf = String.valueOf(charset);
                String.valueOf(valueOf);
                throw new IllegalArgumentException("Unsupported charset: ".concat(String.valueOf(valueOf)));
            }
        }
        int i2 = this.zzf;
        while (true) {
            int i3 = this.zzg;
            if (i2 >= i3 - (i - 1)) {
                i2 = i3;
                break;
            } else if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && zzeo.zzk(this.zze[i2])) {
                break;
            } else {
                if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                    byte[] bArr = this.zze;
                    if (bArr[i2] == 0 && zzeo.zzk(bArr[i2 + 1])) {
                        break;
                    }
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    byte[] bArr2 = this.zze;
                    if (bArr2[i2 + 1] == 0 && zzeo.zzk(bArr2[i2])) {
                        break;
                    }
                }
                i2 += i;
            }
        }
        String zzK = zzK(i2 - this.zzf, charset);
        if (this.zzf != this.zzg && zzT(charset, zza) == '\r') {
            zzT(charset, zzb);
        }
        return zzK;
    }

    public final long zzO() {
        int i;
        byte b2;
        int i2;
        zzW(1);
        long j = this.zze[this.zzf];
        int i3 = 7;
        while (true) {
            i = 0;
            if (i3 < 0) {
                break;
            }
            if (((1 << i3) & j) != 0) {
                i3--;
            } else if (i3 < 6) {
                j &= i2 - 1;
                i = 7 - i3;
            } else if (i3 == 7) {
                i = 1;
            }
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 35);
            sb.append("Invalid UTF-8 sequence first byte: ");
            sb.append(j);
            throw new NumberFormatException(sb.toString());
        }
        zzW(i);
        for (int i4 = 1; i4 < i; i4++) {
            if ((this.zze[this.zzf + i4] & 192) != 128) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(j).length() + 42);
                sb2.append("Invalid UTF-8 sequence continuation byte: ");
                sb2.append(j);
                throw new NumberFormatException(sb2.toString());
            }
            j = (j << 6) | (b2 & Utf8.REPLACEMENT_BYTE);
        }
        this.zzf += i;
        return j;
    }

    public final void zzQ() {
        do {
        } while ((zzs() & 128) != 0);
    }

    public final Charset zzR() {
        if (zzd() >= 3) {
            byte[] bArr = this.zze;
            int i = this.zzf;
            if (bArr[i] == -17 && bArr[i + 1] == -69 && bArr[i + 2] == -65) {
                this.zzf = i + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (zzd() >= 2) {
            byte[] bArr2 = this.zze;
            int i2 = this.zzf;
            byte b2 = bArr2[i2];
            if (b2 == -2) {
                if (bArr2[i2 + 1] == -1) {
                    this.zzf = i2 + 2;
                    return StandardCharsets.UTF_16BE;
                }
                return null;
            } else if (b2 == -1 && bArr2[i2 + 1] == -2) {
                this.zzf = i2 + 2;
                return StandardCharsets.UTF_16LE;
            } else {
                return null;
            }
        }
        return null;
    }

    public final void zza(int i) {
        byte[] bArr = this.zze;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        zzb(bArr, i);
    }

    public final void zzb(byte[] bArr, int i) {
        this.zze = bArr;
        this.zzg = i;
        this.zzf = 0;
    }

    public final void zzc(int i) {
        byte[] bArr = this.zze;
        if (i > bArr.length) {
            this.zze = Arrays.copyOf(bArr, i);
        }
    }

    public final int zzd() {
        return Math.max(this.zzg - this.zzf, 0);
    }

    public final int zze() {
        return this.zzg;
    }

    public final void zzf(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.zze.length) {
            z = true;
        }
        zzghc.zza(z);
        this.zzg = i;
    }

    public final int zzg() {
        return this.zzf;
    }

    public final void zzh(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.zzg) {
            z = true;
        }
        zzghc.zza(z);
        this.zzf = i;
    }

    public final byte[] zzi() {
        return this.zze;
    }

    public final int zzj() {
        return this.zze.length;
    }

    public final void zzk(int i) {
        zzh(this.zzf + i);
    }

    public final void zzl(zzee zzeeVar, int i) {
        zzm(zzeeVar.zza, 0, i);
        zzeeVar.zzf(0);
    }

    public final void zzm(byte[] bArr, int i, int i2) {
        zzW(i2);
        System.arraycopy(this.zze, this.zzf, bArr, i, i2);
        this.zzf += i2;
    }

    public final int zzn() {
        zzW(1);
        return this.zze[this.zzf] & 255;
    }

    public final char zzo() {
        return zzS(ByteOrder.BIG_ENDIAN, 0);
    }

    public final int zzp(Charset charset) {
        int zzU = zzU(charset);
        if (zzU != 0) {
            return zzgne.zza(zzU >>> 8);
        }
        return 1114112;
    }

    public final int zzq() {
        if (zzd() < 3) {
            int i = this.zzf;
            int i2 = this.zzg;
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 17 + String.valueOf(i2).length());
            sb.append("position=");
            sb.append(i);
            sb.append(", limit=");
            sb.append(i2);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        this.zzf -= 3;
        return zzx();
    }

    public final int zzr() {
        if (zzd() < 4) {
            int i = this.zzf;
            int i2 = this.zzg;
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 17 + String.valueOf(i2).length());
            sb.append("position=");
            sb.append(i);
            sb.append(", limit=");
            sb.append(i2);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        this.zzf -= 4;
        return zzB();
    }

    public final int zzs() {
        zzW(1);
        byte[] bArr = this.zze;
        int i = this.zzf;
        this.zzf = i + 1;
        return bArr[i] & 255;
    }

    public final int zzt() {
        zzW(2);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        this.zzf = i + 2;
        return (bArr[i2] & 255) | ((bArr[i] & 255) << 8);
    }

    public final int zzu() {
        zzW(2);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        this.zzf = i + 2;
        return ((bArr[i2] & 255) << 8) | (bArr[i] & 255);
    }

    public final short zzv() {
        zzW(2);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        this.zzf = i + 2;
        return (short) ((bArr[i2] & 255) | ((bArr[i] & 255) << 8));
    }

    public final short zzw() {
        zzW(2);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        this.zzf = i + 2;
        return (short) (((bArr[i2] & 255) << 8) | (bArr[i] & 255));
    }

    public final int zzx() {
        zzW(3);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        int i3 = i + 2;
        this.zzf = i3;
        this.zzf = i + 3;
        return (bArr[i3] & 255) | ((bArr[i] & 255) << 16) | ((bArr[i2] & 255) << 8);
    }

    public final int zzy() {
        zzW(3);
        byte[] bArr = this.zze;
        int i = this.zzf;
        int i2 = i + 1;
        this.zzf = i2;
        int i3 = i + 2;
        this.zzf = i3;
        this.zzf = i + 3;
        return (bArr[i3] & 255) | (((bArr[i] & 255) << 24) >> 8) | ((bArr[i2] & 255) << 8);
    }

    public final long zzz() {
        int i;
        zzW(4);
        byte[] bArr = this.zze;
        int i2 = this.zzf;
        int i3 = i2 + 1;
        this.zzf = i3;
        int i4 = i2 + 2;
        this.zzf = i4;
        long j = bArr[i3];
        this.zzf = i2 + 3;
        long j2 = bArr[i4];
        this.zzf = i2 + 4;
        return (bArr[i] & 255) | ((bArr[i2] & 255) << 24) | ((j & 255) << 16) | ((j2 & 255) << 8);
    }

    public zzef(int i) {
        this.zze = new byte[i];
        this.zzg = i;
    }

    public final long zzP() {
        long j = 0;
        for (int i = 0; i < 9; i++) {
            if (this.zzf != this.zzg) {
                long zzs = zzs();
                j |= (127 & zzs) << (i * 7);
                if ((zzs & 128) == 0) {
                    break;
                }
            } else {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
        }
        return j;
    }

    public zzef(byte[] bArr) {
        this.zze = bArr;
        this.zzg = bArr.length;
    }
}
