package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.webkit.WebView;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfnb extends zzfmx {
    private WebView zza;
    private Long zzb;
    private final Map zzc;

    public zzfnb(String str, Map map, String str2) {
        super(str);
        this.zzb = null;
        this.zzc = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfmx
    public final void zza() {
        WebView webView = new WebView(zzfmm.zza().zzb());
        this.zza = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.zza.getSettings().setAllowContentAccess(false);
        this.zza.getSettings().setAllowFileAccess(false);
        this.zza.setWebViewClient(new zzfmz(this));
        zzc(this.zza);
        zzfmo.zzk(this.zza, null);
        Map map = this.zzc;
        Iterator it = map.keySet().iterator();
        if (!it.hasNext()) {
            this.zzb = Long.valueOf(System.nanoTime());
        } else {
            zzfly zzflyVar = (zzfly) map.get((String) it.next());
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmx
    public final void zzb() {
        super.zzb();
        new Handler().postDelayed(new zzfna(this), Math.max(4000 - (this.zzb == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.zzb.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfmx
    public final void zzk(zzfln zzflnVar, zzfll zzfllVar) {
        JSONObject jSONObject = new JSONObject();
        Map zze = zzfllVar.zze();
        Iterator it = zze.keySet().iterator();
        if (it.hasNext()) {
            zzfly zzflyVar = (zzfly) zze.get((String) it.next());
            throw null;
        } else {
            zzl(zzflnVar, zzfllVar, jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ WebView zzq() {
        return this.zza;
    }
}
