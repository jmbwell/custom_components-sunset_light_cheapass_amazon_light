package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzhkh {
    public static final /* synthetic */ zzhhb zza(zzhhb zzhhbVar, zzhhb zzhhbVar2, ArrayDeque arrayDeque) {
        zzb(zzhhbVar, arrayDeque);
        zzb(zzhhbVar2, arrayDeque);
        zzhhb zzhhbVar3 = (zzhhb) arrayDeque.pop();
        while (!arrayDeque.isEmpty()) {
            zzhhbVar3 = new zzhkj((zzhhb) arrayDeque.pop(), zzhhbVar3, null);
        }
        return zzhhbVar3;
    }

    private static final void zzb(zzhhb zzhhbVar, ArrayDeque arrayDeque) {
        if (zzhhbVar.zzg()) {
            int zzc = zzc(zzhhbVar.zzc(), arrayDeque);
            int zzh = zzhkj.zzh(zzc + 1);
            if (arrayDeque.isEmpty() || ((zzhhb) arrayDeque.peek()).zzc() >= zzh) {
                arrayDeque.push(zzhhbVar);
                return;
            }
            int zzh2 = zzhkj.zzh(zzc);
            zzhhb zzhhbVar2 = (zzhhb) arrayDeque.pop();
            while (!arrayDeque.isEmpty() && ((zzhhb) arrayDeque.peek()).zzc() < zzh2) {
                zzhhbVar2 = new zzhkj((zzhhb) arrayDeque.pop(), zzhhbVar2, null);
            }
            zzhkj zzhkjVar = new zzhkj(zzhhbVar2, zzhhbVar, null);
            while (!arrayDeque.isEmpty()) {
                if (((zzhhb) arrayDeque.peek()).zzc() >= zzhkj.zzh(zzc(zzhkjVar.zzc(), arrayDeque) + 1)) {
                    break;
                }
                zzhkjVar = new zzhkj((zzhhb) arrayDeque.pop(), zzhkjVar, null);
            }
            arrayDeque.push(zzhkjVar);
        } else if (zzhhbVar instanceof zzhkj) {
            zzhkj zzhkjVar2 = (zzhkj) zzhhbVar;
            zzb(zzhkjVar2.zzB(), arrayDeque);
            zzb(zzhkjVar2.zzC(), arrayDeque);
        } else {
            String valueOf = String.valueOf(zzhhbVar.getClass());
            String.valueOf(valueOf);
            throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(valueOf)));
        }
    }

    private static final int zzc(int i, ArrayDeque arrayDeque) {
        int binarySearch = Arrays.binarySearch(zzhkj.zza, i);
        return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
    }
}
