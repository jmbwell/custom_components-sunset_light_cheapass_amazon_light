package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Looper;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzca {
    private static AudioManager zza;

    public static synchronized AudioManager zza(Context context) {
        synchronized (zzca.class) {
            final Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                zza = null;
            }
            AudioManager audioManager = zza;
            if (audioManager != null) {
                return audioManager;
            }
            Looper myLooper = Looper.myLooper();
            if (myLooper != null && myLooper != Looper.getMainLooper()) {
                final zzde zzdeVar = new zzde(zzdb.zza);
                zzcv.zza().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbz
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzca.zzd(applicationContext, zzdeVar);
                    }
                });
                zzdeVar.zzd();
                AudioManager audioManager2 = zza;
                if (audioManager2 != null) {
                    AudioManager audioManager3 = audioManager2;
                    return audioManager2;
                }
                throw null;
            }
            AudioManager audioManager4 = (AudioManager) applicationContext.getSystemService("audio");
            zza = audioManager4;
            if (audioManager4 != null) {
                AudioManager audioManager5 = audioManager4;
                return audioManager4;
            }
            throw null;
        }
    }

    public static int zzb(AudioManager audioManager, zzby zzbyVar) {
        int requestAudioFocus;
        if (Build.VERSION.SDK_INT >= 26) {
            requestAudioFocus = audioManager.requestAudioFocus(zzbyVar.zzc());
            return requestAudioFocus;
        }
        AudioManager.OnAudioFocusChangeListener zzb = zzbyVar.zzb();
        zzbyVar.zza();
        return audioManager.requestAudioFocus(zzb, 3, 1);
    }

    public static int zzc(AudioManager audioManager, zzby zzbyVar) {
        int abandonAudioFocusRequest;
        if (Build.VERSION.SDK_INT >= 26) {
            abandonAudioFocusRequest = audioManager.abandonAudioFocusRequest(zzbyVar.zzc());
            return abandonAudioFocusRequest;
        }
        return audioManager.abandonAudioFocus(zzbyVar.zzb());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(Context context, zzde zzdeVar) {
        zza = (AudioManager) context.getSystemService("audio");
        zzdeVar.zza();
    }
}
