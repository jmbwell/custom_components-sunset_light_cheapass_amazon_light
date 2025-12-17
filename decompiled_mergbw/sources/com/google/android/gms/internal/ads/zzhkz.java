package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
final class zzhkz extends zzhlb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhkz(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final void zza(Object obj, long j, byte b2) {
        if (zzhlc.zzb) {
            zzhlc.zzG(obj, j, b2);
        } else {
            zzhlc.zzH(obj, j, b2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final boolean zzb(Object obj, long j) {
        if (zzhlc.zzb) {
            return zzhlc.zzx(obj, j);
        }
        return zzhlc.zzy(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final void zzc(Object obj, long j, boolean z) {
        if (zzhlc.zzb) {
            zzhlc.zzG(obj, j, r3 ? (byte) 1 : (byte) 0);
        } else {
            zzhlc.zzH(obj, j, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final void zze(Object obj, long j, float f) {
        this.zza.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final void zzg(Object obj, long j, double d) {
        this.zza.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final byte zzh(long j) {
        return Memory.peekByte((int) j);
    }

    @Override // com.google.android.gms.internal.ads.zzhlb
    public final void zzi(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray((int) j, bArr, (int) j2, (int) j3);
    }
}
