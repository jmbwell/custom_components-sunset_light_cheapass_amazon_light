package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzom implements zzov {
    public static final zzght zza = zzok.zza;
    private static final Random zzb = new Random();
    private final zzbd zzc;
    private final zzbc zzd;
    private final HashMap zze;
    private zzou zzf;
    private zzbe zzg;
    private String zzh;
    private long zzi;

    public zzom() {
        throw null;
    }

    public zzom(zzght zzghtVar) {
        this.zzc = new zzbd();
        this.zzd = new zzbc();
        this.zze = new HashMap();
        this.zzg = zzbe.zza;
        this.zzi = -1L;
    }

    @RequiresNonNull({ServiceSpecificExtraArgs.CastExtraArgs.LISTENER})
    private final void zzl(zzme zzmeVar) {
        if (zzmeVar.zzb.zzg()) {
            String str = this.zzh;
            if (str != null) {
                zzol zzolVar = (zzol) this.zze.get(str);
                zzolVar.getClass();
                zzm(zzolVar);
                return;
            }
            return;
        }
        zzol zzolVar2 = (zzol) this.zze.get(this.zzh);
        int i = zzmeVar.zzc;
        zzup zzupVar = zzmeVar.zzd;
        this.zzh = zzo(i, zzupVar).zze();
        zzc(zzmeVar);
        if (zzupVar == null || !zzupVar.zzb()) {
            return;
        }
        if (zzolVar2 != null) {
            if (zzolVar2.zzg() == zzupVar.zzd && zzolVar2.zzh() != null) {
                zzup zzh = zzolVar2.zzh();
                if (zzh.zzb == zzupVar.zzb) {
                    zzup zzh2 = zzolVar2.zzh();
                    if (zzh2.zzc == zzupVar.zzc) {
                        return;
                    }
                }
            }
        }
        zzo(i, new zzup(zzupVar.zza, zzupVar.zzd));
    }

    private final void zzm(zzol zzolVar) {
        if (zzolVar.zzg() != -1) {
            this.zzi = zzolVar.zzg();
        }
        this.zzh = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzn */
    public final long zzi() {
        zzol zzolVar = (zzol) this.zze.get(this.zzh);
        return (zzolVar == null || zzolVar.zzg() == -1) ? this.zzi + 1 : zzolVar.zzg();
    }

    private final zzol zzo(int i, zzup zzupVar) {
        int i2;
        HashMap hashMap = this.zze;
        long j = Long.MAX_VALUE;
        zzol zzolVar = null;
        for (zzol zzolVar2 : hashMap.values()) {
            zzolVar2.zzc(i, zzupVar);
            if (zzolVar2.zzb(i, zzupVar)) {
                long zzg = zzolVar2.zzg();
                if (zzg == -1 || zzg < j) {
                    zzolVar = zzolVar2;
                    j = zzg;
                } else if (i2 == 0) {
                    String str = zzeo.zza;
                    if (zzolVar.zzh() != null && zzolVar2.zzh() != null) {
                        zzolVar = zzolVar2;
                    }
                }
            }
        }
        if (zzolVar == null) {
            String zzp = zzp();
            zzol zzolVar3 = new zzol(this, zzp, i, zzupVar);
            hashMap.put(zzp, zzolVar3);
            return zzolVar3;
        }
        return zzolVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzp() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzov
    public final void zza(zzou zzouVar) {
        this.zzf = zzouVar;
    }

    @Override // com.google.android.gms.internal.ads.zzov
    public final synchronized String zzb(zzbe zzbeVar, zzup zzupVar) {
        return zzo(zzbeVar.zzo(zzupVar.zza, this.zzd).zzc, zzupVar).zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
        if (r2.zzf() == r10.zzc) goto L21;
     */
    @Override // com.google.android.gms.internal.ads.zzov
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzc(com.google.android.gms.internal.ads.zzme r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            com.google.android.gms.internal.ads.zzou r0 = r9.zzf     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto Lad
            com.google.android.gms.internal.ads.zzbe r0 = r10.zzb     // Catch: java.lang.Throwable -> Laf
            boolean r1 = r0.zzg()     // Catch: java.lang.Throwable -> Laf
            if (r1 == 0) goto Lf
            goto Lab
        Lf:
            com.google.android.gms.internal.ads.zzup r1 = r10.zzd     // Catch: java.lang.Throwable -> Laf
            if (r1 == 0) goto L3b
            long r2 = r9.zzi()     // Catch: java.lang.Throwable -> Laf
            long r4 = r1.zzd     // Catch: java.lang.Throwable -> Laf
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 < 0) goto Lab
            java.util.HashMap r2 = r9.zze     // Catch: java.lang.Throwable -> Laf
            java.lang.String r3 = r9.zzh     // Catch: java.lang.Throwable -> Laf
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzol r2 = (com.google.android.gms.internal.ads.zzol) r2     // Catch: java.lang.Throwable -> Laf
            if (r2 == 0) goto L3b
            long r3 = r2.zzg()     // Catch: java.lang.Throwable -> Laf
            r5 = -1
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 != 0) goto L3b
            int r2 = r2.zzf()     // Catch: java.lang.Throwable -> Laf
            int r3 = r10.zzc     // Catch: java.lang.Throwable -> Laf
            if (r2 != r3) goto Lab
        L3b:
            int r2 = r10.zzc     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzol r3 = r9.zzo(r2, r1)     // Catch: java.lang.Throwable -> Laf
            java.lang.String r4 = r9.zzh     // Catch: java.lang.Throwable -> Laf
            if (r4 != 0) goto L4b
            java.lang.String r4 = r3.zze()     // Catch: java.lang.Throwable -> Laf
            r9.zzh = r4     // Catch: java.lang.Throwable -> Laf
        L4b:
            r4 = 1
            if (r1 == 0) goto L82
            boolean r5 = r1.zzb()     // Catch: java.lang.Throwable -> Laf
            if (r5 == 0) goto L82
            java.lang.Object r5 = r1.zza     // Catch: java.lang.Throwable -> Laf
            long r6 = r1.zzd     // Catch: java.lang.Throwable -> Laf
            int r1 = r1.zzb     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzup r8 = new com.google.android.gms.internal.ads.zzup     // Catch: java.lang.Throwable -> Laf
            r8.<init>(r5, r6, r1)     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzol r2 = r9.zzo(r2, r8)     // Catch: java.lang.Throwable -> Laf
            boolean r6 = r2.zzi()     // Catch: java.lang.Throwable -> Laf
            if (r6 != 0) goto L82
            r2.zzj(r4)     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzbc r2 = r9.zzd     // Catch: java.lang.Throwable -> Laf
            r0.zzo(r5, r2)     // Catch: java.lang.Throwable -> Laf
            r2.zzc(r1)     // Catch: java.lang.Throwable -> Laf
            r0 = 0
            long r5 = com.google.android.gms.internal.ads.zzeo.zzp(r0)     // Catch: java.lang.Throwable -> Laf
            long r7 = com.google.android.gms.internal.ads.zzeo.zzp(r0)     // Catch: java.lang.Throwable -> Laf
            long r5 = r5 + r7
            java.lang.Math.max(r0, r5)     // Catch: java.lang.Throwable -> Laf
        L82:
            boolean r0 = r3.zzi()     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto L8b
            r3.zzj(r4)     // Catch: java.lang.Throwable -> Laf
        L8b:
            java.lang.String r0 = r3.zze()     // Catch: java.lang.Throwable -> Laf
            java.lang.String r1 = r9.zzh     // Catch: java.lang.Throwable -> Laf
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto Lab
            boolean r0 = r3.zzk()     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto Lab
            r3.zzl(r4)     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.internal.ads.zzou r0 = r9.zzf     // Catch: java.lang.Throwable -> Laf
            java.lang.String r1 = r3.zze()     // Catch: java.lang.Throwable -> Laf
            r0.zzc(r10, r1)     // Catch: java.lang.Throwable -> Laf
            monitor-exit(r9)
            return
        Lab:
            monitor-exit(r9)
            return
        Lad:
            r10 = 0
            throw r10     // Catch: java.lang.Throwable -> Laf
        Laf:
            r10 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Laf
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzom.zzc(com.google.android.gms.internal.ads.zzme):void");
    }

    @Override // com.google.android.gms.internal.ads.zzov
    public final synchronized void zzd(zzme zzmeVar) {
        if (this.zzf != null) {
            zzbe zzbeVar = this.zzg;
            this.zzg = zzmeVar.zzb;
            Iterator it = this.zze.values().iterator();
            while (it.hasNext()) {
                zzol zzolVar = (zzol) it.next();
                if (!zzolVar.zza(zzbeVar, this.zzg) || zzolVar.zzd(zzmeVar)) {
                    it.remove();
                    if (zzolVar.zzi()) {
                        if (zzolVar.zze().equals(this.zzh)) {
                            zzm(zzolVar);
                        }
                        this.zzf.zzd(zzmeVar, zzolVar.zze(), false);
                    }
                }
            }
            zzl(zzmeVar);
        } else {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzov
    public final synchronized void zze(zzme zzmeVar, int i) {
        if (this.zzf != null) {
            Iterator it = this.zze.values().iterator();
            while (it.hasNext()) {
                zzol zzolVar = (zzol) it.next();
                if (zzolVar.zzd(zzmeVar)) {
                    it.remove();
                    if (zzolVar.zzi()) {
                        boolean equals = zzolVar.zze().equals(this.zzh);
                        boolean z = false;
                        if (i == 0 && equals && zzolVar.zzk()) {
                            z = true;
                        }
                        if (equals) {
                            zzm(zzolVar);
                        }
                        this.zzf.zzd(zzmeVar, zzolVar.zze(), z);
                    }
                }
            }
            zzl(zzmeVar);
        } else {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzov
    public final synchronized String zzf() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzov
    public final synchronized void zzg(zzme zzmeVar) {
        zzou zzouVar;
        String str = this.zzh;
        if (str != null) {
            zzol zzolVar = (zzol) this.zze.get(str);
            if (zzolVar == null) {
                throw null;
            }
            zzol zzolVar2 = zzolVar;
            zzm(zzolVar);
        }
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzol zzolVar3 = (zzol) it.next();
            it.remove();
            if (zzolVar3.zzi() && (zzouVar = this.zzf) != null) {
                zzouVar.zzd(zzmeVar, zzolVar3.zze(), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzbd zzj() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzbc zzk() {
        return this.zzd;
    }
}
