package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzlj extends zzhh {
    public static final /* synthetic */ int zzb = 0;
    private final int zzc;
    private final int zzd;
    private final int[] zze;
    private final int[] zzf;
    private final zzbe[] zzg;
    private final Object[] zzh;
    private final HashMap zzi;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzlj(java.util.Collection r7, com.google.android.gms.internal.ads.zzwi r8) {
        /*
            r6 = this;
            int r0 = r7.size()
            com.google.android.gms.internal.ads.zzbe[] r0 = new com.google.android.gms.internal.ads.zzbe[r0]
            java.util.Iterator r1 = r7.iterator()
            r2 = 0
            r3 = r2
        Lc:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L22
            java.lang.Object r4 = r1.next()
            com.google.android.gms.internal.ads.zzkr r4 = (com.google.android.gms.internal.ads.zzkr) r4
            int r5 = r3 + 1
            com.google.android.gms.internal.ads.zzbe r4 = r4.zzb()
            r0[r3] = r4
            r3 = r5
            goto Lc
        L22:
            int r1 = r7.size()
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.util.Iterator r7 = r7.iterator()
        L2c:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L42
            java.lang.Object r3 = r7.next()
            com.google.android.gms.internal.ads.zzkr r3 = (com.google.android.gms.internal.ads.zzkr) r3
            int r4 = r2 + 1
            java.lang.Object r3 = r3.zza()
            r1[r2] = r3
            r2 = r4
            goto L2c
        L42:
            r6.<init>(r0, r1, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlj.<init>(java.util.Collection, com.google.android.gms.internal.ads.zzwi):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbe
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzbe
    public final int zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    protected final int zzp(int i) {
        return zzeo.zzl(this.zze, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    protected final int zzq(int i) {
        return zzeo.zzl(this.zzf, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    protected final int zzr(Object obj) {
        Integer num = (Integer) this.zzi.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    protected final zzbe zzs(int i) {
        return this.zzg[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    protected final int zzt(int i) {
        return this.zze[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    protected final int zzu(int i) {
        return this.zzf[i];
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    protected final Object zzv(int i) {
        return this.zzh[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List zzw() {
        return Arrays.asList(this.zzg);
    }

    public final zzlj zzx(zzwi zzwiVar) {
        zzbe[] zzbeVarArr = this.zzg;
        zzbe[] zzbeVarArr2 = new zzbe[zzbeVarArr.length];
        for (int i = 0; i < zzbeVarArr.length; i++) {
            zzbeVarArr2[i] = new zzli(this, zzbeVarArr[i]);
        }
        return new zzlj(zzbeVarArr2, this.zzh, zzwiVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzlj(zzbe[] zzbeVarArr, Object[] objArr, zzwi zzwiVar) {
        super(false, zzwiVar);
        int i = 0;
        this.zzg = zzbeVarArr;
        int length = zzbeVarArr.length;
        this.zze = new int[length];
        this.zzf = new int[length];
        this.zzh = objArr;
        this.zzi = new HashMap();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < zzbeVarArr.length) {
            zzbe zzbeVar = zzbeVarArr[i];
            this.zzg[i4] = zzbeVar;
            this.zzf[i4] = i2;
            this.zze[i4] = i3;
            i2 += zzbeVar.zza();
            i3 += this.zzg[i4].zzc();
            this.zzi.put(objArr[i4], Integer.valueOf(i4));
            i++;
            i4++;
        }
        this.zzc = i2;
        this.zzd = i3;
    }
}
