package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.TextUtils;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzako {
    public final String zza;
    public final int zzb;
    public final Integer zzc;
    public final Integer zzd;
    public final float zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final int zzj;

    private zzako(String str, int i, Integer num, Integer num2, float f, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = num;
        this.zzd = num2;
        this.zze = f;
        this.zzf = z;
        this.zzg = z2;
        this.zzh = z3;
        this.zzi = z4;
        this.zzj = i2;
    }

    public static zzako zza(String str, zzakm zzakmVar) {
        int i;
        int parseInt;
        zzghc.zza(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        int length = split.length;
        int i2 = zzakmVar.zzk;
        if (length != i2) {
            Object[] objArr = {Integer.valueOf(i2), Integer.valueOf(length), str};
            String str2 = zzeo.zza;
            zzds.zzc("SsaStyle", String.format(Locale.US, "Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", objArr));
            return null;
        }
        try {
            String trim = split[zzakmVar.zza].trim();
            int i3 = zzakmVar.zzb;
            int zzd = i3 != -1 ? zzd(split[i3].trim()) : -1;
            int i4 = zzakmVar.zzc;
            Integer zzb = i4 != -1 ? zzb(split[i4].trim()) : null;
            int i5 = zzakmVar.zzd;
            Integer zzb2 = i5 != -1 ? zzb(split[i5].trim()) : null;
            int i6 = zzakmVar.zze;
            float f = -3.4028235E38f;
            if (i6 != -1) {
                String trim2 = split[i6].trim();
                try {
                    f = Float.parseFloat(trim2);
                } catch (NumberFormatException e) {
                    StringBuilder sb = new StringBuilder(String.valueOf(trim2).length() + 29);
                    sb.append("Failed to parse font size: '");
                    sb.append(trim2);
                    sb.append("'");
                    zzds.zzd("SsaStyle", sb.toString(), e);
                }
            }
            int i7 = zzakmVar.zzf;
            boolean z = i7 != -1 && zze(split[i7].trim());
            int i8 = zzakmVar.zzg;
            boolean z2 = i8 != -1 && zze(split[i8].trim());
            int i9 = zzakmVar.zzh;
            boolean z3 = i9 != -1 && zze(split[i9].trim());
            int i10 = zzakmVar.zzi;
            boolean z4 = i10 != -1 && zze(split[i10].trim());
            int i11 = zzakmVar.zzj;
            if (i11 != -1) {
                String trim3 = split[i11].trim();
                try {
                    parseInt = Integer.parseInt(trim3.trim());
                } catch (NumberFormatException unused) {
                }
                if (parseInt == 1 || parseInt == 3) {
                    i = parseInt;
                    return new zzako(trim, zzd, zzb, zzb2, f, z, z2, z3, z4, i);
                }
                String.valueOf(trim3);
                zzds.zzc("SsaStyle", "Ignoring unknown BorderStyle: ".concat(String.valueOf(trim3)));
            }
            i = -1;
            return new zzako(trim, zzd, zzb, zzb2, f, z, z2, z3, z4, i);
        } catch (RuntimeException e2) {
            StringBuilder sb2 = new StringBuilder(str.length() + 36);
            sb2.append("Skipping malformed 'Style:' line: '");
            sb2.append(str);
            sb2.append("'");
            zzds.zzd("SsaStyle", sb2.toString(), e2);
            return null;
        }
    }

    public static Integer zzb(String str) {
        long parseLong;
        try {
            if (str.startsWith("&H")) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            zzghc.zza(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(zzgne.zza(((parseLong >> 24) & 255) ^ 255), zzgne.zza(parseLong & 255), zzgne.zza((parseLong >> 8) & 255), zzgne.zza((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36);
            sb.append("Failed to parse color expression: '");
            sb.append(str);
            sb.append("'");
            zzds.zzd("SsaStyle", sb.toString(), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            switch (parseInt) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        String.valueOf(str);
        zzds.zzc("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(str)));
        return -1;
    }

    private static boolean zze(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
            sb.append("Failed to parse boolean value: '");
            sb.append(str);
            sb.append("'");
            zzds.zzd("SsaStyle", sb.toString(), e);
            return false;
        }
    }
}
