package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzabt {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzc = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static zzabs zza(byte[] bArr) throws zzas {
        return zzb(new zzee(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c9, code lost:
        if (r11 != 3) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzabs zzb(com.google.android.gms.internal.ads.zzee r11, boolean r12) throws com.google.android.gms.internal.ads.zzas {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabt.zzb(com.google.android.gms.internal.ads.zzee, boolean):com.google.android.gms.internal.ads.zzabs");
    }

    private static int zzc(zzee zzeeVar) {
        int zzj = zzeeVar.zzj(5);
        return zzj == 31 ? zzeeVar.zzj(6) + 32 : zzj;
    }

    private static int zzd(zzee zzeeVar) throws zzas {
        int zzj = zzeeVar.zzj(4);
        if (zzj == 15) {
            if (zzeeVar.zzc() < 24) {
                throw zzas.zzb("AAC header insufficient data", null);
            }
            return zzeeVar.zzj(24);
        } else if (zzj < 13) {
            return zzb[zzj];
        } else {
            throw zzas.zzb("AAC header wrong Sampling Frequency Index", null);
        }
    }
}
