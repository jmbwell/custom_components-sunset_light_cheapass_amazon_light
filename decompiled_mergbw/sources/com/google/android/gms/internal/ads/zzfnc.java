package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfnc {
    private static UiModeManager zza;

    public static void zza(Context context) {
        if (context != null) {
            zza = (UiModeManager) context.getSystemService("uimode");
        }
    }

    public static zzflp zzb() {
        UiModeManager uiModeManager = zza;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            if (currentModeType != 1) {
                if (currentModeType == 4) {
                    return zzflp.CTV;
                }
                return zzflp.OTHER;
            }
            return zzflp.MOBILE;
        }
        return zzflp.OTHER;
    }
}
