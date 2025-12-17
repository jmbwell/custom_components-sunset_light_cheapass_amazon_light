package com.google.android.gms.internal.ads;

import android.graphics.PointF;
import java.util.Locale;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzakn {
    private static final Pattern zzc = Pattern.compile("\\{([^}]*)\\}");
    private static final Pattern zzd;
    private static final Pattern zze;
    private static final Pattern zzf;
    public final int zza;
    public final PointF zzb;

    static {
        String str = zzeo.zza;
        zzd = Pattern.compile(String.format(Locale.US, "\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        zze = Pattern.compile(String.format(Locale.US, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        zzf = Pattern.compile("\\\\an(\\d+)");
    }

    private zzakn(int i, PointF pointF) {
        this.zza = i;
        this.zzb = pointF;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009a A[Catch: RuntimeException -> 0x000a, TryCatch #1 {RuntimeException -> 0x000a, blocks: (B:23:0x008e, B:25:0x009a, B:27:0x00a0, B:28:0x00a8), top: B:37:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x000a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzakn zza(java.lang.String r13) {
        /*
            java.util.regex.Pattern r0 = com.google.android.gms.internal.ads.zzakn.zzc
            java.util.regex.Matcher r13 = r0.matcher(r13)
            r0 = 0
            r1 = -1
            r3 = r0
            r2 = r1
        La:
            boolean r4 = r13.find()
            if (r4 == 0) goto Laf
            r4 = 1
            java.lang.String r5 = r13.group(r4)
            r5.getClass()
            r6 = r5
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r6 = "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='"
            java.lang.String r7 = "'"
            java.util.regex.Pattern r8 = com.google.android.gms.internal.ads.zzakn.zzd     // Catch: java.lang.RuntimeException -> L8e
            java.util.regex.Matcher r8 = r8.matcher(r5)     // Catch: java.lang.RuntimeException -> L8e
            java.util.regex.Pattern r9 = com.google.android.gms.internal.ads.zzakn.zze     // Catch: java.lang.RuntimeException -> L8e
            java.util.regex.Matcher r9 = r9.matcher(r5)     // Catch: java.lang.RuntimeException -> L8e
            boolean r10 = r8.find()     // Catch: java.lang.RuntimeException -> L8e
            boolean r11 = r9.find()     // Catch: java.lang.RuntimeException -> L8e
            r12 = 2
            if (r10 == 0) goto L5e
            if (r11 == 0) goto L55
            java.lang.String r9 = "SsaStyle.Overrides"
            int r10 = r5.length()     // Catch: java.lang.RuntimeException -> L8e
            int r10 = r10 + 82
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.RuntimeException -> L8e
            r11.<init>(r10)     // Catch: java.lang.RuntimeException -> L8e
            r11.append(r6)     // Catch: java.lang.RuntimeException -> L8e
            r11.append(r5)     // Catch: java.lang.RuntimeException -> L8e
            r11.append(r7)     // Catch: java.lang.RuntimeException -> L8e
            java.lang.String r6 = r11.toString()     // Catch: java.lang.RuntimeException -> L8e
            com.google.android.gms.internal.ads.zzds.zzb(r9, r6)     // Catch: java.lang.RuntimeException -> L8e
        L55:
            java.lang.String r6 = r8.group(r4)     // Catch: java.lang.RuntimeException -> L8e
            java.lang.String r7 = r8.group(r12)     // Catch: java.lang.RuntimeException -> L8e
            goto L68
        L5e:
            if (r11 == 0) goto L8a
            java.lang.String r6 = r9.group(r4)     // Catch: java.lang.RuntimeException -> L8e
            java.lang.String r7 = r9.group(r12)     // Catch: java.lang.RuntimeException -> L8e
        L68:
            android.graphics.PointF r8 = new android.graphics.PointF     // Catch: java.lang.RuntimeException -> L8e
            if (r6 == 0) goto L89
            r9 = r6
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.RuntimeException -> L8e
            java.lang.String r6 = r6.trim()     // Catch: java.lang.RuntimeException -> L8e
            float r6 = java.lang.Float.parseFloat(r6)     // Catch: java.lang.RuntimeException -> L8e
            if (r7 == 0) goto L88
            r9 = r7
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.RuntimeException -> L8e
            java.lang.String r7 = r7.trim()     // Catch: java.lang.RuntimeException -> L8e
            float r7 = java.lang.Float.parseFloat(r7)     // Catch: java.lang.RuntimeException -> L8e
            r8.<init>(r6, r7)     // Catch: java.lang.RuntimeException -> L8e
            goto L8b
        L88:
            throw r0     // Catch: java.lang.RuntimeException -> L8e
        L89:
            throw r0     // Catch: java.lang.RuntimeException -> L8e
        L8a:
            r8 = r0
        L8b:
            if (r8 == 0) goto L8e
            r3 = r8
        L8e:
            java.util.regex.Pattern r6 = com.google.android.gms.internal.ads.zzakn.zzf     // Catch: java.lang.RuntimeException -> La
            java.util.regex.Matcher r5 = r6.matcher(r5)     // Catch: java.lang.RuntimeException -> La
            boolean r6 = r5.find()     // Catch: java.lang.RuntimeException -> La
            if (r6 == 0) goto La9
            java.lang.String r4 = r5.group(r4)     // Catch: java.lang.RuntimeException -> La
            if (r4 == 0) goto La8
            r5 = r4
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.RuntimeException -> La
            int r4 = com.google.android.gms.internal.ads.zzako.zzc(r4)     // Catch: java.lang.RuntimeException -> La
            goto Laa
        La8:
            throw r0     // Catch: java.lang.RuntimeException -> La
        La9:
            r4 = r1
        Laa:
            if (r4 == r1) goto La
            r2 = r4
            goto La
        Laf:
            com.google.android.gms.internal.ads.zzakn r13 = new com.google.android.gms.internal.ads.zzakn
            r13.<init>(r2, r3)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakn.zza(java.lang.String):com.google.android.gms.internal.ads.zzakn");
    }

    public static String zzb(String str) {
        return zzc.matcher(str).replaceAll("");
    }
}
