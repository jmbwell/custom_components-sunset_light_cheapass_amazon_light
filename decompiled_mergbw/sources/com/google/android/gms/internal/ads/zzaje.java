package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzaje {
    public int zza;
    public long zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public final int[] zzf = new int[255];
    private final zzef zzg = new zzef(255);

    public final void zza() {
        this.zza = 0;
        this.zzb = 0L;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = 0;
    }

    public final boolean zzb(zzacv zzacvVar, long j) throws IOException {
        int i;
        zzghc.zza(zzacvVar.zzn() == zzacvVar.zzm());
        zzef zzefVar = this.zzg;
        zzefVar.zza(4);
        while (true) {
            i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if ((i == 0 || zzacvVar.zzn() + 4 < j) && zzacy.zze(zzacvVar, zzefVar.zzi(), 0, 4, true)) {
                zzefVar.zzh(0);
                if (zzefVar.zzz() != 1332176723) {
                    zzacvVar.zzf(1);
                } else {
                    zzacvVar.zzl();
                    return true;
                }
            }
        }
        do {
            if (i != 0 && zzacvVar.zzn() >= j) {
                break;
            }
        } while (zzacvVar.zzd(1) != -1);
        return false;
    }

    public final boolean zzc(zzacv zzacvVar, boolean z) throws IOException {
        zza();
        zzef zzefVar = this.zzg;
        zzefVar.zza(27);
        if (zzacy.zze(zzacvVar, zzefVar.zzi(), 0, 27, z) && zzefVar.zzz() == 1332176723) {
            if (zzefVar.zzs() != 0) {
                if (z) {
                    return false;
                }
                throw zzas.zzc("unsupported bit stream revision");
            }
            this.zza = zzefVar.zzs();
            this.zzb = zzefVar.zzE();
            zzefVar.zzA();
            zzefVar.zzA();
            zzefVar.zzA();
            int zzs = zzefVar.zzs();
            this.zzc = zzs;
            this.zzd = zzs + 27;
            zzefVar.zza(zzs);
            if (zzacy.zze(zzacvVar, zzefVar.zzi(), 0, this.zzc, z)) {
                for (int i = 0; i < this.zzc; i++) {
                    int[] iArr = this.zzf;
                    int zzs2 = zzefVar.zzs();
                    iArr[i] = zzs2;
                    this.zze += zzs2;
                }
                return true;
            }
        }
        return false;
    }
}
