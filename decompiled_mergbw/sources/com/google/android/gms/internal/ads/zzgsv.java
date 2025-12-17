package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgsv extends zzgrf {
    private final zzgta zza;
    private final zzhgh zzb;
    private final zzhgg zzc;
    @Nullable
    private final Integer zzd;

    private zzgsv(zzgta zzgtaVar, zzhgh zzhghVar, zzhgg zzhggVar, @Nullable Integer num) {
        this.zza = zzgtaVar;
        this.zzb = zzhghVar;
        this.zzc = zzhggVar;
        this.zzd = num;
    }

    public static zzgsv zzc(zzgsz zzgszVar, zzhgh zzhghVar, @Nullable Integer num) throws GeneralSecurityException {
        zzhgg zzb;
        zzgsz zzgszVar2 = zzgsz.zzc;
        if (zzgszVar != zzgszVar2 && num == null) {
            String obj = zzgszVar.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 62);
            sb.append("For given Variant ");
            sb.append(obj);
            sb.append(" the value of idRequirement must be non-null");
            throw new GeneralSecurityException(sb.toString());
        } else if (zzgszVar != zzgszVar2 || num == null) {
            if (zzhghVar.zzd() == 32) {
                zzgta zzb2 = zzgta.zzb(zzgszVar);
                if (zzb2.zzc() == zzgszVar2) {
                    zzb = zzgyp.zza;
                } else if (zzb2.zzc() == zzgsz.zzb) {
                    zzb = zzgyp.zza(num.intValue());
                } else if (zzb2.zzc() == zzgsz.zza) {
                    zzb = zzgyp.zzb(num.intValue());
                } else {
                    throw new IllegalStateException("Unknown Variant: ".concat(zzb2.zzc().toString()));
                }
                return new zzgsv(zzb2, zzhghVar, zzb, num);
            }
            int zzd = zzhghVar.zzd();
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzd).length() + 74);
            sb2.append("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not ");
            sb2.append(zzd);
            throw new GeneralSecurityException(sb2.toString());
        } else {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgrf, com.google.android.gms.internal.ads.zzgqd
    public final /* synthetic */ zzgqs zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgrf
    public final zzhgg zzb() {
        return this.zzc;
    }

    public final zzhgh zzd() {
        return this.zzb;
    }

    public final zzgta zze() {
        return this.zza;
    }

    @Nullable
    public final Integer zzf() {
        return this.zzd;
    }
}
