package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzcvb {
    private final Context zza;
    private final zzfdc zzb;
    private final Bundle zzc;
    private final zzfcv zzd;
    private final zzcut zze;
    private final zzeee zzf;
    private final int zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcvb(zzcva zzcvaVar, byte[] bArr) {
        this.zza = zzcvaVar.zzi();
        this.zzb = zzcvaVar.zzj();
        this.zzc = zzcvaVar.zzk();
        this.zzd = zzcvaVar.zzl();
        this.zze = zzcvaVar.zzm();
        this.zzf = zzcvaVar.zzn();
        this.zzg = zzcvaVar.zzo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzcva zza() {
        zzcva zzcvaVar = new zzcva();
        zzcvaVar.zza(this.zza);
        zzcvaVar.zzb(this.zzb);
        zzcvaVar.zzc(this.zzc);
        zzcvaVar.zzd(this.zze);
        zzcvaVar.zzg(this.zzf);
        return zzcvaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzfdc zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzfcv zzc() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle zzd() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzcut zze() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context zzf(Context context) {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzeee zzg(String str) {
        zzeee zzeeeVar = this.zzf;
        return zzeeeVar != null ? zzeeeVar : new zzeee(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzh() {
        return this.zzg;
    }
}
