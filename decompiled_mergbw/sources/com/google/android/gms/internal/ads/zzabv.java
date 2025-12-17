package com.google.android.gms.internal.ads;

import androidx.core.location.LocationRequestCompat;
import com.alibaba.fastjson.asm.Opcodes;
import java.nio.ByteBuffer;
import okio.Utf8;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzabv {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {48000, 44100, 32000};
    private static final int[] zzd = {24000, 22050, 16000};
    private static final int[] zze = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzf = {32, 40, 48, 56, 64, 80, 96, 112, 128, Opcodes.IF_ICMPNE, Opcodes.CHECKCAST, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] zzg = {69, 87, LocationRequestCompat.QUALITY_LOW_POWER, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static zzu zza(zzef zzefVar, String str, String str2, zzp zzpVar) {
        zzee zzeeVar = new zzee();
        zzeeVar.zza(zzefVar);
        int i = zzc[zzeeVar.zzj(2)];
        zzeeVar.zzh(8);
        int i2 = zze[zzeeVar.zzj(3)];
        if (zzeeVar.zzj(1) != 0) {
            i2++;
        }
        int i3 = zzf[zzeeVar.zzj(5)] * 1000;
        zzeeVar.zzm();
        zzefVar.zzh(zzeeVar.zze());
        zzs zzsVar = new zzs();
        zzsVar.zza(str);
        zzsVar.zzm("audio/ac3");
        zzsVar.zzE(i2);
        zzsVar.zzF(i);
        zzsVar.zzq(zzpVar);
        zzsVar.zze(str2);
        zzsVar.zzh(i3);
        zzsVar.zzi(i3);
        return zzsVar.zzM();
    }

    public static zzu zzb(zzef zzefVar, String str, String str2, zzp zzpVar) {
        String str3;
        zzee zzeeVar = new zzee();
        zzeeVar.zza(zzefVar);
        int zzj = zzeeVar.zzj(13) * 1000;
        zzeeVar.zzh(3);
        int i = zzc[zzeeVar.zzj(2)];
        zzeeVar.zzh(10);
        int i2 = zze[zzeeVar.zzj(3)];
        if (zzeeVar.zzj(1) != 0) {
            i2++;
        }
        zzeeVar.zzh(3);
        int zzj2 = zzeeVar.zzj(4);
        zzeeVar.zzh(1);
        if (zzj2 > 0) {
            zzeeVar.zzh(6);
            if (zzeeVar.zzj(1) != 0) {
                i2 += 2;
            }
            zzeeVar.zzh(1);
        }
        if (zzeeVar.zzc() > 7) {
            zzeeVar.zzh(7);
            if (zzeeVar.zzj(1) != 0) {
                str3 = "audio/eac3-joc";
                zzeeVar.zzm();
                zzefVar.zzh(zzeeVar.zze());
                zzs zzsVar = new zzs();
                zzsVar.zza(str);
                zzsVar.zzm(str3);
                zzsVar.zzE(i2);
                zzsVar.zzF(i);
                zzsVar.zzq(zzpVar);
                zzsVar.zze(str2);
                zzsVar.zzi(zzj);
                return zzsVar.zzM();
            }
        }
        str3 = "audio/eac3";
        zzeeVar.zzm();
        zzefVar.zzh(zzeeVar.zze());
        zzs zzsVar2 = new zzs();
        zzsVar2.zza(str);
        zzsVar2.zzm(str3);
        zzsVar2.zzE(i2);
        zzsVar2.zzF(i);
        zzsVar2.zzq(zzpVar);
        zzsVar2.zze(str2);
        zzsVar2.zzi(zzj);
        return zzsVar2.zzM();
    }

    public static zzabu zzc(zzee zzeeVar) {
        int i;
        int i2;
        String str;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int zzd2 = zzeeVar.zzd();
        zzeeVar.zzh(40);
        int zzj = zzeeVar.zzj(5);
        zzeeVar.zzf(zzd2);
        int i12 = -1;
        if (zzj > 10) {
            zzeeVar.zzh(16);
            int zzj2 = zzeeVar.zzj(2);
            if (zzj2 == 0) {
                i12 = 0;
            } else if (zzj2 == 1) {
                i12 = 1;
            } else if (zzj2 == 2) {
                i12 = 2;
            }
            zzeeVar.zzh(3);
            int zzj3 = zzeeVar.zzj(11) + 1;
            int zzj4 = zzeeVar.zzj(2);
            if (zzj4 == 3) {
                i8 = zzd[zzeeVar.zzj(2)];
                i9 = 6;
                i7 = 3;
            } else {
                int zzj5 = zzeeVar.zzj(2);
                int i13 = zzb[zzj5];
                i7 = zzj5;
                i8 = zzc[zzj4];
                i9 = i13;
            }
            int i14 = zzj3 + zzj3;
            int i15 = (i14 * i8) / (i9 * 32);
            int zzj6 = zzeeVar.zzj(3);
            boolean zzi = zzeeVar.zzi();
            i = zze[zzj6] + (zzi ? 1 : 0);
            zzeeVar.zzh(10);
            if (zzeeVar.zzi()) {
                zzeeVar.zzh(8);
            }
            if (zzj6 == 0) {
                zzeeVar.zzh(5);
                if (zzeeVar.zzi()) {
                    zzeeVar.zzh(8);
                }
                i10 = 0;
                zzj6 = 0;
            } else {
                i10 = zzj6;
            }
            if (i12 == 1) {
                if (zzeeVar.zzi()) {
                    zzeeVar.zzh(16);
                }
                i11 = 1;
            } else {
                i11 = i12;
            }
            if (zzeeVar.zzi()) {
                if (i10 > 2) {
                    zzeeVar.zzh(2);
                }
                if ((i10 & 1) != 0 && i10 > 2) {
                    zzeeVar.zzh(6);
                }
                if ((i10 & 4) != 0) {
                    zzeeVar.zzh(6);
                }
                if (zzi && zzeeVar.zzi()) {
                    zzeeVar.zzh(5);
                }
                if (i11 == 0) {
                    if (zzeeVar.zzi()) {
                        zzeeVar.zzh(6);
                    }
                    if (i10 == 0 && zzeeVar.zzi()) {
                        zzeeVar.zzh(6);
                    }
                    if (zzeeVar.zzi()) {
                        zzeeVar.zzh(6);
                    }
                    int zzj7 = zzeeVar.zzj(2);
                    if (zzj7 == 1) {
                        zzeeVar.zzh(5);
                    } else if (zzj7 == 2) {
                        zzeeVar.zzh(12);
                    } else if (zzj7 == 3) {
                        int zzj8 = zzeeVar.zzj(5);
                        if (zzeeVar.zzi()) {
                            zzeeVar.zzh(5);
                            if (zzeeVar.zzi()) {
                                zzeeVar.zzh(4);
                            }
                            if (zzeeVar.zzi()) {
                                zzeeVar.zzh(4);
                            }
                            if (zzeeVar.zzi()) {
                                zzeeVar.zzh(4);
                            }
                            if (zzeeVar.zzi()) {
                                zzeeVar.zzh(4);
                            }
                            if (zzeeVar.zzi()) {
                                zzeeVar.zzh(4);
                            }
                            if (zzeeVar.zzi()) {
                                zzeeVar.zzh(4);
                            }
                            if (zzeeVar.zzi()) {
                                zzeeVar.zzh(4);
                            }
                            if (zzeeVar.zzi()) {
                                if (zzeeVar.zzi()) {
                                    zzeeVar.zzh(4);
                                }
                                if (zzeeVar.zzi()) {
                                    zzeeVar.zzh(4);
                                }
                            }
                        }
                        if (zzeeVar.zzi()) {
                            zzeeVar.zzh(5);
                            if (zzeeVar.zzi()) {
                                zzeeVar.zzh(7);
                                if (zzeeVar.zzi()) {
                                    zzeeVar.zzh(8);
                                }
                            }
                        }
                        zzeeVar.zzh((zzj8 + 2) * 8);
                        zzeeVar.zzm();
                    }
                    if (i10 < 2) {
                        if (zzeeVar.zzi()) {
                            zzeeVar.zzh(14);
                        }
                        if (zzj6 == 0 && zzeeVar.zzi()) {
                            zzeeVar.zzh(14);
                        }
                    }
                    if (zzeeVar.zzi()) {
                        if (i7 == 0) {
                            zzeeVar.zzh(5);
                            i11 = 0;
                            i7 = 0;
                        } else {
                            for (int i16 = 0; i16 < i9; i16++) {
                                if (zzeeVar.zzi()) {
                                    zzeeVar.zzh(5);
                                }
                            }
                        }
                    }
                    i11 = 0;
                }
            }
            if (zzeeVar.zzi()) {
                zzeeVar.zzh(5);
                if (i10 == 2) {
                    zzeeVar.zzh(4);
                    i10 = 2;
                }
                if (i10 >= 6) {
                    zzeeVar.zzh(2);
                }
                if (zzeeVar.zzi()) {
                    zzeeVar.zzh(8);
                }
                if (i10 == 0 && zzeeVar.zzi()) {
                    zzeeVar.zzh(8);
                }
                if (zzj4 < 3) {
                    zzeeVar.zzg();
                }
            }
            if (i11 == 0 && i7 != 3) {
                zzeeVar.zzg();
            }
            if (i11 == 2 && (i7 == 3 || zzeeVar.zzi())) {
                zzeeVar.zzh(6);
            }
            str = (zzeeVar.zzi() && zzeeVar.zzj(6) == 1 && zzeeVar.zzj(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i2 = i12;
            i4 = i14;
            i5 = i8;
            i6 = i9 * 256;
            i3 = i15;
        } else {
            zzeeVar.zzh(32);
            int zzj9 = zzeeVar.zzj(2);
            String str2 = zzj9 == 3 ? null : "audio/ac3";
            int zzj10 = zzeeVar.zzj(6);
            int i17 = zzf[zzj10 / 2] * 1000;
            int zzf2 = zzf(zzj9, zzj10);
            zzeeVar.zzh(8);
            int zzj11 = zzeeVar.zzj(3);
            if ((zzj11 & 1) != 0 && zzj11 != 1) {
                zzeeVar.zzh(2);
            }
            if ((zzj11 & 4) != 0) {
                zzeeVar.zzh(2);
            }
            if (zzj11 == 2) {
                zzeeVar.zzh(2);
            }
            int i18 = zzj9 < 3 ? zzc[zzj9] : -1;
            i = zze[zzj11] + (zzeeVar.zzi() ? 1 : 0);
            i2 = -1;
            str = str2;
            i3 = i17;
            i4 = zzf2;
            i5 = i18;
            i6 = 1536;
        }
        return new zzabu(str, i2, i, i5, i4, i6, i3, null);
    }

    public static int zzd(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            int i = ((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1;
            return i + i;
        }
        byte b2 = bArr[4];
        return zzf((b2 & 192) >> 6, b2 & Utf8.REPLACEMENT_BYTE);
    }

    public static int zze(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return zzb[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    private static int zzf(int i, int i2) {
        int i3;
        if (i < 0 || i >= 3 || i2 < 0 || (i3 = i2 >> 1) >= 19) {
            return -1;
        }
        int i4 = zzc[i];
        if (i4 == 44100) {
            int i5 = zzg[i3] + (i2 & 1);
            return i5 + i5;
        }
        int i6 = zzf[i3];
        return i4 == 32000 ? i6 * 6 : i6 * 4;
    }
}
