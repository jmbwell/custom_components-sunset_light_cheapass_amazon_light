package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfmd extends ContentObserver {
    private final Handler zza;
    private final Context zzb;
    private final AudioManager zzc;
    private final AtomicReference zzd;
    private final AtomicBoolean zze;
    private final ExecutorService zzf;
    private final zzfmp zzg;

    public zzfmd(Handler handler, Context context, zzflz zzflzVar, zzfmp zzfmpVar) {
        super(handler);
        this.zzd = new AtomicReference(Float.valueOf(-1.0f));
        this.zze = new AtomicBoolean(false);
        this.zzf = Executors.newSingleThreadExecutor();
        this.zza = handler;
        this.zzb = context;
        this.zzc = (AudioManager) context.getSystemService("audio");
        this.zzg = zzfmpVar;
    }

    private final void zzh() {
        this.zzf.submit(new zzfmc(this));
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        if (this.zze.getAndSet(true)) {
            return;
        }
        zzh();
    }

    public final void zza() {
        zzh();
        this.zzb.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void zzb() {
        this.zzb.getContentResolver().unregisterContentObserver(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ float zzc() {
        AudioManager audioManager = this.zzc;
        int streamVolume = audioManager.getStreamVolume(3);
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            return 0.0f;
        }
        float f = streamVolume / streamMaxVolume;
        if (f > 1.0f) {
            return 1.0f;
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Handler zzd() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ AtomicReference zze() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ AtomicBoolean zzf() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzfmp zzg() {
        return this.zzg;
    }
}
