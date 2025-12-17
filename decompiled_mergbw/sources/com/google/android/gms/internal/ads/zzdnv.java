package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzdnv implements Callable {
    private final com.google.android.gms.ads.internal.zza zza;
    private final Context zzb;
    private final zzdsm zzc;
    private final zzecn zzd;
    private final Executor zze;
    private final zzauu zzf;
    private final VersionInfoParcel zzg;
    private final zzfjv zzh;
    private final zzecy zzi;
    private final zzfdg zzj;

    public zzdnv(Context context, Executor executor, zzauu zzauuVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzcfa zzcfaVar, zzecn zzecnVar, zzfjv zzfjvVar, zzdsm zzdsmVar, zzecy zzecyVar, zzfdg zzfdgVar) {
        this.zzb = context;
        this.zze = executor;
        this.zzf = zzauuVar;
        this.zzg = versionInfoParcel;
        this.zza = zzaVar;
        this.zzd = zzecnVar;
        this.zzh = zzfjvVar;
        this.zzc = zzdsmVar;
        this.zzi = zzecyVar;
        this.zzj = zzfdgVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzdnx zzdnxVar = new zzdnx(this);
        zzdnxVar.zza();
        return zzdnxVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ com.google.android.gms.ads.internal.zza zza() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Context zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzdsm zzc() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzecn zzd() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Executor zze() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzauu zzf() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ VersionInfoParcel zzg() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzfjv zzh() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzecy zzi() {
        return this.zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzfdg zzj() {
        return this.zzj;
    }
}
