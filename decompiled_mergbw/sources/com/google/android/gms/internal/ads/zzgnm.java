package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzgnm<V> extends zzgnn<V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* loaded from: classes3.dex */
    public final class zza {
        static final zza zza;
        static final zza zzb;
        final boolean zzc;
        final Throwable zzd;

        static {
            if (zzgnn.zzg) {
                zzb = null;
                zza = null;
                return;
            }
            zzb = new zza(false, null);
            zza = new zza(true, null);
        }

        zza(boolean z, Throwable th) {
            this.zzc = z;
            this.zzd = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* loaded from: classes3.dex */
    public final class zzb<V> implements Runnable {
        final zzgnm<V> zza;
        final ListenableFuture<? extends V> zzb;

        zzb(zzgnm zzgnmVar, ListenableFuture listenableFuture) {
            this.zza = zzgnmVar;
            this.zzb = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.zza.valueField != this) {
                return;
            }
            if (zzgnn.zzr(this.zza, this, zzgnm.zze(this.zzb))) {
                zzgnm.zzw(this.zza, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* loaded from: classes3.dex */
    public final class zzc {
        static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzgnm.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable zzb;

        zzc(Throwable th) {
            th.getClass();
            this.zzb = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* loaded from: classes3.dex */
    public final class zzd {
        static final zzd zza = new zzd();
        zzd next;
        final Runnable zzb;
        final Executor zzc;

        zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* loaded from: classes3.dex */
    public interface zze<V> extends ListenableFuture<V> {
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* loaded from: classes3.dex */
    abstract class zzf<V> extends zzgnm<V> implements zze<V> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object zze(ListenableFuture listenableFuture) {
        Throwable zzl;
        if (listenableFuture instanceof zze) {
            Object obj = ((zzgnm) listenableFuture).valueField;
            if (obj instanceof zza) {
                zza zzaVar = (zza) obj;
                if (zzaVar.zzc) {
                    Throwable th = zzaVar.zzd;
                    if (th != null) {
                        obj = new zza(false, th);
                    } else {
                        obj = zza.zzb;
                    }
                }
            }
            return Objects.requireNonNull(obj);
        } else if (!(listenableFuture instanceof zzgpv) || (zzl = ((zzgpv) listenableFuture).zzl()) == null) {
            boolean isCancelled = listenableFuture.isCancelled();
            if ((!zzg) & isCancelled) {
                return Objects.requireNonNull(zza.zzb);
            }
            try {
                Object zzf2 = zzf(listenableFuture);
                if (!isCancelled) {
                    return zzf2 == null ? zze : zzf2;
                }
                String valueOf = String.valueOf(listenableFuture);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new zza(false, new IllegalArgumentException(sb.toString()));
            } catch (Error e) {
                e = e;
                return new zzc(e);
            } catch (CancellationException e2) {
                if (!isCancelled) {
                    String valueOf2 = String.valueOf(listenableFuture);
                    String.valueOf(valueOf2);
                    return new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(valueOf2)), e2));
                }
                return new zza(false, e2);
            } catch (ExecutionException e3) {
                if (isCancelled) {
                    String valueOf3 = String.valueOf(listenableFuture);
                    String.valueOf(valueOf3);
                    return new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(valueOf3)), e3));
                }
                return new zzc(e3.getCause());
            } catch (Exception e4) {
                e = e4;
                return new zzc(e);
            }
        } else {
            return new zzc(zzl);
        }
    }

    private static Object zzf(Future future) throws ExecutionException {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzg(Object obj) throws ExecutionException {
        if (obj instanceof zza) {
            Throwable th = ((zza) obj).zzd;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (!(obj instanceof zzc)) {
            if (obj == zze) {
                return null;
            }
            return obj;
        } else {
            throw new ExecutionException(((zzc) obj).zzb);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzh(Object obj) {
        return !(obj instanceof zzb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzw(zzgnm zzgnmVar, boolean z) {
        zzd zzdVar = null;
        while (true) {
            zzgnmVar.zzs();
            if (z) {
                zzgnmVar.zzi();
            }
            zzgnmVar.zzc();
            zzd zzdVar2 = zzdVar;
            zzd zzq = zzgnmVar.zzq(zzd.zza);
            zzd zzdVar3 = zzdVar2;
            while (zzq != null) {
                zzd zzdVar4 = zzq.next;
                zzq.next = zzdVar3;
                zzdVar3 = zzq;
                zzq = zzdVar4;
            }
            while (zzdVar3 != null) {
                Runnable runnable = zzdVar3.zzb;
                zzdVar = zzdVar3.next;
                Runnable runnable2 = (Runnable) Objects.requireNonNull(runnable);
                if (runnable2 instanceof zzb) {
                    zzb zzbVar = (zzb) runnable2;
                    zzgnmVar = zzbVar.zza;
                    if (zzgnmVar.valueField == zzbVar && zzr(zzgnmVar, zzbVar, zze(zzbVar.zzb))) {
                        break;
                    }
                } else {
                    zzy(runnable2, (Executor) Objects.requireNonNull(zzdVar3.zzc));
                }
                zzdVar3 = zzdVar;
            }
            return;
            z = false;
        }
    }

    private final void zzx(StringBuilder sb) {
        try {
            Object zzf2 = zzf(this);
            sb.append("SUCCESS, result=[");
            if (zzf2 == null) {
                sb.append(AbstractJsonLexerKt.NULL);
            } else if (zzf2 == this) {
                sb.append("this future");
            } else {
                sb.append(zzf2.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(zzf2)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e) {
            sb.append("FAILURE, cause=[");
            sb.append(e.getCause());
            sb.append("]");
        } catch (Exception e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        }
    }

    private static void zzy(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            Logger zza2 = zzf.zza();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            zza2.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e);
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzghc.zzk(runnable, "Runnable was null.");
        zzghc.zzk(executor, "Executor was null.");
        if (isDone() || (zzdVar = this.listenersField) == zzd.zza) {
            zzy(runnable, executor);
        }
        zzd zzdVar2 = new zzd(runnable, executor);
        do {
            zzdVar2.next = zzdVar;
            if (zzp(zzdVar, zzdVar2)) {
                return;
            }
            zzdVar = this.listenersField;
        } while (zzdVar != zzd.zza);
        zzy(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        zza zzaVar;
        Object requireNonNull;
        Object obj = this.valueField;
        if ((obj instanceof zzb) || (obj == null)) {
            if (zzg) {
                requireNonNull = new zza(z, new CancellationException("Future.cancel() was called."));
            } else {
                if (z) {
                    zzaVar = zza.zza;
                } else {
                    zzaVar = zza.zzb;
                }
                requireNonNull = Objects.requireNonNull(zzaVar);
            }
            zzgnm<V> zzgnmVar = this;
            boolean z2 = false;
            while (true) {
                if (zzr(zzgnmVar, obj, requireNonNull)) {
                    zzw(zzgnmVar, z);
                    if (!(obj instanceof zzb)) {
                        break;
                    }
                    ListenableFuture<? extends V> listenableFuture = ((zzb) obj).zzb;
                    if (listenableFuture instanceof zze) {
                        zzgnmVar = (zzgnm) listenableFuture;
                        obj = zzgnmVar.valueField;
                        if (!(obj == null) && !(obj instanceof zzb)) {
                            break;
                        }
                        z2 = true;
                    } else {
                        listenableFuture.cancel(z);
                        break;
                    }
                } else {
                    obj = zzgnmVar.valueField;
                    if (zzh(obj)) {
                        return z2;
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        return zzu();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.valueField instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.valueField;
        return (obj != null) & zzh(obj);
    }

    public String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (!isDone()) {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.valueField;
            if (obj instanceof zzb) {
                sb.append(", setFuture=[");
                ListenableFuture<? extends V> listenableFuture = ((zzb) obj).zzb;
                try {
                    if (listenableFuture == this) {
                        sb.append("this future");
                    } else {
                        sb.append(listenableFuture);
                    }
                } catch (Throwable th) {
                    zzgpl.zzb(th);
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    concat = zzghs.zzb(zzd());
                } catch (Throwable th2) {
                    zzgpl.zzb(th2);
                    String valueOf = String.valueOf(th2.getClass());
                    String.valueOf(valueOf);
                    concat = "Exception thrown from implementation: ".concat(String.valueOf(valueOf));
                }
                if (concat != null) {
                    sb.append(", info=[");
                    sb.append(concat);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                zzx(sb);
            }
        } else {
            zzx(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zza(Object obj) {
        if (obj == null) {
            obj = zze;
        }
        if (zzr(this, null, obj)) {
            zzw(this, false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzb(Throwable th) {
        th.getClass();
        if (zzr(this, null, new zzc(th))) {
            zzw(this, false);
            return true;
        }
        return false;
    }

    protected void zzc() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String zzd() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb = new StringBuilder(String.valueOf(delay).length() + 21);
            sb.append("remaining delay=[");
            sb.append(delay);
            sb.append(" ms]");
            return sb.toString();
        }
        return null;
    }

    protected void zzi() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzj() {
        Object obj = this.valueField;
        return (obj instanceof zza) && ((zza) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgpv
    public final Throwable zzl() {
        if (this instanceof zze) {
            Object obj = this.valueField;
            if (obj instanceof zzc) {
                return ((zzc) obj).zzb;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzm(Future future) {
        if ((future != null) && isCancelled()) {
            future.cancel(zzj());
        }
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        return zzt(j, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzk(ListenableFuture listenableFuture) {
        zzc zzcVar;
        listenableFuture.getClass();
        Object obj = this.valueField;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (zzr(this, null, zze(listenableFuture))) {
                    zzw(this, false);
                    return true;
                }
                return false;
            }
            zzb zzbVar = new zzb(this, listenableFuture);
            if (zzr(this, null, zzbVar)) {
                try {
                    listenableFuture.addListener(zzbVar, zzgoi.INSTANCE);
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Error | Exception unused) {
                        zzcVar = zzc.zza;
                    }
                    zzr(this, zzbVar, zzcVar);
                }
                return true;
            }
            obj = this.valueField;
        }
        if (obj instanceof zza) {
            listenableFuture.cancel(((zza) obj).zzc);
        }
        return false;
    }
}
