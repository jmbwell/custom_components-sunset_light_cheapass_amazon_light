package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgsd {
    @Nullable
    private zzgsl zza = null;
    @Nullable
    private zzhgh zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzgsd() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgsd(byte[] bArr) {
    }

    public final zzgsd zza(zzgsl zzgslVar) {
        this.zza = zzgslVar;
        return this;
    }

    public final zzgsd zzb(zzhgh zzhghVar) {
        this.zzb = zzhghVar;
        return this;
    }

    public final zzgsd zzc(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgse zzd() throws GeneralSecurityException {
        zzhgh zzhghVar;
        zzhgg zzb;
        zzgsl zzgslVar = this.zza;
        if (zzgslVar == null || (zzhghVar = this.zzb) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgslVar.zzc() == zzhghVar.zzd()) {
            if (!zzgslVar.zza() || this.zzc != null) {
                if (this.zza.zza() || this.zzc == null) {
                    if (this.zza.zzd() == zzgsk.zzc) {
                        zzb = zzgyp.zza;
                    } else if (this.zza.zzd() == zzgsk.zzb) {
                        zzb = zzgyp.zza(this.zzc.intValue());
                    } else if (this.zza.zzd() == zzgsk.zza) {
                        zzb = zzgyp.zzb(this.zzc.intValue());
                    } else {
                        String valueOf = String.valueOf(this.zza.zzd());
                        String.valueOf(valueOf);
                        throw new IllegalStateException("Unknown AesGcmParameters.Variant: ".concat(String.valueOf(valueOf)));
                    }
                    return new zzgse(this.zza, this.zzb, zzb, this.zzc, null);
                }
                throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
            }
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        throw new GeneralSecurityException("Key size mismatch");
    }
}
