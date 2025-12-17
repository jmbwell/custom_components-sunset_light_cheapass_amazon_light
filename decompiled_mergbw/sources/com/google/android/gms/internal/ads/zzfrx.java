package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfrx extends zzhib implements zzhjt {
    private zzfrx() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfrx(byte[] bArr) {
        super(zzfrz.zzg());
    }

    public final zzfrx zza(String str) {
        str.getClass();
        zzbg();
        ((zzfrz) this.zza).zze().remove(str);
        return this;
    }

    public final Map zzb() {
        return Collections.unmodifiableMap(((zzfrz) this.zza).zzb());
    }

    public final zzfrx zzc(String str, zzfrv zzfrvVar) {
        str.getClass();
        zzfrvVar.getClass();
        zzbg();
        ((zzfrz) this.zza).zze().put(str, zzfrvVar);
        return this;
    }
}
