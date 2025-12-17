package com.google.android.gms.ads.internal.util.client;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzbtt;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzu implements zze {
    private final Context zza;
    private final String zzb;
    private String zzc;

    public zzu(Context context, String str) {
        this.zza = context;
        this.zzb = str;
    }

    private final URL zzc(String str) throws MalformedURLException {
        URL url = null;
        try {
            url = new URI(str).toURL();
        } catch (IllegalArgumentException e) {
            e = e;
            zze(str, e);
        } catch (MalformedURLException e2) {
            e = e2;
            zze(str, e);
        } catch (URISyntaxException e3) {
            zze(str, e3);
            if (((Boolean) zzbd.zzc().zzd(zzbci.zze)).booleanValue()) {
                url = zzd(str);
            }
        }
        if (url == null) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47);
            sb.append("Falling back to direct new URL(\"");
            sb.append(str);
            sb.append("\") constructor.");
            zzo.zzd(sb.toString());
            return new URL(str);
        }
        return url;
    }

    private final URL zzd(String str) {
        URL url;
        try {
            zzo.zzd("Attempting to parse components, encode, and reconstruct URI.");
            URL url2 = new URL(str);
            URI uri = new URI(url2.getProtocol(), url2.getUserInfo(), url2.getHost(), url2.getPort(), url2.getPath(), url2.getQuery(), url2.getRef());
            url = uri.toURL();
            try {
                String obj = uri.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 114 + obj.length());
                sb.append("Successfully constructed URL after component encoding via new URI(parts).toURL() for original: \"");
                sb.append(str);
                sb.append("\" -> encoded URI: ");
                sb.append(obj);
                zzo.zzd(sb.toString());
            } catch (IllegalArgumentException e) {
                e = e;
                zze(str, e);
                return url;
            } catch (MalformedURLException e2) {
                e = e2;
                zze(str, e);
                return url;
            } catch (URISyntaxException e3) {
                e = e3;
                zze(str, e);
                return url;
            }
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException e4) {
            e = e4;
            url = null;
        }
        return url;
    }

    private final void zze(String str, Throwable th) {
        String message = th.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message).length());
        sb.append("Error while parsing ping URL: ");
        sb.append(str);
        sb.append(". ");
        sb.append(message);
        zzo.zzi(sb.toString());
        zzbtt.zza(this.zza).zzi(th, "HttpUrlPinger.pingUrl", ((Integer) zzbd.zzc().zzd(zzbci.zznA)).intValue() / 100.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ca, code lost:
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0110, code lost:
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x011f, code lost:
        return r0;
     */
    @Override // com.google.android.gms.ads.internal.util.client.zze
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.ads.internal.util.client.zzt zza(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.client.zzu.zza(java.lang.String):com.google.android.gms.ads.internal.util.client.zzt");
    }

    public final String zzb() {
        return this.zzc;
    }
}
