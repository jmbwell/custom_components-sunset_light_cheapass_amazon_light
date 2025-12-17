package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgdq implements zzgcz {
    private long zza = -1;
    private long zzb = -1;
    private long zzc = -1;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private final long zzi = SystemClock.uptimeMillis();

    public zzgdq(zzftp zzftpVar) {
    }

    private static boolean zza(View view) {
        try {
            if (view.getClass().getName().contains("DebugGestureViewWrapper")) {
                view = ((ViewGroup) view).getChildAt(0);
            }
            Object invoke = view.getClass().getMethod("getAdConfiguration", null).invoke(view, null);
            Integer num = (Integer) invoke.getClass().getField("adType").get(invoke);
            num.intValue();
            String str = (String) invoke.getClass().getMethod("adTypeToString", Integer.TYPE).invoke(null, num);
            if (!str.contains("INTERSTITIAL") && !str.contains("APP_OPEN")) {
                if (!str.contains("REWARDED")) {
                    return false;
                }
            }
            return true;
        } catch (NullPointerException | ReflectiveOperationException | SecurityException unused) {
            return false;
        }
    }

    private static DisplayMetrics zze(Context context) {
        boolean isUiContext;
        if (Build.VERSION.SDK_INT >= 33) {
            isUiContext = context.isUiContext();
            if (!isUiContext) {
                return null;
            }
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return null;
        }
        Display defaultDisplay = windowManager.getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            defaultDisplay.getRealMetrics(displayMetrics);
        } catch (NoSuchMethodError unused) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return displayMetrics;
    }

    private final void zzf(Map map) {
        map.put("tcq", Long.valueOf(this.zza));
        map.put("tpq", Long.valueOf(this.zzb));
        map.put("tcc", Long.valueOf(this.zzg));
        map.put("tpc", Long.valueOf(this.zzh));
        map.put("tpv", Long.valueOf(this.zzd));
        map.put("tcv", Long.valueOf(this.zzc));
        map.put("tchv", Long.valueOf(this.zze));
        map.put("tphv", Long.valueOf(this.zzf));
        map.put("tst", Long.valueOf(this.zzi));
    }

    @Override // com.google.android.gms.internal.ads.zzgcz
    public final synchronized void zzb(Map map) {
        this.zzb = this.zza;
        this.zza = SystemClock.uptimeMillis();
        zzf(map);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        if (zza(r8) != false) goto L20;
     */
    @Override // com.google.android.gms.internal.ads.zzgcz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzc(java.util.Map r6, android.content.Context r7, android.view.View r8) {
        /*
            r5 = this;
            monitor-enter(r5)
            long r0 = r5.zzc     // Catch: java.lang.Throwable -> L51
            r5.zzd = r0     // Catch: java.lang.Throwable -> L51
            long r0 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L51
            r5.zzc = r0     // Catch: java.lang.Throwable -> L51
            long r0 = r5.zze     // Catch: java.lang.Throwable -> L51
            r2 = -1
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L15
            r5.zzf = r0     // Catch: java.lang.Throwable -> L51
        L15:
            android.util.DisplayMetrics r7 = zze(r7)     // Catch: java.lang.Throwable -> L51
            if (r7 != 0) goto L1c
            goto L4a
        L1c:
            int r0 = r7.widthPixels     // Catch: java.lang.Throwable -> L51
            int r1 = r7.heightPixels     // Catch: java.lang.Throwable -> L51
            int r0 = r0 * r1
            if (r8 == 0) goto L4a
            int r1 = r8.getWidth()     // Catch: java.lang.Throwable -> L51
            int r4 = r7.widthPixels     // Catch: java.lang.Throwable -> L51
            int r1 = java.lang.Math.min(r1, r4)     // Catch: java.lang.Throwable -> L51
            int r4 = r8.getHeight()     // Catch: java.lang.Throwable -> L51
            int r7 = r7.heightPixels     // Catch: java.lang.Throwable -> L51
            int r7 = java.lang.Math.min(r4, r7)     // Catch: java.lang.Throwable -> L51
            int r1 = r1 * r7
            int r7 = r1 + r1
            if (r7 < r0) goto L3d
            goto L45
        L3d:
            if (r1 != 0) goto L4a
            boolean r7 = zza(r8)     // Catch: java.lang.Throwable -> L51
            if (r7 == 0) goto L4a
        L45:
            long r7 = r5.zzc     // Catch: java.lang.Throwable -> L51
            r5.zze = r7     // Catch: java.lang.Throwable -> L51
            goto L4c
        L4a:
            r5.zze = r2     // Catch: java.lang.Throwable -> L51
        L4c:
            r5.zzf(r6)     // Catch: java.lang.Throwable -> L51
            monitor-exit(r5)
            return
        L51:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L51
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgdq.zzc(java.util.Map, android.content.Context, android.view.View):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgcz
    public final synchronized void zzd(Map map) {
        this.zzh = this.zzg;
        this.zzg = SystemClock.uptimeMillis();
        zzf(map);
    }
}
