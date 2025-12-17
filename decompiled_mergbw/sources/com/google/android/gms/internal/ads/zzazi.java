package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.common.util.PlatformVersion;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzazi extends Thread {
    private boolean zza;
    private boolean zzb;
    private final Object zzc;
    private final zzayz zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final String zzm;
    private final boolean zzn;
    private final boolean zzo;

    public zzazi() {
        zzayz zzayzVar = new zzayz();
        this.zza = false;
        this.zzb = false;
        this.zzd = zzayzVar;
        this.zzc = new Object();
        this.zzf = ((Long) zzbdz.zzd.zze()).intValue();
        this.zzg = ((Long) zzbdz.zza.zze()).intValue();
        this.zzh = ((Long) zzbdz.zze.zze()).intValue();
        this.zzi = ((Long) zzbdz.zzc.zze()).intValue();
        this.zzj = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzal)).intValue();
        this.zzk = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzam)).intValue();
        this.zzl = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzan)).intValue();
        this.zze = ((Long) zzbdz.zzf.zze()).intValue();
        this.zzm = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzap);
        this.zzn = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzaq)).booleanValue();
        this.zzo = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzar)).booleanValue();
        ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzas)).booleanValue();
        setName("ContentFetchTask");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(1:3)(2:31|(2:36|(3:39|(3:41|42|(6:50|(1:52)(5:53|54|55|(1:59)|(1:61))|6|7|e5|20))|37)))|4|5|6|7|e5) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c9, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ca, code lost:
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in ContentFetchTask", r0);
        com.google.android.gms.ads.internal.zzt.zzh().zzg(r0, "ContentFetchTask.run");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00db, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00dc, code lost:
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in ContentFetchTask", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e6 A[EXC_TOP_SPLITTER, LOOP:1: B:63:0x00e6->B:68:0x00e6, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazi.run():void");
    }

    public final void zza() {
        synchronized (this.zzc) {
            if (this.zza) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Content hash thread already started, quitting...");
                return;
            }
            this.zza = true;
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006a, code lost:
        if (r11 == 0) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(android.view.View r11) {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzayy r9 = new com.google.android.gms.internal.ads.zzayy     // Catch: java.lang.Exception -> L7c
            int r1 = r10.zzf     // Catch: java.lang.Exception -> L7c
            int r2 = r10.zzg     // Catch: java.lang.Exception -> L7c
            int r3 = r10.zzh     // Catch: java.lang.Exception -> L7c
            int r4 = r10.zzi     // Catch: java.lang.Exception -> L7c
            int r5 = r10.zzj     // Catch: java.lang.Exception -> L7c
            int r6 = r10.zzk     // Catch: java.lang.Exception -> L7c
            int r7 = r10.zzl     // Catch: java.lang.Exception -> L7c
            boolean r8 = r10.zzo     // Catch: java.lang.Exception -> L7c
            r0 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L7c
            com.google.android.gms.internal.ads.zzazd r0 = com.google.android.gms.ads.internal.zzt.zzg()     // Catch: java.lang.Exception -> L7c
            android.content.Context r0 = r0.zze()     // Catch: java.lang.Exception -> L7c
            if (r0 == 0) goto L50
            java.lang.String r1 = r10.zzm     // Catch: java.lang.Exception -> L7c
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L7c
            if (r2 != 0) goto L50
            android.content.res.Resources r2 = r0.getResources()     // Catch: java.lang.Exception -> L7c
            com.google.android.gms.internal.ads.zzbbz r3 = com.google.android.gms.internal.ads.zzbci.zzao     // Catch: java.lang.Exception -> L7c
            com.google.android.gms.internal.ads.zzbcg r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Exception -> L7c
            java.lang.Object r3 = r4.zzd(r3)     // Catch: java.lang.Exception -> L7c
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Exception -> L7c
            java.lang.String r4 = "id"
            java.lang.String r0 = r0.getPackageName()     // Catch: java.lang.Exception -> L7c
            int r0 = r2.getIdentifier(r3, r4, r0)     // Catch: java.lang.Exception -> L7c
            java.lang.Object r0 = r11.getTag(r0)     // Catch: java.lang.Exception -> L7c
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L7c
            if (r0 == 0) goto L50
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L7c
            if (r0 != 0) goto L75
        L50:
            com.google.android.gms.internal.ads.zzazh r11 = r10.zzc(r11, r9)     // Catch: java.lang.Exception -> L7c
            r9.zzi()     // Catch: java.lang.Exception -> L7c
            int r0 = r11.zza     // Catch: java.lang.Exception -> L7c
            if (r0 != 0) goto L5f
            int r0 = r11.zzb     // Catch: java.lang.Exception -> L7c
            if (r0 == 0) goto L75
        L5f:
            int r11 = r11.zzb     // Catch: java.lang.Exception -> L7c
            if (r11 != 0) goto L6a
            int r11 = r9.zzl()     // Catch: java.lang.Exception -> L7c
            if (r11 == 0) goto L75
            goto L6c
        L6a:
            if (r11 != 0) goto L76
        L6c:
            com.google.android.gms.internal.ads.zzayz r11 = r10.zzd     // Catch: java.lang.Exception -> L7c
            boolean r11 = r11.zza(r9)     // Catch: java.lang.Exception -> L7c
            if (r11 != 0) goto L75
            goto L76
        L75:
            return
        L76:
            com.google.android.gms.internal.ads.zzayz r11 = r10.zzd     // Catch: java.lang.Exception -> L7c
            r11.zzc(r9)     // Catch: java.lang.Exception -> L7c
            return
        L7c:
            r11 = move-exception
            int r0 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r0 = "Exception in fetchContentOnUIThread"
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r11)
            java.lang.String r0 = "ContentFetchTask.fetchContent"
            com.google.android.gms.internal.ads.zzbyv r1 = com.google.android.gms.ads.internal.zzt.zzh()
            r1.zzg(r11, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazi.zzb(android.view.View):void");
    }

    final zzazh zzc(View view, zzayy zzayyVar) {
        if (view == null) {
            return new zzazh(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if (!(view instanceof TextView) || (view instanceof EditText)) {
            if (!(view instanceof WebView) || (view instanceof zzcek)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    int i = 0;
                    int i2 = 0;
                    for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                        zzazh zzc = zzc(viewGroup.getChildAt(i3), zzayyVar);
                        i += zzc.zza;
                        i2 += zzc.zzb;
                    }
                    return new zzazh(this, i, i2);
                }
                return new zzazh(this, 0, 0);
            }
            WebView webView = (WebView) view;
            if (!PlatformVersion.isAtLeastKitKat()) {
                return new zzazh(this, 0, 0);
            }
            zzayyVar.zze();
            webView.post(new zzazg(this, zzayyVar, webView, globalVisibleRect));
            return new zzazh(this, 0, 1);
        }
        CharSequence text = ((TextView) view).getText();
        if (!TextUtils.isEmpty(text)) {
            zzayyVar.zzg(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zzazh(this, 1, 0);
        }
        return new zzazh(this, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(zzayy zzayyVar, WebView webView, String str, boolean z) {
        zzayyVar.zzd();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.zzn || TextUtils.isEmpty(webView.getTitle())) {
                    zzayyVar.zzf(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzayyVar.zzf(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzayyVar.zza()) {
                this.zzd.zzb(zzayyVar);
            }
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Json string may be malformed.");
        } catch (Throwable th) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to get webview content.", th);
            com.google.android.gms.ads.internal.zzt.zzh().zzg(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zze() {
        synchronized (this.zzc) {
            this.zzb = true;
            StringBuilder sb = new StringBuilder(40);
            sb.append("ContentFetchThread: paused, pause = true");
            String sb2 = sb.toString();
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb2);
        }
    }
}
