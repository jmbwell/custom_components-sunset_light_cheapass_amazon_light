package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzxa extends zzxv implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final String zzg;
    private final zzxo zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final boolean zzn;
    private final int zzo;
    private final int zzp;
    private final boolean zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final int zzu;
    private final boolean zzv;
    private final boolean zzw;
    private final boolean zzx;

    /* JADX WARN: Removed duplicated region for block: B:121:0x012d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0153 A[EDGE_INSN: B:122:0x0153->B:88:0x0153 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0110 A[LOOP:1: B:68:0x010d->B:70:0x0110, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0168  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzxa(int r8, com.google.android.gms.internal.ads.zzbf r9, int r10, com.google.android.gms.internal.ads.zzxo r11, int r12, boolean r13, com.google.android.gms.internal.ads.zzghd r14, int r15) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxa.<init>(int, com.google.android.gms.internal.ads.zzbf, int, com.google.android.gms.internal.ads.zzxo, int, boolean, com.google.android.gms.internal.ads.zzghd, int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzxv
    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzxv
    public final /* bridge */ /* synthetic */ boolean zzc(zzxv zzxvVar) {
        String str;
        zzxo zzxoVar = this.zzh;
        zzxa zzxaVar = (zzxa) zzxvVar;
        boolean z = zzxoVar.zzR;
        zzu zzuVar = this.zzd;
        int i = zzuVar.zzG;
        if (i != -1) {
            zzu zzuVar2 = zzxaVar.zzd;
            if (i == zzuVar2.zzG && (str = zzuVar.zzo) != null && TextUtils.equals(str, zzuVar2.zzo)) {
                boolean z2 = zzxoVar.zzQ;
                int i2 = zzuVar.zzH;
                if (i2 == -1 || i2 != zzuVar2.zzH) {
                    return false;
                }
                boolean z3 = zzxoVar.zzS;
                return this.zzv == zzxaVar.zzv && this.zzw == zzxaVar.zzw;
            }
            return false;
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzb */
    public final int compareTo(zzxa zzxaVar) {
        zzglj zzgljVar;
        zzglj zza;
        boolean z = this.zzf;
        if (z && this.zzi) {
            zza = zzyd.zzc;
        } else {
            zzgljVar = zzyd.zzc;
            zza = zzgljVar.zza();
        }
        zzgjp zza2 = zzgjp.zzg().zzd(this.zzi, zzxaVar.zzi).zza(Integer.valueOf(this.zzk), Integer.valueOf(zzxaVar.zzk), zzglj.zzb().zza()).zzb(this.zzj, zzxaVar.zzj).zzb(this.zzl, zzxaVar.zzl).zza(Integer.valueOf(this.zzm), Integer.valueOf(zzxaVar.zzm), zzglj.zzb().zza()).zzd(this.zzq, zzxaVar.zzq).zzd(this.zzn, zzxaVar.zzn).zza(Integer.valueOf(this.zzo), Integer.valueOf(zzxaVar.zzo), zzglj.zzb().zza()).zzb(this.zzp, zzxaVar.zzp).zzd(z, zzxaVar.zzf).zza(Integer.valueOf(this.zzu), Integer.valueOf(zzxaVar.zzu), zzglj.zzb().zza());
        boolean z2 = this.zzh.zzF;
        zzgjp zza3 = zza2.zzd(this.zzv, zzxaVar.zzv).zzd(this.zzw, zzxaVar.zzw).zzd(this.zzx, zzxaVar.zzx).zza(Integer.valueOf(this.zzr), Integer.valueOf(zzxaVar.zzr), zza).zza(Integer.valueOf(this.zzs), Integer.valueOf(zzxaVar.zzs), zza);
        if (Objects.equals(this.zzg, zzxaVar.zzg)) {
            zza3 = zza3.zza(Integer.valueOf(this.zzt), Integer.valueOf(zzxaVar.zzt), zza);
        }
        return zza3.zze();
    }
}
