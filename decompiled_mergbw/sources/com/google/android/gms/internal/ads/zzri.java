package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzri extends zzcg {
    private int zzd;
    private boolean zze;
    private int zzf;
    private long zzg;
    private byte[] zzi;
    private byte[] zzl;
    private int zzh = 0;
    private int zzj = 0;
    private int zzk = 0;

    public zzri() {
        byte[] bArr = zzeo.zzb;
        this.zzi = bArr;
        this.zzl = bArr;
    }

    private final void zzs(boolean z) {
        int i;
        int i2;
        int i3;
        int i4 = this.zzk;
        int length = this.zzi.length;
        if (i4 != length) {
            if (!z) {
                return;
            }
            z = true;
        }
        if (this.zzh == 0) {
            if (z) {
                zzu(i4, 3);
                i2 = i4;
            } else {
                zzghc.zzh(i4 >= (length >> 1));
                i2 = this.zzi.length >> 1;
                zzu(i2, 0);
            }
            i = i2;
        } else {
            int i5 = length >> 1;
            int i6 = i4 - i5;
            if (z) {
                int zzt = zzt(i6) + (this.zzi.length >> 1);
                zzu(zzt, 2);
                int i7 = i5 + i6;
                i = zzt;
                i2 = i7;
            } else {
                int zzt2 = zzt(i6);
                zzu(zzt2, 1);
                i = zzt2;
                i2 = i6;
            }
        }
        if (i2 % this.zzd != 0) {
            throw new IllegalStateException(zzghs.zzd("bytesConsumed is not aligned to frame size: %s", Integer.valueOf(i2)));
        }
        zzghc.zzh(i4 >= i);
        this.zzk -= i2;
        int i8 = this.zzj + i2;
        this.zzj = i8;
        this.zzj = i8 % this.zzi.length;
        this.zzh = this.zzh + (i / this.zzd);
        this.zzg += (i2 - i) / i3;
    }

    private final int zzt(int i) {
        int zzw = ((zzw(2000000L) - this.zzh) * this.zzd) - (this.zzi.length >> 1);
        zzghc.zzh(zzw >= 0);
        int i2 = this.zzd;
        return (((int) Math.min((i * 0.2f) + 0.5f, zzw)) / i2) * i2;
    }

    private final void zzu(int i, int i2) {
        int i3;
        if (i == 0) {
            return;
        }
        zzghc.zza(this.zzk >= i);
        if (i2 == 2) {
            int i4 = this.zzj;
            int i5 = this.zzk;
            int i6 = i4 + i5;
            byte[] bArr = this.zzi;
            int length = bArr.length;
            if (i6 <= length) {
                System.arraycopy(bArr, i6 - i, this.zzl, 0, i);
            } else {
                int i7 = i5 - (length - i4);
                if (i7 >= i) {
                    System.arraycopy(bArr, i7 - i, this.zzl, 0, i);
                } else {
                    int i8 = i - i7;
                    System.arraycopy(bArr, length - i8, this.zzl, 0, i8);
                    System.arraycopy(this.zzi, 0, this.zzl, i8, i7);
                }
            }
        } else {
            int i9 = this.zzj;
            int i10 = i9 + i;
            byte[] bArr2 = this.zzi;
            int length2 = bArr2.length;
            if (i10 <= length2) {
                System.arraycopy(bArr2, i9, this.zzl, 0, i);
            } else {
                int i11 = length2 - i9;
                System.arraycopy(bArr2, i9, this.zzl, 0, i11);
                System.arraycopy(this.zzi, 0, this.zzl, i11, i - i11);
            }
        }
        zzghc.zzd(i % this.zzd == 0, "sizeToOutput is not aligned to frame size: %s", i);
        zzghc.zzh(this.zzj < this.zzi.length);
        byte[] bArr3 = this.zzl;
        zzghc.zzd(i % this.zzd == 0, "byteOutput size is not aligned to frame size %s", i);
        if (i2 != 3) {
            for (int i12 = 0; i12 < i; i12 += 2) {
                int i13 = i12 + 1;
                int zzv = zzv(bArr3[i13], bArr3[i12]);
                if (i2 == 0) {
                    i3 = ((((i12 * 1000) / (i - 1)) * (-90)) / 1000) + 100;
                } else {
                    i3 = 10;
                    if (i2 == 2) {
                        i3 = 10 + (((90000 * i12) / (i - 1)) / 1000);
                    }
                }
                int i14 = (zzv * i3) / 100;
                if (i14 >= 32767) {
                    bArr3[i12] = -1;
                    bArr3[i13] = Byte.MAX_VALUE;
                } else if (i14 <= -32768) {
                    bArr3[i12] = 0;
                    bArr3[i13] = Byte.MIN_VALUE;
                } else {
                    bArr3[i12] = (byte) (i14 & 255);
                    bArr3[i13] = (byte) (i14 >> 8);
                }
            }
        }
        zzk(i).put(bArr3, 0, i).flip();
    }

    private static int zzv(byte b2, byte b3) {
        return (b2 << 8) | (b3 & 255);
    }

    private final int zzw(long j) {
        return (int) ((j * this.zzb.zzb) / 1000000);
    }

    private static final boolean zzx(byte b2, byte b3) {
        return Math.abs(zzv(b2, b3)) > 1024;
    }

    @Override // com.google.android.gms.internal.ads.zzcg, com.google.android.gms.internal.ads.zzcf
    public final boolean zzc() {
        return super.zzc() && this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    public final void zzd(ByteBuffer byteBuffer) {
        int limit;
        int i;
        int position;
        while (byteBuffer.hasRemaining() && !zzl()) {
            boolean z = true;
            if (this.zzf == 0) {
                int limit2 = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit2, byteBuffer.position() + this.zzi.length));
                int limit3 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit3 >= byteBuffer.position()) {
                        if (zzx(byteBuffer.get(limit3), byteBuffer.get(limit3 - 1))) {
                            int i2 = this.zzd;
                            position = ((limit3 / i2) * i2) + i2;
                            break;
                        }
                        limit3 -= 2;
                    } else {
                        position = byteBuffer.position();
                        break;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.zzf = 1;
                } else {
                    byteBuffer.limit(Math.min(position, byteBuffer.capacity()));
                    zzk(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(limit2);
            } else {
                zzghc.zzh(this.zzj < this.zzi.length);
                int limit4 = byteBuffer.limit();
                int position2 = byteBuffer.position() + 1;
                while (true) {
                    if (position2 < byteBuffer.limit()) {
                        if (zzx(byteBuffer.get(position2), byteBuffer.get(position2 - 1))) {
                            int i3 = this.zzd;
                            limit = i3 * (position2 / i3);
                            break;
                        }
                        position2 += 2;
                    } else {
                        limit = byteBuffer.limit();
                        break;
                    }
                }
                int position3 = limit - byteBuffer.position();
                int i4 = this.zzj;
                int i5 = this.zzk;
                int i6 = i4 + i5;
                int length = this.zzi.length;
                if (i6 < length) {
                    i = length - i6;
                } else {
                    i6 = i5 - (length - i4);
                    i = i4 - i6;
                }
                int min = Math.min(position3, i);
                byteBuffer.limit(byteBuffer.position() + min);
                byteBuffer.get(this.zzi, i6, min);
                int i7 = this.zzk + min;
                this.zzk = i7;
                zzghc.zzh(i7 <= this.zzi.length);
                if (limit >= limit4 || position3 >= i) {
                    z = false;
                }
                zzs(z);
                if (z) {
                    this.zzf = 0;
                    this.zzh = 0;
                }
                byteBuffer.limit(limit4);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    protected final zzcc zzm(zzcc zzccVar) throws zzce {
        if (zzccVar.zzd == 2) {
            return zzccVar.zzb == -1 ? zzcc.zza : zzccVar;
        }
        throw new zzce("Unhandled input format:", zzccVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void zzn() {
        if (this.zzk > 0) {
            zzs(true);
            this.zzh = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void zzo() {
        if (zzc()) {
            int i = this.zzb.zzc;
            this.zzd = i + i;
            int i2 = this.zzd;
            int zzw = ((zzw(100000L) / 2) / i2) * i2;
            int i3 = zzw + zzw;
            if (this.zzi.length != i3) {
                this.zzi = new byte[i3];
                this.zzl = new byte[i3];
            }
        }
        this.zzf = 0;
        this.zzg = 0L;
        this.zzh = 0;
        this.zzj = 0;
        this.zzk = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void zzp() {
        this.zze = false;
        byte[] bArr = zzeo.zzb;
        this.zzi = bArr;
        this.zzl = bArr;
    }

    public final void zzq(boolean z) {
        this.zze = z;
    }

    public final long zzr() {
        return this.zzg;
    }
}
