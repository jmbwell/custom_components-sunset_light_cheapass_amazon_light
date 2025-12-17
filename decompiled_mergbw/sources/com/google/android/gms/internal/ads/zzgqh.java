package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgqh {
    private boolean zza;
    @Nullable
    private final zzgqs zzc;
    private final zzgqf zzb = zzgqf.zza;
    private zzgqi zzd = null;
    @Nullable
    private zzgqj zze = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgqh(zzgqs zzgqsVar, byte[] bArr) {
        this.zzc = zzgqsVar;
    }

    public final zzgqh zza() {
        zzgqj zzgqjVar = this.zze;
        if (zzgqjVar != null) {
            zzgqjVar.zzc();
        }
        this.zza = true;
        return this;
    }

    public final zzgqh zzb() {
        zzgqi zzgqiVar;
        zzgqiVar = zzgqi.zza;
        this.zzd = zzgqiVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ boolean zzc() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(boolean z) {
        this.zza = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgqf zze() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgqs zzf() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgqi zzg() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgqj zzh() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzi(zzgqj zzgqjVar) {
        this.zze = zzgqjVar;
    }
}
