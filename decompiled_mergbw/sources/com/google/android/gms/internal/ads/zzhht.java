package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
final class zzhht extends zzhhs {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhhs
    public final void zza(Object obj) {
        ((zzhid) obj).zza.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhhs
    public final void zzb(zzhlk zzhlkVar, Map.Entry entry) throws IOException {
        zzhie zzhieVar = (zzhie) entry.getKey();
        if (zzhieVar.zzc) {
            zzhli zzhliVar = zzhli.DOUBLE;
            switch (zzhieVar.zzb.ordinal()) {
                case 0:
                    zzhkm.zza(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 1:
                    zzhkm.zzb(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 2:
                    zzhkm.zzc(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 3:
                    zzhkm.zzd(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 4:
                    zzhkm.zzh(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 5:
                    zzhkm.zzf(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 6:
                    zzhkm.zzk(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 7:
                    zzhkm.zzn(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 8:
                    zzhkm.zzo(zzhieVar.zza, (List) entry.getValue(), zzhlkVar);
                    return;
                case 9:
                    List list = (List) entry.getValue();
                    if (list == null || list.isEmpty()) {
                        return;
                    }
                    zzhkm.zzr(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhkc.zza().zzb(list.get(0).getClass()));
                    return;
                case 10:
                    List list2 = (List) entry.getValue();
                    if (list2 == null || list2.isEmpty()) {
                        return;
                    }
                    zzhkm.zzq(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhkc.zza().zzb(list2.get(0).getClass()));
                    return;
                case 11:
                    zzhkm.zzp(zzhieVar.zza, (List) entry.getValue(), zzhlkVar);
                    return;
                case 12:
                    zzhkm.zzi(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 13:
                    zzhkm.zzh(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 14:
                    zzhkm.zzl(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 15:
                    zzhkm.zzg(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 16:
                    zzhkm.zzj(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                case 17:
                    zzhkm.zze(zzhieVar.zza, (List) entry.getValue(), zzhlkVar, zzhieVar.zzd);
                    return;
                default:
                    return;
            }
        }
        zzhli zzhliVar2 = zzhli.DOUBLE;
        switch (zzhieVar.zzb.ordinal()) {
            case 0:
                zzhlkVar.zzf(zzhieVar.zza, ((Double) entry.getValue()).doubleValue());
                return;
            case 1:
                zzhlkVar.zze(zzhieVar.zza, ((Float) entry.getValue()).floatValue());
                return;
            case 2:
                zzhlkVar.zzc(zzhieVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 3:
                zzhlkVar.zzh(zzhieVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 4:
                zzhlkVar.zzi(zzhieVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 5:
                zzhlkVar.zzj(zzhieVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 6:
                zzhlkVar.zzk(zzhieVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 7:
                zzhlkVar.zzl(zzhieVar.zza, ((Boolean) entry.getValue()).booleanValue());
                return;
            case 8:
                zzhlkVar.zzm(zzhieVar.zza, (String) entry.getValue());
                return;
            case 9:
                zzhlkVar.zzs(zzhieVar.zza, entry.getValue(), zzhkc.zza().zzb(entry.getValue().getClass()));
                return;
            case 10:
                zzhlkVar.zzr(zzhieVar.zza, entry.getValue(), zzhkc.zza().zzb(entry.getValue().getClass()));
                return;
            case 11:
                zzhlkVar.zzn(zzhieVar.zza, (zzhhb) entry.getValue());
                return;
            case 12:
                zzhlkVar.zzo(zzhieVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                zzhlkVar.zzi(zzhieVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 14:
                zzhlkVar.zzb(zzhieVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                zzhlkVar.zzd(zzhieVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 16:
                zzhlkVar.zzp(zzhieVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 17:
                zzhlkVar.zzq(zzhieVar.zza, ((Long) entry.getValue()).longValue());
                return;
            default:
                return;
        }
    }
}
