package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayDeque;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzffn {
    private final zzfer zza;
    private final zzffk zzb;
    private final zzfen zzc;
    private zzfft zze;
    private int zzf = 1;
    private final ArrayDeque zzd = new ArrayDeque();

    public zzffn(zzfer zzferVar, zzfen zzfenVar, zzffk zzffkVar) {
        this.zza = zzferVar;
        this.zzc = zzfenVar;
        this.zzb = zzffkVar;
        zzfenVar.zza(new zzfem() { // from class: com.google.android.gms.internal.ads.zzffm
            @Override // com.google.android.gms.internal.ads.zzfem
            public final /* synthetic */ void zza() {
                zzffn.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
        r3 = new com.google.android.gms.internal.ads.zzfft(r4.zza, r4.zzb, r0);
        r4.zze = r3;
        r3.zza(new com.google.android.gms.internal.ads.zzffi(r4, r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
        return;
     */
    /* renamed from: zzh */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzd() {
        /*
            r4 = this;
            monitor-enter(r4)
            com.google.android.gms.internal.ads.zzbbz r0 = com.google.android.gms.internal.ads.zzbci.zzgI     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.internal.ads.zzbcg r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r0 = r1.zzd(r0)     // Catch: java.lang.Throwable -> L6c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L6c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L6c
            if (r0 == 0) goto L2d
            com.google.android.gms.internal.ads.zzbyv r0 = com.google.android.gms.ads.internal.zzt.zzh()     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.ads.internal.util.zzg r0 = r0.zzo()     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.internal.ads.zzbyq r0 = r0.zzi()     // Catch: java.lang.Throwable -> L6c
            boolean r0 = r0.zzi()     // Catch: java.lang.Throwable -> L6c
            if (r0 == 0) goto L26
            goto L2d
        L26:
            java.util.ArrayDeque r0 = r4.zzd     // Catch: java.lang.Throwable -> L6c
            r0.clear()     // Catch: java.lang.Throwable -> L6c
            monitor-exit(r4)
            return
        L2d:
            boolean r0 = r4.zzi()     // Catch: java.lang.Throwable -> L6c
            if (r0 == 0) goto L6a
        L33:
            java.util.ArrayDeque r0 = r4.zzd     // Catch: java.lang.Throwable -> L6c
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6c
            if (r1 != 0) goto L6a
            java.lang.Object r0 = r0.pollFirst()     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.internal.ads.zzffl r0 = (com.google.android.gms.internal.ads.zzffl) r0     // Catch: java.lang.Throwable -> L6c
            if (r0 == 0) goto L55
            com.google.android.gms.internal.ads.zzffb r1 = r0.zzb()     // Catch: java.lang.Throwable -> L6c
            if (r1 == 0) goto L33
            com.google.android.gms.internal.ads.zzfer r1 = r4.zza     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.internal.ads.zzffb r2 = r0.zzb()     // Catch: java.lang.Throwable -> L6c
            boolean r1 = r1.zzc(r2)     // Catch: java.lang.Throwable -> L6c
            if (r1 == 0) goto L33
        L55:
            com.google.android.gms.internal.ads.zzfer r1 = r4.zza     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.internal.ads.zzffk r2 = r4.zzb     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.internal.ads.zzfft r3 = new com.google.android.gms.internal.ads.zzfft     // Catch: java.lang.Throwable -> L6c
            r3.<init>(r1, r2, r0)     // Catch: java.lang.Throwable -> L6c
            r4.zze = r3     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.internal.ads.zzffi r1 = new com.google.android.gms.internal.ads.zzffi     // Catch: java.lang.Throwable -> L6c
            r1.<init>(r4, r0)     // Catch: java.lang.Throwable -> L6c
            r3.zza(r1)     // Catch: java.lang.Throwable -> L6c
            monitor-exit(r4)
            return
        L6a:
            monitor-exit(r4)
            return
        L6c:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6c
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzffn.zzd():void");
    }

    private final synchronized boolean zzi() {
        return this.zze == null;
    }

    public final synchronized void zza(zzffl zzfflVar) {
        this.zzd.add(zzfflVar);
    }

    public final synchronized ListenableFuture zzb(zzffl zzfflVar) {
        this.zzf = 2;
        if (zzi()) {
            return null;
        }
        return this.zze.zzb(zzfflVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc() {
        synchronized (this) {
            this.zzf = 1;
            zzd();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ArrayDeque zze() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf(zzfft zzfftVar) {
        this.zze = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int zzg() {
        return this.zzf;
    }
}
