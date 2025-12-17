package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzfmn implements Runnable {
    final /* synthetic */ WebView zza;
    final /* synthetic */ String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfmn(zzfmo zzfmoVar, WebView webView, String str) {
        this.zza = webView;
        this.zzb = str;
        Objects.requireNonNull(zzfmoVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfmo.zzk(this.zza, this.zzb);
    }
}
