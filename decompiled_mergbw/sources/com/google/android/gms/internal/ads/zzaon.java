package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzaon {
    public static X509Certificate[][] zza(String str) throws zzaok, SecurityException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair zza = zzaoo.zza(randomAccessFile);
            if (zza != null) {
                ByteBuffer byteBuffer = (ByteBuffer) zza.first;
                long longValue = ((Long) zza.second).longValue();
                long j = (-20) + longValue;
                if (j >= 0) {
                    randomAccessFile.seek(j);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new zzaok("ZIP64 APK not supported");
                    }
                }
                long zzb = zzaoo.zzb(byteBuffer);
                if (zzb >= longValue) {
                    StringBuilder sb = new StringBuilder(String.valueOf(zzb).length() + 82 + String.valueOf(longValue).length());
                    sb.append("ZIP Central Directory offset out of range: ");
                    sb.append(zzb);
                    sb.append(". ZIP End of Central Directory offset: ");
                    sb.append(longValue);
                    throw new zzaok(sb.toString());
                } else if (zzaoo.zzd(byteBuffer) + zzb == longValue) {
                    if (zzb < 32) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(zzb).length() + 67);
                        sb2.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                        sb2.append(zzb);
                        throw new zzaok(sb2.toString());
                    }
                    ByteBuffer allocate = ByteBuffer.allocate(24);
                    allocate.order(ByteOrder.LITTLE_ENDIAN);
                    randomAccessFile.seek(zzb - allocate.capacity());
                    randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                    if (allocate.getLong(8) != 2334950737559900225L || allocate.getLong(16) != 3617552046287187010L) {
                        throw new zzaok("No APK Signing Block before ZIP Central Directory");
                    }
                    long j2 = allocate.getLong(0);
                    if (j2 < allocate.capacity() || j2 > 2147483639) {
                        StringBuilder sb3 = new StringBuilder(String.valueOf(j2).length() + 37);
                        sb3.append("APK Signing Block size out of range: ");
                        sb3.append(j2);
                        throw new zzaok(sb3.toString());
                    }
                    int i = (int) (8 + j2);
                    long j3 = zzb - i;
                    if (j3 < 0) {
                        StringBuilder sb4 = new StringBuilder(String.valueOf(j3).length() + 39);
                        sb4.append("APK Signing Block offset out of range: ");
                        sb4.append(j3);
                        throw new zzaok(sb4.toString());
                    }
                    ByteBuffer allocate2 = ByteBuffer.allocate(i);
                    allocate2.order(ByteOrder.LITTLE_ENDIAN);
                    randomAccessFile.seek(j3);
                    randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                    long j4 = allocate2.getLong(0);
                    if (j4 != j2) {
                        StringBuilder sb5 = new StringBuilder(String.valueOf(j4).length() + 63 + String.valueOf(j2).length());
                        sb5.append("APK Signing Block sizes in header and footer do not match: ");
                        sb5.append(j4);
                        sb5.append(" vs ");
                        sb5.append(j2);
                        throw new zzaok(sb5.toString());
                    }
                    Pair create = Pair.create(allocate2, Long.valueOf(j3));
                    ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                    long longValue2 = ((Long) create.second).longValue();
                    if (byteBuffer2.order() == ByteOrder.LITTLE_ENDIAN) {
                        int capacity = byteBuffer2.capacity() - 24;
                        if (capacity < 8) {
                            StringBuilder sb6 = new StringBuilder(String.valueOf(capacity).length() + 17);
                            sb6.append("end < start: ");
                            sb6.append(capacity);
                            sb6.append(" < 8");
                            throw new IllegalArgumentException(sb6.toString());
                        }
                        int capacity2 = byteBuffer2.capacity();
                        if (capacity > byteBuffer2.capacity()) {
                            StringBuilder sb7 = new StringBuilder(String.valueOf(capacity).length() + 19 + String.valueOf(capacity2).length());
                            sb7.append("end > capacity: ");
                            sb7.append(capacity);
                            sb7.append(" > ");
                            sb7.append(capacity2);
                            throw new IllegalArgumentException(sb7.toString());
                        }
                        int limit = byteBuffer2.limit();
                        String str2 = "Insufficient data to read size of APK Signing Block entry #";
                        int position = byteBuffer2.position();
                        byteBuffer2.position(0);
                        byteBuffer2.limit(capacity);
                        byteBuffer2.position(8);
                        ByteBuffer slice = byteBuffer2.slice();
                        slice.order(byteBuffer2.order());
                        byteBuffer2.position(0);
                        byteBuffer2.limit(limit);
                        byteBuffer2.position(position);
                        int i2 = 0;
                        while (slice.hasRemaining()) {
                            int i3 = i2 + 1;
                            if (slice.remaining() >= 8) {
                                long j5 = slice.getLong();
                                if (j5 >= 4 && j5 <= 2147483647L) {
                                    int i4 = (int) j5;
                                    int position2 = slice.position() + i4;
                                    if (i4 <= slice.remaining()) {
                                        String str3 = str2;
                                        if (slice.getInt() != 1896449818) {
                                            slice.position(position2);
                                            i2 = i3;
                                            str2 = str3;
                                        } else {
                                            X509Certificate[][] zzb2 = zzb(randomAccessFile.getChannel(), new zzaoj(zzi(slice, i4 - 4), longValue2, zzb, longValue, byteBuffer, null));
                                            randomAccessFile.close();
                                            return zzb2;
                                        }
                                    } else {
                                        int remaining = slice.remaining();
                                        StringBuilder sb8 = new StringBuilder(String.valueOf(i3).length() + 45 + String.valueOf(i4).length() + 13 + String.valueOf(remaining).length());
                                        sb8.append("APK Signing Block entry #");
                                        sb8.append(i3);
                                        sb8.append(" size out of range: ");
                                        sb8.append(i4);
                                        sb8.append(", available: ");
                                        sb8.append(remaining);
                                        throw new zzaok(sb8.toString());
                                    }
                                } else {
                                    StringBuilder sb9 = new StringBuilder(String.valueOf(i3).length() + 45 + String.valueOf(j5).length());
                                    sb9.append("APK Signing Block entry #");
                                    sb9.append(i3);
                                    sb9.append(" size out of range: ");
                                    sb9.append(j5);
                                    throw new zzaok(sb9.toString());
                                }
                            } else {
                                StringBuilder sb10 = new StringBuilder(String.valueOf(i3).length() + 59);
                                sb10.append(str2);
                                sb10.append(i3);
                                throw new zzaok(sb10.toString());
                            }
                        }
                        throw new zzaok("No APK Signature Scheme v2 block in APK Signing Block");
                    }
                    throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                } else {
                    throw new zzaok("ZIP Central Directory is not immediately followed by End of Central Directory");
                }
            }
            long length = randomAccessFile.length();
            StringBuilder sb11 = new StringBuilder(String.valueOf(length).length() + 82);
            sb11.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
            sb11.append(length);
            sb11.append(" bytes");
            throw new zzaok(sb11.toString());
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException unused) {
            }
        }
    }

    private static X509Certificate[][] zzb(FileChannel fileChannel, zzaoj zzaojVar) throws SecurityException {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer zzj = zzj(zzaojVar.zza());
                int i = 0;
                while (zzj.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(zzc(zzj(zzj), hashMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 37);
                        sb.append("Failed to parse/verify signer #");
                        sb.append(i);
                        sb.append(" block");
                        throw new SecurityException(sb.toString(), e);
                    }
                }
                if (i <= 0) {
                    throw new SecurityException("No signers found");
                }
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                zzd(hashMap, fileChannel, zzaojVar.zzb(), zzaojVar.zzc(), zzaojVar.zzd(), zzaojVar.zze());
                return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
            } catch (IOException e2) {
                throw new SecurityException("Failed to read list of signers", e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        r11 = zzf(r6);
        r12 = zzf(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        if (r11 == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r12 == 1) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] zzc(java.nio.ByteBuffer r22, java.util.Map r23, java.security.cert.CertificateFactory r24) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaon.zzc(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    private static void zzd(Map map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) throws SecurityException {
        if (!map.isEmpty()) {
            zzaoi zzaoiVar = new zzaoi(fileChannel, 0L, j);
            zzaoi zzaoiVar2 = new zzaoi(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            zzaoo.zzc(duplicate, j);
            zzaog zzaogVar = new zzaog(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] zze = zze(iArr, new zzaoh[]{zzaoiVar, zzaoiVar2, zzaogVar});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual((byte[]) map.get(Integer.valueOf(i3)), zze[i2])) {
                        throw new SecurityException(zzg(i3).concat(" digest of contents did not verify"));
                    }
                }
                return;
            } catch (DigestException e) {
                throw new SecurityException("Failed to compute digest(s) of contents", e);
            }
        }
        throw new SecurityException("No digests provided");
    }

    private static byte[][] zze(int[] iArr, zzaoh[] zzaohVarArr) throws DigestException {
        long j;
        int i;
        int length;
        char c2;
        int i2;
        long j2 = 0;
        int i3 = 0;
        long j3 = 0;
        while (true) {
            j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            i = 3;
            if (i3 >= 3) {
                break;
            }
            j3 += (zzaohVarArr[i3].zza() + 1048575) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            i3++;
        }
        if (j3 < 2097151) {
            byte[][] bArr = new byte[iArr.length];
            int i4 = 0;
            while (true) {
                length = iArr.length;
                c2 = 5;
                i2 = 1;
                if (i4 >= length) {
                    break;
                }
                int i5 = (int) j3;
                byte[] bArr2 = new byte[(zzh(iArr[i4]) * i5) + 5];
                bArr2[0] = 90;
                zzl(i5, bArr2, 1);
                bArr[i4] = bArr2;
                i4++;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i6 = 0; i6 < iArr.length; i6++) {
                String zzg = zzg(iArr[i6]);
                try {
                    messageDigestArr[i6] = MessageDigest.getInstance(zzg);
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(zzg.concat(" digest not supported"), e);
                }
            }
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i7 < i) {
                zzaoh zzaohVar = zzaohVarArr[i7];
                long j4 = j2;
                int i10 = i7;
                long zza = zzaohVar.zza();
                while (zza > j2) {
                    int min = (int) Math.min(zza, j);
                    zzl(min, bArr3, i2);
                    for (int i11 = 0; i11 < length; i11++) {
                        messageDigestArr[i11].update(bArr3);
                    }
                    long j5 = j4;
                    try {
                        zzaohVar.zzb(messageDigestArr, j5, min);
                        int i12 = 0;
                        while (i12 < iArr.length) {
                            int i13 = iArr[i12];
                            byte[] bArr4 = bArr[i12];
                            int zzh = zzh(i13);
                            zzaoh zzaohVar2 = zzaohVar;
                            MessageDigest messageDigest = messageDigestArr[i12];
                            byte[] bArr5 = bArr3;
                            int digest = messageDigest.digest(bArr4, (i8 * zzh) + 5, zzh);
                            if (digest != zzh) {
                                String algorithm = messageDigest.getAlgorithm();
                                StringBuilder sb = new StringBuilder(String.valueOf(algorithm).length() + 35 + String.valueOf(digest).length());
                                sb.append("Unexpected output size of ");
                                sb.append(algorithm);
                                sb.append(" digest: ");
                                sb.append(digest);
                                throw new RuntimeException(sb.toString());
                            }
                            i12++;
                            c2 = 5;
                            zzaohVar = zzaohVar2;
                            bArr3 = bArr5;
                        }
                        zzaoh zzaohVar3 = zzaohVar;
                        long j6 = min;
                        long j7 = j5 + j6;
                        zza -= j6;
                        i8++;
                        zzaohVar = zzaohVar3;
                        j2 = 0;
                        i2 = 1;
                        j4 = j7;
                        j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                    } catch (IOException e2) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(i8).length() + 37 + String.valueOf(i9).length());
                        sb2.append("Failed to digest chunk #");
                        sb2.append(i8);
                        sb2.append(" of section #");
                        sb2.append(i9);
                        throw new DigestException(sb2.toString(), e2);
                    }
                }
                i9++;
                i7 = i10 + 1;
                j2 = 0;
                j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                i = 3;
                i2 = 1;
            }
            byte[][] bArr6 = new byte[iArr.length];
            for (int i14 = 0; i14 < iArr.length; i14++) {
                int i15 = iArr[i14];
                byte[] bArr7 = bArr[i14];
                String zzg2 = zzg(i15);
                try {
                    bArr6[i14] = MessageDigest.getInstance(zzg2).digest(bArr7);
                } catch (NoSuchAlgorithmException e3) {
                    throw new RuntimeException(zzg2.concat(" digest not supported"), e3);
                }
            }
            return bArr6;
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(j3).length() + 17);
        sb3.append("Too many chunks: ");
        sb3.append(j3);
        throw new DigestException(sb3.toString());
    }

    private static int zzf(int i) {
        if (i != 513) {
            if (i != 514) {
                if (i != 769) {
                    switch (i) {
                        case 257:
                        case 259:
                            return 1;
                        case 258:
                        case 260:
                            return 2;
                        default:
                            String hexString = Long.toHexString(i);
                            String.valueOf(hexString);
                            throw new IllegalArgumentException("Unknown signature algorithm: 0x".concat(String.valueOf(hexString)));
                    }
                }
                return 1;
            }
            return 2;
        }
        return 1;
    }

    private static String zzg(int i) {
        if (i != 1) {
            if (i == 2) {
                return "SHA-512";
            }
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 33);
            sb.append("Unknown content digest algorthm: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return "SHA-256";
    }

    private static int zzh(int i) {
        if (i != 1) {
            if (i == 2) {
                return 64;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 33);
            sb.append("Unknown content digest algorthm: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return 32;
    }

    private static ByteBuffer zzi(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (i2 < position || i2 > limit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i2);
        try {
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            byteBuffer.position(i2);
            return slice;
        } finally {
            byteBuffer.limit(limit);
        }
    }

    private static ByteBuffer zzj(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() < 4) {
            int remaining = byteBuffer.remaining();
            StringBuilder sb = new StringBuilder(String.valueOf(remaining).length() + 82);
            sb.append("Remaining buffer too short to contain length of length-prefixed field. Remaining: ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        }
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i > byteBuffer.remaining()) {
            int remaining2 = byteBuffer.remaining();
            StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 79 + String.valueOf(remaining2).length());
            sb2.append("Length-prefixed field longer than remaining buffer. Field length: ");
            sb2.append(i);
            sb2.append(", remaining: ");
            sb2.append(remaining2);
            throw new IOException(sb2.toString());
        }
        return zzi(byteBuffer, i);
    }

    private static byte[] zzk(ByteBuffer byteBuffer) throws IOException {
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IOException("Negative length");
        }
        if (i <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i];
            byteBuffer.get(bArr);
            return bArr;
        }
        int remaining = byteBuffer.remaining();
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 68 + String.valueOf(remaining).length());
        sb.append("Underflow while reading length-prefixed value. Length: ");
        sb.append(i);
        sb.append(", available: ");
        sb.append(remaining);
        throw new IOException(sb.toString());
    }

    private static void zzl(int i, byte[] bArr, int i2) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }
}
