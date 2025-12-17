package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgqj {
    private final List zza = new ArrayList();
    private final zzgxy zzb = zzgxy.zza;
    private boolean zzc = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzd */
    public final void zzc() {
        for (zzgqh zzgqhVar : this.zza) {
            zzgqhVar.zzd(false);
        }
    }

    public final zzgqj zza(zzgqh zzgqhVar) {
        if (zzgqhVar.zzh() != null) {
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }
        if (zzgqhVar.zzc()) {
            zzc();
        }
        zzgqhVar.zzi(this);
        this.zza.add(zzgqhVar);
        return this;
    }

    public final zzgqo zzb() throws GeneralSecurityException {
        zzgqi zzgqiVar;
        int i;
        zzgqk zzgqkVar;
        zzheb zzq;
        zzgqi zzgqiVar2;
        zzgqi zzgqiVar3;
        if (this.zzc) {
            throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
        }
        char c2 = 1;
        this.zzc = true;
        List<zzgqh> list = this.zza;
        zzhdz zzg = zzhec.zzg();
        ArrayList arrayList = new ArrayList(list.size());
        int i2 = 0;
        int i3 = 0;
        while (i3 < list.size() - 1) {
            int i4 = i3 + 1;
            zzgqi zzg2 = ((zzgqh) list.get(i3)).zzg();
            zzgqiVar2 = zzgqi.zza;
            if (zzg2 == zzgqiVar2) {
                zzgqi zzg3 = ((zzgqh) list.get(i4)).zzg();
                zzgqiVar3 = zzgqi.zza;
                if (zzg3 != zzgqiVar3) {
                    throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                }
            }
            i3 = i4;
        }
        HashSet hashSet = new HashSet();
        Integer num = null;
        for (zzgqh zzgqhVar : list) {
            zzgqhVar.zze();
            if (zzgqhVar.zzg() != null) {
                zzgqi zzg4 = zzgqhVar.zzg();
                zzgqiVar = zzgqi.zza;
                if (zzg4 == zzgqiVar) {
                    i = i2;
                    while (true) {
                        if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                            break;
                        }
                        int i5 = zzgzu.zza;
                        i = i2;
                        while (i == 0) {
                            byte[] zza = zzgzm.zza(4);
                            i = (zza[3] & 255) | ((zza[i2] & 255) << 24) | ((zza[c2] & 255) << 16) | ((zza[2] & 255) << 8);
                        }
                    }
                } else {
                    zzgqhVar.zzg();
                    i = i2;
                }
                Integer valueOf = Integer.valueOf(i);
                if (!hashSet.contains(valueOf)) {
                    hashSet.add(valueOf);
                    zzgqd zzc = zzgyf.zza().zzc(zzgqhVar.zzf(), c2 != zzgqhVar.zzf().zza() ? null : valueOf);
                    int zzj = zzgqo.zzj(zzgqhVar.zze());
                    boolean zzc2 = zzgqhVar.zzc();
                    zzgqkVar = zzgqm.zza;
                    zzgqm zzgqmVar = new zzgqm(zzc, zzj, i, zzc2, false, zzgqkVar, null);
                    zzq = zzgqo.zzq(zzc, zzgqo.zzj(zzgqhVar.zze()), i);
                    zzg.zzb(zzq);
                    if (zzgqhVar.zzc()) {
                        if (num == null) {
                            if (zzgqhVar.zze() != zzgqf.zza) {
                                throw new GeneralSecurityException("Primary key is not enabled");
                            }
                            num = valueOf;
                        } else {
                            throw new GeneralSecurityException("Two primaries were set");
                        }
                    }
                    arrayList.add(zzgqmVar);
                    c2 = 1;
                    i2 = 0;
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 31);
                    sb.append("Id ");
                    sb.append(i);
                    sb.append(" is used twice in the keyset");
                    throw new GeneralSecurityException(sb.toString());
                }
            } else {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        zzg.zza(num.intValue());
        zzhec zzhecVar = (zzhec) zzg.zzbu();
        zzgqo.zzn(zzhecVar);
        return zzgqo.zzh(new zzgqo(zzhecVar, arrayList, this.zzb, null));
    }
}
