package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Future;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public class zzgoo extends zzgop {
    private final ListenableFuture zza;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzgoo(ListenableFuture listenableFuture) {
        this.zza = listenableFuture;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgop, com.google.android.gms.internal.ads.zzgon
    public final /* synthetic */ Future zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgon, com.google.android.gms.internal.ads.zzgjr
    protected final /* synthetic */ Object zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgop
    protected final ListenableFuture zzc() {
        return this.zza;
    }
}
