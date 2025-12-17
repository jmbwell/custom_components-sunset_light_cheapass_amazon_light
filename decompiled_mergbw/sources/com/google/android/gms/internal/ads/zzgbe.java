package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgbe implements zzfqb {
    private final Context zza;
    private final zzgcx zzb;
    private final String zzc;
    private final long zzd;
    private final long zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgbe(Context context, zzfui zzfuiVar, zzgcx zzgcxVar) {
        this.zza = context;
        this.zzc = zzfuiVar.zzb();
        this.zzd = zzfuiVar.zzj();
        this.zze = zzfuiVar.zzk();
        this.zzb = zzgcxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zza(java.util.Map r6) {
        /*
            r5 = this;
            java.lang.String r0 = "v"
            java.lang.String r1 = r5.zzc
            r6.put(r0, r1)
            java.lang.Throwable r0 = new java.lang.Throwable
            r0.<init>()
            java.lang.String r1 = "t"
            r6.put(r1, r0)
            java.lang.String r0 = "E"
            java.lang.String r1 = "gs"
            java.lang.Object r1 = r6.get(r1)     // Catch: java.lang.Throwable -> L45
            com.google.common.util.concurrent.ListenableFuture r1 = (com.google.common.util.concurrent.ListenableFuture) r1     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L45
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L45
            r3 = 31
            if (r2 < r3) goto L29
            boolean r2 = r1.isDone()     // Catch: java.lang.Throwable -> L45
            if (r2 == 0) goto L45
        L29:
            long r2 = r5.zzd     // Catch: java.lang.Throwable -> L45
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L45
            java.lang.Object r1 = r1.get(r2, r4)     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzast r1 = (com.google.android.gms.internal.ads.zzast) r1     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L45
            java.lang.String r2 = r1.zzb()     // Catch: java.lang.Throwable -> L45
            int r2 = r2.length()     // Catch: java.lang.Throwable -> L45
            r3 = 1
            if (r2 <= r3) goto L45
            java.lang.String r1 = r1.zzb()     // Catch: java.lang.Throwable -> L45
            goto L46
        L45:
            r1 = r0
        L46:
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L67
            java.lang.String r0 = "ai"
            java.lang.Object r0 = r6.get(r0)     // Catch: java.lang.Throwable -> L67
            com.google.common.util.concurrent.ListenableFuture r0 = (com.google.common.util.concurrent.ListenableFuture) r0     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto L67
            long r2 = r5.zze     // Catch: java.lang.Throwable -> L67
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L67
            java.lang.Object r0 = r0.get(r2, r4)     // Catch: java.lang.Throwable -> L67
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L67
            boolean r2 = com.google.android.gms.internal.ads.zzghs.zzc(r0)     // Catch: java.lang.Throwable -> L67
            if (r2 != 0) goto L67
            r1 = r0
        L67:
            java.lang.String r0 = "int"
            r6.put(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgbe.zza(java.util.Map):void");
    }

    @Override // com.google.android.gms.internal.ads.zzfqb
    public final Map zzb() {
        Map zzb = this.zzb.zzb();
        zza(zzb);
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfqb
    public final Map zzc() {
        Map zzc = this.zzb.zzc(this.zza, null);
        zza(zzc);
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfqb
    public final Map zzd() {
        Map zzd = this.zzb.zzd();
        zza(zzd);
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzfqb
    public final Map zze() {
        HashMap hashMap = new HashMap();
        hashMap.put("t", new Throwable());
        return hashMap;
    }
}
