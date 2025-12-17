package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzeuv implements zzeup {
    private final Context zza;
    private final zzgpd zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeuv(Context context, zzgpd zzgpdVar) {
        this.zza = context;
        this.zzb = zzgpdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeup
    public final ListenableFuture zza() {
        if (((Boolean) zzbea.zzb.zze()).booleanValue()) {
            return this.zzb.zzc(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuu
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return zzeuv.this.zzc();
                }
            });
        }
        return zzgot.zza(new zzeuw(-1, -1));
    }

    @Override // com.google.android.gms.internal.ads.zzeup
    public final int zzb() {
        return 59;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzeuw zzc() {
        Context context = this.zza;
        return new zzeuw(zzbbt.zzc(context), zzbbt.zzd(context));
    }
}
