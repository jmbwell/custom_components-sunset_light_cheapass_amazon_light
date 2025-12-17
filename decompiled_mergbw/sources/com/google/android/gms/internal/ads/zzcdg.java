package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzcdg implements zzga {
    private final zzga zza;
    private final long zzb;
    private final zzga zzc;
    private long zzd;
    private Uri zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdg(zzga zzgaVar, int i, zzga zzgaVar2) {
        this.zza = zzgaVar;
        this.zzb = i;
        this.zzc = zzgaVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzi
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.zzd;
        long j2 = this.zzb;
        if (j < j2) {
            int zza = this.zza.zza(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.zzd + zza;
            this.zzd = j3;
            i3 = zza;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j >= j2) {
            int zza2 = this.zzc.zza(bArr, i + i3, i2 - i3);
            int i4 = i3 + zza2;
            this.zzd += zza2;
            return i4;
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final long zzb(zzge zzgeVar) throws IOException {
        zzge zzgeVar2;
        Uri uri = zzgeVar.zza;
        this.zze = uri;
        long j = zzgeVar.zze;
        long j2 = this.zzb;
        zzge zzgeVar3 = null;
        if (j >= j2) {
            zzgeVar2 = null;
        } else {
            long j3 = zzgeVar.zzf;
            long j4 = j2 - j;
            zzgeVar2 = new zzge(uri, j, j3 != -1 ? Math.min(j3, j4) : j4, null);
        }
        long j5 = zzgeVar.zzf;
        int i = (j5 > (-1L) ? 1 : (j5 == (-1L) ? 0 : -1));
        if (i == 0 || j + j5 > j2) {
            zzgeVar3 = new zzge(uri, Math.max(j2, j), i != 0 ? Math.min(j5, (j + j5) - j2) : -1L, null);
        }
        long zzb = zzgeVar2 != null ? this.zza.zzb(zzgeVar2) : 0L;
        long zzb2 = zzgeVar3 != null ? this.zzc.zzb(zzgeVar3) : 0L;
        this.zzd = j;
        if (zzb == -1 || zzb2 == -1) {
            return -1L;
        }
        return zzb + zzb2;
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final void zzd() throws IOException {
        this.zza.zzd();
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final void zze(zzgy zzgyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final Map zzj() {
        return zzgkc.zza();
    }
}
