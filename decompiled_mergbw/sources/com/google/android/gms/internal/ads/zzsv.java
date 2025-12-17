package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.os.Build;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzsv {
    private static Boolean zza;

    public static int zza(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        if (Build.VERSION.SDK_INT >= 29) {
            Boolean bool = zza;
            if (bool == null || !bool.booleanValue()) {
                return zzsu.zza(videoCapabilities, i, i2, d);
            }
            return 0;
        }
        return 0;
    }
}
