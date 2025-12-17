package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgmu {
    public static final /* synthetic */ int zza = 0;

    static {
        Math.log(2.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (java.lang.Math.abs(r8 - r4) == 0.5d) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long zza(double r8, java.math.RoundingMode r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgmu.zza(double, java.math.RoundingMode):long");
    }

    public static boolean zzb(double d) {
        if (d > 0.0d && zzgmv.zzb(d)) {
            long zza2 = zzgmv.zza(d);
            if ((zza2 & ((-1) + zza2)) == 0) {
                return true;
            }
        }
        return false;
    }

    public static int zzc(double d, RoundingMode roundingMode) {
        boolean zzb;
        zzghc.zzb(d > 0.0d && zzgmv.zzb(d), "x must be positive and finite");
        int exponent = Math.getExponent(d);
        if (Math.getExponent(d) < -1022) {
            return zzc(d * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (zzgmt.zza[roundingMode.ordinal()]) {
            case 1:
                zzgna.zzb(zzb(d));
                return exponent;
            case 2:
                return exponent;
            case 3:
                r1 = !zzb(d);
                break;
            case 4:
                r1 = exponent < 0;
                zzb = zzb(d);
                r1 &= !zzb;
                break;
            case 5:
                r1 = exponent >= 0;
                zzb = zzb(d);
                r1 &= !zzb;
                break;
            case 6:
            case 7:
            case 8:
                double longBitsToDouble = Double.longBitsToDouble((Double.doubleToRawLongBits(d) & 4503599627370495L) | 4607182418800017408L);
                if (longBitsToDouble * longBitsToDouble > 2.0d) {
                    r1 = true;
                    break;
                }
                break;
            default:
                throw new AssertionError();
        }
        return r1 ? exponent + 1 : exponent;
    }

    public static boolean zzd(double d) {
        if (zzgmv.zzb(d)) {
            return d == 0.0d || 52 - Long.numberOfTrailingZeros(zzgmv.zza(d)) <= Math.getExponent(d);
        }
        return false;
    }
}
