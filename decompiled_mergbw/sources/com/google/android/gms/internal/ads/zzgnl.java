package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzgnl extends zzgok implements Runnable {
    public static final /* synthetic */ int zzd = 0;
    ListenableFuture zza;
    Class zzb;
    Object zzc;

    /* JADX WARN: Removed duplicated region for block: B:34:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0093  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r9 = this;
            com.google.common.util.concurrent.ListenableFuture r0 = r9.zza
            java.lang.Class r1 = r9.zzb
            java.lang.Object r2 = r9.zzc
            r3 = 1
            r4 = 0
            if (r0 != 0) goto Lc
            r5 = r3
            goto Ld
        Lc:
            r5 = r4
        Ld:
            if (r1 != 0) goto L11
            r6 = r3
            goto L12
        L11:
            r6 = r4
        L12:
            r5 = r5 | r6
            if (r2 != 0) goto L16
            goto L17
        L16:
            r3 = r4
        L17:
            r3 = r3 | r5
            if (r3 != 0) goto Lba
            boolean r3 = r9.isCancelled()
            if (r3 == 0) goto L22
            goto Lba
        L22:
            r3 = 0
            r9.zza = r3
            boolean r4 = r0 instanceof com.google.android.gms.internal.ads.zzgpv     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            if (r4 == 0) goto L31
            r4 = r0
            com.google.android.gms.internal.ads.zzgpv r4 = (com.google.android.gms.internal.ads.zzgpv) r4     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            java.lang.Throwable r4 = r4.zzl()     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L32
        L31:
            r4 = r3
        L32:
            if (r4 != 0) goto L3a
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzgot.zzr(r0)     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L8d
        L39:
            r4 = move-exception
        L3a:
            r5 = r3
            goto L8d
        L3c:
            r4 = move-exception
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L8b
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.Class r6 = r0.getClass()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.String r7 = java.lang.String.valueOf(r6)
            int r7 = r7.length()
            java.lang.String r8 = java.lang.String.valueOf(r4)
            int r7 = r7 + 19
            int r8 = r8.length()
            int r7 = r7 + r8
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            int r7 = r7 + 16
            r8.<init>(r7)
            java.lang.String r7 = "Future type "
            r8.append(r7)
            r8.append(r6)
            java.lang.String r6 = " threw "
            r8.append(r6)
            r8.append(r4)
            java.lang.String r4 = " without a cause"
            r8.append(r4)
            java.lang.String r4 = r8.toString()
            r5.<init>(r4)
        L8b:
            r4 = r5
            goto L3a
        L8d:
            if (r4 != 0) goto L93
            r9.zza(r5)
            return
        L93:
            boolean r1 = r1.isInstance(r4)
            if (r1 == 0) goto Lb7
            java.lang.Object r0 = r9.zzf(r2, r4)     // Catch: java.lang.Throwable -> La5
            r9.zzb = r3
            r9.zzc = r3
            r9.zze(r0)
            return
        La5:
            r0 = move-exception
            com.google.android.gms.internal.ads.zzgpl.zza(r0)     // Catch: java.lang.Throwable -> Lb1
            r9.zzb(r0)     // Catch: java.lang.Throwable -> Lb1
            r9.zzb = r3
            r9.zzc = r3
            return
        Lb1:
            r0 = move-exception
            r9.zzb = r3
            r9.zzc = r3
            throw r0
        Lb7:
            r9.zzk(r0)
        Lba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgnl.run():void");
    }

    @Override // com.google.android.gms.internal.ads.zzgnm
    protected final void zzc() {
        zzm(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgnm
    public final String zzd() {
        String str;
        ListenableFuture listenableFuture = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        String zzd2 = super.zzd();
        if (listenableFuture != null) {
            String obj2 = listenableFuture.toString();
            StringBuilder sb = new StringBuilder(obj2.length() + 16);
            sb.append("inputFuture=[");
            sb.append(obj2);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (cls == null || obj == null) {
            if (zzd2 != null) {
                return str.concat(zzd2);
            }
            return null;
        }
        int length = str.length();
        String obj3 = cls.toString();
        int length2 = obj3.length();
        String obj4 = obj.toString();
        StringBuilder sb2 = new StringBuilder(length + 15 + length2 + 13 + obj4.length() + 1);
        sb2.append(str);
        sb2.append("exceptionType=[");
        sb2.append(obj3);
        sb2.append("], fallback=[");
        sb2.append(obj4);
        sb2.append("]");
        return sb2.toString();
    }

    abstract void zze(Object obj);

    abstract Object zzf(Object obj, Throwable th) throws Exception;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgnl(ListenableFuture listenableFuture, Class cls, Object obj) {
        listenableFuture.getClass();
        this.zza = listenableFuture;
        this.zzb = cls;
        this.zzc = obj;
    }
}
