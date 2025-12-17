package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzdbr {
    private final Set zza = new HashSet();
    private final Set zzb = new HashSet();
    private final Set zzc = new HashSet();
    private final Set zzd = new HashSet();
    private final Set zze = new HashSet();
    private final Set zzf = new HashSet();
    private final Set zzg = new HashSet();
    private final Set zzh = new HashSet();
    private final Set zzi = new HashSet();
    private final Set zzj = new HashSet();
    private final Set zzk = new HashSet();
    private final Set zzl = new HashSet();
    private final Set zzm = new HashSet();
    private final Set zzn = new HashSet();
    private zzezy zzo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzA() {
        return this.zzm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzB() {
        return this.zzn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzezy zzC() {
        return this.zzo;
    }

    public final zzdbr zza(zzcvs zzcvsVar, Executor executor) {
        this.zze.add(new zzddr(zzcvsVar, executor));
        return this;
    }

    public final zzdbr zzb(zzcxg zzcxgVar, Executor executor) {
        this.zzh.add(new zzddr(zzcxgVar, executor));
        return this;
    }

    public final zzdbr zzc(zzcvv zzcvvVar, Executor executor) {
        this.zzi.add(new zzddr(zzcvvVar, executor));
        return this;
    }

    public final zzdbr zzd(zzcwi zzcwiVar, Executor executor) {
        this.zzl.add(new zzddr(zzcwiVar, executor));
        return this;
    }

    public final zzdbr zze(AppEventListener appEventListener, Executor executor) {
        this.zzk.add(new zzddr(appEventListener, executor));
        return this;
    }

    public final zzdbr zzf(com.google.android.gms.ads.internal.client.zza zzaVar, Executor executor) {
        this.zzc.add(new zzddr(zzaVar, executor));
        return this;
    }

    public final zzdbr zzg(zzddz zzddzVar, Executor executor) {
        this.zzd.add(new zzddr(zzddzVar, executor));
        return this;
    }

    public final zzdbr zzh(zzcwm zzcwmVar, Executor executor) {
        this.zzf.add(new zzddr(zzcwmVar, executor));
        return this;
    }

    public final zzdbr zzi(zzcxr zzcxrVar, Executor executor) {
        this.zzg.add(new zzddr(zzcxrVar, executor));
        return this;
    }

    public final zzdbr zzj(com.google.android.gms.ads.internal.overlay.zzq zzqVar, Executor executor) {
        this.zzn.add(new zzddr(zzqVar, executor));
        return this;
    }

    public final zzdbr zzk(zzcyj zzcyjVar, Executor executor) {
        this.zzm.add(new zzddr(zzcyjVar, executor));
        return this;
    }

    public final zzdbr zzl(zzezy zzezyVar) {
        this.zzo = zzezyVar;
        return this;
    }

    public final zzdbr zzm(zzcyy zzcyyVar, Executor executor) {
        this.zzb.add(new zzddr(zzcyyVar, executor));
        return this;
    }

    public final zzdbs zzn() {
        return new zzdbs(this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzo() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzp() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzq() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzr() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzs() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzt() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzu() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzv() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzw() {
        return this.zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzx() {
        return this.zzj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzy() {
        return this.zzk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Set zzz() {
        return this.zzl;
    }
}
