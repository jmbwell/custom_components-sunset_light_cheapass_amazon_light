package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.firebase.Timestamp$$ExternalSyntheticApiModelOutline0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzse implements zzsr {
    private static final ArrayDeque zza = new ArrayDeque();
    private static final Object zzb = new Object();
    private final MediaCodec zzc;
    private final HandlerThread zzd;
    private Handler zze;
    private final AtomicReference zzf;
    private final zzde zzg;
    private boolean zzh;

    public zzse(MediaCodec mediaCodec, HandlerThread handlerThread) {
        zzde zzdeVar = new zzde(zzdb.zza);
        this.zzc = mediaCodec;
        this.zzd = handlerThread;
        this.zzg = zzdeVar;
        this.zzf = new AtomicReference();
    }

    private static zzsd zzi() {
        ArrayDeque arrayDeque = zza;
        synchronized (arrayDeque) {
            if (!arrayDeque.isEmpty()) {
                return (zzsd) arrayDeque.removeFirst();
            }
            return new zzsd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zza() {
        if (this.zzh) {
            return;
        }
        HandlerThread handlerThread = this.zzd;
        handlerThread.start();
        this.zze = new zzsc(this, handlerThread.getLooper());
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzb(int i, int i2, int i3, long j, int i4) {
        zzg();
        zzsd zzi = zzi();
        zzi.zza(i, 0, i3, j, i4);
        Handler handler = this.zze;
        String str = zzeo.zza;
        handler.obtainMessage(1, zzi).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzc(int i, int i2, zzhd zzhdVar, long j, int i3) {
        zzg();
        zzsd zzi = zzi();
        zzi.zza(i, 0, 0, j, i3);
        MediaCodec.CryptoInfo cryptoInfo = zzi.zzd;
        cryptoInfo.numSubSamples = zzhdVar.zzf;
        cryptoInfo.numBytesOfClearData = zzj(zzhdVar.zzd, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = zzj(zzhdVar.zze, cryptoInfo.numBytesOfEncryptedData);
        byte[] zzk = zzk(zzhdVar.zzb, cryptoInfo.key);
        zzk.getClass();
        cryptoInfo.key = zzk;
        byte[] zzk2 = zzk(zzhdVar.zza, cryptoInfo.iv);
        zzk2.getClass();
        cryptoInfo.iv = zzk2;
        cryptoInfo.mode = zzhdVar.zzc;
        if (Build.VERSION.SDK_INT >= 24) {
            Timestamp$$ExternalSyntheticApiModelOutline0.m654m();
            cryptoInfo.setPattern(zzed$$ExternalSyntheticApiModelOutline1.m(zzhdVar.zzg, zzhdVar.zzh));
        }
        Handler handler = this.zze;
        String str = zzeo.zza;
        handler.obtainMessage(2, zzi).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzd(Bundle bundle) {
        zzg();
        Handler handler = this.zze;
        String str = zzeo.zza;
        handler.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zze() {
        if (this.zzh) {
            try {
                Handler handler = this.zze;
                if (handler != null) {
                    Handler handler2 = handler;
                    handler.removeCallbacksAndMessages(null);
                    zzde zzdeVar = this.zzg;
                    zzdeVar.zzb();
                    Handler handler3 = this.zze;
                    if (handler3 != null) {
                        Handler handler4 = handler3;
                        handler3.obtainMessage(3).sendToTarget();
                        zzdeVar.zzc();
                        return;
                    }
                    throw null;
                }
                throw null;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzf() {
        if (this.zzh) {
            zze();
            this.zzd.quit();
        }
        this.zzh = false;
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzg() {
        RuntimeException runtimeException = (RuntimeException) this.zzf.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0083 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void zzh(android.os.Message r11) {
        /*
            r10 = this;
            int r0 = r11.what
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 2
            if (r0 == r1) goto L37
            r1 = 3
            if (r0 == r1) goto L31
            r1 = 4
            if (r0 == r1) goto L20
            java.util.concurrent.atomic.AtomicReference r0 = r10.zzf
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            int r11 = r11.what
            java.lang.String r11 = java.lang.String.valueOf(r11)
            r1.<init>(r11)
            androidx.lifecycle.AtomicReference$$ExternalSyntheticBackportWithForwarding0.m(r0, r2, r1)
            goto L76
        L20:
            java.lang.Object r11 = r11.obj
            android.os.Bundle r11 = (android.os.Bundle) r11
            android.media.MediaCodec r0 = r10.zzc     // Catch: java.lang.RuntimeException -> L2a
            r0.setParameters(r11)     // Catch: java.lang.RuntimeException -> L2a
            goto L76
        L2a:
            r11 = move-exception
            java.util.concurrent.atomic.AtomicReference r0 = r10.zzf
            androidx.lifecycle.AtomicReference$$ExternalSyntheticBackportWithForwarding0.m(r0, r2, r11)
            goto L76
        L31:
            com.google.android.gms.internal.ads.zzde r11 = r10.zzg
            r11.zza()
            goto L76
        L37:
            java.lang.Object r11 = r11.obj
            com.google.android.gms.internal.ads.zzsd r11 = (com.google.android.gms.internal.ads.zzsd) r11
            int r4 = r11.zza
            int r0 = r11.zzb
            android.media.MediaCodec$CryptoInfo r6 = r11.zzd
            long r7 = r11.zze
            int r9 = r11.zzf
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzse.zzb     // Catch: java.lang.RuntimeException -> L53
            monitor-enter(r0)     // Catch: java.lang.RuntimeException -> L53
            android.media.MediaCodec r3 = r10.zzc     // Catch: java.lang.Throwable -> L50
            r5 = 0
            r3.queueSecureInputBuffer(r4, r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L50
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            goto L75
        L50:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            throw r1     // Catch: java.lang.RuntimeException -> L53
        L53:
            r0 = move-exception
            java.util.concurrent.atomic.AtomicReference r1 = r10.zzf
            androidx.lifecycle.AtomicReference$$ExternalSyntheticBackportWithForwarding0.m(r1, r2, r0)
            goto L75
        L5a:
            java.lang.Object r11 = r11.obj
            com.google.android.gms.internal.ads.zzsd r11 = (com.google.android.gms.internal.ads.zzsd) r11
            int r4 = r11.zza
            int r0 = r11.zzb
            int r6 = r11.zzc
            long r7 = r11.zze
            int r9 = r11.zzf
            android.media.MediaCodec r3 = r10.zzc     // Catch: java.lang.RuntimeException -> L6f
            r5 = 0
            r3.queueInputBuffer(r4, r5, r6, r7, r9)     // Catch: java.lang.RuntimeException -> L6f
            goto L75
        L6f:
            r0 = move-exception
            java.util.concurrent.atomic.AtomicReference r1 = r10.zzf
            androidx.lifecycle.AtomicReference$$ExternalSyntheticBackportWithForwarding0.m(r1, r2, r0)
        L75:
            r2 = r11
        L76:
            if (r2 == 0) goto L83
            java.util.ArrayDeque r11 = com.google.android.gms.internal.ads.zzse.zza
            monitor-enter(r11)
            r11.add(r2)     // Catch: java.lang.Throwable -> L80
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L80
            return
        L80:
            r0 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L80
            throw r0
        L83:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzse.zzh(android.os.Message):void");
    }

    private static int[] zzj(int[] iArr, int[] iArr2) {
        int length;
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < (length = iArr.length)) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    private static byte[] zzk(byte[] bArr, byte[] bArr2) {
        int length;
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < (length = bArr.length)) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
