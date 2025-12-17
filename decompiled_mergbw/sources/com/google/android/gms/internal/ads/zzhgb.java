package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Objects;
import javax.crypto.Mac;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzhgb extends ThreadLocal {
    final /* synthetic */ zzhgc zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhgb(zzhgc zzhgcVar) {
        Objects.requireNonNull(zzhgcVar);
        this.zza = zzhgcVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* renamed from: zza */
    public final Mac initialValue() {
        try {
            zzhfo zzhfoVar = zzhfo.zzb;
            zzhgc zzhgcVar = this.zza;
            Mac mac = (Mac) zzhfoVar.zzb(zzhgcVar.zzb());
            mac.init(zzhgcVar.zzc());
            return mac;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
