package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public class zzfro extends Handler {
    public zzfro() {
        Looper.getMainLooper();
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        zza(message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(Message message) {
        super.dispatchMessage(message);
    }

    public zzfro(Looper looper) {
        super(looper);
        Looper.getMainLooper();
    }
}
