package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzgns extends zzgok implements Runnable {
    public static final /* synthetic */ int zzc = 0;
    ListenableFuture zza;
    Object zzb;

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture = this.zza;
        Object obj = this.zzb;
        if ((isCancelled() | (listenableFuture == null)) || (obj == null)) {
            return;
        }
        this.zza = null;
        if (!listenableFuture.isCancelled()) {
            try {
                try {
                    Object zzf = zzf(obj, zzgot.zzr(listenableFuture));
                    this.zzb = null;
                    zze(zzf);
                    return;
                } catch (Throwable th) {
                    try {
                        zzgpl.zza(th);
                        zzb(th);
                        return;
                    } finally {
                        this.zzb = null;
                    }
                }
            } catch (Error e) {
                zzb(e);
                return;
            } catch (CancellationException unused) {
                cancel(false);
                return;
            } catch (ExecutionException e2) {
                zzb(e2.getCause());
                return;
            } catch (Exception e3) {
                zzb(e3);
                return;
            }
        }
        zzk(listenableFuture);
    }

    @Override // com.google.android.gms.internal.ads.zzgnm
    protected final void zzc() {
        zzm(this.zza);
        this.zza = null;
        this.zzb = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgnm
    public final String zzd() {
        String str;
        ListenableFuture listenableFuture = this.zza;
        Object obj = this.zzb;
        String zzd = super.zzd();
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
        if (obj == null) {
            if (zzd != null) {
                return str.concat(zzd);
            }
            return null;
        }
        int length = str.length();
        String obj3 = obj.toString();
        StringBuilder sb2 = new StringBuilder(length + 10 + obj3.length() + 1);
        sb2.append(str);
        sb2.append("function=[");
        sb2.append(obj3);
        sb2.append("]");
        return sb2.toString();
    }

    abstract void zze(Object obj);

    abstract Object zzf(Object obj, Object obj2) throws Exception;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgns(ListenableFuture listenableFuture, Object obj) {
        listenableFuture.getClass();
        this.zza = listenableFuture;
        this.zzb = obj;
    }
}
