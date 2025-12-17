package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzats implements Runnable {
    private zzats() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzats(byte[] bArr) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzatt.zzf(MessageDigest.getInstance("MD5"));
            countDownLatch = zzatt.zzb;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzatt.zzb;
        } catch (Throwable th) {
            zzatt.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
