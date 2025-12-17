package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzcgx {
    private final VersionInfoParcel zza;
    private final Context zzb;
    private final long zzc;
    private final WeakReference zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcgx(zzcgw zzcgwVar, byte[] bArr) {
        this.zza = zzcgwVar.zzd();
        this.zzb = zzcgwVar.zze();
        this.zzd = zzcgwVar.zzg();
        this.zzc = zzcgwVar.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context zza() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final WeakReference zzc() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final VersionInfoParcel zzd() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zze() {
        return com.google.android.gms.ads.internal.zzt.zzc().zze(this.zzb, this.zza.afmaVersion);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzcgu zzf() {
        return new zzcgu(this.zzb, this.zza);
    }

    public final com.google.android.gms.ads.internal.zzk zzg() {
        return new com.google.android.gms.ads.internal.zzk(this.zzb, this.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzbfc zzh() {
        return new zzbfc(this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long zzi() {
        return this.zzc;
    }
}
