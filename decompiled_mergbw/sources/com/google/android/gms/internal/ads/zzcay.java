package com.google.android.gms.internal.ads;

import android.os.Looper;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzcay implements Runnable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcay(zzcba zzcbaVar) {
        Objects.requireNonNull(zzcbaVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
