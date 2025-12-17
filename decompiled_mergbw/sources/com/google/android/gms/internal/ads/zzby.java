package com.google.android.gms.internal.ads;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import com.google.android.gms.common.util.zzb$$ExternalSyntheticApiModelOutline0;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzby {
    private final AudioManager.OnAudioFocusChangeListener zzb;
    private final Handler zzc;
    private final zzc zzd;
    private final Object zzf;
    private final int zza = 1;
    private final boolean zze = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzby(int i, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, zzc zzcVar, boolean z) {
        AudioFocusRequest audioFocusRequest;
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest.Builder willPauseWhenDucked;
        AudioFocusRequest.Builder onAudioFocusChangeListener2;
        this.zzc = handler;
        this.zzd = zzcVar;
        if (Build.VERSION.SDK_INT < 26) {
            this.zzb = new zzbx(onAudioFocusChangeListener, handler);
        } else {
            this.zzb = onAudioFocusChangeListener;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            audioAttributes = zzb$$ExternalSyntheticApiModelOutline0.m(1).setAudioAttributes(zzcVar.zza());
            willPauseWhenDucked = audioAttributes.setWillPauseWhenDucked(false);
            onAudioFocusChangeListener2 = willPauseWhenDucked.setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler);
            audioFocusRequest = onAudioFocusChangeListener2.build();
        } else {
            audioFocusRequest = null;
        }
        this.zzf = audioFocusRequest;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzby) {
            zzby zzbyVar = (zzby) obj;
            int i = zzbyVar.zza;
            boolean z = zzbyVar.zze;
            return Objects.equals(this.zzb, zzbyVar.zzb) && Objects.equals(this.zzc, zzbyVar.zzc) && Objects.equals(this.zzd, zzbyVar.zzd);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(1, this.zzb, this.zzc, this.zzd, false);
    }

    public final zzc zza() {
        return this.zzd;
    }

    public final AudioManager.OnAudioFocusChangeListener zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final AudioFocusRequest zzc() {
        Object obj = this.zzf;
        obj.getClass();
        return zzb$$ExternalSyntheticApiModelOutline0.m518m(obj);
    }
}
