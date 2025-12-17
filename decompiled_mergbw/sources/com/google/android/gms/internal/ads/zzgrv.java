package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgrv {
    @Nullable
    private zzgsc zza = null;
    @Nullable
    private zzhgh zzb = null;
    @Nullable
    private Integer zzc = null;

    private zzgrv() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgrv(byte[] bArr) {
    }

    public final zzgrv zza(zzgsc zzgscVar) {
        this.zza = zzgscVar;
        return this;
    }

    public final zzgrv zzb(zzhgh zzhghVar) {
        this.zzb = zzhghVar;
        return this;
    }

    public final zzgrv zzc(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgrw zzd() throws GeneralSecurityException {
        zzhgh zzhghVar;
        zzhgg zzb;
        zzgsc zzgscVar = this.zza;
        if (zzgscVar == null || (zzhghVar = this.zzb) == null) {
            throw new GeneralSecurityException("Cannot build without parameters and/or key material");
        }
        if (zzgscVar.zzc() == zzhghVar.zzd()) {
            if (!zzgscVar.zza() || this.zzc != null) {
                if (this.zza.zza() || this.zzc == null) {
                    if (this.zza.zze() == zzgsb.zzc) {
                        zzb = zzgyp.zza;
                    } else if (this.zza.zze() == zzgsb.zzb) {
                        zzb = zzgyp.zza(this.zzc.intValue());
                    } else if (this.zza.zze() == zzgsb.zza) {
                        zzb = zzgyp.zzb(this.zzc.intValue());
                    } else {
                        String valueOf = String.valueOf(this.zza.zze());
                        String.valueOf(valueOf);
                        throw new IllegalStateException("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(valueOf)));
                    }
                    return new zzgrw(this.zza, this.zzb, zzb, this.zzc, null);
                }
                throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
            }
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        throw new GeneralSecurityException("Key size mismatch");
    }
}
