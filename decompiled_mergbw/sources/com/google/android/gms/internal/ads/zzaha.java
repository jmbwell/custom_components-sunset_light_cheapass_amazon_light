package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzaha {
    private final zzef zza = new zzef(8);
    private int zzb;

    private final long zzb(zzacv zzacvVar) throws IOException {
        int i;
        zzef zzefVar = this.zza;
        zzacl zzaclVar = (zzacl) zzacvVar;
        int i2 = 0;
        zzaclVar.zzh(zzefVar.zzi(), 0, 1, false);
        int i3 = zzefVar.zzi()[0] & 255;
        if (i3 != 0) {
            int i4 = 128;
            int i5 = 0;
            while (true) {
                i = i5 + 1;
                if ((i3 & i4) != 0) {
                    break;
                }
                i4 >>= 1;
                i5 = i;
            }
            int i6 = i3 & (~i4);
            zzaclVar.zzh(zzefVar.zzi(), 1, i5, false);
            while (i2 < i5) {
                i2++;
                i6 = (zzefVar.zzi()[i2] & 255) + (i6 << 8);
            }
            this.zzb += i;
            return i6;
        }
        return Long.MIN_VALUE;
    }

    public final boolean zza(zzacv zzacvVar) throws IOException {
        long zzb;
        int i;
        long zzo = zzacvVar.zzo();
        int i2 = (zzo > (-1L) ? 1 : (zzo == (-1L) ? 0 : -1));
        long j = 1024;
        if (i2 != 0 && zzo <= 1024) {
            j = zzo;
        }
        zzef zzefVar = this.zza;
        zzacl zzaclVar = (zzacl) zzacvVar;
        zzaclVar.zzh(zzefVar.zzi(), 0, 4, false);
        this.zzb = 4;
        for (long zzz = zzefVar.zzz(); zzz != 440786851; zzz = ((zzz << 8) & (-256)) | (zzefVar.zzi()[0] & 255)) {
            int i3 = (int) j;
            int i4 = this.zzb + 1;
            this.zzb = i4;
            if (i4 == i3) {
                return false;
            }
            zzaclVar.zzh(zzefVar.zzi(), 0, 1, false);
        }
        long zzb2 = zzb(zzacvVar);
        long j2 = this.zzb;
        if (zzb2 != Long.MIN_VALUE) {
            long j3 = j2 + zzb2;
            if (i2 == 0 || j3 < zzo) {
                while (true) {
                    int i5 = (this.zzb > j3 ? 1 : (this.zzb == j3 ? 0 : -1));
                    if (i5 < 0) {
                        if (zzb(zzacvVar) == Long.MIN_VALUE || (zzb = zzb(zzacvVar)) < 0) {
                            return false;
                        }
                        if (i != 0) {
                            int i6 = (int) zzb;
                            zzaclVar.zzj(i6, false);
                            this.zzb += i6;
                        }
                    } else if (i5 == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
