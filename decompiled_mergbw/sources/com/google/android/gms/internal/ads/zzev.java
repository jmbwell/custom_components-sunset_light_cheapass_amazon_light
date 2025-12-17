package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public class zzev {
    public final int zzd;

    public static String zze(int i) {
        char c2 = (char) ((i >> 24) & 255);
        int length = String.valueOf(c2).length();
        char c3 = (char) ((i >> 16) & 255);
        int length2 = String.valueOf(c3).length();
        char c4 = (char) ((i >> 8) & 255);
        char c5 = (char) (i & 255);
        StringBuilder sb = new StringBuilder(length + length2 + String.valueOf(c4).length() + String.valueOf(c5).length());
        sb.append(c2);
        sb.append(c3);
        sb.append(c4);
        sb.append(c5);
        return sb.toString();
    }

    public String toString() {
        return zze(this.zzd);
    }
}
