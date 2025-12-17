package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzp extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzp(zzs zzsVar, byte[] bArr) {
        Objects.requireNonNull(zzsVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        com.google.android.gms.ads.internal.util.client.zzl.zzg();
        zzd.zza(context);
    }
}
